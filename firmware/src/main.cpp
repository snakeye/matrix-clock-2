#include <Arduino.h>

#include <Timezone.h>

// Time zone
TimeChangeRule CEST = {"CEST", Last, Sun, Mar, 2, 60 * 2};
TimeChangeRule CET = {"CET", Last, Sun, Oct, 2, 60 * 1};
Timezone tzBerlin(CEST, CET);

#include "display.h"

// Font font = Font();

void setup() {
  // Init serial port
  Serial.begin(115200);

  // Init display
  display.init();
  display.setIntensity(2);
  display.clear();
  display.commit();

  // Init RTC
  //   Rtc.Begin();
  //   Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeClock);
  //   Rtc.SetSquareWavePinClockFrequency(DS3231SquareWaveClock_1kHz);

  //   //
  //   pinMode(pinInterrupt, INPUT_PULLUP);
  //   attachInterrupt(digitalPinToInterrupt(pinInterrupt), onSquareWave,
  //   FALLING);
}

void loop() {}
