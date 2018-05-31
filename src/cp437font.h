#pragma once

typedef byte Charset[256][8];

class Font {
  public:
    Charset* getCharset();    

    int getCharWidth();
    byte getCharColumn(char ch, int col);    
};

