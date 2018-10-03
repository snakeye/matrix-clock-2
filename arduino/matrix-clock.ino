#include <ESP8266WiFi.h>

// https://github.com/PaulStoffregen/Time
#include <Time.h>
#include <TimeLib.h>

//  https://github.com/JChristensen/Timezone
#include <Timezone.h>

// https://github.com/gmag11/NtpClient
#include <NtpClientLib.h>

// https://github.com/Makuna/Rtc
#include <Wire.h>
#include <RtcDS3231.h>

// https://github.com/snakeye/MAX7219_Display
#include <SPI.h>
#include <LedMatrix.h>

//
#include "src/conf.h"

//
#define countof(a) (sizeof(a) / sizeof(a[0]))

// pin definitions
// const byte pinLed = 2;
const byte pinInterrupt = 12;

//
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

const char *ntpServer = "pool.ntp.org";
const int ntpIntervalShort = 60;          // short interval while RTC clock are incorrect
const int ntpIntervalLong = 60 * 60 * 24; // long interval while RTC clock are correct

//
RtcDS3231<TwoWire> Rtc(Wire);

//
volatile int rtcSquareCouter = 0;


#define NUMBER_OF_DEVICES 4
#define CS_PIN 16

typedef MAX7219::PinAssignment<CS_PIN> PinAssignment;
typedef MAX7219::LedMatrix<NUMBER_OF_DEVICES, PinAssignment> LedMatrix;

LedMatrix ledMatrix = LedMatrix();
Font font = Font();

// /**
//  *
//  */
// void ledEnable()
// {
//   digitalWrite(pinLed, LOW);
// }

// /**
//  *
//  */
// void ledDisable()
// {
//   digitalWrite(pinLed, HIGH);
// }

void onSTAConnected(WiFiEventStationModeConnected ipInfo)
{
  Serial.printf("Connected to %s\r\n", ipInfo.ssid.c_str());
}

// Start NTP only after IP network is connected
void onSTAGotIP(WiFiEventStationModeGotIP ipInfo)
{
  Serial.printf("Got IP: %s\r\n", ipInfo.ip.toString().c_str());
  Serial.printf("Connected: %s\r\n", WiFi.status() == WL_CONNECTED ? "yes" : "no");

  // ledEnable();
}

// Manage network disconnection
void onSTADisconnected(WiFiEventStationModeDisconnected event_info)
{
  Serial.printf("Disconnected from SSID: %s\n", event_info.ssid.c_str());
  Serial.printf("Reason: %d\n", event_info.reason);

  // ledDisable();
}

/**
 * 
 */
void processSyncEvent(NTPSyncEvent_t ntpEvent)
{
  if (ntpEvent)
  {
    Serial.print("Time Sync error: ");
    if (ntpEvent == noResponse)
      Serial.println("NTP server not reachable");
    else if (ntpEvent == invalidAddress)
      Serial.println("Invalid NTP server address");
  }
  else
  {
    Serial.print("Got NTP time: ");

    time_t now = NTP.getLastNTPSync();

    Serial.println(NTP.getTimeDateString(now));

    // update RTC time
    RtcDateTime timeNow = RtcDateTime(year(now), month(now), day(now), hour(now), minute(now), second(now));
    Rtc.SetDateTime(timeNow);

    // set long polling interval
    NTP.setInterval(ntpIntervalLong);
  }
}

/**
 * 
 */
void onSquareWave()
{
  rtcSquareCouter = (rtcSquareCouter + 1) % 1024;
}

/**
 * 
 */
void setup()
{
  static WiFiEventHandler e1, e2, e3;

  // Init serial port
  Serial.begin(115200);

  //
  // pinMode(pinLed, OUTPUT); // Onboard LED
  // ledDisable();

  // Init display
  ledMatrix.init();
  ledMatrix.setFont(&font);
  ledMatrix.setIntensity(12);

  ledMatrix.setText("WiFi");
  ledMatrix.setTextAlignment(TEXT_ALIGN_CENTER);
  ledMatrix.drawText();
  ledMatrix.commit();

  // Init RTC
  Rtc.Begin();
  Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeClock);
  Rtc.SetSquareWavePinClockFrequency(DS3231SquareWaveClock_1kHz);

  //
  // pinMode(pinInterrupt, INPUT_PULLUP);
  // attachInterrupt(digitalPinToInterrupt(pinInterrupt), onSquareWave, FALLING);

  // connect to WiFi
  WiFi.mode(WIFI_STA);
  WiFi.begin(wifi_network, wifi_password);

  e1 = WiFi.onStationModeGotIP(onSTAGotIP); // As soon WiFi is connected, start NTP Client
  e2 = WiFi.onStationModeDisconnected(onSTADisconnected);
  e3 = WiFi.onStationModeConnected(onSTAConnected);

  // Start NTP client
  NTP.onNTPSyncEvent(processSyncEvent);

  NTP.setInterval(ntpIntervalShort);
  NTP.begin(ntpServer);
}

/**
 * 
 */
void loop()
{
  if (!Rtc.IsDateTimeValid())
  {
    if (WiFi.status() != WL_CONNECTED)
    {
      Serial.println("Connecting to WiFi...");
    }
    else {
      Serial.println("RTC lost confidence in the DateTime!");
    }
    
    NTP.setInterval(ntpIntervalShort);
    NTP.getTime();
  }
  else
  {
    // get RTC time
    RtcDateTime utc = Rtc.GetDateTime();

    // convert UTC time to local
    time_t local = tzBerlin.toLocal(utc.Epoch32Time());

    // extract time components
    char datestring[20];

    snprintf_P(datestring,
               countof(datestring),
               PSTR("%02u:%02u"),
               hour(local),
               minute(local));

    Serial.println(datestring);

    ledMatrix.setText(datestring);
    ledMatrix.clear();
    ledMatrix.drawText();
    ledMatrix.commit();
  }

  delay(200);
}
