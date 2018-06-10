#pragma once

#include <Arduino.h>
#include <SPI.h>

#include "font.h"

// max7219 registers
#define MAX7219_REG_NOOP         0x0
#define MAX7219_REG_DIGIT0       0x1
#define MAX7219_REG_DIGIT1       0x2
#define MAX7219_REG_DIGIT2       0x3
#define MAX7219_REG_DIGIT3       0x4
#define MAX7219_REG_DIGIT4       0x5
#define MAX7219_REG_DIGIT5       0x6
#define MAX7219_REG_DIGIT6       0x7
#define MAX7219_REG_DIGIT7       0x8
#define MAX7219_REG_DECODEMODE   0x9
#define MAX7219_REG_INTENSITY    0xA
#define MAX7219_REG_SCANLIMIT    0xB
#define MAX7219_REG_SHUTDOWN     0xC
#define MAX7219_REG_DISPLAYTEST  0xF

#define TEXT_ALIGN_LEFT          0 // Text is aligned to left side of the display
#define TEXT_ALIGN_LEFT_END      1 // Beginning of text is just outside the right end of the display
#define TEXT_ALIGN_RIGHT         2 // End of text is aligned to the right of the display
#define TEXT_ALIGN_RIGHT_END     3 // End of text is just outside the left side of the display
#define TEXT_ALIGN_CENTER        4 // center

namespace MAX7219 {

template<const int CS_PIN>
class PinAssignment {
  public:
    static const int pinCS = CS_PIN;
};

template<const int matrixCount, class PinAssignment>
class LedMatrix {
  public:
    // width of the display in pixels
    const int width = matrixCount * 8;
    // height of the display in pixel
    const int height = 8;

  public:
    /**
      Set font for display
    */
    void setFont(Font* newFont) {
      font = newFont;
    }

    /**
       Initializes the SPI interface

       @scope: device driver
    */
    void init() {
      pinMode(PinAssignment::pinCS, OUTPUT);

      SPI.begin ();
      SPI.setDataMode(SPI_MODE0);
      SPI.setClockDivider(SPI_CLOCK_DIV128);

      for (int device = 0; device < matrixCount; device++) {
        sendByte(device, MAX7219_REG_SCANLIMIT, 7);   // show all 8 digits
        sendByte(device, MAX7219_REG_DECODEMODE, 0);  // using an led matrix (not digits)
        sendByte(device, MAX7219_REG_DISPLAYTEST, 0); // no display test
        sendByte(device, MAX7219_REG_INTENSITY, 0);   // character intensity: range: 0 to 15
        sendByte(device, MAX7219_REG_SHUTDOWN, 1);    // not in shutdown mode (ie. start it up)
      }
    }

    /**
       Send block of data to the displays

       @scope: device driver
    */
    void sendBytes(const byte spiregister[matrixCount], const byte spidata[matrixCount]) {
      // enable the line
      digitalWrite(PinAssignment::pinCS, LOW);

      // now shift out the data
      for (int i = 0; i < matrixCount; i++) {
        SPI.transfer (spiregister[matrixCount - i - 1]);
        SPI.transfer (spidata[matrixCount - i - 1]);
      }

      digitalWrite (PinAssignment::pinCS, HIGH);
    }

    /**
       Send a byte to a specific device.

       @scope: device driver
    */
    void sendByte (const byte device, const byte reg, const byte data) {
      byte spidata[matrixCount] = {0};
      byte spiregister[matrixCount] = {0};

      // put our device data into the array
      spiregister[device] = reg;
      spidata[device] = data;

      sendBytes(spiregister, spidata);
    }

    /**
       Send a byte to all devices (convenience method).

       @todo: rename
       @scope: device driver
    */
    void sendByte (const byte reg, const byte data) {
      byte spidata[matrixCount];
      byte spiregister[matrixCount];

      for (int i = 0; i < matrixCount; i++) {
        spidata[i] = data;
        spiregister[i] = reg;
      }

      sendBytes(spiregister, spidata);
    }

    /**
       Sets the intensity on all devices.
       intensity: 0-15

       @scope: display
    */
    void setIntensity(int intensity) {
      sendByte(MAX7219_REG_INTENSITY, intensity);
    }

    /**
       Sets the text alignment.
       Default is TEXT_ALIGN_LEFT_END.

       @scope: display
    */
    void setTextAlignment(int textAlignment) {
      myTextAlignment = textAlignment;
      calculateTextAlignmentOffset();
    }

    /**
       Clear the frame buffer.

       @scope: display
    */
    void clear() {
      for (int col = 0; col < matrixCount * 8; col++) {
        frameBuffer[col] = 0;
      }
    }

    /**
       Turn on pixel at position (x, y).

       @scope: display
    */
    void setPixel(int x, int y) {
      bitWrite(frameBuffer[x], y, true);
    }

    /**
       Get pixel value at position (x, y)

       @scope: display
    */
    bool getPixel(int x, int y) {
      return bitRead(frameBuffer[x], y);
    }

    /**

    */
    int drawChar(int x, int y, char ch) {
      if (ch > 127 || font == NULL)
        return 0;

      byte mask = (y >= 0) ? (0xFF << y) : (0xFF > y);

      // character width
      int char_width = font->getCharWidth(ch);
      if (char_width == 0)
        return 0;

      // draw character
      for (int j = 0; j < char_width; j++)
      {
        int col = x + j;

        if (col >= 0 && col < (matrixCount * 8))
        {
          // read column pixels from program memory
          byte pixels = font->getCharColumn(ch, j);

          // shift pixels
          pixels = (y >= 0) ? (pixels << y) : (pixels >> (-y));

          // update canvas
          frameBuffer[col] &= ~(mask);
          frameBuffer[col] |= pixels;
        }
      }

      return char_width;
    }

    /**
       Draw the current text at the current offset with the current font
    */
    void drawText() {
      if (font == NULL) {
        return;
      }

      int x = myTextOffset + myTextAlignmentOffset;
      int y = 0;

      for (int i = 0; i < myText.length(); i++) {
        char letter = myText.charAt(i);

        int char_width = drawChar(x, y, letter);

        x += char_width + 1;
      }
    }

    /**
       Set the current text.
    */
    void setText(String text) {
      myText = text;
      myTextOffset = 0;
      calculateTextAlignmentOffset();
    }

    /**
       Writes the framebuffer to the displays.
    */
    void commit() {
      byte reg[matrixCount];
      byte data[matrixCount];

      for (int row = 0; row < 8; row++) {
        for (int i = 0; i < matrixCount; i++) {

          // register value
          reg[i] = row + 1;

          // data value
          for (int col = 0; col < 8; col++) {
            byte pixel = getPixel(i * 8 + col, 8 - row - 1);
            bitWrite(data[i], col, pixel);
          }
        }

        sendBytes(reg, data);
      }
    }

    /**
       Scroll the text to the left.
    */
    void scrollTextLeft() {
      myTextOffset = (myTextOffset - 1) % (font->getStringWidth(myText) + matrixCount * 8);
    }


  private:
    /**
      Set a specific column with a byte value to the framebuffer.

      @scope: framebuffer
    */
    void setColumn(int col, byte value) {
      if (col < 0 || col >= matrixCount * 8) {
        return;
      }

      frameBuffer[col] = value;
    }

    /**
       @scope: display
    */
    void calculateTextAlignmentOffset() {
      int stringWidth = font->getStringWidth(myText);
      switch (myTextAlignment) {
        case TEXT_ALIGN_LEFT:
          myTextAlignmentOffset = 0;
          break;
        case TEXT_ALIGN_LEFT_END:
          myTextAlignmentOffset = matrixCount * 8;
          break;
        case TEXT_ALIGN_RIGHT:
          myTextAlignmentOffset = stringWidth - matrixCount * 8;
          break;
        case TEXT_ALIGN_RIGHT_END:
          myTextAlignmentOffset = -stringWidth;
          break;
        case TEXT_ALIGN_CENTER:
          myTextAlignmentOffset = (matrixCount * 8 - stringWidth) / 2;
      }
    }

  private:
    byte frameBuffer[matrixCount * 8] = {0};

    Font* font = NULL;

    String myText;

    int myTextOffset = 1;
    int myTextAlignmentOffset = 0;
    int increment = -1;
    int myTextAlignment = 1;
};

}
