#include <Arduino.h>

#include "LedMatrix.h"

#define NUMBER_OF_DEVICES 4
#define CS_PIN 2

typedef MAX7219::PinAssignment<CS_PIN> PinAssignment;
typedef MAX7219::LedMatrix<NUMBER_OF_DEVICES, PinAssignment> LedMatrix;

LedMatrix ledMatrix = LedMatrix();
Font font = Font();

void setup() {
  ledMatrix.init();

  ledMatrix.setIntensity(12);

  ledMatrix.setFont(&font);

  ledMatrix.setText("Demo");
  //ledMatrix.setNextText("Second text");

  //  Serial.begin(9600);
}

void loop() {
  static int x = 0;
  static int y = 0;
  static int vx = 1;
  static int vy = 1;

  ledMatrix.clear();

  ledMatrix.scrollTextLeft();
  ledMatrix.drawText();
  //
  //  ledMatrix.setPixel(x, y);
  //
  //  x += vx;
  //  y += vy;
  //
  //  if (x < 0) {
  //    x = 0;
  //    vx = -vx;
  //  }
  //
  //  if (y < 0) {
  //    y = 0;
  //    vy = -vy;
  //  }
  //
  //  if (x >= ledMatrix.width) {
  //    x = ledMatrix.width - 1;
  //    vx = -vx;
  //  }
  //
  //  if (y >= ledMatrix.height) {
  //    y = ledMatrix.height - 1;
  //    vy = -vy;
  //  }

  ledMatrix.commit();

  delay(50);

  //  Serial.write(".");

}
