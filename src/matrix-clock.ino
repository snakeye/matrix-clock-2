#include <Arduino.h>

#include <ESP8266WiFi.h>

// WiFiManager from https://github.com/tzapu/WiFiManager
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

// NTP client from https://github.com/snakeye/NTPClient
#include <WiFiUdp.h>
#include <NTPClient.h>

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "europe.pool.ntp.org");

// Led Matrix display
#include "LedMatrix.h"

#define NUMBER_OF_DEVICES 4
#define CS_PIN 2

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
  ledMatrix.init();
  ledMatrix.setFont(&font);

  //
  ledMatrix.setIntensity(12);

  // Show startup message
  ledMatrix.setText("WiFi");
  ledMatrix.setTextAlignment(TEXT_ALIGN_CENTER);
  ledMatrix.drawText();
  ledMatrix.commit();

  //
  Serial.println("Connecting to WiFi...");

  // Connect to WiFi
  WiFiManager wifiManager;
  wifiManager.autoConnect();

  // Show hello message
  ledMatrix.setText("Hello!");
  ledMatrix.clear();
  ledMatrix.drawText();
  ledMatrix.commit();

  Serial.println("Connected to WiFi");

  // Start NTP client
  timeClient.begin();
  timeClient.setTimeOffset(2 * 3600); // time offset in seconds
  timeClient.setUpdateInterval(300 * 1000); // update interval in milliseconds
}

/**

*/
void loop() {

  timeClient.startAsyncUpdate();
  timeClient.processAsyncUpdate();

  //
  if (timeClient.getLastUpdate() != 0) {
    String formattedTime = timeClient.getFormattedTime(NTPClient::TimeFormat::TimeFormatShort);

    //ledMatrix.scrollTextLeft();
    ledMatrix.setText(formattedTime);
  }
  else {
    // no update yet
  }

  //
  ledMatrix.clear();
  ledMatrix.drawText();

  ledMatrix.commit();

  //  delay(5000);
  delay(50);

  //  Serial.write(".");
}
