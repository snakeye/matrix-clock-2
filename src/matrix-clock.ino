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

	ledMatrix.setIntensity(15);

	ledMatrix.setFont(&font);

	ledMatrix.setTextAlignment(TEXT_ALIGN_LEFT_END);
	ledMatrix.setText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. 1234567890");

	//ledMatrix.drawChar(0, 0, 'B');

	//  Serial.begin(9600);
}

void loop() {

	ledMatrix.clear();

	ledMatrix.scrollTextLeft();
	ledMatrix.drawText();

	ledMatrix.commit();

//  delay(5000);
	delay(50);

	//  Serial.write(".");
}
