#ifndef DISPLAY_H
#define DISPLAY_H

#include <LedMatrixDisplay.h>

using namespace LedMatrixDisplay;

// matrix type definition
typedef Matrix<8, 8> TMatrix;
// matrix array definition
typedef MatrixArray<TMatrix, 4, 1> TMatrixArray;
// canvas definition
typedef Canvas<TMatrixArray> TCanvas;
// display definition
typedef DisplayColumnCathode<TCanvas, 16> TDisplay;

extern TDisplay display;

#endif
