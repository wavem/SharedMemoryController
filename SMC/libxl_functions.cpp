//---------------------------------------------------------------------------

#pragma hdrstop

#include "libxl_functions.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

Sheet* __fastcall getSheetByName(Book* book, const wchar_t* name) {

	int temp = book->sheetCount();
	for(unsigned short i = 0; i < book->sheetCount(); ++i)
	{
		if(wcscmp(book->getSheet(i)->name(), name) == 0)
		{
			return book->getSheet(i);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------


UnicodeString __fastcall getCellValue(LPVOID lp, int row, int col)
{
	Sheet* sheet = (Sheet*)lp;

	UnicodeString s;

	libxl::Format* format = NULL;
	CellType ct = sheet->cellType(row, col);
	switch(ct)
	{
	case CELLTYPE_NUMBER: {
		double f = sheet->readNum(row, col, &format);
		int d = (int) f;
		if((f - (double)d) == 0) {
			s.sprintf(L"%d", d);
		} else {
			s.sprintf(L"%.2f", f);
		}
		break;
		}
	case CELLTYPE_STRING:
		s = (wchar_t*)sheet->readStr(row, col, &format);
		break;
	default:
		s = (wchar_t*)sheet->readStr(row, col, &format);
		break;
	}

	TReplaceFlags flag = TReplaceFlags() << rfReplaceAll << rfIgnoreCase;
	s = StringReplace(s, L"\n", L" ", flag);
	return s;
}
//---------------------------------------------------------------------------

UnicodeString __fastcall getCellValueDateTime(LPVOID lpBook, LPVOID lpSheet, int row, int col)
{
	UnicodeString s;

	Book* book = (Book*)lpBook;
	Sheet* sheet = (Sheet*)lpSheet;
	int year, month, day, hour, min, sec;

	if(book->dateUnpack(sheet->readNum(row, col), &year, &month, &day, &hour, &min, &sec)) {
		s.sprintf(L"%04d-%02d-%02d %02d:%02d:%02d", year, month, day, hour, min, sec);
	}
	return s;
}
//---------------------------------------------------------------------------

UnicodeString __fastcall getCellValueS(LPVOID lp, int row, int col)
{
	UnicodeString s = getCellValue(lp, row, col);
	return s.c_str();
}
//---------------------------------------------------------------------------

UnicodeString __fastcall getCellValueS_withLineFeed(LPVOID lp, int row, int col) {
	Sheet* sheet = (Sheet*)lp;

	UnicodeString s;

	libxl::Format* format = NULL;
	CellType ct = sheet->cellType(row, col);
	switch(ct)
	{
	case CELLTYPE_NUMBER: {
		double f = sheet->readNum(row, col, &format);
		int d = (int) f;
		if((f - (double)d) == 0) {
			s.sprintf(L"%d", d);
		} else {
			s.sprintf(L"%.2f", f);
		}
		break;
		}
	case CELLTYPE_STRING:
		s = (wchar_t*)sheet->readStr(row, col, &format);
		break;
	default:
		s = (wchar_t*)sheet->readStr(row, col, &format);
		break;
	}

	//TReplaceFlags flag = TReplaceFlags() << rfReplaceAll << rfIgnoreCase;
	//s = StringReplace(s, L"\n", L" ", flag);
	return s;
}
//---------------------------------------------------------------------------

int __fastcall getCellValueI(LPVOID lp, int row, int col)
{
	UnicodeString s = getCellValue(lp, row, col);
	return _wtoi(s.c_str());
}
//---------------------------------------------------------------------------

double __fastcall getCellValueD(LPVOID lp, int row, int col)
{
	UnicodeString s = getCellValue(lp, row, col);
	return _wtof(s.c_str());
}
//---------------------------------------------------------------------------

COLORREF __fastcall getCellColor(LPVOID lp, LPVOID lpBook, int row, int col)
{
	Sheet* sheet = (Sheet*)lp;
	COLORREF ret;

	// ¼¿ »ö»ó
	libxl::Format* format = sheet->cellFormat(row, col);
	if(format != NULL)
	{
		libxl::Color color = format->patternForegroundColor();

		int red=0, green=0, blue=0;
		if(color == COLOR_DEFAULT_BACKGROUND
			|| color == COLOR_DEFAULT_FOREGROUND
			|| color == COLOR_WHITE)
		{
			ret = RGB(red, green, blue);
		}
		else
		{
			Book* book = (Book*)lpBook;
			book->colorUnpack(color, &red, &green, &blue);
			ret = RGB(red, green, blue);
		}
	}
	return ret;
}
//---------------------------------------------------------------------------

UnicodeString __fastcall getCellMemo(LPVOID lp, int row, int col)
{
	// Cell Memo
	Sheet* sheet = (Sheet*)lp;
	UnicodeString s = (wchar_t*)sheet->readComment(row, col);
	return s;
}
//---------------------------------------------------------------------------

int __fastcall Extract__iByte_no(LPVOID lp, int row)
{
	Sheet* sheet = (Sheet*)lp;
	int ibyte_no = getCellValueI(lp, row, 0);
	return ibyte_no;
}
//---------------------------------------------------------------------------


