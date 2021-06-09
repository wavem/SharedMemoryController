//---------------------------------------------------------------------------

#ifndef common_functionsH
#define common_functionsH
//---------------------------------------------------------------------------

#include <Windows.h>



extern bool _BitCheck(BYTE _src, int _bit);
extern BYTE _BitSetting(BYTE _src, int _bitIdx, bool _bool);
extern BYTE _BitToggle(BYTE _src, int _bitIdx);


//---------------------------------------------------------------------------
#endif
