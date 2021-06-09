//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Dlg_DataInputEdit.h"
#include "Define.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvEdit"
#pragma link "AdvGlassButton"
#pragma link "AdvSmoothSlider"
#pragma resource "*.dfm"
TFormDataInputEdit *FormDataInputEdit;
//---------------------------------------------------------------------------
__fastcall TFormDataInputEdit::TFormDataInputEdit(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

__fastcall TFormDataInputEdit::TFormDataInputEdit(BYTE* _pBuffer, int _ByteIdx, int _ByteSize, int _BitIdx, int _BitSize, int _ProtocolType)
	: TForm(Owner)
{
	// Common
	m_pBuffer = _pBuffer;
	m_ByteIdx = _ByteIdx;
	m_BitIdx = _BitIdx;
	m_ByteSize = _ByteSize;
	m_BitSize = _BitSize;
	m_ProtocolType = _ProtocolType;
	unsigned int t_CurrentValue = 0;

	// Prevent Exception
	if(m_ProtocolType == RECV_PROTOCOL_TYPE) btn_Input->Enabled = false;

	// Extract Current Value Routine
	switch(m_ByteSize) {
		default:
			break;

		case 1:
		{
			switch(m_BitSize) {
				case 8:
					ed_Data->MaxValue = 255;
					t_CurrentValue = m_pBuffer[m_ByteIdx];
					break;
				case 7:
					ed_Data->MaxValue = 127;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 6) & 0x7F;
					break;
				case 6:
					ed_Data->MaxValue = 63;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 5) & 0x3F;
					break;
				case 5:
					ed_Data->MaxValue = 31;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 4) & 0x1F;
					break;
				case 4:
					ed_Data->MaxValue = 15;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 3) & 0x0F;
					break;
				case 3:
					ed_Data->MaxValue = 7;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 2) & 0x07;
					break;
				case 2:
					ed_Data->MaxValue = 3;
					t_CurrentValue = m_pBuffer[m_ByteIdx] >> (m_BitIdx - 1) & 0x03;
					break;
			}
			break;
		}

		case 2:
			ed_Data->MaxValue = 65535;
			memcpy(&t_CurrentValue, &(m_pBuffer[m_ByteIdx]), 2);
			break;

		case 4:
			//ed_Data->MaxValue = UINT_MAX;
			memcpy(&t_CurrentValue, &(m_pBuffer[m_ByteIdx]), 4);
			break;
	}

	ed_Data->Text = UIntToStr(t_CurrentValue);
}
//---------------------------------------------------------------------------

void __fastcall TFormDataInputEdit::btn_InputClick(TObject *Sender)
{
	InputDataRoutine();
	this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormDataInputEdit::InputDataRoutine() {

	// Common
	BYTE t_CurrentByte = 0;
	BYTE t_InputByte = 0;
	unsigned __int64 t_UIntValue = 0;
	UnicodeString tempStr = HexDisplayPrefix;

	if(ed_Data->EditType == etNumeric) {
		t_UIntValue = StrToUInt64(ed_Data->Text);
	} else if(ed_Data->EditType == etHex) {
		tempStr += ed_Data->Text;
		t_UIntValue = StrToUInt64(tempStr);
	}

	// Input Value Routine
	switch(m_ByteSize) {
		default:
			break;

		case 1:
		{
			t_CurrentByte = m_pBuffer[m_ByteIdx];
			t_InputByte = t_UIntValue;
			switch(m_BitSize) {
				default:
					break;
				case 8:
					// Do Nothing
					break;
				case 7:
					t_InputByte = t_InputByte << (m_BitIdx - 6) & (0x7F << (m_BitIdx - 6));
					t_CurrentByte = t_CurrentByte & (0x0101 >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
				case 6:
					t_InputByte = t_InputByte << (m_BitIdx - 5) & (0x3F << (m_BitIdx - 5));
					t_CurrentByte = t_CurrentByte & (0x0303 >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
				case 5:
					t_InputByte = t_InputByte << (m_BitIdx - 4) & (0x1F << (m_BitIdx - 4));
					t_CurrentByte = t_CurrentByte & (0x0707 >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
				case 4:
					t_InputByte = t_InputByte << (m_BitIdx - 3) & (0x0F << (m_BitIdx - 3));
					t_CurrentByte = t_CurrentByte & (0x0F0F >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
				case 3:
					t_InputByte = t_InputByte << (m_BitIdx - 2) & (0x07 << (m_BitIdx - 2));
					t_CurrentByte = t_CurrentByte & (0x1F1F >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
				case 2:
					t_InputByte = t_InputByte << (m_BitIdx - 1) & (0x03 << (m_BitIdx - 1));
					t_CurrentByte = t_CurrentByte & (0x3F3F >> (7 - m_BitIdx));
					t_InputByte |= t_CurrentByte;
					break;
			}
			memcpy(&(m_pBuffer[m_ByteIdx]), &t_InputByte, 1);
			break;
		}

		case 2:
			memcpy(&(m_pBuffer[m_ByteIdx]), &t_UIntValue, 2);
			break;

		case 4:
			memcpy(&(m_pBuffer[m_ByteIdx]), &t_UIntValue, 4);
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormDataInputEdit::ed_DataKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	if(m_ProtocolType == RECV_PROTOCOL_TYPE) return;
	if(Key == VK_RETURN) {
		InputDataRoutine();
		this->Close();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormDataInputEdit::Slider_HexDecStateChanged(TObject *Sender, TAdvSmoothSliderState State,
		  double Value)
{
	ChangeHexDecMode();
}
//---------------------------------------------------------------------------

void __fastcall TFormDataInputEdit::ChangeHexDecMode() {

	// Common
	unsigned __int64 t_CurrentUIntValue = 0;
	UnicodeString tempStr = HexDisplayPrefix;

	if(Slider_HexDec->State == ssOn) {
		this->Caption = L"Data Input Edit (DEC)";
		tempStr += ed_Data->Text;
		t_CurrentUIntValue = StrToUInt64(tempStr);
		ed_Data->EditType = etNumeric;
		ed_Data->Text = UIntToStr(t_CurrentUIntValue);
	} else {
		this->Caption = L"Data Input Edit (HEX)";
		t_CurrentUIntValue = StrToUInt64(ed_Data->Text);
		ed_Data->EditType = etHex;
		ed_Data->Text = IntToHex((unsigned __int64) t_CurrentUIntValue, 0);
	}
}
//---------------------------------------------------------------------------

