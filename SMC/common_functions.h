//---------------------------------------------------------------------------

#ifndef common_functionsH
#define common_functionsH
//---------------------------------------------------------------------------

#include <Windows.h>



extern bool _BitCheck(BYTE _src, int _bit);
extern BYTE _BitSetting(BYTE _src, int _bitIdx, bool _bool);
extern BYTE _BitToggle(BYTE _src, int _bitIdx);



#pragma once

#include <shlwapi.h>
#pragma comment(lib, "shlwapi.lib")

#include <string>
using namespace std;

extern wstring _Format(wchar_t* pstrFormat, ... );
extern string _FormatA(char* pstrFormat, ... );

extern string _TrimA(std::string& s,const std::string& drop);
extern string _RTrimA(std::string s,const std::string& drop);
extern string _LTrimA(std::string s,const std::string& drop);

inline wstring _Format(wchar_t* pstrFormat, ...)
{
	va_list args;
	wchar_t    buffer[1024];

	va_start(args, pstrFormat);

	vswprintf(buffer, pstrFormat, args);
	wstring strArgv(buffer);

	return strArgv;
}

inline string _FormatA(char* pstrFormat, ...)
{
	va_list args;
	char    buffer[1024];

	va_start(args, pstrFormat);

	vsprintf(buffer, pstrFormat, args);
	string strArgv(buffer);

	return strArgv;
}


#define TRIM_SPACE " \t\n\v"
inline std::string _TrimA(std::string& s,const std::string& drop = TRIM_SPACE)
{
	std::string r=s.erase(s.find_last_not_of(drop)+1);
	return r.erase(0,r.find_first_not_of(drop));
}

inline std::string _RTrimA(std::string s,const std::string& drop = TRIM_SPACE)
{
	return s.erase(s.find_last_not_of(drop)+1);
}

inline std::string _LTrimA(std::string s,const std::string& drop = TRIM_SPACE)
{
	return s.erase(0,s.find_first_not_of(drop));
}



//---------------------------------------------------------------------------
#endif
