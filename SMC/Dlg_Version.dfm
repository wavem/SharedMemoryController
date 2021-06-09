object FormVersion: TFormVersion
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Version'
  ClientHeight = 134
  ClientWidth = 445
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ___pnBase: TPanel
    Left = 0
    Top = 0
    Width = 445
    Height = 134
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 428
    ExplicitHeight = 154
    object lb_Version: TLabel
      Left = 329
      Top = 72
      Width = 90
      Height = 16
      Caption = 'Version : 0.19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_UpdateDate: TLabel
      Left = 186
      Top = 94
      Width = 231
      Height = 16
      Caption = 'Last Update : 2020-11-19 PM 14:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Title_Version: TLabel
      Left = 21
      Top = 20
      Width = 168
      Height = 25
      Caption = 'Simulator Client'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_CloseVersionDialog: TAdvGlassButton
      Left = 319
      Top = 23
      Width = 100
      Height = 32
      Cursor = crHandPoint
      BackColor = 3355443
      Caption = 'CLOSE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ForeColor = clWhite
      GlowColor = clOlive
      InnerBorderColor = 3355443
      OuterBorderColor = cl3DDkShadow
      ParentFont = False
      ShineColor = clGray
      TabOrder = 0
      TabStop = False
      Version = '1.3.0.2'
      OnClick = btn_CloseVersionDialogClick
    end
  end
end
