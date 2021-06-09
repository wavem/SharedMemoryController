//---------------------------------------------------------------------------

#ifndef libxl_functionsH
#define libxl_functionsH
//---------------------------------------------------------------------------

#include "Main.h"
using namespace libxl;

extern Sheet* __fastcall getSheetByName(Book* book, const wchar_t* name);
extern UnicodeString __fastcall getCellValue(LPVOID lp, int row, int col);
extern UnicodeString __fastcall getCellValueDateTime(LPVOID lpBook, LPVOID lpSheet, int row, int col);
extern UnicodeString __fastcall getCellValueS(LPVOID lp, int row, int col);
extern UnicodeString __fastcall getCellValueS_withLineFeed(LPVOID lp, int row, int col);
extern int __fastcall getCellValueI(LPVOID lp, int row, int col);
extern double __fastcall getCellValueD(LPVOID lp, int row, int col);
extern COLORREF __fastcall getCellColor(LPVOID lp, LPVOID lpBook, int row, int col);
extern UnicodeString __fastcall getCellMemo(LPVOID lp, int row, int col);
extern int __fastcall Extract__iByte_no(LPVOID lp, int row);






//---------------------------------------------------------------------------
#endif
