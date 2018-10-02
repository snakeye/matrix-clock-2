#include <ESP8266WiFi.h>

#include <Time.h>
#include <TimeLib.h>
#include <Timezone.h>

#include <Wire.h>

#include <WiFiUdp.h>
#include <NTPClient.h>

#include "src/conf.h"

#define ONBOARDLED 2

WiFiUDP ntpUDP;
NTPClient::Client timeClient(ntpUDP);

const byte interruptPin = 12;

void onSTAConnected(WiFiEventStationModeConnected ipInfo)
{
  Serial.printf("Connected to %s\r\n", ipInfo.ssid.c_str());
}

// Start NTP only after IP network is connected
void onSTAGotIP(WiFiEventStationModeGotIP ipInfo)
{
  Serial.printf("Got IP: %s\r\n", ipInfo.ip.toString().c_str());
  Serial.printf("Connected: %s\r\n", WiFi.status() == WL_CONNECTED ? "yes" : "no");
  digitalWrite(ONBOARDLED, LOW); // Turn on LED
}

// Manage network disconnection
void onSTADisconnected(WiFiEventStationModeDisconnected event_info)
{
  Serial.printf("Disconnected from SSID: %s\n", event_info.ssid.c_str());
  Serial.printf("Reason: %d\n", event_info.reason);
  digitalWrite(ONBOARDLED, HIGH); // Turn off LED
}

void setup()
{
  static WiFiEventHandler e1, e2, e3;

  // Init serial port
  Serial.begin(115200);

  //
  pinMode(ONBOARDLED, OUTPUT);    // Onboard LED
  digitalWrite(ONBOARDLED, HIGH); // Switch off LED

  // Init display

  // Init I2C

  //
  pinMode(interruptPin, INPUT_PULLUP);

  // connect to WiFi
  WiFi.mode(WIFI_STA);
  WiFi.begin(wifi_network, wifi_password);

  e1 = WiFi.onStationModeGotIP(onSTAGotIP); // As soon WiFi is connected, start NTP Client
  e2 = WiFi.onStationModeDisconnected(onSTADisconnected);
  e3 = WiFi.onStationModeConnected(onSTAConnected);

  // Start NTP client
  timeClient.begin(); // Start the NTP UDP client
}

void loop()
{

  delay(1000);
}