//---------------------------------------------------------------------------

#ifndef Dlg_VersionH
#define Dlg_VersionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "AdvGlassButton.hpp"
//---------------------------------------------------------------------------
class TFormVersion : public TForm
{
__published:	// IDE-managed Components
	TPanel *___pnBase;
	TLabel *lb_Version;
	TLabel *lb_UpdateDate;
	TLabel *lb_Title_Version;
	TAdvGlassButton *btn_CloseVersionDialog;
	void __fastcall FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall btn_CloseVersionDialogClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormVersion(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormVersion *FormVersion;
//---------------------------------------------------------------------------
#endif
