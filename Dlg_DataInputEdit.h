//---------------------------------------------------------------------------

#ifndef Dlg_DataInputEditH
#define Dlg_DataInputEditH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "AdvEdit.hpp"
#include "AdvGlassButton.hpp"
#include "AdvSmoothSlider.hpp"
//---------------------------------------------------------------------------
class TFormDataInputEdit : public TForm
{
__published:	// IDE-managed Components
	TPanel *___pnBase_DataInputEdit;
	TAdvEdit *ed_Data;
	TAdvGlassButton *btn_Input;
	TAdvSmoothSlider *Slider_HexDec;
	void __fastcall btn_InputClick(TObject *Sender);
	void __fastcall ed_DataKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall Slider_HexDecStateChanged(TObject *Sender, TAdvSmoothSliderState State,
          double Value);
private:	// User declarations
public:		// User declarations
	__fastcall TFormDataInputEdit(TComponent* Owner);
	__fastcall TFormDataInputEdit(BYTE* _pBuffer, int _ByteIdx, int _ByteSize, int _BitIdx, int _BitSize, int _ProtocolType);

public: // Member Variables
	BYTE* m_pBuffer;
	int m_ByteIdx;
	int m_BitIdx;
	int m_ByteSize;
	int m_BitSize;
	int m_ProtocolType;

public: // Member Functions
	void __fastcall InputDataRoutine();
	void __fastcall ChangeHexDecMode();
};
//---------------------------------------------------------------------------
extern PACKAGE TFormDataInputEdit *FormDataInputEdit;
//---------------------------------------------------------------------------
#endif
