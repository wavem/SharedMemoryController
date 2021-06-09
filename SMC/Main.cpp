//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Dlg_Version.h"
#include "libxl_functions.h"
#include "common_functions.h"
#include "Dlg_DataInputEdit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvMemo"
#pragma link "AdvGlassButton"
#pragma link "AdvEdit"
#pragma link "CurvyControls"
#pragma link "AdvSmoothComboBox"
#pragma link "AdvSmoothListBox"
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
#pragma link "AdvSmoothSlider"
#pragma resource "*.dfm"
#pragma link "libxl.lib"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Common
	UnicodeString tempStr = L"";

	// Setting Default Notebook Page
	Notebook_Main->PageIndex = 0;
	Notebook_Send->PageIndex = 0;
	Notebook_Recv->PageIndex = 0;

	// Init Variables...
	m_sock_UDP = INVALID_SOCKET;
	m_UdpThread = NULL;
	m_LocalIPstr = "";
	m_ServerIPstr = "";
	m_ServerPort = 0;
	m_LocalPort = 0;
	memset(m_SendBuf, 0, UDP_SEND_BUF_SIZE);
	memset(m_RecvBuf, 0, UDP_RECV_BUF_SIZE);
	m_SendProtocolSize = 0;
	m_RecvProtocolSize = 0;
	m_bIsBigEndian = false;
	m_bIsOnLogFile = false;
	m_bIsOnBinaryFile = false;
	m_bIsSigned = false;
	m_fp_Log = NULL;

	// Init Grids
	InitGrids();

	// Socket Init
	WSADATA data;
	WORD version;
	int ret = 0;

	version = MAKEWORD(2, 2);
	ret = WSAStartup(version, &data);
	if(ret != 0) {
		ret = WSAGetLastError();
		if(ret == WSANOTINITIALISED) {
			tempStr.sprintf(L"Socket not initialised (error code : %d)", ret);
			PrintMsg(tempStr);
		} else {
			tempStr.sprintf(L"Socket error (error code : %d)", ret);
			PrintMsg(tempStr);
		}
	} else {
		PrintMsg(L"Socket init success");
	}



	// Config Excel File Init
	if(InitConfigExcelFile()) {
		// Load Sheet Routine
		if(LoadConfigSheet() == false) {
			PrintMsg(L"Fail to load config sheet");
			return;
		}

		// Load Protocol Sheet Routine
	}

	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

	// Delete Socket
	if(m_sock_UDP != INVALID_SOCKET) {
		closesocket(m_sock_UDP);
		m_sock_UDP = INVALID_SOCKET;
	}

	// Delete Thread
	if(m_UdpThread != NULL) {
		m_UdpThread->DoTerminate();
		m_UdpThread->Terminate();
		delete m_UdpThread;
		m_UdpThread = NULL;
	}

	// Delete File Pointer
	if(m_fp_Log) {
		fclose(m_fp_Log);
		m_fp_Log = NULL;
	}

	if(m_fp_Bin) {
		fclose(m_fp_Bin);
		m_fp_Bin = NULL;
	}

	// Socket Clean Up
	WSACleanup();

	// Release Libxl
	if(m_Book) {
		m_Book->release();
		m_Book = NULL;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Line = memo_Msg->Lines->Add(_str);
	memo_Msg->SetCursor(0, t_Line);

	if(m_bIsOnLogFile && m_fp_Log) {
		AnsiString t_AnsiStr = "";
		TTime t_time;
		unsigned short Year, Month, Day, Hour, Min, Sec, MilSec;
		t_time = Now();
		t_time.DecodeDate(&Year, &Month, &Day);
		t_time.DecodeTime(&Hour, &Min, &Sec, &MilSec);
		t_AnsiStr.sprintf("[%04d-%02d-%02d %02d:%02d:%02d:%03d] : ", Year, Month, Day, Hour, Min, Sec, MilSec);
		t_AnsiStr += _str;
		t_AnsiStr += "\n";
		fprintf(m_fp_Log, t_AnsiStr.c_str());
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMemo(UnicodeString _str) {
	int t_Line = memo->Lines->Add(_str);
	memo->SetCursor(0, t_Line);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ClickMenuButton(TObject *Sender)
{
	TdxBarLargeButton* p_Btn = (TdxBarLargeButton*)Sender;
	Notebook_Main->PageIndex = p_Btn->Tag;

	// Below is Test Code
#if 0
	unDATA_4b temp;
	UnicodeString tempStr = L"";
	tempStr.sprintf(L"Size : %d", sizeof(unDATA_4b));
	PrintMemo(tempStr);

	memset(&temp, 0, sizeof(unDATA_4b));

	memcpy(&temp, m_SendBuf, 4);

	tempStr.sprintf(L"BYTE : %d", temp.BYTE_Data[0]);
	PrintMemo(tempStr);
	tempStr.sprintf(L"CHAR : %d", temp.CHAR_Data[0]);
	PrintMemo(tempStr);
	tempStr.sprintf(L"WORD : %d", temp.WORD_Data[0]);
	PrintMemo(tempStr);
	tempStr.sprintf(L"SHORT : %d", temp.SHORT_Data[0]);
	PrintMemo(tempStr);
	tempStr.sprintf(L"DWORD : %u", temp.DWORD_Data);
	PrintMemo(tempStr);
	tempStr.sprintf(L"INT : %d", temp.INT_Data);
	PrintMemo(tempStr);
	PrintMemo(L"-----------");

	tempStr.sprintf(L"%02X %02X %02X %02X", m_SendBuf[0], m_SendBuf[1], m_SendBuf[2], m_SendBuf[3]);
	PrintMsg(tempStr);
#endif
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::dxBarLargeButton1Click(TObject *Sender)
{
	TFormVersion* p_Dlg = new TFormVersion(NULL);
	p_Dlg->ShowModal();
	delete p_Dlg;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateUDPSocket() {

	// Pre return
	if(m_sock_UDP != INVALID_SOCKET) {
		PrintMsg(L"Socket exists already");
		return false;
	}

	// Common
	UnicodeString tempStr = L"";
	AnsiString t_AnsiStr = "";
	unsigned short t_Port = 0;
	struct sockaddr_in t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));

	// Input Comm Information
	t_sockaddr_in.sin_family = AF_INET;
	t_sockaddr_in.sin_addr.s_addr = inet_addr(m_LocalIPstr.c_str());
	t_sockaddr_in.sin_port = htons(m_LocalPort);

	// Create Socket
	m_sock_UDP = socket(AF_INET, SOCK_DGRAM, 0);
	if(m_sock_UDP == INVALID_SOCKET) {
		PrintMsg(L"Fail to create socket");
		return false;
	}

	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_sock_UDP, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to set socket option (REUSE)");
		return false;
	}

	// Get Recv Buffer Size
	int t_recvBufferSize = 0;
	int t_optSize = sizeof(t_recvBufferSize);
	if(getsockopt(m_sock_UDP, SOL_SOCKET, SO_RCVBUF, (char*)&t_recvBufferSize, &t_optSize) == SOCKET_ERROR) {
		PrintMsg(L"Fail to get socket recv buffer size");
	} else {
		tempStr.sprintf(L"Recv Buffer Size : %d", t_recvBufferSize);
		PrintMsg(tempStr);
	}


	// Bind
	if(bind(m_sock_UDP, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in)) < 0) {
		PrintMsg(L"Bind error");
		return false;
	}
	tempStr = L"Bind Local IP : ";
	tempStr += inet_ntoa(t_sockaddr_in.sin_addr);
	PrintMsg(tempStr);
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintThreadLogMessage(TMessage &_msg) {

	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
	tempStr = *p;
	PrintMsg(tempStr);

	if(m_bIsOnLogFile && m_fp_Log) {
		AnsiString t_AnsiStr = "";
		TTime t_time;
		unsigned short Year, Month, Day, Hour, Min, Sec, MilSec;
		t_time = Now();
		t_time.DecodeDate(&Year, &Month, &Day);
		t_time.DecodeTime(&Hour, &Min, &Sec, &MilSec);
		t_AnsiStr.sprintf("[%04d-%02d-%02d %02d:%02d:%02d:%03d] : ", Year, Month, Day, Hour, Min, Sec, MilSec);
		t_AnsiStr += tempStr;
		t_AnsiStr += "\n";
		fprintf(m_fp_Log, t_AnsiStr.c_str());
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MakeBinaryLogFile(TMessage &_msg) {

	// Pre Return
	if(!m_bIsOnLogFile && !m_fp_Bin) return;

	// Common
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	ST_RECVDATA* t_pRecvData = NULL;
	t_pRecvData = (ST_RECVDATA*)t_wParam;
	UnicodeString tempStr = L"";
	int t_Size = t_pRecvData->Size;
	if(t_Size <= 0) {
		PrintMsg(L"Received Packet is less than 0 byte");
		return;
	}

	BYTE* t_pByteBuffer = new BYTE[t_Size];
	memcpy(t_pByteBuffer, t_pRecvData->pBuffer, t_Size);
	fwrite(t_pByteBuffer, 1, t_Size, m_fp_Bin);
	delete t_pByteBuffer;

	tempStr.sprintf(L"Binary Log File Write Success (%d Byte)", t_Size);
	PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateUDPThread() {

	// Common
	UnicodeString tempStr = L"";

	// Create Thread
	if(m_UdpThread != NULL) {
		tempStr.sprintf(L"Client Thread is already exists.");
		PrintMsg(tempStr);
		return false;
	}

	// Creating Client Thread
	m_UdpThread = new CUdpSocketThread(&m_sock_UDP);

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_CreateClick(TObject *Sender)
{
	ExtractCommInformation();

	// Create Socket
	switch(cb_Protocol->SelectedItemIndex) {
		case 0: // UDP
			if(CreateUDPSocket()) {
				if(CreateUDPThread() == false) {
					PrintMsg(L"Fail to Create UDP Thread");
				} else {
					Notebook_Main->PageIndex = 1; // Protocol List Page
				}
			}
			break;

		case 1:	// TCP
			PrintMsg(L"TCP not yet");
			break;

		case 2: // Multicast
			PrintMsg(L"Multicast not yet");
			break;

		default:
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExtractCommInformation() {

	// Common
	struct sockaddr_in t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));

	// Extract User Input Information
	m_LocalPort = (unsigned short)ed_LocalPort->IntValue;
	m_ServerPort = (unsigned short)ed_ServerPort->IntValue;

	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b1 = (BYTE)ed_Local_IP_1->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b2 = (BYTE)ed_Local_IP_2->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b3 = (BYTE)ed_Local_IP_3->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b4 = (BYTE)ed_Local_IP_4->IntValue;
	m_LocalIPstr = inet_ntoa(t_sockaddr_in.sin_addr);

	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b1 = (BYTE)ed_Server_IP_1->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b2 = (BYTE)ed_Server_IP_2->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b3 = (BYTE)ed_Server_IP_3->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b4 = (BYTE)ed_Server_IP_4->IntValue;
	m_ServerIPstr = inet_ntoa(t_sockaddr_in.sin_addr);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitConfigExcelFile() {

	m_Book = xlCreateXMLBook();
	if(m_Book) {
		m_Book->setKey(L"JungWook Son", L"windows-2124230806c1e30f66bf6365a7l1hdm8");
		if(m_Book->load(L"Config.xlsx")) {
			//if(LoadSheet(L"Test")) PrintMsg(L"Success to load sheet");
		} else {
			PrintMsg(L"Fail to Load Excel File");
			return false;
		}
	} else {
		PrintMsg(L"Fail to Create Book");
		return false;
	}
	PrintMsg(L"Config File Init Complete");
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadConfigSheet() {

	// Common
	UnicodeString tempStr = L"";
	libxl::Sheet* t_pSheet = NULL;
	libxl::Format* t_pFormat = NULL;
	int t_RowStart = 3; // USER DEFINE
	int t_RowEnd = 0;
	int t_gridRow = 1;

	// Load Sheet
	t_pSheet = getSheetByName(m_Book, L"Config");
	if(!t_pSheet) {
		return false;
	}

	// Get Last Row Information
	t_RowEnd = t_pSheet->lastRow();

	// Load Send Protocol List
	for(int i = t_RowStart ; i < t_RowEnd ; i++) {

		// Pre Break;
		tempStr = getCellValue(t_pSheet, i, 2);
		if(tempStr == L"") break;

		grid_SendProtocolList->Cells[0][t_gridRow] = getCellValue(t_pSheet, i, 1);
		grid_SendProtocolList->Cells[1][t_gridRow] = getCellValue(t_pSheet, i, 2);
		grid_SendProtocolList->Cells[2][t_gridRow] = getCellValue(t_pSheet, i, 3);
		grid_SendProtocolList->Cells[3][t_gridRow] = getCellValue(t_pSheet, i, 4);
		t_gridRow++;
	}

	// Load Recv Protocol List
	t_gridRow = 1; // USER DEFINE
	for(int i = t_RowStart ; i < t_RowEnd ; i++) {

		// Pre Break;
		tempStr = getCellValue(t_pSheet, i, 9);
		if(tempStr == L"") break;

		grid_RecvProtocolList->Cells[0][t_gridRow] = getCellValue(t_pSheet, i, 8);
		grid_RecvProtocolList->Cells[1][t_gridRow] = getCellValue(t_pSheet, i, 9);
		grid_RecvProtocolList->Cells[2][t_gridRow] = getCellValue(t_pSheet, i, 10);
		grid_RecvProtocolList->Cells[3][t_gridRow] = getCellValue(t_pSheet, i, 11);
		t_gridRow++;
	}

	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadSheet(UnicodeString _SheetName, int _tag) {

	// Common
	TAdvStringGrid* p_grid = NULL;
	UnicodeString tempStr = L"";
	if(_tag == 0) {
		p_grid = grid_Protocol_Send;
	} else {
		p_grid = grid_Protocol_Recv;
	}

	libxl::Sheet* t_pSheet = NULL;
	libxl::Format* t_pFormat = NULL;
	int t_RowLast = 0;
	int t_TotalByteCount = 0;
	bool t_bIsMerge = false;

	int t_RowStart = 0;
	int t_RowEnd = 0;
	int t_ColStart = 0;
	int t_ColEnd = 0;

	int t_gridRow = 0;
	int t_gridCol = 0;

	int t_merge_row_first = 0;
	int t_merge_col_first = 0;
	int t_merge_row_last = 0;
	int t_merge_col_last = 0;

	int t_H_gap = 0;
	int t_V_gap = 0;

	// Load Sheet
	t_pSheet = getSheetByName(m_Book, _SheetName.w_str());
	if(!t_pSheet) {
		tempStr = L"Fail to Load sheet : ";
		tempStr += _SheetName;
		PrintMsg(tempStr);
		return false;
	}

	// Get Last Row Information
	t_RowLast = t_pSheet->lastRow();

	// Get Row/Col Information
	t_RowStart = DEFAULT_PROTOCOL_INFO_LINE_COUNT;
	t_RowEnd = t_RowLast;
	t_ColStart = DEFAULT_PROTOCOL_COL_START + 1; // +1 means real data area.
	t_ColEnd = DEFAULT_PROTOCOL_COL_START + 9; // 8 + 1 == 9

	// Set Row Count
	t_TotalByteCount = t_RowLast - DEFAULT_PROTOCOL_INFO_LINE_COUNT;
	p_grid->RowCount = t_TotalByteCount + 1; // +1 is Fixed Row

	// Load Byte Index and Print it into Grid
	for(int i = 0 ; i < t_TotalByteCount ; i++) {
		tempStr = getCellValue(t_pSheet, i + DEFAULT_PROTOCOL_INFO_LINE_COUNT, 2);
		p_grid->Cells[0][i + 1] = tempStr;
	}

	// Merge Sync
	t_gridRow = 1;
	t_gridCol = 1;
	for(int row = t_RowStart ; row < t_RowEnd ; row++) {
		for(int col = t_ColStart ; col < t_ColEnd ; col++) {
			t_bIsMerge = t_pSheet->getMerge(row, col, &t_merge_row_first, &t_merge_row_last, &t_merge_col_first, &t_merge_col_last);
			t_gridCol = col - t_ColStart + 1;
			tempStr = getCellValue(t_pSheet, row, col);
			p_grid->Cells[t_gridCol][t_gridRow] = tempStr;

			if(t_bIsMerge) {
				t_H_gap = t_merge_col_last - t_merge_col_first + 1; // +1 is essential
				t_V_gap = t_merge_row_last - t_merge_row_first;
				p_grid->MergeCells(t_gridCol, t_gridRow, t_H_gap, t_V_gap + 1);
				col += (t_H_gap - 1);
				row += t_V_gap;
				t_gridRow += t_V_gap;
			}
		}
		t_gridRow++;
	}

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitGrids() {

	grid_SendProtocolList->Cells[0][0] = L"Idx";
	grid_SendProtocolList->Cells[1][0] = L"Protocol Name";
	grid_SendProtocolList->Cells[2][0] = L"Sheet Name";
	grid_SendProtocolList->Cells[3][0] = L"Size(Byte)";

	grid_RecvProtocolList->Cells[0][0] = L"Idx";
	grid_RecvProtocolList->Cells[1][0] = L"Protocol Name";
	grid_RecvProtocolList->Cells[2][0] = L"Sheet Name";
	grid_RecvProtocolList->Cells[3][0] = L"Size(Byte)";

	grid_Protocol_Send->Cells[0][0] = L"BYTE";
	grid_Protocol_Send->Cells[1][0] = L"Bit 7";
	grid_Protocol_Send->Cells[2][0] = L"Bit 6";
	grid_Protocol_Send->Cells[3][0] = L"Bit 5";
	grid_Protocol_Send->Cells[4][0] = L"Bit 4";
	grid_Protocol_Send->Cells[5][0] = L"Bit 3";
	grid_Protocol_Send->Cells[6][0] = L"Bit 2";
	grid_Protocol_Send->Cells[7][0] = L"Bit 1";
	grid_Protocol_Send->Cells[8][0] = L"Bit 0";

	grid_Protocol_Recv->Cells[0][0] = L"BYTE";
	grid_Protocol_Recv->Cells[1][0] = L"Bit 7";
	grid_Protocol_Recv->Cells[2][0] = L"Bit 6";
	grid_Protocol_Recv->Cells[3][0] = L"Bit 5";
	grid_Protocol_Recv->Cells[4][0] = L"Bit 4";
	grid_Protocol_Recv->Cells[5][0] = L"Bit 3";
	grid_Protocol_Recv->Cells[6][0] = L"Bit 2";
	grid_Protocol_Recv->Cells[7][0] = L"Bit 1";
	grid_Protocol_Recv->Cells[8][0] = L"Bit 0";
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ResetGrid(int _Tag) {
	TAdvStringGrid* p_grid = NULL;

	if(_Tag == SEND_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Send;
		p_grid->Clear();
		InitGrids();
	} else if(_Tag == RECV_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Recv;
		p_grid->Clear();
		InitGrids();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Back_SendClick(TObject *Sender)
{
	Notebook_Send->PageIndex = 0;
	lb_Send_Title->Caption = L"Send Protocol List";
	btn_Send_Protocol->Visible = false;
	ResetGrid(SEND_PROTOCOL_TYPE);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Back_RecvClick(TObject *Sender)
{
	Notebook_Recv->PageIndex = 0;
	lb_Recv_Title->Caption = L"Recv Protocol List";
	tm_RefreshRecvBufferViewer->Enabled = false;
	ResetGrid(RECV_PROTOCOL_TYPE);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ChangeMouseCursor_ProtocolList(TObject *Sender, TShiftState Shift,
		  int X, int Y)
{
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;

	int t_Row = 0;
	int t_Col = 0;

	p_grid->MouseToCell(X, Y, t_Col, t_Row);
	if(t_Col < 0 || t_Row < 0) {
	    p_grid->Cursor = crDefault;
		return;
	}
	if(t_Col == 0 || t_Row == 0 || p_grid->Cells[t_Col][t_Row] == L"") {
		p_grid->Cursor = crDefault;
	} else {
		p_grid->Cursor = crHandPoint;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ChangeMouseCursor_ProtocolList_Out(TObject *Sender)
{
	TAdvStringGrid *p_grid = (TAdvStringGrid*)Sender;
	p_grid->Cursor = crDefault;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ProtocolListDbClick(TObject *Sender, int ARow, int ACol)
{
	// Common
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
	UnicodeString tempStr = L"";
	UnicodeString t_ProtocolName = L"";
	UnicodeString t_ProtocolSize = L"";
	int t_Tag = p_grid->Tag;
	if(t_Tag == 0) {
		// Send Protocol List
		p_grid = grid_SendProtocolList;
	} else {
		// Recv Protocol List
		p_grid = grid_RecvProtocolList;
	}

	// Pre Return
	if(ARow == 0 || ACol == 0) return;
	tempStr = p_grid->Cells[ACol][ARow];
	if(tempStr == L"") return;

	// Extract Target Protocol Information (for print information into title label)
	t_ProtocolName = p_grid->Cells[1][ARow];
	t_ProtocolSize = p_grid->Cells[3][ARow];

	// Extract Target Sheet Name
	tempStr = p_grid->Cells[2][ARow];

	if(LoadSheet(tempStr, t_Tag) == false) {
		ShowMessage(L"There is no sheet");
		return;
	}

	// Final Routine
	if(t_Tag == 0) {
		// Send Protocol List
		Notebook_Send->PageIndex = 1;
		tempStr = L"Send Protocol Name : ";
		tempStr += t_ProtocolName;
		tempStr += L"            Size : ";
		tempStr += t_ProtocolSize;
		tempStr += L" Byte";
		m_SendProtocolSize = StrToInt(t_ProtocolSize);
		lb_Send_Title->Caption = tempStr;
		memset(m_SendBuf, 0, m_SendProtocolSize);
		DisplayBufferDataIntoGrid(SEND_PROTOCOL_TYPE);
		btn_Send_Protocol->Visible = true;
	} else {
		// Recv Protocol List
		Notebook_Recv->PageIndex = 1;
		tempStr = L"Recv Protocol Name : ";
		tempStr += t_ProtocolName;
		tempStr += L"            Size : ";
		tempStr += t_ProtocolSize;
		tempStr += L" Byte";
		m_RecvProtocolSize = StrToInt(t_ProtocolSize);
		lb_Recv_Title->Caption = tempStr;
		memset(m_RecvBuf, 0, m_RecvProtocolSize);
		DisplayBufferDataIntoGrid(RECV_PROTOCOL_TYPE);
		tm_RefreshRecvBufferViewer->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::GetAlignment_ProtocolGrid(TObject *Sender, int ARow, int ACol,
          TAlignment &HAlign, TVAlignment &VAlign)
{
	HAlign = taCenter;
	VAlign = vtaCenter;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::OnMouseMove_Protocol(TObject *Sender, TShiftState Shift,
		  int X, int Y)
{
	m_ClickedX = X;
	m_ClickedY = Y;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::OnClickCell_Protocol(TObject *Sender, int ARow, int ACol)
{
	m_ClickedRow = ARow;
	m_ClickedCol = ACol;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::RightClick_Protocol(TObject *Sender, int ARow, int ACol)
{
	// Pre Return
	if(ARow <= 0 || ACol <= 0) return;

	// Common
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
	int t_Tag = p_grid->Tag;
	DWORD t_dword = 0; // Parameter For Func : SendMessage().
	WORD t_Lword = m_ClickedX; // X
	WORD t_Hword = m_ClickedY; // Y
	t_dword = t_Hword;
	t_dword = (t_dword << 16) | t_Lword;
	SendMessage(p_grid->Handle, WM_LBUTTONDOWN, MK_LBUTTON, t_dword);

	// HB Test Routine Start
	//if(m_bProtocolGridCtrlKeyDown) {
	//	CheckandRunORStopHB(m_ClickedRow, m_ClickedCol);
	//	return;
	//}
	// HB Test Routine END

	// Real Processing...
	DWORD t_Option = 0;

	// Declare & Init Variables
	//bool t_bTurnOn = false;
	//if(p_grid->Colors[m_ClickedCol][m_ClickedRow] == clLime) {
	//	t_bTurnOn = false;
	//} else {
	//	t_bTurnOn = true;
	//}

	//DoTestDeviceProtocol(p_grid, m_ClickedRow, m_ClickedCol, t_bTurnOn, t_Option);
	SendMessage(p_grid->Handle, WM_LBUTTONUP, MK_LBUTTON, t_dword); // Release Mouse Clicked Status (2019-05-13 mjw)

	ToggleBufferData(p_grid, m_ClickedRow, m_ClickedCol);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ToggleBufferData(TAdvStringGrid* _pGrid, int _Row, int _Col) {

	// Common
	UnicodeString tempStr = L"";
	TAdvStringGrid* p_grid = _pGrid;
	int t_Tag = p_grid->Tag;
	int t_DataSize = 0;
	BYTE* t_pBuffer = NULL;
	BYTE t_Byte = 0;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

	if(t_Tag == SEND_PROTOCOL_TYPE) {
		t_DataSize = m_SendProtocolSize;
		t_pBuffer = m_SendBuf;
	} else if(t_Tag == RECV_PROTOCOL_TYPE) {
		t_DataSize = m_RecvProtocolSize;
		t_pBuffer = m_RecvBuf;
	}

	// Check Merge
	if(p_grid->IsMergedCell(_Col, _Row)) {
		t_point = p_grid->CellSpan(_Col, _Row);
		t_Span_X = t_point.x;
		t_Span_Y = t_point.y;

		if(t_Span_Y >0) { // More than 1 Byte Merge
			switch(t_Span_Y) {
				case 1: // 2 BTYE
					if(t_pBuffer[_Row - 1] == 0 && t_pBuffer[_Row - 1 + 1] == 0) {
						memset(&(t_pBuffer[_Row - 1]), 0xFF, 2);
					} else {
						memset(&(t_pBuffer[_Row - 1]), 0x00, 2);
					}
					break;

				case 3: // 4 BYTE
					if(t_pBuffer[_Row - 1] == 0 && t_pBuffer[_Row - 1 + 1] == 0 && t_pBuffer[_Row - 1 + 2] == 0 && t_pBuffer[_Row - 1 + 3] == 0) {
						memset(&(t_pBuffer[_Row - 1]), 0xFF, 4);
					} else {
						memset(&(t_pBuffer[_Row - 1]), 0x00, 4);
					}
					break;

				default:
					break;
			}
		} else {
			switch(t_Span_X) {
				default:
					break;

				case 7: // 8 Bit (1 BYTE)
					if(t_pBuffer[_Row - 1] == 0) {
						t_pBuffer[_Row - 1] = 0xFF;
					} else {
						t_pBuffer[_Row - 1] = 0x00;
					}
					break;

				case 6: // 7 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x7F << (2 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x7F << (2 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x7F << (2 - _Col));
					}
					break;

				case 5: // 6 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x3F << (3 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x3F << (3 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x3F << (3 - _Col));
					}
					break;

				case 4: // 5 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x1F << (4 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x1F << (4 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x1F << (4 - _Col));
					}
					break;

				case 3: // 4 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x0F << (5 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x0F << (5 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x0F << (5 - _Col));
					}
					break;

				case 2: // 3 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x07 << (6 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x07 << (6 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x07 << (6 - _Col));
					}
					break;

				case 1: // 2 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x03 << (7 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x03 << (7 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x03 << (7 - _Col));
					}
					break;
			}
		}
	} else {
		t_pBuffer[_Row - 1] = _BitToggle(t_pBuffer[_Row - 1], 8 - _Col);
	}

	// Display Routine
	DisplayBufferDataIntoGrid(t_Tag);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::DisplayBufferDataIntoGrid(int _type) {

	// Common
	UnicodeString tempStr = L"";
	UnicodeString t_FinalStr = L"";
	TAdvStringGrid* p_grid = NULL;
	int t_DataSize = 0;
	int t_GridRow = 1;
	int t_GridCol = 1;
	BYTE* t_pBuffer = NULL;
	BYTE t_Byte = 0;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

	if(_type == SEND_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Send;
		t_DataSize = m_SendProtocolSize;
		t_pBuffer = m_SendBuf;
	} else if(_type == RECV_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Recv;
		t_DataSize = m_RecvProtocolSize;
		t_pBuffer = m_RecvBuf;
	}

	// Memory Allocate
	BYTE* t_Buffer = new BYTE[t_DataSize];
	memcpy(t_Buffer, t_pBuffer, t_DataSize);

	while(t_GridRow <= t_DataSize) {
		// Check Cell is Merged
		if(p_grid->IsMergedCell(t_GridCol, t_GridRow)) {
			t_point = p_grid->CellSpan(t_GridCol, t_GridRow);
			t_Span_X = t_point.x;
			t_Span_Y = t_point.y;

			if(t_Span_Y > 0) { // More than 1 Byte Merge
				switch(t_Span_Y) {
					case 1: // 2 BTYE
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0 && t_Buffer[t_GridRow - 1 + 1] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);

						if(m_bIsSigned) {
							tempStr.sprintf(L"\n%02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow + 1 - 1]);
						} else {
							tempStr.sprintf(L"\n%02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow + 1 - 1]);
						}
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow += 2;
						continue;
						break;

					case 3:
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0 && t_Buffer[t_GridRow - 1 + 1] == 0 && t_Buffer[t_GridRow - 1 + 2] == 0 && t_Buffer[t_GridRow - 1 + 3] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X%02X %02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow - 1 + 1], t_Buffer[t_GridRow - 1 + 2], t_Buffer[t_GridRow - 1 + 3]);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow += 4;
						continue;
						break;

					default:
						break;
				}
			} else { // Less than 1 Byte Merge
				switch(t_Span_X) {
					default:
						break;

					case 7: // (8 Bit : 1 Byte)
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Buffer[t_GridRow - 1]);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow++;
						continue;
						break;

					case 6: // 7 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (2 - t_GridCol)) & 0x7F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 6;
						break;

					case 5: // 6 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (3 - t_GridCol)) & 0x3F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 5;
						break;

					case 4: // 5 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (4 - t_GridCol)) & 0x1F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 4;
						break;

					case 3: // 4 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (5 - t_GridCol)) & 0x0F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 3;
						break;

					case 2: // 3 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (6 - t_GridCol)) & 0x07);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 2;
						break;

					case 1: // 2 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (7 - t_GridCol)) & 0x03);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = clLime;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 1;
						break;
				}
			}
		} else {
			if(_BitCheck(t_Buffer[t_GridRow - 1], 8 - t_GridCol)) {
				p_grid->Colors[t_GridCol][t_GridRow] = clLime;
			} else {
				p_grid->Colors[t_GridCol][t_GridRow] = clWhite;
			}
		}

		if(++t_GridCol >= 9) {
			t_GridCol = 1;
			t_GridRow++;
		}
	}

	// Release Allocated Memory
	delete t_Buffer;
}
//---------------------------------------------------------------------------

UnicodeString TFormMain::ExtractOriginSignalName(UnicodeString _str) {
	UnicodeString t_FinalStr = _str;
	for(int i = 0 ; i < _str.Length() ; i++) {
		if(_str.IsDelimiter(L"\n", i)) {
			t_FinalStr = _str.SubString(0, i - 1);
			break;
		}
	}
	return t_FinalStr;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::OnDbClickCell_Protocol(TObject *Sender, int ARow, int ACol)
{
	// Pre-Return
	if(ARow == 0 || ACol == 0) return;

	// Common
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
	int t_Tag = p_grid->Tag;
	int t_Row = m_ClickedRow;
	int t_Col = m_ClickedCol;
	BYTE* t_pBuffer = NULL;

	// If the cell is not merged : return
	if(p_grid->IsMergedCell(t_Col, t_Row) == false) return;

	// Routine Here...

	// Determine Send or Recv Protocol
	if(t_Tag == SEND_PROTOCOL_TYPE) {
		t_pBuffer = m_SendBuf;
	} else if(t_Tag == RECV_PROTOCOL_TYPE) {
		t_pBuffer = m_RecvBuf;
	} else return;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

	t_point = p_grid->CellSpan(t_Col, t_Row);
	t_Span_X = t_point.x;
	t_Span_Y = t_point.y;

	// Create Data Input Dialog
	TFormDataInputEdit* p_dlg = new TFormDataInputEdit(t_pBuffer, t_Row - 1, t_Span_Y + 1, 8 - t_Col, t_Span_X + 1, t_Tag);
	p_dlg->ShowModal();
	delete p_dlg;
	
	DisplayBufferDataIntoGrid(t_Tag);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_RefreshRecvBufferViewerTimer(TObject *Sender)
{
	// Refresh Receive Protocol Viewer Grid
	DisplayBufferDataIntoGrid(RECV_PROTOCOL_TYPE);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Send_ProtocolClick(TObject *Sender)
{
	SendPacket();
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::SendPacket() {

	// Pre Return
	if(m_sock_UDP == INVALID_SOCKET) {
		PrintMsg(L"There is no socket");
		return -1;
	}

	// Common
	UnicodeString t_Str = L"";
	int t_SendSize = 0;

	struct sockaddr_in	t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));
	t_sockaddr_in.sin_family = AF_INET;
	t_sockaddr_in.sin_addr.s_addr = inet_addr(m_ServerIPstr.c_str());
	t_sockaddr_in.sin_port = htons(m_ServerPort);

	t_SendSize = sendto(m_sock_UDP, m_SendBuf, m_SendProtocolSize, 0, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in));
	t_Str.sprintf(L"[SEND] Size : %04d", t_SendSize);
	t_Str += L" (Target IP : ";
	t_Str += m_ServerIPstr;
	t_Str += L", Port : ";
	t_Str += m_ServerPort;
	t_Str += L")";
	PrintMsg(t_Str);

	return t_SendSize;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_AutoSendTimer(TObject *Sender)
{
	SendPacket();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::cb_SendPeriodItemSelected(TObject *Sender, int itemindex)
{
	switch(itemindex) {
		default:
			break;
		case 0: // 1000ms
			tm_AutoSend->Interval = 1000;
			break;
		case 1: // 500ms
			tm_AutoSend->Interval = 500;
			break;
		case 2: // 250ms
			tm_AutoSend->Interval = 250;
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::cb_RecvPeriodItemSelected(TObject *Sender, int itemindex)
{
	switch(itemindex) {
		default:
			break;
		case 0: // 250ms
			tm_RefreshRecvBufferViewer->Interval = 250;
			break;
		case 1: // 500ms
			tm_RefreshRecvBufferViewer->Interval = 500;
			break;
		case 2: // 1000ms
			tm_RefreshRecvBufferViewer->Interval = 1000;
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::sd_AutoSendStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	if(State == ssOn) { // OFF
		tm_AutoSend->Enabled = false;
	} else { // ON
		tm_AutoSend->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::sd_EndianStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	if(State == ssOn) { // Little Endian
		m_bIsBigEndian = false;
	} else { // Big Endian
		m_bIsBigEndian = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::sd_LogFileStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	if(State == ssOn) { // Log File OFF
		m_bIsOnLogFile = false;
		if(m_fp_Log) {
			fclose(m_fp_Log);
			m_fp_Log = NULL;
			PrintMsg(L"Text Log File Closed");
		}
	} else { // Log File ON
		m_bIsOnLogFile = true;

		AnsiString t_folderPath = ".\\Log\\Text\\";
		AnsiString t_fileName = L"";
		AnsiString t_dstPath = L"";
		TTime t_time;
		unsigned short Year;
		unsigned short Month;
		unsigned short Day;
		unsigned short Hour;
		unsigned short Min;
		unsigned short Sec;
		unsigned short MilSec;
		t_time = Now();
		t_time.DecodeDate(&Year, &Month, &Day);
		t_time.DecodeTime(&Hour, &Min, &Sec, &MilSec);
		t_fileName.sprintf("Log_%04d%02d%02d_%02d%02d%02d.txt", Year, Month, Day, Hour, Min, Sec);
		t_dstPath = t_folderPath + t_fileName;
		ForceDirectories(ExtractFilePath(t_dstPath));
		m_fp_Log = fopen(t_dstPath.c_str(), "wt"); // Test Write
		if(m_fp_Log) PrintMsg(L"Success to open Text Log File");
		else PrintMsg(L"Fail to Opened");
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::sd_BinaryFileStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	if(State == ssOn) { // Binary File OFF
		m_bIsOnBinaryFile = false;
		if(m_fp_Bin) {
			fclose(m_fp_Bin);
			m_fp_Bin = NULL;
			PrintMsg(L"Binary Log File Closed");
		}
	} else { // Binary File ON
		m_bIsOnBinaryFile = true;

		AnsiString t_folderPath = ".\\Log\\Bin\\";
		AnsiString t_fileName = L"";
		AnsiString t_dstPath = L"";
		TTime t_time;
		unsigned short Year;
		unsigned short Month;
		unsigned short Day;
		unsigned short Hour;
		unsigned short Min;
		unsigned short Sec;
		unsigned short MilSec;
		t_time = Now();
		t_time.DecodeDate(&Year, &Month, &Day);
		t_time.DecodeTime(&Hour, &Min, &Sec, &MilSec);
		t_fileName.sprintf("Bin_%04d%02d%02d_%02d%02d%02d.bin", Year, Month, Day, Hour, Min, Sec);
		t_dstPath = t_folderPath + t_fileName;
		ForceDirectories(ExtractFilePath(t_dstPath));
		m_fp_Bin = fopen(t_dstPath.c_str(), "wb"); // Binary Write
		if(m_fp_Bin) PrintMsg(L"Success to open Binary Log File");
		else PrintMsg(L"Fail to Opened");
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::sd_SignedStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	if(State == ssOn) { // Unsigned
		m_bIsSigned = false;
	} else { // Signed
		m_bIsSigned = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Clear_RightClick(TObject *Sender)
{
	memo->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Clear_BottomClick(TObject *Sender)
{
	memo_Msg->Clear();
}
//---------------------------------------------------------------------------
