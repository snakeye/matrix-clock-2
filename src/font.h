#pragma once

class Font {
  public:
    int getCharWidth(char ch);
    int getStringWidth(String str);

    byte getCharColumn(char ch, int col);
};

