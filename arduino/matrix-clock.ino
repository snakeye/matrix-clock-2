#include <ESP8266WiFi.h>

// OTA
#include <ESP8266mDNS.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>

// https://github.com/tzapu/WiFiManager
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

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

// local configuration
#include "src/conf.h"

//
#define countof(a) (sizeof(a) / sizeof(a[0]))

//
const char *deviceName = "matrix-clock";

// pin definitions
const byte pinInterrupt = 12;

// Time zone
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

// NTP
const char *ntpServer = "pool.ntp.org";
const int ntpIntervalShort = 60;         // short interval while RTC clock are incorrect
const int ntpIntervalLong = 60 * 60 * 6; // long interval while RTC clock are correct

// RTC clock DS3231
RtcDS3231<TwoWire> Rtc(Wire);

volatile int rtcSquareCouter = 0;

// MAX7219 display
const int displayMatrixes = 4;
const int pinDisplayCS = 16;

typedef MAX7219::PinAssignment<pinDisplayCS> PinAssignment;
typedef MAX7219::LedMatrix<displayMatrixes, PinAssignment> LedMatrix;

LedMatrix ledMatrix = LedMatrix();
Font font = Font();

// display brightness
const int brightnessInterval = 1000;
unsigned long lastBrightnessTime = 0;
int intensity = 12;
int targetIntensity = 12;

/**

*/
void ledEnable()
{
  digitalWrite(LED_BUILTIN, LOW);
}

/**

*/
void ledDisable()
{
  digitalWrite(LED_BUILTIN, HIGH);
}

/**

*/
void onSTAConnected(WiFiEventStationModeConnected ipInfo)
{
  Serial.printf("Connected to %s\r\n", ipInfo.ssid.c_str());
}

/**
   Start NTP only after IP network is connected
*/
void onSTAGotIP(WiFiEventStationModeGotIP ipInfo)
{
  Serial.printf("Got IP: %s\r\n", ipInfo.ip.toString().c_str());
  Serial.printf("Connected: %s\r\n", WiFi.status() == WL_CONNECTED ? "yes" : "no");

  //ledDisable();
}

/**
   Manage network disconnection
*/
void onSTADisconnected(WiFiEventStationModeDisconnected event_info)
{
  Serial.printf("Disconnected from SSID: %s\n", event_info.ssid.c_str());
  Serial.printf("Reason: %d\n", event_info.reason);

  //ledEnable();
}

/**

*/
void processSyncEvent(NTPSyncEvent_t ntpEvent)
{
  if (ntpEvent != timeSyncd)
  {
    Serial.print("Time Sync error: ");
    if (ntpEvent == noResponse)
      Serial.println("NTP server not reachable");
    else if (ntpEvent == invalidAddress)
      Serial.println("Invalid NTP server address");
  }
  else
  {
    time_t now = NTP.getLastNTPSync();

    Serial.print("Got NTP time: ");
    Serial.println(NTP.getTimeDateString(now));

    // update RTC time
    RtcDateTime timeNow = RtcDateTime(year(now), month(now), day(now), hour(now), minute(now), second(now));
    Rtc.SetDateTime(timeNow);
  }
}

/**
   RTC Square wave interrupt - 1024Hz
*/
void onSquareWave()
{
  rtcSquareCouter = (rtcSquareCouter + 1) % 1024;
}

/**

*/
void setup()
{
  static WiFiEventHandler e1, e2, e3;

  // Init serial port
  Serial.begin(115200);

  // Init onboard LED
  //pinMode(LED_BUILTIN, OUTPUT); // Onboard LED
  //ledEnable();

  // get initial brightness
  targetIntensity = (analogRead(A0) * 15) / 1024;
  intensity = targetIntensity;

  // Init display
  ledMatrix.init();
  ledMatrix.setFont(&font);
  ledMatrix.setIntensity(intensity);

  ledMatrix.setText("  :  ");
  ledMatrix.setTextAlignment(TEXT_ALIGN_CENTER);
  ledMatrix.drawText();
  ledMatrix.commit();

  // Init RTC
  Rtc.Begin();
  Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeClock);
  Rtc.SetSquareWavePinClockFrequency(DS3231SquareWaveClock_1kHz);

  //
  pinMode(pinInterrupt, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(pinInterrupt), onSquareWave, FALLING);

  // connect to WiFi
  //WiFi.mode(WIFI_STA);
  WiFi.hostname(deviceName);
  //WiFi.begin(wifi_network, wifi_password);

  e1 = WiFi.onStationModeGotIP(onSTAGotIP);
  e2 = WiFi.onStationModeDisconnected(onSTADisconnected);
  e3 = WiFi.onStationModeConnected(onSTAConnected);

  //
  WiFiManager wifiManager;
  wifiManager.autoConnect("Matrix Clock");

  //
  MDNS.begin(deviceName);

  // OTA
  ArduinoOTA.setHostname(deviceName);
  ArduinoOTA.begin();

  // Start NTP client
  NTP.onNTPSyncEvent(processSyncEvent);

  NTP.setInterval(ntpIntervalShort, ntpIntervalLong);
  NTP.begin(ntpServer);
}

/**
   Convert integer value in range 0..9 to corresponding character
*/
char digit(int val)
{
  return '0' + val;
}

/**

*/
void loop()
{
  unsigned long now = millis();

  //
  ArduinoOTA.handle();

  // Clear display
  ledMatrix.clear();

  //
  if (!Rtc.IsDateTimeValid())
  {
    if (WiFi.status() != WL_CONNECTED)
    {
      // not connected
      ledMatrix.setText("  :  ");
      Serial.println("Connecting to WiFi...");
    }
    else
    {
      // connected but time is incorrect
      ledMatrix.setText("--:--");
      Serial.println("RTC lost confidence in the DateTime!");
    }

    ledMatrix.drawText();

    NTP.getTime();
  }
  else
  {
    // get RTC time
    RtcDateTime utc = Rtc.GetDateTime();

    // convert UTC time to local
    time_t local = tzBerlin.toLocal(utc.Epoch32Time());

    int h = hour(local);
    int m = minute(local);
    bool dots = rtcSquareCouter < 512;

    // draw time
    if (h >= 10)
    {
      ledMatrix.drawChar(3, 0, digit(h / 10));
    }
    ledMatrix.drawChar(9, 0, digit(h % 10));

    // draw dots
    if (dots)
    {
      ledMatrix.drawChar(15, 0, ':');
    }

    //
    ledMatrix.drawChar(18, 0, digit(m / 10));
    ledMatrix.drawChar(24, 0, digit(m % 10));
  }

  //
  ledMatrix.commit();

  // measure display intensity
  if (now > lastBrightnessTime + brightnessInterval)
  {
    targetIntensity = (analogRead(A0) * 15) / 1024;

    // change display intensity
    if (intensity < targetIntensity)
    {
      intensity += 1;
      ledMatrix.setIntensity(intensity);
    }
    else if (intensity > targetIntensity)
    {
      intensity -= 1;
      ledMatrix.setIntensity(intensity);
    }

    lastBrightnessTime = now;
  }

  //
  delay(50);
}
