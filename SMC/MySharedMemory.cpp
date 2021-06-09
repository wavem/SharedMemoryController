//---------------------------------------------------------------------------

#pragma hdrstop

#include "MySharedMemory.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

#include "CommonFunction.h"
#include <Windows.h>

CMySharedMemory::CMySharedMemory(const wstring& sName)
	: m_strName(sName), m_Ptr(NULL), m_handle(NULL), m_nMemSize(0)
{
}

CMySharedMemory::~CMySharedMemory(void)
{
	Clear();
}

////////////////////////////////////////////////////////////////////////////////////////////
//
BOOL CMySharedMemory::Create(size_t nSize)
{
	if(m_handle != NULL) {
	  //	LOGGER->LogD(L"�̹� ������ ���� �޸𸮰� �����մϴ�. ERR(%d)", GetLastError());
		return TRUE;
	}

    m_nMemSize = nSize;
	m_handle = OpenFileMapping(FILE_MAP_ALL_ACCESS, NULL, m_strName.c_str());
	if(m_handle != NULL) {
		OutputDebugString(_Format(L"������ ����ϴ� ���� �޸𸮰� ���� �մϴ�. ERR(%d), �����ϴ� �����޸� ������� ������� �ϴ� ������� �ٸ� �� �ֽ��ϴ�.", GetLastError()).c_str());
		return TRUE;
	}

	//���� �޸𸮸� m_nSize ������� �����մϴ�.
	m_handle = CreateFileMapping(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, m_nMemSize, m_strName.c_str());

	//���� �޸𸮸� ���������� ���������� �޼��� �ڽ��� ��� �ش� ������ ����մϴ�.
	if(m_handle != NULL) {
	   OutputDebugString(_Format(L"���� �޸𸮰� ���� �Ǿ����ϴ�.\r\n �̸�: %s, ũ��: %d byte , ERR(%d)", m_strName.c_str(), m_nMemSize, GetLastError()).c_str());
	}
	else {
		// �޸𸮰� ������ �ÿ� ���� �޸� ������ ���� �� �� �ְ�,
		// ������ �̸����� ������ ���� �޸��� ������ �ɷ� �ִ� ��쿡�� ������ �� �ֽ��ϴ�.
		OutputDebugString(_Format(L"���� �޸𸮸� �����ϴµ� �����߽��ϴ�. ERR(%d)", GetLastError()).c_str());
		return FALSE;
	}

	return TRUE;
}

BOOL CMySharedMemory::Attach(void)
{
	if(m_Ptr != NULL) {
		return TRUE;
	}
	// ���� �޸𸮿� �����ϴ� �ּҰ��� ȹ���մϴ�.
	// ������ ����� �����մϴ�.
	m_Ptr = MapViewOfFile(m_handle, FILE_MAP_ALL_ACCESS, 0, 0, m_nMemSize);

	if(m_Ptr == NULL) {
		OutputDebugString(_Format(L"���� �޸� �����ּ� ȹ�� ���� ERR(%d)", GetLastError()).c_str());
		return FALSE;
	}
	return TRUE;
}

BOOL CMySharedMemory::Detach()
{
	if(UnmapViewOfFile(m_Ptr) == 0) {
		OutputDebugString(_Format(L"UnmapViewOfFile %s, ERR(%d)", L"FALSE", GetLastError()).c_str());
		return FALSE;
	}
	else {
	   OutputDebugString(_Format(L"UnmapViewOfFile %s, ERR(%d)", L"SUCCESS", GetLastError()).c_str());
		m_Ptr = NULL;
	}

	return TRUE;
}

BOOL CMySharedMemory::Lock()
{
	return TRUE;
}

BOOL CMySharedMemory::UnLock()
{
	return TRUE;
}

HANDLE CMySharedMemory::GetID(void)
{
	return m_handle;
}

void* CMySharedMemory::GetData(void)
{
	return m_Ptr;
};

const void* CMySharedMemory::GetData(void) const
{
	return m_Ptr;
}

void CMySharedMemory::Clear()
{
	Detach();

	//�ڵ��� �����Ѵٸ� �ڵ��� �����մϴ�.
	if(m_handle != NULL)
	{
		BOOL bResult = CloseHandle(m_handle);
		OutputDebugString(_Format(L"CloseHandle %s, ERR(%d)", bResult != 0 ? L"SUCCESS" : L"FALSE", GetLastError()).c_str());
		m_handle = NULL;
	}
}



CMySharedMemory2::CMySharedMemory2(const wstring& sName)
	: m_strName(sName), m_Ptr(NULL), m_handle(NULL), m_nMemSize(0)
{
}

CMySharedMemory2::~CMySharedMemory2(void)
{
	Clear();
}

////////////////////////////////////////////////////////////////////////////////////////////
//
BOOL CMySharedMemory2::Create(size_t nSize)
{
	if(m_handle != NULL) {
	  //	LOGGER->LogD(L"�̹� ������ ���� �޸𸮰� �����մϴ�. ERR(%d)", GetLastError());
		return TRUE;
	}

    m_nMemSize = nSize;
	m_handle = OpenFileMapping(FILE_MAP_ALL_ACCESS, NULL, m_strName.c_str());
	if(m_handle != NULL) {
		OutputDebugString(_Format(L"������ ����ϴ� ���� �޸𸮰� ���� �մϴ�. ERR(%d), �����ϴ� �����޸� ������� ������� �ϴ� ������� �ٸ� �� �ֽ��ϴ�.", GetLastError()).c_str());
		return TRUE;
	}

	//���� �޸𸮸� m_nSize ������� �����մϴ�.
	m_handle = CreateFileMapping(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, m_nMemSize, m_strName.c_str());

	//���� �޸𸮸� ���������� ���������� �޼��� �ڽ��� ��� �ش� ������ ����մϴ�.
	if(m_handle != NULL) {
	   OutputDebugString(_Format(L"���� �޸𸮰� ���� �Ǿ����ϴ�.\r\n �̸�: %s, ũ��: %d byte , ERR(%d)", m_strName.c_str(), m_nMemSize, GetLastError()).c_str());
	}
	else {
		// �޸𸮰� ������ �ÿ� ���� �޸� ������ ���� �� �� �ְ�,
		// ������ �̸����� ������ ���� �޸��� ������ �ɷ� �ִ� ��쿡�� ������ �� �ֽ��ϴ�.
		OutputDebugString(_Format(L"���� �޸𸮸� �����ϴµ� �����߽��ϴ�. ERR(%d)", GetLastError()).c_str());
		return FALSE;
	}

	return TRUE;
}

BOOL CMySharedMemory2::Attach(void)
{
	if(m_Ptr != NULL) {
		return TRUE;
	}
	// ���� �޸𸮿� �����ϴ� �ּҰ��� ȹ���մϴ�.
	// ������ ����� �����մϴ�.
	m_Ptr = MapViewOfFile(m_handle, FILE_MAP_ALL_ACCESS, 0, 0, m_nMemSize);

	if(m_Ptr == NULL) {
		OutputDebugString(_Format(L"���� �޸� �����ּ� ȹ�� ���� ERR(%d)", GetLastError()).c_str());
		return FALSE;
	}
	return TRUE;
}

BOOL CMySharedMemory2::Detach()
{
	if(UnmapViewOfFile(m_Ptr) == 0) {
		OutputDebugString(_Format(L"UnmapViewOfFile %s, ERR(%d)", L"FALSE", GetLastError()).c_str());
		return FALSE;
	}
	else {
	   OutputDebugString(_Format(L"UnmapViewOfFile %s, ERR(%d)", L"SUCCESS", GetLastError()).c_str());
		m_Ptr = NULL;
	}

	return TRUE;
}

BOOL CMySharedMemory2::Lock()
{
	return TRUE;
}

BOOL CMySharedMemory2::UnLock()
{
	return TRUE;
}

HANDLE CMySharedMemory2::GetID(void)
{
	return m_handle;
}

void* CMySharedMemory2::GetData(void)
{
	return m_Ptr;
};

const void* CMySharedMemory2::GetData(void) const
{
	return m_Ptr;
}

void CMySharedMemory2::Clear()
{
	Detach();

	//�ڵ��� �����Ѵٸ� �ڵ��� �����մϴ�.
	if(m_handle != NULL)
	{
		BOOL bResult = CloseHandle(m_handle);
        OutputDebugString(_Format(L"CloseHandle %s, ERR(%d)", bResult != 0 ? L"SUCCESS" : L"FALSE", GetLastError()).c_str());
		m_handle = NULL;
	}
}
