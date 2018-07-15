#include <Arduino.h>
#include <Wire.h> //I2C library


#include <ESP8266WiFi.h>

//// WiFiManager from https://github.com/tzapu/WiFiManager
//#include <DNSServer.h>
//#include <ESP8266WebServer.h>
//#include <WiFiManager.h>

//
#include <RtcDS3231.h> // RTC library

RtcDS3231<TwoWire> rtcObject(Wire);

// NTP client from https://github.com/snakeye/NTPClient
#include <WiFiUdp.h>
#include <NTPClient.h>

WiFiUDP ntpUDP;
NTPClient::Client timeClient(ntpUDP, "europe.pool.ntp.org");

// Led Matrix display
#include <LedMatrix.h>

#define NUMBER_OF_DEVICES 4
#define CS_PIN 16

typedef MAX7219::PinAssignment<CS_PIN> PinAssignment;
typedef MAX7219::LedMatrix<NUMBER_OF_DEVICES, PinAssignment> LedMatrix;

LedMatrix ledMatrix = LedMatrix();
Font font = Font();

/**
   Setup
*/
void setup() {

  //
  Serial.begin(115200);
  Serial.println("");

  //
  rtcObject.Begin();

  //
  ledMatrix.init();
  ledMatrix.setFont(&font);

  //
  ledMatrix.setIntensity(15);

  // Show startup message
  ledMatrix.setText("WiFi");
  ledMatrix.setTextAlignment(TEXT_ALIGN_CENTER);
  ledMatrix.drawText();
  ledMatrix.commit();

  //
  Serial.println("Connecting to WiFi...");

  // Connect to WiFi
//  WiFiManager wifiManager;
//  wifiManager.autoConnect();

  // Show hello message
  ledMatrix.setText("Hello!");
  ledMatrix.clear();
  ledMatrix.drawText();
  ledMatrix.commit();

  Serial.println("Connected to WiFi");

  // Start NTP client
  timeClient.begin();
  timeClient.setUpdateInterval(300 * 1000); // update interval in milliseconds
}

/**

*/
void loop() {

  //
  if (rtcObject.IsDateTimeValid()) {
    RtcDateTime currentTime = rtcObject.GetDateTime();

    char str[20];   //declare a string as an array of chars

    sprintf(str, "%d:%d",     //%d allows to print an integer to the string
            //          currentTime.Hour(),   //get hour method
            currentTime.Minute(), //get minute method
            currentTime.Second()  //get second method
           );

    ledMatrix.setText(str);
  }
  else {
    RtcTemperature temperature = rtcObject.GetTemperature();

    char str[20];
    sprintf(str, "%.1f", temperature.AsFloatDegC());

    ledMatrix.setText(str);
    
  }

  //  // NTP
  //  bool forceUpdate = timeClient.getLastUpdate() != 0;
  //  timeClient.asyncUpdate();
  //
  //  //
  //  if (timeClient.getLastUpdate() != 0) {
  //    unsigned long time = timeClient.getEpochTime();
  //
  //    String formattedTime = NTPClient::TimeFormatter::getShortTime(time);
  //
  //    //ledMatrix.scrollTextLeft();
  //    ledMatrix.setText(formattedTime);
  //  }
  //  else {
  //    // no update yet
  //  }


  //
  ledMatrix.clear();
  ledMatrix.drawText();

  ledMatrix.commit();

  //  delay(5000);
  delay(50);

  //  Serial.write(".");
}
