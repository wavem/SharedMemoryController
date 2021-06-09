//---------------------------------------------------------------------------

#ifndef MySharedMemoryH
#define MySharedMemoryH
//---------------------------------------------------------------------------
#include <CLASSES.HPP>

#include <string>
using namespace std;

#define SM_NAME_DU_SD			L"HM_SHARED_MEMORY_DU_SD";
#define SM_NAME_DU_SDR			L"HM_SHARED_MEMORY_DU_SDR";

//#define SM_NAME_DU_SDR2			L"HM_SHARED_MEMORY_DU_SDR2";

#define SM_NAME_SIMULATOR_SD	L"HM_SHARED_MEMORY_SIMULATOR_SD";
#define SM_NAME_SIMULATOR_SDR	L"HM_SHARED_MEMORY_SIMULATOR_SDR";

#define PD_DATASET_MAX_LENGTH	1432

typedef unsigned char BYTE;

typedef struct TSharedMemoryData {
	BYTE data[100][PD_DATASET_MAX_LENGTH];
} TSharedMemory;

class CMySharedMemory
{
public:
	CMySharedMemory(const wstring& sName);
	~CMySharedMemory(void);

	BOOL Create(size_t nMemSize);
	BOOL Attach(void);
	BOOL Detach(void);
	BOOL Lock(void);
	BOOL UnLock(void);
	HANDLE GetID(void);
	void* GetData(void);
	const void* GetData(void) const;

private:
	void Clear();

private:
	wstring m_strName;
	HANDLE m_handle;
	size_t m_nMemSize;
	void* m_Ptr;

};

typedef struct TSharedMemoryData2 {
	BYTE data[100][PD_DATASET_MAX_LENGTH];
} TSharedMemory2;

class CMySharedMemory2
{
public:
	CMySharedMemory2(const wstring& sName);
	~CMySharedMemory2(void);

	BOOL Create(size_t nMemSize);
	BOOL Attach(void);
	BOOL Detach(void);
	BOOL Lock(void);
	BOOL UnLock(void);
	HANDLE GetID(void);
	void* GetData(void);
	const void* GetData(void) const;

private:
	void Clear();

private:
	wstring m_strName;
	HANDLE m_handle;
	size_t m_nMemSize;
	void* m_Ptr;

};
/*
typedef struct TSharedMemoryData3 {
	BYTE data[100][PD_DATASET_MAX_LENGTH];
} TSharedMemory3;

class CMySharedMemory3
{
public:
	CMySharedMemory3(const wstring& sName);
	~CMySharedMemory3(void);

	BOOL Create(size_t nMemSize);
	BOOL Attach(void);
	BOOL Detach(void);
	BOOL Lock(void);
	BOOL UnLock(void);
	HANDLE GetID(void);
	void* GetData(void);
	const void* GetData(void) const;

private:
	void Clear();

private:
	wstring m_strName;
	HANDLE m_handle;
	size_t m_nMemSize;
	void* m_Ptr;

};
*/
#endif
