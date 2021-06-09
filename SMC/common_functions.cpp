//---------------------------------------------------------------------------

#pragma hdrstop

#include "common_functions.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

extern bool _BitCheck(BYTE _src, int _bit) {
	if(_bit < 8 && _bit >= 0)	return (_src >> _bit) & 0x01;
	return false;
}
//---------------------------------------------------------------------------

extern BYTE _BitSetting(BYTE _src, int _bitIdx, bool _bool) {
	BYTE t_byte = _src;
	BYTE t_01 = 0x01;
	t_01 <<= _bitIdx;
	if(_bool) t_byte |= t_01;
	else t_byte &= ~t_01; // if toggle : t_byte ^= t_01
	return t_byte;
}
//---------------------------------------------------------------------------

extern BYTE _BitToggle(BYTE _src, int _bitIdx) {
	BYTE t_byte = _src;
	BYTE t_01 = 0x01;
	t_01 <<= _bitIdx;
	t_byte ^= t_01;
	return t_byte;
}
//---------------------------------------------------------------------------
