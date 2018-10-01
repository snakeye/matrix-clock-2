#include <ESP8266WiFi.h>

#include <Time.h>
#include <TimeLib.h>
#include <Timezone.h>

#include <Wire.h>

#include <WiFiUdp.h>
#include <NTPClient.h>

WiFiUDP ntpUDP;
NTPClient::Client timeClient(ntpUDP);

void setup()
{ 
  // Init serial port
  Serial.begin(115200);

  // Init display

  // Init I2C

  // connect to WiFi

  // Start NTP client
  timeClient.begin();   // Start the NTP UDP client
}

void loop()
{
  Serial.println('.');

  delay(1000);
}