#pragma once

#include "esphome.h"

class AmbientLightSensor : public PollingComponent, public Sensor {
 public:
  // constructor
  AmbientLightSensor() : PollingComponent(10000) {}

  float get_setup_priority() const override { return esphome::setup_priority::HARDWARE; }

  void setup() override {
    // This will be called by App.setup()
  }
  void update() override {
    publish_state((analogRead(A0) * 14) / 1024 + 1);
  }
};
