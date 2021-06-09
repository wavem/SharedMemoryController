//---------------------------------------------------------------------------

#pragma hdrstop

#include "UdpSocketThread.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)





__fastcall CUdpSocketThread::CUdpSocketThread(SOCKET *p_sock) {
	m_eThreadWork = THREAD_STOP;
	Priority = tpTimeCritical;
	m_sock = p_sock;
	isTryingToConnect = true;
	isConnected = false;
	//memset(&recvData, 0, sizeof(recvData));
}
//---------------------------------------------------------------------------

__fastcall CUdpSocketThread::~CUdpSocketThread() {
	UnicodeString tempStr = L"Thread Terminated (from Thread Destroyer)";
	SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&tempStr, 0x10);
}
//---------------------------------------------------------------------------


void __fastcall CUdpSocketThread::Execute() {

	// Common
	UnicodeString t_Str = L"";
	struct sockaddr_in t_from_addr;
	memset(&t_from_addr, 0, sizeof(t_from_addr));
	int t_fromaddrsize = sizeof(t_from_addr);
	BYTE t_Buffer[UDP_RECV_BUF_SIZE] = {0, };
	int t_SendSize = 0;
	int t_ReceivedSize = 0;
	ST_RECVDATA t_stRecvData;
	memset(&t_stRecvData, 0, sizeof(t_stRecvData));

	t_Str = L"Thread Start";
	SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
	m_eThreadWork = THREAD_RUNNING;

	while(!Terminated) {
		// For Thread Stop & Resume
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) return;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		t_ReceivedSize = recvfrom(*m_sock, t_Buffer, UDP_RECV_BUF_SIZE, 0, (struct sockaddr*)&t_from_addr, &t_fromaddrsize);
		memcpy(FormMain->m_RecvBuf, t_Buffer, t_ReceivedSize);

		t_Str.sprintf(L"[RECV] Size : %04d", t_ReceivedSize);
		t_Str += L" (Source IP : ";
		t_Str += inet_ntoa(t_from_addr.sin_addr);
		t_Str += L", Port : ";
		t_Str += t_from_addr.sin_port;
		t_Str += L")";

		SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);

		t_stRecvData.Size = t_ReceivedSize;
		t_stRecvData.pBuffer = t_Buffer;
		SendMessage(FormMain->Handle, MSG_MAKE_BIN_LOG_FROM_THREAD, (unsigned int)&t_stRecvData, 0x10);
	}

	return;




	#if 0

	// Try to Connect
	while(!Terminated) {
		// For Thread Stop & Resume
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) return;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		if(t_ConnectTryingCount < 6) {
			t_errno = connect(*m_sock, (struct sockaddr*)&t_sockaddr_in, sizeof(sockaddr_in));
			if(t_errno < 0) {
				t_Str.sprintf(L"Connection Error : Trying Count(%d)", t_ConnectTryingCount);
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);

				t_AnsiStr = strerror(t_errno);
				t_Str = L"Error String : ";
				t_Str += t_AnsiStr;
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
				m_eThreadWork == THREAD_TERMINATED;
				t_ConnectTryingCount++;
				continue;
			} else {
				t_Str = L"Connected !!!";
				SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
				isTryingToConnect = false;
				isConnected = true;
				break;
			}
		} else {
			isTryingToConnect = false;
			isConnected = false;
			t_Str = L"Fail to Connect to Server...";
			SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
			break;
		}

		// Just Wait Moment...
		WaitForSingleObject((void*)this->Handle, 1000);
	}

	if(isConnected == false) {
		m_eThreadWork = THREAD_TERMINATED;
		return;
	}

	// Send Version Info Request Message
	PostMessage(FormMain->Handle, MSG_TRY_TO_GET_VERSION_INFO, 0, 0x10);

	// Receive Routine
	BYTE recv_buff[TCP_RECV_BUF_SIZE];
	ZeroMemory( &recv_buff, sizeof(recv_buff));
	int recv_buff_size = sizeof(recv_buff);

	while(!Terminated) {
		// For Thread Stop & Resume
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) return;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		// Receive Routine Funtion
		if(Receive()) {
			memset(&recvData, 0, sizeof(recvData));
			memcpy(recvData.Data, recvBuff, TCP_RECV_BUF_SIZE);
			PostMessage(FormMain->Handle, MSG_SERVER_DATA, (unsigned int)&recvData, 0x10);
		} else {
			t_Str = L"Fail to Receive";
			SendMessage(FormMain->Handle, MSG_LOG_FROM_THREAD, (unsigned int)&t_Str, 0x10);
			return;
		}

		// Just Wait Moment...
		WaitForSingleObject((void*)this->Handle, 50);
	}
	m_eThreadWork = THREAD_TERMINATED;
	return;

#endif
}
//---------------------------------------------------------------------------






void __fastcall CUdpSocketThread::Stop() {
	m_eThreadWork = THREAD_STOP;
}
//---------------------------------------------------------------------------

void __fastcall CUdpSocketThread::Resume() {
	m_eThreadWork = THREAD_RUNNING;
}
//---------------------------------------------------------------------------

void __fastcall CUdpSocketThread::DoTerminate() {
	m_eThreadWork = THREAD_TERMINATED;
}
//---------------------------------------------------------------------------

ThreadWorkingType __fastcall CUdpSocketThread::GetThreadStatus() {
	return m_eThreadWork;
}
//---------------------------------------------------------------------------