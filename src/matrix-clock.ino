#include <Arduino.h>

#include <ESP8266WiFi.h>

// WiFiManager from https://github.com/tzapu/WiFiManager
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

// NTP client from https://github.com/arduino-libraries/NTPClient
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

String getFormattedTime(long rawTime) {
  unsigned long hours = (rawTime % 86400L) / 3600;
  String hoursStr = String(hours);

  unsigned long minutes = (rawTime % 3600) / 60;
  String minuteStr = minutes < 10 ? "0" + String(minutes) : String(minutes);

  return hoursStr + ":" + minuteStr;
}


/**
 * Setup
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
  ledMatrix.setText("Hello");
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
 * 
 */
void loop() {

  timeClient.update();

  String formattedTime = getFormattedTime(timeClient.getEpochTime());

  Serial.println(formattedTime);

  ledMatrix.clear();

  //ledMatrix.scrollTextLeft();
  ledMatrix.setText(formattedTime);
  
  ledMatrix.drawText();

  ledMatrix.commit();

  //  delay(5000);
  delay(1000);

  //  Serial.write(".");
}
