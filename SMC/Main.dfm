object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Simulator_Client'
  ClientHeight = 1011
  ClientWidth = 1914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainRibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 1914
    Height = 122
    Cursor = crHandPoint
    BarManager = BarMgr
    ColorSchemeName = 'MetropolisDark'
    Fonts.AssignedFonts = [afGroupHeader]
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = clWhite
    Fonts.GroupHeader.Height = -12
    Fonts.GroupHeader.Name = #47569#51008' '#44256#46357
    Fonts.GroupHeader.Style = []
    PopupMenuItems = [rpmiMinimizeRibbon]
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object MenuTab_1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end
        item
          ToolbarName = 'BarMgrBar2'
        end>
      Index = 0
    end
  end
  object ___pnBase: TPanel
    Left = 0
    Top = 122
    Width = 1914
    Height = 889
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 5
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 1694
      Height = 788
      Align = alLeft
      PageIndex = 2
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Default'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_00_Start: TPanel
          Left = 0
          Top = 0
          Width = 1694
          Height = 788
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 0
          object lb_Title_Start_1: TLabel
            Left = 32
            Top = 41
            Width = 54
            Height = 16
            Caption = 'Protocol'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Start_2: TLabel
            Left = 32
            Top = 86
            Width = 50
            Height = 16
            Caption = 'Local IP'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Start_3: TLabel
            Left = 32
            Top = 130
            Width = 61
            Height = 16
            Caption = 'Server IP'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Start_4: TLabel
            Left = 32
            Top = 172
            Width = 65
            Height = 16
            Caption = 'Local Port'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Start_5: TLabel
            Left = 32
            Top = 213
            Width = 76
            Height = 16
            Caption = 'Server Port'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object cb_Protocol: TAdvSmoothComboBox
            Left = 122
            Top = 34
            Width = 113
            Height = 30
            Cursor = crHandPoint
            Fill.Color = cl3DDkShadow
            Fill.ColorTo = 5131854
            Fill.ColorMirror = 5131854
            Fill.ColorMirrorTo = 5131854
            Fill.GradientType = gtSolid
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Items = <
              item
                Caption = 'UDP'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end
              item
                Caption = 'TCP'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end
              item
                Caption = 'Multicast'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end>
            ItemAppearance.FillAlternate.Color = 16773091
            ItemAppearance.FillAlternate.ColorTo = 16768452
            ItemAppearance.FillAlternate.ColorMirror = 16765357
            ItemAppearance.FillAlternate.ColorMirrorTo = 16767936
            ItemAppearance.FillAlternate.GradientType = gtVertical
            ItemAppearance.FillAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillAlternate.BorderColor = 16765357
            ItemAppearance.FillAlternate.Rounding = 0
            ItemAppearance.FillAlternate.ShadowOffset = 0
            ItemAppearance.FillAlternate.Glow = gmNone
            ItemAppearance.Fill.Color = cl3DDkShadow
            ItemAppearance.Fill.ColorTo = 5131854
            ItemAppearance.Fill.ColorMirror = 5131854
            ItemAppearance.Fill.ColorMirrorTo = 5131854
            ItemAppearance.Fill.GradientType = gtVertical
            ItemAppearance.Fill.GradientMirrorType = gtVertical
            ItemAppearance.Fill.BorderColor = 5131854
            ItemAppearance.Fill.Rounding = 0
            ItemAppearance.Fill.ShadowOffset = 0
            ItemAppearance.Fill.Glow = gmNone
            ItemAppearance.FillSelected.ColorTo = clSilver
            ItemAppearance.FillSelected.ColorMirror = clSilver
            ItemAppearance.FillSelected.ColorMirrorTo = clSilver
            ItemAppearance.FillSelected.GradientType = gtVertical
            ItemAppearance.FillSelected.GradientMirrorType = gtVertical
            ItemAppearance.FillSelected.BorderColor = 5131854
            ItemAppearance.FillSelected.Rounding = 0
            ItemAppearance.FillSelected.ShadowOffset = 0
            ItemAppearance.FillSelected.Glow = gmNone
            ItemAppearance.FillSelectedAlternate.Color = 11196927
            ItemAppearance.FillSelectedAlternate.ColorTo = 7257087
            ItemAppearance.FillSelectedAlternate.ColorMirror = 4370174
            ItemAppearance.FillSelectedAlternate.ColorMirrorTo = 8053246
            ItemAppearance.FillSelectedAlternate.GradientType = gtVertical
            ItemAppearance.FillSelectedAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillSelectedAlternate.BorderColor = 16765357
            ItemAppearance.FillSelectedAlternate.Rounding = 0
            ItemAppearance.FillSelectedAlternate.ShadowOffset = 0
            ItemAppearance.FillSelectedAlternate.Glow = gmNone
            ItemAppearance.FillDisabled.Color = 15921906
            ItemAppearance.FillDisabled.ColorTo = 11974326
            ItemAppearance.FillDisabled.ColorMirror = 11974326
            ItemAppearance.FillDisabled.ColorMirrorTo = 15921906
            ItemAppearance.FillDisabled.GradientType = gtVertical
            ItemAppearance.FillDisabled.GradientMirrorType = gtVertical
            ItemAppearance.FillDisabled.BorderColor = 16765357
            ItemAppearance.FillDisabled.Rounding = 0
            ItemAppearance.FillDisabled.ShadowOffset = 0
            ItemAppearance.FillDisabled.Glow = gmNone
            ItemAppearance.ProgressAppearance.BackGroundFill.Color = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorTo = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirror = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirrorTo = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientMirrorType = gtSolid
            ItemAppearance.ProgressAppearance.BackGroundFill.BorderColor = clSilver
            ItemAppearance.ProgressAppearance.BackGroundFill.Rounding = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.ProgressFill.Color = 16773091
            ItemAppearance.ProgressAppearance.ProgressFill.ColorTo = 16768452
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirror = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirrorTo = 16767936
            ItemAppearance.ProgressAppearance.ProgressFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.GradientMirrorType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.BorderColor = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.Rounding = 0
            ItemAppearance.ProgressAppearance.ProgressFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.ProgressFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.Font.Color = clWindowText
            ItemAppearance.ProgressAppearance.Font.Height = -11
            ItemAppearance.ProgressAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.Font.Style = []
            ItemAppearance.ProgressAppearance.ProgressFont.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.ProgressFont.Color = clWindowText
            ItemAppearance.ProgressAppearance.ProgressFont.Height = -11
            ItemAppearance.ProgressAppearance.ProgressFont.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.ProgressFont.Style = []
            ItemAppearance.ProgressAppearance.ValueFormat = '%.0f%%'
            ItemAppearance.ButtonAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ButtonAppearance.Font.Color = clWindowText
            ItemAppearance.ButtonAppearance.Font.Height = -11
            ItemAppearance.ButtonAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ButtonAppearance.Font.Style = []
            ItemAppearance.InfoFill.ColorMirror = clNone
            ItemAppearance.InfoFill.ColorMirrorTo = clNone
            ItemAppearance.InfoFill.GradientType = gtVertical
            ItemAppearance.InfoFill.GradientMirrorType = gtSolid
            ItemAppearance.InfoFill.BorderColor = clNone
            ItemAppearance.InfoFill.Rounding = 0
            ItemAppearance.InfoFill.ShadowOffset = 0
            ItemAppearance.InfoFill.Glow = gmNone
            ItemAppearance.InfoFillSelected.ColorMirror = clNone
            ItemAppearance.InfoFillSelected.ColorMirrorTo = clNone
            ItemAppearance.InfoFillSelected.GradientType = gtVertical
            ItemAppearance.InfoFillSelected.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillSelected.BorderColor = clNone
            ItemAppearance.InfoFillSelected.Rounding = 0
            ItemAppearance.InfoFillSelected.ShadowOffset = 0
            ItemAppearance.InfoFillSelected.Glow = gmNone
            ItemAppearance.InfoFillDisabled.ColorMirror = clNone
            ItemAppearance.InfoFillDisabled.ColorMirrorTo = clNone
            ItemAppearance.InfoFillDisabled.GradientType = gtVertical
            ItemAppearance.InfoFillDisabled.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillDisabled.BorderColor = clNone
            ItemAppearance.InfoFillDisabled.Rounding = 0
            ItemAppearance.InfoFillDisabled.ShadowOffset = 0
            ItemAppearance.InfoFillDisabled.Glow = gmNone
            ItemAppearance.DeleteButtonCaption = 'Delete'
            LookupBar.DisabledFont.Charset = DEFAULT_CHARSET
            LookupBar.DisabledFont.Color = clSilver
            LookupBar.DisabledFont.Height = -11
            LookupBar.DisabledFont.Name = 'Tahoma'
            LookupBar.DisabledFont.Style = []
            LookupBar.Font.Charset = DEFAULT_CHARSET
            LookupBar.Font.Color = clWindowText
            LookupBar.Font.Height = -11
            LookupBar.Font.Name = 'Tahoma'
            LookupBar.Font.Style = []
            LookupBar.Visible = False
            Sections.Font.Charset = DEFAULT_CHARSET
            Sections.Font.Color = clWindowText
            Sections.Font.Height = -11
            Sections.Font.Name = 'Tahoma'
            Sections.Font.Style = []
            Sections.BorderColor = clBlack
            SelectedItemIndex = 0
            Header.Fill.Color = 16773091
            Header.Fill.ColorTo = 16765615
            Header.Fill.ColorMirror = clNone
            Header.Fill.ColorMirrorTo = clNone
            Header.Fill.GradientType = gtVertical
            Header.Fill.GradientMirrorType = gtSolid
            Header.Fill.BorderColor = 16765615
            Header.Fill.Rounding = 0
            Header.Fill.ShadowOffset = 0
            Header.Fill.Glow = gmNone
            Header.Caption = 'Header'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = 7485192
            Header.Font.Height = -13
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Header.Visible = False
            Filter.Fill.Color = 16773091
            Filter.Fill.ColorMirror = clNone
            Filter.Fill.ColorMirrorTo = clNone
            Filter.Fill.GradientType = gtSolid
            Filter.Fill.GradientMirrorType = gtSolid
            Filter.Fill.BorderColor = 16765615
            Filter.Fill.Rounding = 0
            Filter.Fill.ShadowOffset = 0
            Filter.Fill.Glow = gmNone
            Footer.Fill.Color = 16773091
            Footer.Fill.ColorTo = 16765615
            Footer.Fill.ColorMirror = clNone
            Footer.Fill.ColorMirrorTo = clNone
            Footer.Fill.GradientType = gtVertical
            Footer.Fill.GradientMirrorType = gtSolid
            Footer.Fill.BorderColor = 16765615
            Footer.Fill.Rounding = 0
            Footer.Fill.ShadowOffset = 0
            Footer.Fill.Glow = gmNone
            Footer.Caption = 'Footer'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = 7485192
            Footer.Font.Height = -13
            Footer.Font.Name = 'Tahoma'
            Footer.Font.Style = []
            Footer.Visible = False
            ScrollIndicator.Visible = False
            DefaultItem.Caption = 'Item 0'
            DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionFont.Color = 2129339
            DefaultItem.CaptionFont.Height = -13
            DefaultItem.CaptionFont.Name = 'Tahoma'
            DefaultItem.CaptionFont.Style = [fsBold]
            DefaultItem.CaptionSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionSelectedFont.Color = 2129339
            DefaultItem.CaptionSelectedFont.Height = -13
            DefaultItem.CaptionSelectedFont.Name = 'Tahoma'
            DefaultItem.CaptionSelectedFont.Style = [fsBold]
            DefaultItem.InfoFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoFont.Color = clWindowText
            DefaultItem.InfoFont.Height = -11
            DefaultItem.InfoFont.Name = 'Tahoma'
            DefaultItem.InfoFont.Style = []
            DefaultItem.InfoSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoSelectedFont.Color = clWindowText
            DefaultItem.InfoSelectedFont.Height = -11
            DefaultItem.InfoSelectedFont.Name = 'Tahoma'
            DefaultItem.InfoSelectedFont.Style = []
            DefaultItem.NotesFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesFont.Color = clWindowText
            DefaultItem.NotesFont.Height = -11
            DefaultItem.NotesFont.Name = 'Tahoma'
            DefaultItem.NotesFont.Style = []
            DefaultItem.NotesSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesSelectedFont.Color = clWindowText
            DefaultItem.NotesSelectedFont.Height = -11
            DefaultItem.NotesSelectedFont.Name = 'Tahoma'
            DefaultItem.NotesSelectedFont.Style = []
            DefaultItem.ProgressMaximum = 100.000000000000000000
            Categories = <>
            TabOrder = 0
            Text = ''
            ItemBackGroundFill.Color = cl3DDkShadow
            ItemBackGroundFill.ColorTo = 5131854
            ItemBackGroundFill.ColorMirror = 5131854
            ItemBackGroundFill.ColorMirrorTo = 5131854
            ItemBackGroundFill.GradientType = gtVertical
            ItemBackGroundFill.GradientMirrorType = gtVertical
            ItemBackGroundFill.BorderColor = 5131854
            ItemBackGroundFill.Rounding = 0
            ItemBackGroundFill.ShadowOffset = 0
            ItemBackGroundFill.Glow = gmNone
            ButtonAppearance.ArrowColor = 2129339
            ButtonAppearance.ArrowColorHover = 2129339
            ButtonAppearance.ArrowColorDown = 2129339
            ButtonAppearance.Fill.Color = cl3DDkShadow
            ButtonAppearance.Fill.ColorTo = 5131854
            ButtonAppearance.Fill.ColorMirror = 5131854
            ButtonAppearance.Fill.ColorMirrorTo = 5131854
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtVertical
            ButtonAppearance.Fill.BorderColor = 5131854
            ButtonAppearance.Fill.Rounding = 5
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmNone
            ButtonAppearance.FillDown.Color = 11196927
            ButtonAppearance.FillDown.ColorTo = 7257087
            ButtonAppearance.FillDown.ColorMirror = 4370174
            ButtonAppearance.FillDown.ColorMirrorTo = 8053246
            ButtonAppearance.FillDown.GradientType = gtVertical
            ButtonAppearance.FillDown.GradientMirrorType = gtVertical
            ButtonAppearance.FillDown.BorderColor = 16765615
            ButtonAppearance.FillDown.Rounding = 5
            ButtonAppearance.FillDown.ShadowOffset = 0
            ButtonAppearance.FillDown.Glow = gmNone
            ButtonAppearance.FillHover.Color = 15465983
            ButtonAppearance.FillHover.ColorTo = 11332863
            ButtonAppearance.FillHover.ColorMirror = 5888767
            ButtonAppearance.FillHover.ColorMirrorTo = 10807807
            ButtonAppearance.FillHover.GradientType = gtVertical
            ButtonAppearance.FillHover.GradientMirrorType = gtVertical
            ButtonAppearance.FillHover.BorderColor = 16765615
            ButtonAppearance.FillHover.Rounding = 5
            ButtonAppearance.FillHover.ShadowOffset = 0
            ButtonAppearance.FillHover.Glow = gmNone
            DropDownHeight = 90
            DropDownWidth = 112
            TMSStyle = 4
          end
          object ed_Local_IP_1: TAdvEdit
            Left = 122
            Top = 82
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 1
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_2: TAdvEdit
            Left = 175
            Top = 82
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 2
            Text = '168'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_3: TAdvEdit
            Left = 228
            Top = 82
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 3
            Text = '0'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_4: TAdvEdit
            Left = 281
            Top = 82
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 4
            Text = '47'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Server_IP_1: TAdvEdit
            Left = 122
            Top = 125
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 5
            Text = '112'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Server_IP_2: TAdvEdit
            Left = 175
            Top = 125
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 6
            Text = '217'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Server_IP_3: TAdvEdit
            Left = 228
            Top = 125
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 7
            Text = '45'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Server_IP_4: TAdvEdit
            Left = 281
            Top = 125
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 8
            Text = '202'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_LocalPort: TAdvEdit
            Left = 122
            Top = 167
            Width = 100
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 65535
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 5
            ParentFont = False
            TabOrder = 9
            Text = '16000'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_ServerPort: TAdvEdit
            Left = 122
            Top = 208
            Width = 100
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 65535
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 5
            ParentFont = False
            TabOrder = 10
            Text = '16000'
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Create: TAdvGlassButton
            Left = 122
            Top = 264
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'Create'
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
            TabOrder = 11
            Version = '1.3.0.2'
            OnClick = btn_CreateClick
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = '1'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_01_View: TPanel
          Left = 0
          Top = 0
          Width = 1694
          Height = 788
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 0
          object lb_Send_Title: TLabel
            Left = 26
            Top = 18
            Width = 136
            Height = 18
            Caption = 'Send Protocol List'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Recv_Title: TLabel
            Left = 873
            Top = 18
            Width = 136
            Height = 18
            Caption = 'Recv Protocol List'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Notebook_Send: TNotebook
            Left = 0
            Top = 48
            Width = 847
            Height = 734
            PageIndex = 1
            TabOrder = 0
            object TPage
              Left = 0
              Top = 0
              Caption = 'Default'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_S_01: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
                DesignSize = (
                  847
                  734)
                object grid_SendProtocolList: TAdvStringGrid
                  Left = 11
                  Top = 16
                  Width = 820
                  Height = 698
                  Cursor = crDefault
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  ColCount = 4
                  DefaultColWidth = 94
                  DrawingStyle = gdsClassic
                  RowCount = 40
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnMouseLeave = ChangeMouseCursor_ProtocolList_Out
                  OnMouseMove = ChangeMouseCursor_ProtocolList
                  HoverRowCells = [hcNormal, hcSelected]
                  OnDblClickCell = ProtocolListDbClick
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = clWindowText
                  ActiveCellFont.Height = -11
                  ActiveCellFont.Name = 'Tahoma'
                  ActiveCellFont.Style = [fsBold]
                  ControlLook.FixedGradientHoverFrom = clGray
                  ControlLook.FixedGradientHoverTo = clWhite
                  ControlLook.FixedGradientDownFrom = clGray
                  ControlLook.FixedGradientDownTo = clSilver
                  ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownHeader.Font.Color = clWindowText
                  ControlLook.DropDownHeader.Font.Height = -11
                  ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                  ControlLook.DropDownHeader.Font.Style = []
                  ControlLook.DropDownHeader.Visible = True
                  ControlLook.DropDownHeader.Buttons = <>
                  ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownFooter.Font.Color = clWindowText
                  ControlLook.DropDownFooter.Font.Height = -11
                  ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                  ControlLook.DropDownFooter.Font.Style = []
                  ControlLook.DropDownFooter.Visible = True
                  ControlLook.DropDownFooter.Buttons = <>
                  DefaultAlignment = taCenter
                  Filter = <>
                  FilterDropDown.Font.Charset = DEFAULT_CHARSET
                  FilterDropDown.Font.Color = clWindowText
                  FilterDropDown.Font.Height = -11
                  FilterDropDown.Font.Name = 'Tahoma'
                  FilterDropDown.Font.Style = []
                  FilterDropDown.TextChecked = 'Checked'
                  FilterDropDown.TextUnChecked = 'Unchecked'
                  FilterDropDownClear = '(All)'
                  FilterEdit.TypeNames.Strings = (
                    'Starts with'
                    'Ends with'
                    'Contains'
                    'Not contains'
                    'Equal'
                    'Not equal'
                    'Larger than'
                    'Smaller than'
                    'Clear')
                  FixedColWidth = 47
                  FixedRowHeight = 34
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Tahoma'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
                  HoverButtons.Buttons = <>
                  HoverButtons.Position = hbLeftFromColumnLeft
                  HTMLSettings.ImageFolder = 'images'
                  HTMLSettings.ImageBaseName = 'img'
                  IntelliZoom = False
                  MouseActions.WheelAction = waScroll
                  PrintSettings.DateFormat = 'dd/mm/yyyy'
                  PrintSettings.Font.Charset = DEFAULT_CHARSET
                  PrintSettings.Font.Color = clWindowText
                  PrintSettings.Font.Height = -11
                  PrintSettings.Font.Name = 'Tahoma'
                  PrintSettings.Font.Style = []
                  PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FixedFont.Color = clWindowText
                  PrintSettings.FixedFont.Height = -11
                  PrintSettings.FixedFont.Name = 'Tahoma'
                  PrintSettings.FixedFont.Style = []
                  PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                  PrintSettings.HeaderFont.Color = clWindowText
                  PrintSettings.HeaderFont.Height = -11
                  PrintSettings.HeaderFont.Name = 'Tahoma'
                  PrintSettings.HeaderFont.Style = []
                  PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FooterFont.Color = clWindowText
                  PrintSettings.FooterFont.Height = -11
                  PrintSettings.FooterFont.Name = 'Tahoma'
                  PrintSettings.FooterFont.Style = []
                  PrintSettings.PageNumSep = '/'
                  ScrollBarAlways = saVert
                  ScrollSynch = True
                  SearchFooter.FindNextCaption = 'Find &next'
                  SearchFooter.FindPrevCaption = 'Find &previous'
                  SearchFooter.Font.Charset = DEFAULT_CHARSET
                  SearchFooter.Font.Color = clWindowText
                  SearchFooter.Font.Height = -11
                  SearchFooter.Font.Name = 'Tahoma'
                  SearchFooter.Font.Style = []
                  SearchFooter.HighLightCaption = 'Highlight'
                  SearchFooter.HintClose = 'Close'
                  SearchFooter.HintFindNext = 'Find next occurrence'
                  SearchFooter.HintFindPrev = 'Find previous occurrence'
                  SearchFooter.HintHighlight = 'Highlight occurrences'
                  SearchFooter.MatchCaseCaption = 'Match case'
                  SelectionColor = 7514857
                  SortSettings.DefaultFormat = ssAutomatic
                  Version = '7.8.0.1'
                  ColWidths = (
                    47
                    325
                    325
                    102)
                  RowHeights = (
                    34
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22)
                end
              end
            end
            object TPage
              Left = 0
              Top = 0
              HelpContext = 1
              Caption = 'page 1'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_S_02: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
                DesignSize = (
                  847
                  734)
                object grid_Protocol_Send: TAdvStringGrid
                  Tag = 1
                  Left = 11
                  Top = 16
                  Width = 820
                  Height = 698
                  Cursor = crDefault
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  ColCount = 9
                  DefaultColWidth = 94
                  DefaultRowHeight = 44
                  DrawingStyle = gdsClassic
                  RowCount = 40
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnMouseMove = OnMouseMove_Protocol
                  HoverRowCells = [hcNormal, hcSelected]
                  OnGetAlignment = GetAlignment_ProtocolGrid
                  OnClickCell = OnClickCell_Protocol
                  OnRightClickCell = RightClick_Protocol
                  OnDblClickCell = OnDbClickCell_Protocol
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = clWindowText
                  ActiveCellFont.Height = -11
                  ActiveCellFont.Name = 'Tahoma'
                  ActiveCellFont.Style = [fsBold]
                  ControlLook.FixedGradientHoverFrom = clGray
                  ControlLook.FixedGradientHoverTo = clWhite
                  ControlLook.FixedGradientDownFrom = clGray
                  ControlLook.FixedGradientDownTo = clSilver
                  ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownHeader.Font.Color = clWindowText
                  ControlLook.DropDownHeader.Font.Height = -11
                  ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                  ControlLook.DropDownHeader.Font.Style = []
                  ControlLook.DropDownHeader.Visible = True
                  ControlLook.DropDownHeader.Buttons = <>
                  ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownFooter.Font.Color = clWindowText
                  ControlLook.DropDownFooter.Font.Height = -11
                  ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                  ControlLook.DropDownFooter.Font.Style = []
                  ControlLook.DropDownFooter.Visible = True
                  ControlLook.DropDownFooter.Buttons = <>
                  DefaultAlignment = taCenter
                  Filter = <>
                  FilterDropDown.Font.Charset = DEFAULT_CHARSET
                  FilterDropDown.Font.Color = clWindowText
                  FilterDropDown.Font.Height = -11
                  FilterDropDown.Font.Name = 'Tahoma'
                  FilterDropDown.Font.Style = []
                  FilterDropDown.TextChecked = 'Checked'
                  FilterDropDown.TextUnChecked = 'Unchecked'
                  FilterDropDownClear = '(All)'
                  FilterEdit.TypeNames.Strings = (
                    'Starts with'
                    'Ends with'
                    'Contains'
                    'Not contains'
                    'Equal'
                    'Not equal'
                    'Larger than'
                    'Smaller than'
                    'Clear')
                  FixedColWidth = 47
                  FixedRowHeight = 34
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Tahoma'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
                  HoverButtons.Buttons = <>
                  HoverButtons.Position = hbLeftFromColumnLeft
                  HTMLSettings.ImageFolder = 'images'
                  HTMLSettings.ImageBaseName = 'img'
                  IntelliZoom = False
                  MouseActions.WheelAction = waScroll
                  PrintSettings.DateFormat = 'dd/mm/yyyy'
                  PrintSettings.Font.Charset = DEFAULT_CHARSET
                  PrintSettings.Font.Color = clWindowText
                  PrintSettings.Font.Height = -11
                  PrintSettings.Font.Name = 'Tahoma'
                  PrintSettings.Font.Style = []
                  PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FixedFont.Color = clWindowText
                  PrintSettings.FixedFont.Height = -11
                  PrintSettings.FixedFont.Name = 'Tahoma'
                  PrintSettings.FixedFont.Style = []
                  PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                  PrintSettings.HeaderFont.Color = clWindowText
                  PrintSettings.HeaderFont.Height = -11
                  PrintSettings.HeaderFont.Name = 'Tahoma'
                  PrintSettings.HeaderFont.Style = []
                  PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FooterFont.Color = clWindowText
                  PrintSettings.FooterFont.Height = -11
                  PrintSettings.FooterFont.Name = 'Tahoma'
                  PrintSettings.FooterFont.Style = []
                  PrintSettings.PageNumSep = '/'
                  ScrollBarAlways = saVert
                  ScrollSynch = True
                  SearchFooter.FindNextCaption = 'Find &next'
                  SearchFooter.FindPrevCaption = 'Find &previous'
                  SearchFooter.Font.Charset = DEFAULT_CHARSET
                  SearchFooter.Font.Color = clWindowText
                  SearchFooter.Font.Height = -11
                  SearchFooter.Font.Name = 'Tahoma'
                  SearchFooter.Font.Style = []
                  SearchFooter.HighLightCaption = 'Highlight'
                  SearchFooter.HintClose = 'Close'
                  SearchFooter.HintFindNext = 'Find next occurrence'
                  SearchFooter.HintFindPrev = 'Find previous occurrence'
                  SearchFooter.HintHighlight = 'Highlight occurrences'
                  SearchFooter.MatchCaseCaption = 'Match case'
                  ShowSelection = False
                  SortSettings.DefaultFormat = ssAutomatic
                  Version = '7.8.0.1'
                  ColWidths = (
                    47
                    94
                    94
                    94
                    94
                    94
                    94
                    94
                    94)
                  RowHeights = (
                    34
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44)
                end
              end
            end
            object TPage
              Left = 0
              Top = 0
              HelpContext = 2
              Caption = 'page 2'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_S_03: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
          end
          object Notebook_Recv: TNotebook
            Left = 847
            Top = 48
            Width = 847
            Height = 734
            TabOrder = 1
            object TPage
              Left = 0
              Top = 0
              Caption = 'Default'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_R_01: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
                DesignSize = (
                  847
                  734)
                object grid_RecvProtocolList: TAdvStringGrid
                  Tag = 1
                  Left = 11
                  Top = 16
                  Width = 820
                  Height = 698
                  Cursor = crDefault
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  ColCount = 4
                  DefaultColWidth = 94
                  DrawingStyle = gdsClassic
                  RowCount = 40
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnMouseLeave = ChangeMouseCursor_ProtocolList_Out
                  OnMouseMove = ChangeMouseCursor_ProtocolList
                  HoverRowCells = [hcNormal, hcSelected]
                  OnDblClickCell = ProtocolListDbClick
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = clWindowText
                  ActiveCellFont.Height = -11
                  ActiveCellFont.Name = 'Tahoma'
                  ActiveCellFont.Style = [fsBold]
                  ControlLook.FixedGradientHoverFrom = clGray
                  ControlLook.FixedGradientHoverTo = clWhite
                  ControlLook.FixedGradientDownFrom = clGray
                  ControlLook.FixedGradientDownTo = clSilver
                  ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownHeader.Font.Color = clWindowText
                  ControlLook.DropDownHeader.Font.Height = -11
                  ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                  ControlLook.DropDownHeader.Font.Style = []
                  ControlLook.DropDownHeader.Visible = True
                  ControlLook.DropDownHeader.Buttons = <>
                  ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownFooter.Font.Color = clWindowText
                  ControlLook.DropDownFooter.Font.Height = -11
                  ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                  ControlLook.DropDownFooter.Font.Style = []
                  ControlLook.DropDownFooter.Visible = True
                  ControlLook.DropDownFooter.Buttons = <>
                  DefaultAlignment = taCenter
                  Filter = <>
                  FilterDropDown.Font.Charset = DEFAULT_CHARSET
                  FilterDropDown.Font.Color = clWindowText
                  FilterDropDown.Font.Height = -11
                  FilterDropDown.Font.Name = 'Tahoma'
                  FilterDropDown.Font.Style = []
                  FilterDropDown.TextChecked = 'Checked'
                  FilterDropDown.TextUnChecked = 'Unchecked'
                  FilterDropDownClear = '(All)'
                  FilterEdit.TypeNames.Strings = (
                    'Starts with'
                    'Ends with'
                    'Contains'
                    'Not contains'
                    'Equal'
                    'Not equal'
                    'Larger than'
                    'Smaller than'
                    'Clear')
                  FixedColWidth = 47
                  FixedRowHeight = 34
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Tahoma'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
                  HoverButtons.Buttons = <>
                  HoverButtons.Position = hbLeftFromColumnLeft
                  HTMLSettings.ImageFolder = 'images'
                  HTMLSettings.ImageBaseName = 'img'
                  IntelliZoom = False
                  MouseActions.WheelAction = waScroll
                  PrintSettings.DateFormat = 'dd/mm/yyyy'
                  PrintSettings.Font.Charset = DEFAULT_CHARSET
                  PrintSettings.Font.Color = clWindowText
                  PrintSettings.Font.Height = -11
                  PrintSettings.Font.Name = 'Tahoma'
                  PrintSettings.Font.Style = []
                  PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FixedFont.Color = clWindowText
                  PrintSettings.FixedFont.Height = -11
                  PrintSettings.FixedFont.Name = 'Tahoma'
                  PrintSettings.FixedFont.Style = []
                  PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                  PrintSettings.HeaderFont.Color = clWindowText
                  PrintSettings.HeaderFont.Height = -11
                  PrintSettings.HeaderFont.Name = 'Tahoma'
                  PrintSettings.HeaderFont.Style = []
                  PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FooterFont.Color = clWindowText
                  PrintSettings.FooterFont.Height = -11
                  PrintSettings.FooterFont.Name = 'Tahoma'
                  PrintSettings.FooterFont.Style = []
                  PrintSettings.PageNumSep = '/'
                  ScrollBarAlways = saVert
                  ScrollSynch = True
                  SearchFooter.FindNextCaption = 'Find &next'
                  SearchFooter.FindPrevCaption = 'Find &previous'
                  SearchFooter.Font.Charset = DEFAULT_CHARSET
                  SearchFooter.Font.Color = clWindowText
                  SearchFooter.Font.Height = -11
                  SearchFooter.Font.Name = 'Tahoma'
                  SearchFooter.Font.Style = []
                  SearchFooter.HighLightCaption = 'Highlight'
                  SearchFooter.HintClose = 'Close'
                  SearchFooter.HintFindNext = 'Find next occurrence'
                  SearchFooter.HintFindPrev = 'Find previous occurrence'
                  SearchFooter.HintHighlight = 'Highlight occurrences'
                  SearchFooter.MatchCaseCaption = 'Match case'
                  SelectionColor = 7514857
                  SortSettings.DefaultFormat = ssAutomatic
                  Version = '7.8.0.1'
                  ColWidths = (
                    47
                    325
                    325
                    102)
                  RowHeights = (
                    34
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22
                    22)
                end
              end
            end
            object TPage
              Left = 0
              Top = 0
              HelpContext = 1
              Caption = 'page 1'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_R_02: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
                DesignSize = (
                  847
                  734)
                object grid_Protocol_Recv: TAdvStringGrid
                  Tag = 2
                  Left = 11
                  Top = 16
                  Width = 820
                  Height = 698
                  Cursor = crDefault
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  ColCount = 9
                  DefaultColWidth = 94
                  DefaultRowHeight = 44
                  DrawingStyle = gdsClassic
                  RowCount = 40
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  HoverRowCells = [hcNormal, hcSelected]
                  OnGetAlignment = GetAlignment_ProtocolGrid
                  OnClickCell = OnClickCell_Protocol
                  OnDblClickCell = OnDbClickCell_Protocol
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = clWindowText
                  ActiveCellFont.Height = -11
                  ActiveCellFont.Name = 'Tahoma'
                  ActiveCellFont.Style = [fsBold]
                  ControlLook.FixedGradientHoverFrom = clGray
                  ControlLook.FixedGradientHoverTo = clWhite
                  ControlLook.FixedGradientDownFrom = clGray
                  ControlLook.FixedGradientDownTo = clSilver
                  ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownHeader.Font.Color = clWindowText
                  ControlLook.DropDownHeader.Font.Height = -11
                  ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                  ControlLook.DropDownHeader.Font.Style = []
                  ControlLook.DropDownHeader.Visible = True
                  ControlLook.DropDownHeader.Buttons = <>
                  ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                  ControlLook.DropDownFooter.Font.Color = clWindowText
                  ControlLook.DropDownFooter.Font.Height = -11
                  ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                  ControlLook.DropDownFooter.Font.Style = []
                  ControlLook.DropDownFooter.Visible = True
                  ControlLook.DropDownFooter.Buttons = <>
                  DefaultAlignment = taCenter
                  Filter = <>
                  FilterDropDown.Font.Charset = DEFAULT_CHARSET
                  FilterDropDown.Font.Color = clWindowText
                  FilterDropDown.Font.Height = -11
                  FilterDropDown.Font.Name = 'Tahoma'
                  FilterDropDown.Font.Style = []
                  FilterDropDown.TextChecked = 'Checked'
                  FilterDropDown.TextUnChecked = 'Unchecked'
                  FilterDropDownClear = '(All)'
                  FilterEdit.TypeNames.Strings = (
                    'Starts with'
                    'Ends with'
                    'Contains'
                    'Not contains'
                    'Equal'
                    'Not equal'
                    'Larger than'
                    'Smaller than'
                    'Clear')
                  FixedColWidth = 47
                  FixedRowHeight = 34
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Tahoma'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
                  HoverButtons.Buttons = <>
                  HoverButtons.Position = hbLeftFromColumnLeft
                  HTMLSettings.ImageFolder = 'images'
                  HTMLSettings.ImageBaseName = 'img'
                  IntelliZoom = False
                  MouseActions.WheelAction = waScroll
                  PrintSettings.DateFormat = 'dd/mm/yyyy'
                  PrintSettings.Font.Charset = DEFAULT_CHARSET
                  PrintSettings.Font.Color = clWindowText
                  PrintSettings.Font.Height = -11
                  PrintSettings.Font.Name = 'Tahoma'
                  PrintSettings.Font.Style = []
                  PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FixedFont.Color = clWindowText
                  PrintSettings.FixedFont.Height = -11
                  PrintSettings.FixedFont.Name = 'Tahoma'
                  PrintSettings.FixedFont.Style = []
                  PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                  PrintSettings.HeaderFont.Color = clWindowText
                  PrintSettings.HeaderFont.Height = -11
                  PrintSettings.HeaderFont.Name = 'Tahoma'
                  PrintSettings.HeaderFont.Style = []
                  PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                  PrintSettings.FooterFont.Color = clWindowText
                  PrintSettings.FooterFont.Height = -11
                  PrintSettings.FooterFont.Name = 'Tahoma'
                  PrintSettings.FooterFont.Style = []
                  PrintSettings.PageNumSep = '/'
                  ScrollBarAlways = saVert
                  ScrollSynch = True
                  SearchFooter.FindNextCaption = 'Find &next'
                  SearchFooter.FindPrevCaption = 'Find &previous'
                  SearchFooter.Font.Charset = DEFAULT_CHARSET
                  SearchFooter.Font.Color = clWindowText
                  SearchFooter.Font.Height = -11
                  SearchFooter.Font.Name = 'Tahoma'
                  SearchFooter.Font.Style = []
                  SearchFooter.HighLightCaption = 'Highlight'
                  SearchFooter.HintClose = 'Close'
                  SearchFooter.HintFindNext = 'Find next occurrence'
                  SearchFooter.HintFindPrev = 'Find previous occurrence'
                  SearchFooter.HintHighlight = 'Highlight occurrences'
                  SearchFooter.MatchCaseCaption = 'Match case'
                  ShowSelection = False
                  SortSettings.DefaultFormat = ssAutomatic
                  Version = '7.8.0.1'
                  ColWidths = (
                    47
                    94
                    94
                    94
                    94
                    94
                    94
                    94
                    94)
                  RowHeights = (
                    34
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44
                    44)
                end
              end
            end
            object TPage
              Left = 0
              Top = 0
              HelpContext = 2
              Caption = 'page 2'
              ExplicitWidth = 0
              ExplicitHeight = 0
              object _pnBase_R_03: TPanel
                Left = 0
                Top = 0
                Width = 847
                Height = 734
                Align = alClient
                BevelOuter = bvNone
                Color = 3355443
                DoubleBuffered = True
                ParentBackground = False
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
          end
          object btn_Back_Send: TAdvGlassButton
            Left = 731
            Top = 10
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'Back'
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
            TabOrder = 2
            Version = '1.3.0.2'
            OnClick = btn_Back_SendClick
          end
          object btn_Back_Recv: TAdvGlassButton
            Left = 1578
            Top = 10
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'Back'
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
            TabOrder = 3
            Version = '1.3.0.2'
            OnClick = btn_Back_RecvClick
          end
          object btn_Send_Protocol: TAdvGlassButton
            Left = 624
            Top = 10
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'Send'
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
            TabOrder = 4
            Version = '1.3.0.2'
            Visible = False
            OnClick = btn_Send_ProtocolClick
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = '2'
        object __pnBase_02_Setting: TPanel
          Left = 0
          Top = 0
          Width = 1694
          Height = 788
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 0
          object lb_Setting_Title_AutoSend: TLabel
            Left = 32
            Top = 44
            Width = 66
            Height = 14
            Caption = 'Auto Send'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Endian: TLabel
            Left = 57
            Top = 78
            Width = 41
            Height = 14
            Caption = 'Endian'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Log: TLabel
            Left = 52
            Top = 152
            Width = 46
            Height = 14
            Caption = 'Log File'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_SendPeriod: TLabel
            Left = 253
            Top = 44
            Width = 74
            Height = 14
            Caption = 'Send Period'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_RecvPeriod: TLabel
            Left = 255
            Top = 78
            Width = 72
            Height = 14
            Caption = 'Recv Period'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Signed: TLabel
            Left = 56
            Top = 114
            Width = 42
            Height = 14
            Caption = 'Signed'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Clear_Right: TLabel
            Left = 496
            Top = 44
            Width = 105
            Height = 14
            Caption = 'Log Clear (Right)'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Clear_Bottom: TLabel
            Left = 496
            Top = 78
            Width = 118
            Height = 14
            Caption = 'Log Clear (Bottom)'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_Title_Binaryfile: TLabel
            Left = 37
            Top = 188
            Width = 61
            Height = 14
            Caption = 'Binary File'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object cb_SendPeriod: TAdvSmoothComboBox
            Left = 346
            Top = 36
            Width = 103
            Height = 30
            Cursor = crHandPoint
            Fill.Color = cl3DDkShadow
            Fill.ColorTo = 5131854
            Fill.ColorMirror = 5131854
            Fill.ColorMirrorTo = 5131854
            Fill.GradientType = gtSolid
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Items = <
              item
                Caption = ' 1000ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                DeleteButton = True
              end
              item
                Caption = ' 500ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end
              item
                Caption = ' 250ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end>
            ItemAppearance.FillAlternate.Color = 16773091
            ItemAppearance.FillAlternate.ColorTo = 16768452
            ItemAppearance.FillAlternate.ColorMirror = 16765357
            ItemAppearance.FillAlternate.ColorMirrorTo = 16767936
            ItemAppearance.FillAlternate.GradientType = gtVertical
            ItemAppearance.FillAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillAlternate.BorderColor = 16765357
            ItemAppearance.FillAlternate.Rounding = 0
            ItemAppearance.FillAlternate.ShadowOffset = 0
            ItemAppearance.FillAlternate.Glow = gmNone
            ItemAppearance.Fill.Color = cl3DDkShadow
            ItemAppearance.Fill.ColorTo = 5131854
            ItemAppearance.Fill.ColorMirror = 5131854
            ItemAppearance.Fill.ColorMirrorTo = 5131854
            ItemAppearance.Fill.GradientType = gtVertical
            ItemAppearance.Fill.GradientMirrorType = gtVertical
            ItemAppearance.Fill.BorderColor = 5131854
            ItemAppearance.Fill.Rounding = 0
            ItemAppearance.Fill.ShadowOffset = 0
            ItemAppearance.Fill.Glow = gmNone
            ItemAppearance.FillSelected.Color = 11196927
            ItemAppearance.FillSelected.ColorTo = clSilver
            ItemAppearance.FillSelected.ColorMirror = clSilver
            ItemAppearance.FillSelected.ColorMirrorTo = clSilver
            ItemAppearance.FillSelected.GradientType = gtVertical
            ItemAppearance.FillSelected.GradientMirrorType = gtVertical
            ItemAppearance.FillSelected.BorderColor = 5131854
            ItemAppearance.FillSelected.Rounding = 0
            ItemAppearance.FillSelected.ShadowOffset = 0
            ItemAppearance.FillSelected.Glow = gmNone
            ItemAppearance.FillSelectedAlternate.Color = 11196927
            ItemAppearance.FillSelectedAlternate.ColorTo = 7257087
            ItemAppearance.FillSelectedAlternate.ColorMirror = 4370174
            ItemAppearance.FillSelectedAlternate.ColorMirrorTo = 8053246
            ItemAppearance.FillSelectedAlternate.GradientType = gtVertical
            ItemAppearance.FillSelectedAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillSelectedAlternate.BorderColor = 16765357
            ItemAppearance.FillSelectedAlternate.Rounding = 0
            ItemAppearance.FillSelectedAlternate.ShadowOffset = 0
            ItemAppearance.FillSelectedAlternate.Glow = gmNone
            ItemAppearance.FillDisabled.Color = 15921906
            ItemAppearance.FillDisabled.ColorTo = 11974326
            ItemAppearance.FillDisabled.ColorMirror = 11974326
            ItemAppearance.FillDisabled.ColorMirrorTo = 15921906
            ItemAppearance.FillDisabled.GradientType = gtVertical
            ItemAppearance.FillDisabled.GradientMirrorType = gtVertical
            ItemAppearance.FillDisabled.BorderColor = 16765357
            ItemAppearance.FillDisabled.Rounding = 0
            ItemAppearance.FillDisabled.ShadowOffset = 0
            ItemAppearance.FillDisabled.Glow = gmNone
            ItemAppearance.ProgressAppearance.BackGroundFill.Color = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorTo = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirror = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirrorTo = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientMirrorType = gtSolid
            ItemAppearance.ProgressAppearance.BackGroundFill.BorderColor = clSilver
            ItemAppearance.ProgressAppearance.BackGroundFill.Rounding = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.ProgressFill.Color = 16773091
            ItemAppearance.ProgressAppearance.ProgressFill.ColorTo = 16768452
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirror = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirrorTo = 16767936
            ItemAppearance.ProgressAppearance.ProgressFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.GradientMirrorType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.BorderColor = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.Rounding = 0
            ItemAppearance.ProgressAppearance.ProgressFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.ProgressFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.Font.Color = clWindowText
            ItemAppearance.ProgressAppearance.Font.Height = -11
            ItemAppearance.ProgressAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.Font.Style = []
            ItemAppearance.ProgressAppearance.ProgressFont.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.ProgressFont.Color = clWindowText
            ItemAppearance.ProgressAppearance.ProgressFont.Height = -11
            ItemAppearance.ProgressAppearance.ProgressFont.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.ProgressFont.Style = []
            ItemAppearance.ProgressAppearance.ValueFormat = '%.0f%%'
            ItemAppearance.ButtonAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ButtonAppearance.Font.Color = clWindowText
            ItemAppearance.ButtonAppearance.Font.Height = -11
            ItemAppearance.ButtonAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ButtonAppearance.Font.Style = []
            ItemAppearance.InfoFill.ColorMirror = clNone
            ItemAppearance.InfoFill.ColorMirrorTo = clNone
            ItemAppearance.InfoFill.GradientType = gtVertical
            ItemAppearance.InfoFill.GradientMirrorType = gtSolid
            ItemAppearance.InfoFill.BorderColor = clNone
            ItemAppearance.InfoFill.Rounding = 0
            ItemAppearance.InfoFill.ShadowOffset = 0
            ItemAppearance.InfoFill.Glow = gmNone
            ItemAppearance.InfoFillSelected.ColorMirror = clNone
            ItemAppearance.InfoFillSelected.ColorMirrorTo = clNone
            ItemAppearance.InfoFillSelected.GradientType = gtVertical
            ItemAppearance.InfoFillSelected.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillSelected.BorderColor = clNone
            ItemAppearance.InfoFillSelected.Rounding = 0
            ItemAppearance.InfoFillSelected.ShadowOffset = 0
            ItemAppearance.InfoFillSelected.Glow = gmNone
            ItemAppearance.InfoFillDisabled.ColorMirror = clNone
            ItemAppearance.InfoFillDisabled.ColorMirrorTo = clNone
            ItemAppearance.InfoFillDisabled.GradientType = gtVertical
            ItemAppearance.InfoFillDisabled.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillDisabled.BorderColor = clNone
            ItemAppearance.InfoFillDisabled.Rounding = 0
            ItemAppearance.InfoFillDisabled.ShadowOffset = 0
            ItemAppearance.InfoFillDisabled.Glow = gmNone
            ItemAppearance.DeleteButtonCaption = 'Delete'
            LookupBar.DisabledFont.Charset = DEFAULT_CHARSET
            LookupBar.DisabledFont.Color = clSilver
            LookupBar.DisabledFont.Height = -11
            LookupBar.DisabledFont.Name = 'Tahoma'
            LookupBar.DisabledFont.Style = []
            LookupBar.Font.Charset = DEFAULT_CHARSET
            LookupBar.Font.Color = clWindowText
            LookupBar.Font.Height = -11
            LookupBar.Font.Name = 'Tahoma'
            LookupBar.Font.Style = []
            LookupBar.Visible = False
            Sections.Font.Charset = DEFAULT_CHARSET
            Sections.Font.Color = clWindowText
            Sections.Font.Height = -11
            Sections.Font.Name = 'Tahoma'
            Sections.Font.Style = []
            Sections.BorderColor = clBlack
            SelectedItemIndex = 0
            Header.Fill.Color = 16773091
            Header.Fill.ColorTo = 16765615
            Header.Fill.ColorMirror = clNone
            Header.Fill.ColorMirrorTo = clNone
            Header.Fill.GradientType = gtVertical
            Header.Fill.GradientMirrorType = gtSolid
            Header.Fill.BorderColor = 16765615
            Header.Fill.Rounding = 0
            Header.Fill.ShadowOffset = 0
            Header.Fill.Glow = gmNone
            Header.Caption = 'Header'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = 7485192
            Header.Font.Height = -13
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Header.Visible = False
            Filter.Fill.Color = 16773091
            Filter.Fill.ColorMirror = clNone
            Filter.Fill.ColorMirrorTo = clNone
            Filter.Fill.GradientType = gtSolid
            Filter.Fill.GradientMirrorType = gtSolid
            Filter.Fill.BorderColor = 16765615
            Filter.Fill.Rounding = 0
            Filter.Fill.ShadowOffset = 0
            Filter.Fill.Glow = gmNone
            Footer.Fill.Color = 16773091
            Footer.Fill.ColorTo = 16765615
            Footer.Fill.ColorMirror = clNone
            Footer.Fill.ColorMirrorTo = clNone
            Footer.Fill.GradientType = gtVertical
            Footer.Fill.GradientMirrorType = gtSolid
            Footer.Fill.BorderColor = 16765615
            Footer.Fill.Rounding = 0
            Footer.Fill.ShadowOffset = 0
            Footer.Fill.Glow = gmNone
            Footer.Caption = 'Footer'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = 7485192
            Footer.Font.Height = -13
            Footer.Font.Name = 'Tahoma'
            Footer.Font.Style = []
            Footer.Visible = False
            ScrollIndicator.Visible = False
            OnItemSelected = cb_SendPeriodItemSelected
            DefaultItem.Caption = 'Item 0'
            DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionFont.Color = 2129339
            DefaultItem.CaptionFont.Height = -13
            DefaultItem.CaptionFont.Name = 'Tahoma'
            DefaultItem.CaptionFont.Style = [fsBold]
            DefaultItem.CaptionSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionSelectedFont.Color = 2129339
            DefaultItem.CaptionSelectedFont.Height = -13
            DefaultItem.CaptionSelectedFont.Name = 'Tahoma'
            DefaultItem.CaptionSelectedFont.Style = [fsBold]
            DefaultItem.InfoFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoFont.Color = clWindowText
            DefaultItem.InfoFont.Height = -11
            DefaultItem.InfoFont.Name = 'Tahoma'
            DefaultItem.InfoFont.Style = []
            DefaultItem.InfoSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoSelectedFont.Color = clWindowText
            DefaultItem.InfoSelectedFont.Height = -11
            DefaultItem.InfoSelectedFont.Name = 'Tahoma'
            DefaultItem.InfoSelectedFont.Style = []
            DefaultItem.NotesFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesFont.Color = clWindowText
            DefaultItem.NotesFont.Height = -11
            DefaultItem.NotesFont.Name = 'Tahoma'
            DefaultItem.NotesFont.Style = []
            DefaultItem.NotesSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesSelectedFont.Color = clWindowText
            DefaultItem.NotesSelectedFont.Height = -11
            DefaultItem.NotesSelectedFont.Name = 'Tahoma'
            DefaultItem.NotesSelectedFont.Style = []
            DefaultItem.ProgressMaximum = 100.000000000000000000
            Categories = <>
            TabOrder = 0
            Text = ''
            ItemBackGroundFill.Color = cl3DDkShadow
            ItemBackGroundFill.ColorTo = 5131854
            ItemBackGroundFill.ColorMirror = 5131854
            ItemBackGroundFill.ColorMirrorTo = 5131854
            ItemBackGroundFill.GradientType = gtVertical
            ItemBackGroundFill.GradientMirrorType = gtVertical
            ItemBackGroundFill.BorderColor = 5131854
            ItemBackGroundFill.Rounding = 0
            ItemBackGroundFill.ShadowOffset = 0
            ItemBackGroundFill.Glow = gmNone
            ButtonAppearance.ArrowColor = 2129339
            ButtonAppearance.ArrowColorHover = 2129339
            ButtonAppearance.ArrowColorDown = 2129339
            ButtonAppearance.Fill.Color = cl3DDkShadow
            ButtonAppearance.Fill.ColorTo = 5131854
            ButtonAppearance.Fill.ColorMirror = 5131854
            ButtonAppearance.Fill.ColorMirrorTo = 5131854
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtVertical
            ButtonAppearance.Fill.BorderColor = 5131854
            ButtonAppearance.Fill.Rounding = 5
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmNone
            ButtonAppearance.FillDown.Color = 11196927
            ButtonAppearance.FillDown.ColorTo = 7257087
            ButtonAppearance.FillDown.ColorMirror = 4370174
            ButtonAppearance.FillDown.ColorMirrorTo = 8053246
            ButtonAppearance.FillDown.GradientType = gtVertical
            ButtonAppearance.FillDown.GradientMirrorType = gtVertical
            ButtonAppearance.FillDown.BorderColor = 16765615
            ButtonAppearance.FillDown.Rounding = 5
            ButtonAppearance.FillDown.ShadowOffset = 0
            ButtonAppearance.FillDown.Glow = gmNone
            ButtonAppearance.FillHover.Color = 15465983
            ButtonAppearance.FillHover.ColorTo = 11332863
            ButtonAppearance.FillHover.ColorMirror = 5888767
            ButtonAppearance.FillHover.ColorMirrorTo = 10807807
            ButtonAppearance.FillHover.GradientType = gtVertical
            ButtonAppearance.FillHover.GradientMirrorType = gtVertical
            ButtonAppearance.FillHover.BorderColor = 16765615
            ButtonAppearance.FillHover.Rounding = 5
            ButtonAppearance.FillHover.ShadowOffset = 0
            ButtonAppearance.FillHover.Glow = gmNone
            DropDownHeight = 90
            DropDownWidth = 112
            TMSStyle = 4
          end
          object sd_AutoSend: TAdvSmoothSlider
            Left = 117
            Top = 36
            Width = 104
            Height = 30
            AppearanceOn.Fill.Color = 3355443
            AppearanceOn.Fill.ColorTo = cl3DDkShadow
            AppearanceOn.Fill.ColorMirror = 3355443
            AppearanceOn.Fill.ColorMirrorTo = 3355443
            AppearanceOn.Fill.GradientType = gtVertical
            AppearanceOn.Fill.GradientMirrorType = gtVertical
            AppearanceOn.Fill.BorderColor = cl3DDkShadow
            AppearanceOn.Fill.Rounding = 4
            AppearanceOn.Fill.RoundingType = rtLeft
            AppearanceOn.Fill.ShadowOffset = 0
            AppearanceOn.Fill.Glow = gmNone
            AppearanceOn.FillDisabled.ColorMirror = clNone
            AppearanceOn.FillDisabled.ColorMirrorTo = clNone
            AppearanceOn.FillDisabled.GradientType = gtVertical
            AppearanceOn.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOn.FillDisabled.BorderColor = clNone
            AppearanceOn.FillDisabled.Rounding = 4
            AppearanceOn.FillDisabled.ShadowOffset = 0
            AppearanceOn.FillDisabled.Glow = gmNone
            AppearanceOn.Caption = 'OFF'
            AppearanceOn.Font.Charset = DEFAULT_CHARSET
            AppearanceOn.Font.Color = 2262986
            AppearanceOn.Font.Height = -12
            AppearanceOn.Font.Name = 'Tahoma'
            AppearanceOn.Font.Style = [fsBold]
            AppearanceOff.Fill.Color = 3355443
            AppearanceOff.Fill.ColorTo = cl3DDkShadow
            AppearanceOff.Fill.ColorMirror = 3355443
            AppearanceOff.Fill.ColorMirrorTo = 3355443
            AppearanceOff.Fill.GradientType = gtVertical
            AppearanceOff.Fill.GradientMirrorType = gtVertical
            AppearanceOff.Fill.BorderColor = cl3DDkShadow
            AppearanceOff.Fill.Rounding = 4
            AppearanceOff.Fill.RoundingType = rtRight
            AppearanceOff.Fill.ShadowOffset = 0
            AppearanceOff.Fill.Glow = gmNone
            AppearanceOff.FillDisabled.ColorMirror = clNone
            AppearanceOff.FillDisabled.ColorMirrorTo = clNone
            AppearanceOff.FillDisabled.GradientType = gtVertical
            AppearanceOff.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOff.FillDisabled.BorderColor = clNone
            AppearanceOff.FillDisabled.Rounding = 4
            AppearanceOff.FillDisabled.ShadowOffset = 0
            AppearanceOff.FillDisabled.Glow = gmNone
            AppearanceOff.Caption = 'ON'
            AppearanceOff.Font.Charset = DEFAULT_CHARSET
            AppearanceOff.Font.Color = 2262986
            AppearanceOff.Font.Height = -12
            AppearanceOff.Font.Name = 'Tahoma'
            AppearanceOff.Font.Style = [fsBold]
            ButtonAppearance.Fill.Color = 8243449
            ButtonAppearance.Fill.ColorTo = 1153266
            ButtonAppearance.Fill.ColorMirror = 1153266
            ButtonAppearance.Fill.ColorMirrorTo = 1153266
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtSolid
            ButtonAppearance.Fill.BorderColor = 2724583
            ButtonAppearance.Fill.Rounding = 4
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmGradient
            ButtonAppearance.Fill.GlowGradientColor = 5289205
            ButtonAppearance.FillDisabled.Color = cl3DDkShadow
            ButtonAppearance.FillDisabled.ColorTo = 3355443
            ButtonAppearance.FillDisabled.ColorMirror = 3355443
            ButtonAppearance.FillDisabled.ColorMirrorTo = 3355443
            ButtonAppearance.FillDisabled.GradientType = gtVertical
            ButtonAppearance.FillDisabled.GradientMirrorType = gtSolid
            ButtonAppearance.FillDisabled.BorderColor = clBlack
            ButtonAppearance.FillDisabled.Rounding = 4
            ButtonAppearance.FillDisabled.ShadowOffset = 0
            ButtonAppearance.FillDisabled.Glow = gmNone
            Fill.ColorMirror = clNone
            Fill.ColorMirrorTo = clNone
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 4
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            FillDisabled.Color = 15921906
            FillDisabled.ColorTo = 11974326
            FillDisabled.ColorMirror = clNone
            FillDisabled.ColorMirrorTo = clNone
            FillDisabled.GradientType = gtVertical
            FillDisabled.GradientMirrorType = gtVertical
            FillDisabled.BorderColor = 9841920
            FillDisabled.Rounding = 4
            FillDisabled.ShadowOffset = 0
            FillDisabled.Glow = gmNone
            OnStateChanged = sd_AutoSendStateChanged
            TabOrder = 1
            TMSStyle = 4
          end
          object sd_Endian: TAdvSmoothSlider
            Left = 117
            Top = 72
            Width = 104
            Height = 30
            AppearanceOn.Fill.Color = 3355443
            AppearanceOn.Fill.ColorTo = cl3DDkShadow
            AppearanceOn.Fill.ColorMirror = 3355443
            AppearanceOn.Fill.ColorMirrorTo = 3355443
            AppearanceOn.Fill.GradientType = gtVertical
            AppearanceOn.Fill.GradientMirrorType = gtVertical
            AppearanceOn.Fill.BorderColor = cl3DDkShadow
            AppearanceOn.Fill.Rounding = 4
            AppearanceOn.Fill.RoundingType = rtLeft
            AppearanceOn.Fill.ShadowOffset = 0
            AppearanceOn.Fill.Glow = gmNone
            AppearanceOn.FillDisabled.ColorMirror = clNone
            AppearanceOn.FillDisabled.ColorMirrorTo = clNone
            AppearanceOn.FillDisabled.GradientType = gtVertical
            AppearanceOn.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOn.FillDisabled.BorderColor = clNone
            AppearanceOn.FillDisabled.Rounding = 4
            AppearanceOn.FillDisabled.ShadowOffset = 0
            AppearanceOn.FillDisabled.Glow = gmNone
            AppearanceOn.Caption = 'Little'
            AppearanceOn.Font.Charset = DEFAULT_CHARSET
            AppearanceOn.Font.Color = 2262986
            AppearanceOn.Font.Height = -12
            AppearanceOn.Font.Name = 'Tahoma'
            AppearanceOn.Font.Style = [fsBold]
            AppearanceOff.Fill.Color = 3355443
            AppearanceOff.Fill.ColorTo = cl3DDkShadow
            AppearanceOff.Fill.ColorMirror = 3355443
            AppearanceOff.Fill.ColorMirrorTo = 3355443
            AppearanceOff.Fill.GradientType = gtVertical
            AppearanceOff.Fill.GradientMirrorType = gtVertical
            AppearanceOff.Fill.BorderColor = cl3DDkShadow
            AppearanceOff.Fill.Rounding = 4
            AppearanceOff.Fill.RoundingType = rtRight
            AppearanceOff.Fill.ShadowOffset = 0
            AppearanceOff.Fill.Glow = gmNone
            AppearanceOff.FillDisabled.ColorMirror = clNone
            AppearanceOff.FillDisabled.ColorMirrorTo = clNone
            AppearanceOff.FillDisabled.GradientType = gtVertical
            AppearanceOff.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOff.FillDisabled.BorderColor = clNone
            AppearanceOff.FillDisabled.Rounding = 4
            AppearanceOff.FillDisabled.ShadowOffset = 0
            AppearanceOff.FillDisabled.Glow = gmNone
            AppearanceOff.Caption = 'Big'
            AppearanceOff.Font.Charset = DEFAULT_CHARSET
            AppearanceOff.Font.Color = 2262986
            AppearanceOff.Font.Height = -12
            AppearanceOff.Font.Name = 'Tahoma'
            AppearanceOff.Font.Style = [fsBold]
            ButtonAppearance.Fill.Color = 8243449
            ButtonAppearance.Fill.ColorTo = 1153266
            ButtonAppearance.Fill.ColorMirror = 1153266
            ButtonAppearance.Fill.ColorMirrorTo = 1153266
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtSolid
            ButtonAppearance.Fill.BorderColor = 2724583
            ButtonAppearance.Fill.Rounding = 4
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmGradient
            ButtonAppearance.Fill.GlowGradientColor = 5289205
            ButtonAppearance.FillDisabled.Color = cl3DDkShadow
            ButtonAppearance.FillDisabled.ColorTo = 3355443
            ButtonAppearance.FillDisabled.ColorMirror = 3355443
            ButtonAppearance.FillDisabled.ColorMirrorTo = 3355443
            ButtonAppearance.FillDisabled.GradientType = gtVertical
            ButtonAppearance.FillDisabled.GradientMirrorType = gtSolid
            ButtonAppearance.FillDisabled.BorderColor = clBlack
            ButtonAppearance.FillDisabled.Rounding = 4
            ButtonAppearance.FillDisabled.ShadowOffset = 0
            ButtonAppearance.FillDisabled.Glow = gmNone
            Fill.ColorMirror = clNone
            Fill.ColorMirrorTo = clNone
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 4
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            FillDisabled.Color = 15921906
            FillDisabled.ColorTo = 11974326
            FillDisabled.ColorMirror = clNone
            FillDisabled.ColorMirrorTo = clNone
            FillDisabled.GradientType = gtVertical
            FillDisabled.GradientMirrorType = gtVertical
            FillDisabled.BorderColor = 9841920
            FillDisabled.Rounding = 4
            FillDisabled.ShadowOffset = 0
            FillDisabled.Glow = gmNone
            OnStateChanged = sd_EndianStateChanged
            TabOrder = 2
            Enabled = False
            TMSStyle = 4
          end
          object sd_LogFile: TAdvSmoothSlider
            Left = 117
            Top = 145
            Width = 104
            Height = 30
            AppearanceOn.Fill.Color = 3355443
            AppearanceOn.Fill.ColorTo = cl3DDkShadow
            AppearanceOn.Fill.ColorMirror = 3355443
            AppearanceOn.Fill.ColorMirrorTo = 3355443
            AppearanceOn.Fill.GradientType = gtVertical
            AppearanceOn.Fill.GradientMirrorType = gtVertical
            AppearanceOn.Fill.BorderColor = cl3DDkShadow
            AppearanceOn.Fill.Rounding = 4
            AppearanceOn.Fill.RoundingType = rtLeft
            AppearanceOn.Fill.ShadowOffset = 0
            AppearanceOn.Fill.Glow = gmNone
            AppearanceOn.FillDisabled.ColorMirror = clNone
            AppearanceOn.FillDisabled.ColorMirrorTo = clNone
            AppearanceOn.FillDisabled.GradientType = gtVertical
            AppearanceOn.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOn.FillDisabled.BorderColor = clNone
            AppearanceOn.FillDisabled.Rounding = 4
            AppearanceOn.FillDisabled.ShadowOffset = 0
            AppearanceOn.FillDisabled.Glow = gmNone
            AppearanceOn.Caption = 'OFF'
            AppearanceOn.Font.Charset = DEFAULT_CHARSET
            AppearanceOn.Font.Color = 2262986
            AppearanceOn.Font.Height = -12
            AppearanceOn.Font.Name = 'Tahoma'
            AppearanceOn.Font.Style = [fsBold]
            AppearanceOff.Fill.Color = 3355443
            AppearanceOff.Fill.ColorTo = cl3DDkShadow
            AppearanceOff.Fill.ColorMirror = 3355443
            AppearanceOff.Fill.ColorMirrorTo = 3355443
            AppearanceOff.Fill.GradientType = gtVertical
            AppearanceOff.Fill.GradientMirrorType = gtVertical
            AppearanceOff.Fill.BorderColor = cl3DDkShadow
            AppearanceOff.Fill.Rounding = 4
            AppearanceOff.Fill.RoundingType = rtRight
            AppearanceOff.Fill.ShadowOffset = 0
            AppearanceOff.Fill.Glow = gmNone
            AppearanceOff.FillDisabled.ColorMirror = clNone
            AppearanceOff.FillDisabled.ColorMirrorTo = clNone
            AppearanceOff.FillDisabled.GradientType = gtVertical
            AppearanceOff.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOff.FillDisabled.BorderColor = clNone
            AppearanceOff.FillDisabled.Rounding = 4
            AppearanceOff.FillDisabled.ShadowOffset = 0
            AppearanceOff.FillDisabled.Glow = gmNone
            AppearanceOff.Caption = 'ON'
            AppearanceOff.Font.Charset = DEFAULT_CHARSET
            AppearanceOff.Font.Color = 2262986
            AppearanceOff.Font.Height = -12
            AppearanceOff.Font.Name = 'Tahoma'
            AppearanceOff.Font.Style = [fsBold]
            ButtonAppearance.Fill.Color = 8243449
            ButtonAppearance.Fill.ColorTo = 1153266
            ButtonAppearance.Fill.ColorMirror = 1153266
            ButtonAppearance.Fill.ColorMirrorTo = 1153266
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtSolid
            ButtonAppearance.Fill.BorderColor = 2724583
            ButtonAppearance.Fill.Rounding = 4
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmGradient
            ButtonAppearance.Fill.GlowGradientColor = 5289205
            ButtonAppearance.FillDisabled.Color = cl3DDkShadow
            ButtonAppearance.FillDisabled.ColorTo = 3355443
            ButtonAppearance.FillDisabled.ColorMirror = 3355443
            ButtonAppearance.FillDisabled.ColorMirrorTo = 3355443
            ButtonAppearance.FillDisabled.GradientType = gtVertical
            ButtonAppearance.FillDisabled.GradientMirrorType = gtSolid
            ButtonAppearance.FillDisabled.BorderColor = clBlack
            ButtonAppearance.FillDisabled.Rounding = 4
            ButtonAppearance.FillDisabled.ShadowOffset = 0
            ButtonAppearance.FillDisabled.Glow = gmNone
            Fill.ColorMirror = clNone
            Fill.ColorMirrorTo = clNone
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 4
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            FillDisabled.Color = 15921906
            FillDisabled.ColorTo = 11974326
            FillDisabled.ColorMirror = clNone
            FillDisabled.ColorMirrorTo = clNone
            FillDisabled.GradientType = gtVertical
            FillDisabled.GradientMirrorType = gtVertical
            FillDisabled.BorderColor = 9841920
            FillDisabled.Rounding = 4
            FillDisabled.ShadowOffset = 0
            FillDisabled.Glow = gmNone
            OnStateChanged = sd_LogFileStateChanged
            TabOrder = 3
            TMSStyle = 4
          end
          object cb_RecvPeriod: TAdvSmoothComboBox
            Left = 346
            Top = 72
            Width = 103
            Height = 30
            Cursor = crHandPoint
            Fill.Color = cl3DDkShadow
            Fill.ColorTo = 5131854
            Fill.ColorMirror = 5131854
            Fill.ColorMirrorTo = 5131854
            Fill.GradientType = gtSolid
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Items = <
              item
                Caption = ' 250ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                DeleteButton = True
              end
              item
                Caption = ' 500ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end
              item
                Caption = ' 1000ms'
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = 2129339
                CaptionFont.Height = -13
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = 2129339
                CaptionSelectedFont.Height = -13
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
              end>
            ItemAppearance.FillAlternate.Color = 16773091
            ItemAppearance.FillAlternate.ColorTo = 16768452
            ItemAppearance.FillAlternate.ColorMirror = 16765357
            ItemAppearance.FillAlternate.ColorMirrorTo = 16767936
            ItemAppearance.FillAlternate.GradientType = gtVertical
            ItemAppearance.FillAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillAlternate.BorderColor = 16765357
            ItemAppearance.FillAlternate.Rounding = 0
            ItemAppearance.FillAlternate.ShadowOffset = 0
            ItemAppearance.FillAlternate.Glow = gmNone
            ItemAppearance.Fill.Color = cl3DDkShadow
            ItemAppearance.Fill.ColorTo = 5131854
            ItemAppearance.Fill.ColorMirror = 5131854
            ItemAppearance.Fill.ColorMirrorTo = 5131854
            ItemAppearance.Fill.GradientType = gtVertical
            ItemAppearance.Fill.GradientMirrorType = gtVertical
            ItemAppearance.Fill.BorderColor = 5131854
            ItemAppearance.Fill.Rounding = 0
            ItemAppearance.Fill.ShadowOffset = 0
            ItemAppearance.Fill.Glow = gmNone
            ItemAppearance.FillSelected.Color = 11196927
            ItemAppearance.FillSelected.ColorTo = clSilver
            ItemAppearance.FillSelected.ColorMirror = clSilver
            ItemAppearance.FillSelected.ColorMirrorTo = clSilver
            ItemAppearance.FillSelected.GradientType = gtVertical
            ItemAppearance.FillSelected.GradientMirrorType = gtVertical
            ItemAppearance.FillSelected.BorderColor = 5131854
            ItemAppearance.FillSelected.Rounding = 0
            ItemAppearance.FillSelected.ShadowOffset = 0
            ItemAppearance.FillSelected.Glow = gmNone
            ItemAppearance.FillSelectedAlternate.Color = 11196927
            ItemAppearance.FillSelectedAlternate.ColorTo = 7257087
            ItemAppearance.FillSelectedAlternate.ColorMirror = 4370174
            ItemAppearance.FillSelectedAlternate.ColorMirrorTo = 8053246
            ItemAppearance.FillSelectedAlternate.GradientType = gtVertical
            ItemAppearance.FillSelectedAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillSelectedAlternate.BorderColor = 16765357
            ItemAppearance.FillSelectedAlternate.Rounding = 0
            ItemAppearance.FillSelectedAlternate.ShadowOffset = 0
            ItemAppearance.FillSelectedAlternate.Glow = gmNone
            ItemAppearance.FillDisabled.Color = 15921906
            ItemAppearance.FillDisabled.ColorTo = 11974326
            ItemAppearance.FillDisabled.ColorMirror = 11974326
            ItemAppearance.FillDisabled.ColorMirrorTo = 15921906
            ItemAppearance.FillDisabled.GradientType = gtVertical
            ItemAppearance.FillDisabled.GradientMirrorType = gtVertical
            ItemAppearance.FillDisabled.BorderColor = 16765357
            ItemAppearance.FillDisabled.Rounding = 0
            ItemAppearance.FillDisabled.ShadowOffset = 0
            ItemAppearance.FillDisabled.Glow = gmNone
            ItemAppearance.ProgressAppearance.BackGroundFill.Color = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorTo = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirror = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirrorTo = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientMirrorType = gtSolid
            ItemAppearance.ProgressAppearance.BackGroundFill.BorderColor = clSilver
            ItemAppearance.ProgressAppearance.BackGroundFill.Rounding = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.ProgressFill.Color = 16773091
            ItemAppearance.ProgressAppearance.ProgressFill.ColorTo = 16768452
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirror = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirrorTo = 16767936
            ItemAppearance.ProgressAppearance.ProgressFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.GradientMirrorType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.BorderColor = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.Rounding = 0
            ItemAppearance.ProgressAppearance.ProgressFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.ProgressFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.Font.Color = clWindowText
            ItemAppearance.ProgressAppearance.Font.Height = -11
            ItemAppearance.ProgressAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.Font.Style = []
            ItemAppearance.ProgressAppearance.ProgressFont.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.ProgressFont.Color = clWindowText
            ItemAppearance.ProgressAppearance.ProgressFont.Height = -11
            ItemAppearance.ProgressAppearance.ProgressFont.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.ProgressFont.Style = []
            ItemAppearance.ProgressAppearance.ValueFormat = '%.0f%%'
            ItemAppearance.ButtonAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ButtonAppearance.Font.Color = clWindowText
            ItemAppearance.ButtonAppearance.Font.Height = -11
            ItemAppearance.ButtonAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ButtonAppearance.Font.Style = []
            ItemAppearance.InfoFill.ColorMirror = clNone
            ItemAppearance.InfoFill.ColorMirrorTo = clNone
            ItemAppearance.InfoFill.GradientType = gtVertical
            ItemAppearance.InfoFill.GradientMirrorType = gtSolid
            ItemAppearance.InfoFill.BorderColor = clNone
            ItemAppearance.InfoFill.Rounding = 0
            ItemAppearance.InfoFill.ShadowOffset = 0
            ItemAppearance.InfoFill.Glow = gmNone
            ItemAppearance.InfoFillSelected.ColorMirror = clNone
            ItemAppearance.InfoFillSelected.ColorMirrorTo = clNone
            ItemAppearance.InfoFillSelected.GradientType = gtVertical
            ItemAppearance.InfoFillSelected.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillSelected.BorderColor = clNone
            ItemAppearance.InfoFillSelected.Rounding = 0
            ItemAppearance.InfoFillSelected.ShadowOffset = 0
            ItemAppearance.InfoFillSelected.Glow = gmNone
            ItemAppearance.InfoFillDisabled.ColorMirror = clNone
            ItemAppearance.InfoFillDisabled.ColorMirrorTo = clNone
            ItemAppearance.InfoFillDisabled.GradientType = gtVertical
            ItemAppearance.InfoFillDisabled.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillDisabled.BorderColor = clNone
            ItemAppearance.InfoFillDisabled.Rounding = 0
            ItemAppearance.InfoFillDisabled.ShadowOffset = 0
            ItemAppearance.InfoFillDisabled.Glow = gmNone
            ItemAppearance.DeleteButtonCaption = 'Delete'
            LookupBar.DisabledFont.Charset = DEFAULT_CHARSET
            LookupBar.DisabledFont.Color = clSilver
            LookupBar.DisabledFont.Height = -11
            LookupBar.DisabledFont.Name = 'Tahoma'
            LookupBar.DisabledFont.Style = []
            LookupBar.Font.Charset = DEFAULT_CHARSET
            LookupBar.Font.Color = clWindowText
            LookupBar.Font.Height = -11
            LookupBar.Font.Name = 'Tahoma'
            LookupBar.Font.Style = []
            LookupBar.Visible = False
            Sections.Font.Charset = DEFAULT_CHARSET
            Sections.Font.Color = clWindowText
            Sections.Font.Height = -11
            Sections.Font.Name = 'Tahoma'
            Sections.Font.Style = []
            Sections.BorderColor = clBlack
            SelectedItemIndex = 0
            Header.Fill.Color = 16773091
            Header.Fill.ColorTo = 16765615
            Header.Fill.ColorMirror = clNone
            Header.Fill.ColorMirrorTo = clNone
            Header.Fill.GradientType = gtVertical
            Header.Fill.GradientMirrorType = gtSolid
            Header.Fill.BorderColor = 16765615
            Header.Fill.Rounding = 0
            Header.Fill.ShadowOffset = 0
            Header.Fill.Glow = gmNone
            Header.Caption = 'Header'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = 7485192
            Header.Font.Height = -13
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Header.Visible = False
            Filter.Fill.Color = 16773091
            Filter.Fill.ColorMirror = clNone
            Filter.Fill.ColorMirrorTo = clNone
            Filter.Fill.GradientType = gtSolid
            Filter.Fill.GradientMirrorType = gtSolid
            Filter.Fill.BorderColor = 16765615
            Filter.Fill.Rounding = 0
            Filter.Fill.ShadowOffset = 0
            Filter.Fill.Glow = gmNone
            Footer.Fill.Color = 16773091
            Footer.Fill.ColorTo = 16765615
            Footer.Fill.ColorMirror = clNone
            Footer.Fill.ColorMirrorTo = clNone
            Footer.Fill.GradientType = gtVertical
            Footer.Fill.GradientMirrorType = gtSolid
            Footer.Fill.BorderColor = 16765615
            Footer.Fill.Rounding = 0
            Footer.Fill.ShadowOffset = 0
            Footer.Fill.Glow = gmNone
            Footer.Caption = 'Footer'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = 7485192
            Footer.Font.Height = -13
            Footer.Font.Name = 'Tahoma'
            Footer.Font.Style = []
            Footer.Visible = False
            ScrollIndicator.Visible = False
            OnItemSelected = cb_RecvPeriodItemSelected
            DefaultItem.Caption = 'Item 0'
            DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionFont.Color = 2129339
            DefaultItem.CaptionFont.Height = -13
            DefaultItem.CaptionFont.Name = 'Tahoma'
            DefaultItem.CaptionFont.Style = [fsBold]
            DefaultItem.CaptionSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionSelectedFont.Color = 2129339
            DefaultItem.CaptionSelectedFont.Height = -13
            DefaultItem.CaptionSelectedFont.Name = 'Tahoma'
            DefaultItem.CaptionSelectedFont.Style = [fsBold]
            DefaultItem.InfoFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoFont.Color = clWindowText
            DefaultItem.InfoFont.Height = -11
            DefaultItem.InfoFont.Name = 'Tahoma'
            DefaultItem.InfoFont.Style = []
            DefaultItem.InfoSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoSelectedFont.Color = clWindowText
            DefaultItem.InfoSelectedFont.Height = -11
            DefaultItem.InfoSelectedFont.Name = 'Tahoma'
            DefaultItem.InfoSelectedFont.Style = []
            DefaultItem.NotesFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesFont.Color = clWindowText
            DefaultItem.NotesFont.Height = -11
            DefaultItem.NotesFont.Name = 'Tahoma'
            DefaultItem.NotesFont.Style = []
            DefaultItem.NotesSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesSelectedFont.Color = clWindowText
            DefaultItem.NotesSelectedFont.Height = -11
            DefaultItem.NotesSelectedFont.Name = 'Tahoma'
            DefaultItem.NotesSelectedFont.Style = []
            DefaultItem.ProgressMaximum = 100.000000000000000000
            Categories = <>
            TabOrder = 4
            Text = ''
            ItemBackGroundFill.Color = cl3DDkShadow
            ItemBackGroundFill.ColorTo = 5131854
            ItemBackGroundFill.ColorMirror = 5131854
            ItemBackGroundFill.ColorMirrorTo = 5131854
            ItemBackGroundFill.GradientType = gtVertical
            ItemBackGroundFill.GradientMirrorType = gtVertical
            ItemBackGroundFill.BorderColor = 5131854
            ItemBackGroundFill.Rounding = 0
            ItemBackGroundFill.ShadowOffset = 0
            ItemBackGroundFill.Glow = gmNone
            ButtonAppearance.ArrowColor = 2129339
            ButtonAppearance.ArrowColorHover = 2129339
            ButtonAppearance.ArrowColorDown = 2129339
            ButtonAppearance.Fill.Color = cl3DDkShadow
            ButtonAppearance.Fill.ColorTo = 5131854
            ButtonAppearance.Fill.ColorMirror = 5131854
            ButtonAppearance.Fill.ColorMirrorTo = 5131854
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtVertical
            ButtonAppearance.Fill.BorderColor = 5131854
            ButtonAppearance.Fill.Rounding = 5
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmNone
            ButtonAppearance.FillDown.Color = 11196927
            ButtonAppearance.FillDown.ColorTo = 7257087
            ButtonAppearance.FillDown.ColorMirror = 4370174
            ButtonAppearance.FillDown.ColorMirrorTo = 8053246
            ButtonAppearance.FillDown.GradientType = gtVertical
            ButtonAppearance.FillDown.GradientMirrorType = gtVertical
            ButtonAppearance.FillDown.BorderColor = 16765615
            ButtonAppearance.FillDown.Rounding = 5
            ButtonAppearance.FillDown.ShadowOffset = 0
            ButtonAppearance.FillDown.Glow = gmNone
            ButtonAppearance.FillHover.Color = 15465983
            ButtonAppearance.FillHover.ColorTo = 11332863
            ButtonAppearance.FillHover.ColorMirror = 5888767
            ButtonAppearance.FillHover.ColorMirrorTo = 10807807
            ButtonAppearance.FillHover.GradientType = gtVertical
            ButtonAppearance.FillHover.GradientMirrorType = gtVertical
            ButtonAppearance.FillHover.BorderColor = 16765615
            ButtonAppearance.FillHover.Rounding = 5
            ButtonAppearance.FillHover.ShadowOffset = 0
            ButtonAppearance.FillHover.Glow = gmNone
            DropDownHeight = 90
            DropDownWidth = 112
            TMSStyle = 4
          end
          object sd_Signed: TAdvSmoothSlider
            Left = 117
            Top = 108
            Width = 104
            Height = 30
            AppearanceOn.Fill.Color = 3355443
            AppearanceOn.Fill.ColorTo = cl3DDkShadow
            AppearanceOn.Fill.ColorMirror = 3355443
            AppearanceOn.Fill.ColorMirrorTo = 3355443
            AppearanceOn.Fill.GradientType = gtVertical
            AppearanceOn.Fill.GradientMirrorType = gtVertical
            AppearanceOn.Fill.BorderColor = cl3DDkShadow
            AppearanceOn.Fill.Rounding = 4
            AppearanceOn.Fill.RoundingType = rtLeft
            AppearanceOn.Fill.ShadowOffset = 0
            AppearanceOn.Fill.Glow = gmNone
            AppearanceOn.FillDisabled.ColorMirror = clNone
            AppearanceOn.FillDisabled.ColorMirrorTo = clNone
            AppearanceOn.FillDisabled.GradientType = gtVertical
            AppearanceOn.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOn.FillDisabled.BorderColor = clNone
            AppearanceOn.FillDisabled.Rounding = 4
            AppearanceOn.FillDisabled.ShadowOffset = 0
            AppearanceOn.FillDisabled.Glow = gmNone
            AppearanceOn.Caption = 'Unsign'
            AppearanceOn.Font.Charset = DEFAULT_CHARSET
            AppearanceOn.Font.Color = 2262986
            AppearanceOn.Font.Height = -12
            AppearanceOn.Font.Name = 'Tahoma'
            AppearanceOn.Font.Style = [fsBold]
            AppearanceOff.Fill.Color = 3355443
            AppearanceOff.Fill.ColorTo = cl3DDkShadow
            AppearanceOff.Fill.ColorMirror = 3355443
            AppearanceOff.Fill.ColorMirrorTo = 3355443
            AppearanceOff.Fill.GradientType = gtVertical
            AppearanceOff.Fill.GradientMirrorType = gtVertical
            AppearanceOff.Fill.BorderColor = cl3DDkShadow
            AppearanceOff.Fill.Rounding = 4
            AppearanceOff.Fill.RoundingType = rtRight
            AppearanceOff.Fill.ShadowOffset = 0
            AppearanceOff.Fill.Glow = gmNone
            AppearanceOff.FillDisabled.ColorMirror = clNone
            AppearanceOff.FillDisabled.ColorMirrorTo = clNone
            AppearanceOff.FillDisabled.GradientType = gtVertical
            AppearanceOff.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOff.FillDisabled.BorderColor = clNone
            AppearanceOff.FillDisabled.Rounding = 4
            AppearanceOff.FillDisabled.ShadowOffset = 0
            AppearanceOff.FillDisabled.Glow = gmNone
            AppearanceOff.Caption = 'Signed'
            AppearanceOff.Font.Charset = DEFAULT_CHARSET
            AppearanceOff.Font.Color = 2262986
            AppearanceOff.Font.Height = -12
            AppearanceOff.Font.Name = 'Tahoma'
            AppearanceOff.Font.Style = [fsBold]
            ButtonAppearance.Fill.Color = 8243449
            ButtonAppearance.Fill.ColorTo = 1153266
            ButtonAppearance.Fill.ColorMirror = 1153266
            ButtonAppearance.Fill.ColorMirrorTo = 1153266
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtSolid
            ButtonAppearance.Fill.BorderColor = 2724583
            ButtonAppearance.Fill.Rounding = 4
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmGradient
            ButtonAppearance.Fill.GlowGradientColor = 5289205
            ButtonAppearance.FillDisabled.Color = cl3DDkShadow
            ButtonAppearance.FillDisabled.ColorTo = 3355443
            ButtonAppearance.FillDisabled.ColorMirror = 3355443
            ButtonAppearance.FillDisabled.ColorMirrorTo = 3355443
            ButtonAppearance.FillDisabled.GradientType = gtVertical
            ButtonAppearance.FillDisabled.GradientMirrorType = gtSolid
            ButtonAppearance.FillDisabled.BorderColor = clBlack
            ButtonAppearance.FillDisabled.Rounding = 4
            ButtonAppearance.FillDisabled.ShadowOffset = 0
            ButtonAppearance.FillDisabled.Glow = gmNone
            Fill.ColorMirror = clNone
            Fill.ColorMirrorTo = clNone
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 4
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            FillDisabled.Color = 15921906
            FillDisabled.ColorTo = 11974326
            FillDisabled.ColorMirror = clNone
            FillDisabled.ColorMirrorTo = clNone
            FillDisabled.GradientType = gtVertical
            FillDisabled.GradientMirrorType = gtVertical
            FillDisabled.BorderColor = 9841920
            FillDisabled.Rounding = 4
            FillDisabled.ShadowOffset = 0
            FillDisabled.Glow = gmNone
            OnStateChanged = sd_SignedStateChanged
            TabOrder = 5
            Enabled = False
            TMSStyle = 4
          end
          object btn_Clear_Right: TAdvGlassButton
            Left = 635
            Top = 34
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'CLEAR'
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
            TabOrder = 6
            Version = '1.3.0.2'
            OnClick = btn_Clear_RightClick
          end
          object btn_Clear_Bottom: TAdvGlassButton
            Left = 635
            Top = 72
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'CLEAR'
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
            TabOrder = 7
            Version = '1.3.0.2'
            OnClick = btn_Clear_BottomClick
          end
          object sd_BinaryFile: TAdvSmoothSlider
            Left = 117
            Top = 182
            Width = 104
            Height = 30
            AppearanceOn.Fill.Color = 3355443
            AppearanceOn.Fill.ColorTo = cl3DDkShadow
            AppearanceOn.Fill.ColorMirror = 3355443
            AppearanceOn.Fill.ColorMirrorTo = 3355443
            AppearanceOn.Fill.GradientType = gtVertical
            AppearanceOn.Fill.GradientMirrorType = gtVertical
            AppearanceOn.Fill.BorderColor = cl3DDkShadow
            AppearanceOn.Fill.Rounding = 4
            AppearanceOn.Fill.RoundingType = rtLeft
            AppearanceOn.Fill.ShadowOffset = 0
            AppearanceOn.Fill.Glow = gmNone
            AppearanceOn.FillDisabled.ColorMirror = clNone
            AppearanceOn.FillDisabled.ColorMirrorTo = clNone
            AppearanceOn.FillDisabled.GradientType = gtVertical
            AppearanceOn.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOn.FillDisabled.BorderColor = clNone
            AppearanceOn.FillDisabled.Rounding = 4
            AppearanceOn.FillDisabled.ShadowOffset = 0
            AppearanceOn.FillDisabled.Glow = gmNone
            AppearanceOn.Caption = 'OFF'
            AppearanceOn.Font.Charset = DEFAULT_CHARSET
            AppearanceOn.Font.Color = 2262986
            AppearanceOn.Font.Height = -12
            AppearanceOn.Font.Name = 'Tahoma'
            AppearanceOn.Font.Style = [fsBold]
            AppearanceOff.Fill.Color = 3355443
            AppearanceOff.Fill.ColorTo = cl3DDkShadow
            AppearanceOff.Fill.ColorMirror = 3355443
            AppearanceOff.Fill.ColorMirrorTo = 3355443
            AppearanceOff.Fill.GradientType = gtVertical
            AppearanceOff.Fill.GradientMirrorType = gtVertical
            AppearanceOff.Fill.BorderColor = cl3DDkShadow
            AppearanceOff.Fill.Rounding = 4
            AppearanceOff.Fill.RoundingType = rtRight
            AppearanceOff.Fill.ShadowOffset = 0
            AppearanceOff.Fill.Glow = gmNone
            AppearanceOff.FillDisabled.ColorMirror = clNone
            AppearanceOff.FillDisabled.ColorMirrorTo = clNone
            AppearanceOff.FillDisabled.GradientType = gtVertical
            AppearanceOff.FillDisabled.GradientMirrorType = gtSolid
            AppearanceOff.FillDisabled.BorderColor = clNone
            AppearanceOff.FillDisabled.Rounding = 4
            AppearanceOff.FillDisabled.ShadowOffset = 0
            AppearanceOff.FillDisabled.Glow = gmNone
            AppearanceOff.Caption = 'ON'
            AppearanceOff.Font.Charset = DEFAULT_CHARSET
            AppearanceOff.Font.Color = 2262986
            AppearanceOff.Font.Height = -12
            AppearanceOff.Font.Name = 'Tahoma'
            AppearanceOff.Font.Style = [fsBold]
            ButtonAppearance.Fill.Color = 8243449
            ButtonAppearance.Fill.ColorTo = 1153266
            ButtonAppearance.Fill.ColorMirror = 1153266
            ButtonAppearance.Fill.ColorMirrorTo = 1153266
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtSolid
            ButtonAppearance.Fill.BorderColor = 2724583
            ButtonAppearance.Fill.Rounding = 4
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmGradient
            ButtonAppearance.Fill.GlowGradientColor = 5289205
            ButtonAppearance.FillDisabled.Color = cl3DDkShadow
            ButtonAppearance.FillDisabled.ColorTo = 3355443
            ButtonAppearance.FillDisabled.ColorMirror = 3355443
            ButtonAppearance.FillDisabled.ColorMirrorTo = 3355443
            ButtonAppearance.FillDisabled.GradientType = gtVertical
            ButtonAppearance.FillDisabled.GradientMirrorType = gtSolid
            ButtonAppearance.FillDisabled.BorderColor = clBlack
            ButtonAppearance.FillDisabled.Rounding = 4
            ButtonAppearance.FillDisabled.ShadowOffset = 0
            ButtonAppearance.FillDisabled.Glow = gmNone
            Fill.ColorMirror = clNone
            Fill.ColorMirrorTo = clNone
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNone
            Fill.Rounding = 4
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            FillDisabled.Color = 15921906
            FillDisabled.ColorTo = 11974326
            FillDisabled.ColorMirror = clNone
            FillDisabled.ColorMirrorTo = clNone
            FillDisabled.GradientType = gtVertical
            FillDisabled.GradientMirrorType = gtVertical
            FillDisabled.BorderColor = 9841920
            FillDisabled.Rounding = 4
            FillDisabled.ShadowOffset = 0
            FillDisabled.Glow = gmNone
            OnStateChanged = sd_BinaryFileStateChanged
            TabOrder = 8
            TMSStyle = 4
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 3
        Caption = '3'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_03_Test: TPanel
          Left = 0
          Top = 0
          Width = 1694
          Height = 788
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 0
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 4
        Caption = '4'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_04_: TPanel
          Left = 0
          Top = 0
          Width = 1694
          Height = 788
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 0
        end
      end
    end
    object memo: TAdvMemo
      Left = 1694
      Top = 0
      Width = 220
      Height = 788
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alRight
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 3355443
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsNone
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.GutterColor = 3355443
      Gutter.GutterColorTo = 3355443
      Gutter.LineNumberTextColor = 2129339
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 1
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
    object memo_Msg: TAdvMemo
      Left = 0
      Top = 788
      Width = 1914
      Height = 101
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alBottom
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 3355443
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.GutterColor = 3355443
      Gutter.GutterColorTo = 3355443
      Gutter.LineNumberTextColor = 2129339
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 211
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 2
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 407
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 942
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_01'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_02'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_03'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_04'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_05'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar2: TdxBar
      Caption = ' '
      CaptionButtons = <>
      DockedLeft = 307
      DockedTop = 0
      FloatLeft = 942
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MenuBtn_01: TdxBarLargeButton
      Caption = 'Start'
      Category = 0
      Hint = 'Start'
      Visible = ivAlways
      OnClick = ClickMenuButton
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000B0000000F0000001100000012000000120000
        00110000000F0000000B00000007000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000B0000001600000024000000300000003C000000440000004A0000004A0000
        00450000003E0000003200000025000000170000000C00000005000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000A000000170000
        002C080300502C0F0195491A01C65D2002E2722502F37E2802FC7D2602FC6E22
        02F2571B02E03F1401C3230B0195060200540000002F000000190000000B0000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000500000010000000260D0400554415
        01AA752401E4903006FF424203FF3D4604FF75380AFF803B0BFFA2300FFFAF31
        0FFFAB2F0FFF9D2E0CFF8A2A08FF571B03E6300F01AE09030059000000290000
        0011000000050000000100000000000000000000000000000000000000000000
        0000000000000000000100000005000000130000002F300F0187752401D9AD32
        07FFAD2F0BFF763508FF0A4C00FF0A5D00FF0B7C00FF0C8300FF276102FF872D
        09FFA32B0BFFB32E0FFFBC3112FFA82F0FFF8E2B09FF4E1802DC1E0A018D0000
        0034000000150000000600000001000000000000000000000000000000000000
        0000000000010000000400000012000000314515019C9B2D03F0B73009FFBC28
        0BFFAF2408FF573503FF0A4E00FF0B6700FF0B7D00FF0B8000FF0B7C00FF106E
        00FF215E01FF7F3006FFB3270BFFBC2C0FFFBC3112FF9E2E0EFF6D2106F32A0D
        01A3000000370000001500000005000000010000000000000000000000000000
        0001000000030000000E0000002C4816019BAD3205F6C13008FFC52709FFBE24
        05FF9B2302FF2D3E02FF0A5700FF0B7200FF0B7E00FF0B7D00FF0A7800FF0A73
        00FF0A6F00FF374801FF9F2204FFB62409FFBA280CFFBD2F11FFA62F0FFF7625
        06F8290D01A30000003300000011000000040000000100000000000000000000
        0002000000090000002237110182AA3303EFCA3108FFCF2907FFC92303FFA029
        03FF234A06FF0B5703FF0C6801FF0D7C01FF0B7E00FF0B7A00FF0A7500FF0A70
        00FF096A00FF115C00FF593301FFA61E03FFB62007FFBA270CFFBC2E10FFA62F
        0FFF6B2205F21E0A018C000000280000000B0000000200000000000000000000
        0004000000141005004B8A2A02D4D13708FFDA2E08FFD72C05FFB92A03FF2A4F
        0CFF0D600BFF0E6A06FF0E7A03FF0E8103FF0D7E02FF0D7902FF0B7301FF0A6D
        01FF096700FF096100FF0A5C00FF902001FFB41B03FFB72007FFBA270CFFBD2F
        11FF9E2E0DFF4D1802DC09030057000000180000000500000000000000010000
        000900000024581B019FD43D06FFE03509FFE43206FFD93207FF723F09FF0E63
        10FF10710DFF117C08FF118506FF108205FF107F05FF0F7804FF106D03FF2C52
        02FF484001FF643301FF882200FFA91A00FFB31801FFB51A03FFB72007FFBA28
        0DFFBC3112FF8E2B0AFF300F01AB0000002D0000000C00000001000000030000
        00100C040041A03103DCE03F0AFFE63F0DFFE7420EFFD6410EFF4B4E0EFF126B
        0EFF127D0BFF148909FF148708FF138408FF137F08FF117907FF3E5606FFB02B
        05FFC12503FFC02102FFBD1C01FFB91900FFB31700FFB41701FFB51B04FFB823
        09FFBC2C0FFFA82F0FFF571B03E4060200500000001600000004000000050000
        001A42150181DC4608FFEA4B15FFE94F16FFEA5317FFE35719FF9D5216FF166E
        0DFF17860DFF178D0CFF178A0CFF16850BFF1A7A0BFF43600BFFA5400AFFDA31
        07FFDB2B06FFD52404FFCC2003FFC21C01FFBA1700FFB31701FFB31902FFB21E
        05FFB3270CFFBB3112FF8A2A08FF230B01910000002300000007000000070000
        0021752502B1E24D10FFEB591CFFED6220FFE96623FFE56927FFC36724FF1D76
        10FF1A890FFF1B8F10FF228310FF357712FF9E5819FFD05018FFE04714FFE53F
        0FFFE53308FFDE2B06FFD52505FFCC2003FFC21C01FFB91700FFAD1801FF9027
        03FF764007FFA82E0EFF9A2E0CFF401301BF0000002E0000000A000000090000
        0027A03403D2E95F1AFFEE6E28FFEA732BFFD5702EFF958026FFCF7A34FF6876
        21FF4B7D1BFF877726FFC4732EFFD2722DFFE56E2BFFEC6525FFEB5B1DFFE84D
        17FFE74211FFE53409FFDE2D06FFD42505FFCB2003FFBB1B01FF9B1D01FF3B76
        10FF338311FF5B500BFF91300DFF531D02DF0001003A0000000E0000000A0000
        002AC33F06EBEE7228FFEB7E33FFCC7734FF648123FF668B29FFDC9246FFE599
        46FFDF9747FFE79846FFF09645FFF28D3FFFF1843AFFEF7A32FFED6B29FFEB5E
        21FFEA4E18FFE74211FFE53409FFDD2906FFD32304FFBC1F02FF723F0AFF3A8B
        21FF3A8B21FF398A1FFF407D1CFF503F08F6000200460000000F0000000A0000
        002BD84707F9ED8637FFD9873CFF608524FF2CA71EFF95893FFFEAAB58FFF7B6
        5EFFF8B65EFFF6B25BFFF6AC56FFF5A350FFF49848FFF18C3EFFEF7D34FFED6C
        2AFFEB5E21FFE94D18FFE64010FFE43108FFDA2706FFBD2403FF645317FF4596
        3AFF45963AFF459639FF449537FF53430EFD0003004D00000010000000090000
        0029D94809F9E79040FF978834FF588E29FF9B8D45FFACA752FFEABA69FFF1C1
        6EFFF7C66EFFF9C36CFFF9BF67FFF8B760FFF6AA56FFF49D4BFFF28E41FFEF7D
        35FFED6C29FFEB5B20FFE84A16FFE6390DFFE02E07FFBE2805FF606B2FFF52A3
        55FF52A457FF52A456FF51A354FF584614FD0003004A0000000F000000080000
        0023C44208E9D88D42FF578E28FF5E9033FFD5AF65FFE6C373FFBFB569FFB8BE
        6CFFF4D07FFFFCD47FFFFBCD79FFF9C56FFFF8BC66FFF6AD58FFF49D4DFFF18D
        40FFEF7B32FFED6726FFEB531BFFE74211FFE43309FFC62B06FF6A753DFF5FB0
        71FF5FB172FF5FB172FF5EB070FF5A3D11F5000200420000000E000000070000
        001DA33807CCD0863FFF439326FF3DA42EFFB49C61FFB5A769FF6BAE59FFA7A9
        6BFFEBD387FFFCE08DFFFCDA86FFFCD37DFFFAC872FFF8BB67FFF6AA57FFF49B
        49FFF1853BFFEE712EFFEB5D21FFE94A16FFE6380DFFCF2D07FF83572BFF6ABC
        89FF6ABD8CFF6ABD8CFF69BC89FF552C0AE2000100360000000C000000050000
        0016792A06A3C97634FF41982BFF40AE36FF4E9F44FF58B653FF63C263FF6FB8
        6CFFC0BF83FFF7E39AFFFEE696FFFDDE8AFFFBD37FFFF9C570FFF8B761FFF5A5
        51FFF29143FFF07C33FFED6726FFEA5219FFE64010FFDB3108FFA23710FF73C6
        9FFF74C7A1FF74C7A1FF6FB48CFF431B01C00000002800000009000000030000
        000F4518046CC76324FF4A9A34FF47B43FFF53BA4EFF5FC05EFF6CC76EFF77CC
        7CFF8FAC7BFFDFD39AFFF8E89FFFFDE494FFFCDC88FFFBD079FFF9C069FFF6AB
        58FFF39848FFF08239FFED6B29FFEB581DFFE84311FFDD3308FFAA3812FF7ABA
        99FF7CCFB2FF7CCFB3FF739774FF2A1201900000001C00000005000000010000
        00080C0401289B3709D4638835FF4BB645FF59BD55FF65C366FF72CA76FF7ED0
        85FF88CC91FF99B289FFC3C08EFFE6D490FFF8DD8CFFFCD580FFF9C46EFFF7B3
        5EFFF39E4EFFF1863CFFEE702DFFEB5C1FFFE54714FFD1370CFF80895AFF8051
        28FF6E8E5FFF706A3CFF60431AE8080400490000001100000003000000000000
        0004000000105C21058998692CFF4FB84BFF5EC05DFF6CC76EFF78CD7EFF86D4
        8FFF97DBA2FFA7E2B3FFB2E7C0FFAFC19DFFDDC883FFF4D281FFF8C771FFF8B7
        61FFF5A250FFF18A3EFFEF742EFFEB5E21FFE34916FFBB4B1CFF6CB57FFF9837
        11FFA62E0BFF9E3206FF4116019D000000220000000800000001000000000000
        0001000000081206012C853009C85C9441FF63C263FF70C975FF7ED086FF90D8
        9AFFA3E0AEFFB4E6C1FFC3EED0FFB3CCB8FFB3B998FFD5C283FFF4C471FFF8B7
        61FFF5A451FFF18C3FFFEF762FFFE95E20FFE14916FFBF380AFF72834EFF7275
        42FF7E6B37FF6F2501CF0D040040000000100000000300000000000000000000
        0001000000030000000C3D160463934D1DEB5FAF5AFF75CB7AFF85D38DFF9ADC
        A6FFB0E5BCFFA4BFA7FFD2F3DDFFDEF6E8FFE1F7ECFFCABF8FFFF0C16DFFF8B7
        60FFF5A24FFFF18B3DFFEB732DFFD85C21FFBB4D19FF875F2CFF61AA6BFF5DAF
        6DFF6D5F29F52F11007900000019000000070000000100000000000000000000
        000000000001000000040000000F511D067B9B5826F46FAE69FF8AD694FFA3E1
        AEFFAED4B6FFA4A484FFAFB196FFD1DDD0FFB1AE91FFCFB271FFE0B164FFDEA2
        55FFEB9949FFF1883BFFE6702BFF997D40FF6F8E51FF5EA965FF59AA63FF676A
        2DFA3E1A0194000100210000000A000000020000000100000000000000000000
        00000000000000000001000000050000000F521E06799B4D1EEA84A874FFAEE4
        B9FFC0E1C7FFA7AC92FFAAA483FFB8B6A5FFD0CEC1FFBBA272FFC0B193FFD3D8
        C9FFC27A3BFFE87D37FFE06A27FFB6591FFF698545FF57A259FF686125F63F1A
        0193000100210000000B00000003000000010000000000000000000000000000
        0000000000000000000000000001000000040000000C3D16045D802E09C79994
        6EFFD1ECD6FFECFBF1FFF6FCF9FFFCFEFDFFFEFFFEFFB4A895FFD5D8D0FFEDFB
        F7FFC8C6B1FFD5722FFFC06D2CFF629B52FF618C42FF6A3F0ED8331501760001
        001D0000000A0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000811060127561F
        058B854A28E0C2B4A6FFEEF0ECFFFDFFFDFFBCB4A7FFBFB8AAFFF8FEFBFFD5D8
        CFFFB66E3EFFD35B19FF986A26FF764F16E1501E019210070038000000130000
        0007000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000B0C0401273D1504725F2308AF96654FE3B38975F6C6A99AFDC1A394FD9D4D
        28EE953105C87426039C4016026C0B06002E0001001300000009000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000D0000001A000000260000002D0000002A0000
        001A000000120000000D0000000A000000070000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000040000
        0004000000030000000300000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_02: TdxBarLargeButton
      Tag = 1
      Caption = 'View'
      Category = 0
      Hint = 'View'
      Visible = ivAlways
      OnClick = ClickMenuButton
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000020000000400000006000000070000000800000009000000090000
        0008000000070000000600000004000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000040000
        00080000000D00000012000000170000001B0000001E00000020000000200000
        001F0000001D00000019000000140000000E0000000900000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000400000009000000110000
        001A160E0C43482E268E664136B87D5041D8985F4EF89D6251FF9C6250FF975D
        4CF87D4D3FD9643E32B9472B2490170F0C490000001D000000130000000A0000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000060000000F0201011E402A237F8657
        48DEA87566FFBB9488FFC7A99EFFD0B8B0FFDCCAC4FFDECEC8FFDFCFC8FFDCCA
        C4FFD1B8B0FFC6A79DFFBA9285FFA57060FF815041DF3E261F82020101230000
        0012000000080000000300000001000000000000000000000000000000000000
        000000000001000000020000000800000013281B17598E5E50E4B99285FFD5BF
        B7FFE1D2CCFFE1D3CEFFD0BEB6FFA0867AFF806151FF6E4C39FF6F4C39FF7E5E
        4DFF9A7F73FFCAB8AFFFE1D3CFFFE1D3CCFFD5BEB6FFB68C7FFF885444E62617
        135F000000180000000B00000003000000010000000000000000000000000000
        000100000002000000080000001453383093B28678FFDAC6BEFFE3D6D1FFE5D8
        D2FFE6D7D2FFA58C80FF724F3DFF8B6651FF9D7864FFAD8972FFA9866FFFA17C
        67FF8C6855FF724E3CFF997E71FFE2D5D0FFE6D8D3FFE4D6D2FFD9C5BDFFAC7B
        6CFF4F3027990000001A0000000A000000020000000100000000000000010000
        00010000000500000011563B3295C3A298FFE5D7D2FFE6DAD6FFE8DDD7FFE8DD
        D8FF937769FF7C5745FFA27C68FFB18D79FFB99782FFBD9E8BFFBA9886FFBD9D
        8BFFB99683FFA8836FFF7D5946FF896C5CFFE6DAD5FFE9DED9FFE7DBD6FFE5D8
        D3FFBF9B8FFF5031289B00000017000000080000000200000001000000000000
        00030000000C3928226ABA9488FFE4D9D6FFE9DEDAFFEBE1DDFFEDE3DFFFAB94
        89FF805C48FFA37C67FFB28F7AFFC0A38FFFCBB1A2FFD2B9ACFFCFB7AAFFD1B9
        AAFFC8AC9BFFBA9886FFB2917BFF815E4AFF9E8578FFEDE4E0FFECE2DEFFE9E0
        DBFFE8DCD7FFB5887BFF35201A71000000110000000400000001000000010000
        00060C0907249D7364ECDDCFCDFFE9DFDDFFEDE4E1FFEFE7E4FFE1D5D0FF7857
        44FFA17C64FFB18C78FFBE9F8CFFC2AA9BFF786258FF563F36FF543D34FF7660
        57FFC4AEA2FFCFB5A6FFBFA08CFFAD8975FF75513FFFD6C9C3FFF0E8E5FFEDE5
        E2FFECE2DEFFE3D5CEFF966151F00B07052C0000000A00000002000000020000
        000A523B3389C3A59EFFE5DDDFFFEDE5E3FFF0EAE7FFF2ECEAFFB09B90FF8A64
        50FFAB846FFFBC9C88FFC0A798FF573F35FF4B322AFF4B322AFF4B332AFF4A33
        2AFF543B33FFC2AEA1FFCBB19FFFBA9985FF8E6A57FFA1897DFFF3EDEBFFF2EB
        E9FFEFE8E5FFECE3E0FFBE998DFF452B22890000000F00000003000000030000
        000C8A6456DBCABCBEFFE4DDDFFFEEE8E8FFF4EEECFFF6F1EFFF927667FF9A72
        5DFFAF8D76FFC4A997FF7C6559FF52392EFF513A2FFF523A2FFF52392FFF523A
        2EFF51392FFF7D685BFFD4BEAEFFBFA28FFFA4826BFF836353FFF6F2F0FFF5EF
        EDFFF2ECE9FFEAE3E0FFCFBEB9FF7A4D3DD90000001200000004000000030000
        000B42699AD98E8F99EFD8D3D5FFEDE7E8FFF5F1F0FFF8F4F3FF846656FF9D74
        5FFFAF8D75FFC5AB98FF634B3FFF594136FF594135FF5A4135FF5A4136FF5941
        36FF5A4136FF60483DFFD4BEAEFFBFA28EFFAC8A74FF775443FFF8F5F3FFF6F2
        F1FFF0EBEAFFE0DAD7FF85858BE8032662D10000001200000004000000020000
        0008304B6E9E5D7392F8B4B1B4FFE3DFE0FFF4F0EFFFF9F5F4FF866757FFA57E
        68FFB5947EFFCAB19FFF938270FFE8E3C8FFEFEBD0FF978674FF61493DFF6149
        3CFF62493DFF695145FFD7C2B3FFC5A995FFB3927DFF74523FFFF9F6F5FFF4F1
        EFFFE4E1E0FFB9B5B4FF405377F8021945970000000E00000003000000010000
        0005131E2C47688AB4FF677890FFBAB8B9FFE6E4E3FFF4F2F2FF977D6FFF9F7B
        65FFB4957EFFC8AF9BFFDDD5BCFFE8E4C9FFEFEBD0FFECE7CCFF6B5143FF6850
        41FF684F41FF8F796AFFD4BFAEFFC2A993FFA78873FF87695AFFF4F2F1FFE4E2
        E2FFB9B7B6FF525F7BFF4B6899FF010B1D4C0000000900000002000000000000
        0002000000084F74A4DE738EADFF66748BFFAEADADFFDAD9D9FFB3A49CFF8E6B
        58FFB4947CFFBFA48FFFE5DDC3FFE2DCC2FFE9E4C9FFE9E4C9FF705848FF6D54
        45FF755D4DFFCBB9A6FFCBB6A2FFBFA48EFF93735FFFA38E83FFD8D7D7FFAAA9
        AAFF515D76FF677DA0FF244681E3000000100000000500000001000000000000
        0001000000041723324D6A99CFFF7991AEFF657083FF818790FFB2AEADFF6F54
        44FFA38470FFB1957FFFCAB8A2FFE1D8C0FFD4CBB3FF9A8876FF7A6353FF9580
        6FFFCABBA7FFCAB6A2FFBEA891FFAC927DFF6C4E3EFFA7A19EFF767B85FF555D
        73FF7288A4FF4A74B1FF06112659000000090000000200000000000000000000
        00000000000200000005416084AF79A8D7FF87A8C8FF707782FF5D6778FF5E5D
        64FF594236FF7F6A5BFF927F6EFFA1917EFFB0A08FFFB8A998FFB3A593FFB1A3
        92FFA59683FF968574FF806E5EFF594337FF4E4C55FF4C5467FF6B6E78FF829F
        C1FF5D87BFFF163366BB0000000B000000030000000100000000000000000000
        00000000000000000002010202095982AFD97EAFDDFF95C2E7FF89A4BBFF6E73
        7BFF59585FFF484D5BFF454753FF4A484CFF544D4AFF5E544AFF5B5145FF524C
        49FF464349FF3C3E4BFF3D3F4FFF504C54FF6C6C71FF8BA0B4FF8EB5DDFF5986
        BFFF214584E00001020F00000005000000010000000000000000000000000000
        00000000000000000001000000020203050B4E6F95B97EB1DEFF92C4EAFFA1CF
        F0FF9EC4DFFF859AA9FF737D85FF615F62FF514846FF453530FF41302AFF4E42
        40FF5F5B5CFF757A80FF8A9AA6FFA6C3DBFF9DC4E6FF77A3D2FF4470B0FF1636
        6EC5000205140000000500000002000000000000000000000000000000000000
        000000000000000000000000000100000002000000042D405772719FD0F988BB
        E5FF97CAF0FF9FD1F4FFA6D6F6FFACD9F7FFB1DDF8FFB7E0FAFFBBE2FAFFB8E0
        F8FFB4DBF6FFA8D2F0FF97C2E8FF77A6D4FF4E7CB9FF29539AFD0A2044840001
        020C000000040000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000020A0E131C3D59
        799C6692C5F579A9D9FF82B4E0FF8CBFE8FF94C8EEFF99CDF2FF96CAF0FF88BA
        E5FF75A6D7FF5E8DC4FF4774B2FF305B9DFC183460A404091226000000060000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000205070A102434475D3E5A7CA24E72A0D15C89C2FF5885BFFF5380BBFF4F7B
        B8FF3C6195D42A4770A61728406503060A160000000500000003000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000030000000300000003000000040000
        0004000000040000000300000002000000020000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_03: TdxBarLargeButton
      Tag = 2
      Caption = 'Setting'
      Category = 0
      Hint = 'Setting'
      Visible = ivAlways
      OnClick = ClickMenuButton
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000040000000600000006000000040000
        0002000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00020000000300000005000000080000000E00000016000000160000000F0000
        0008000000050000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        00080000000F000000110000001628201D7070594FFF6F584FFF201816710000
        001800000014000000110000000A000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070404
        031C594842C63E302AB30E0B0A4B53423CC4B7A69DFFAD998EFF46352FC50E0B
        0A4F372925B040302ACC040302240000000A0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020000000B604F
        48C7CABCB5FFAB9990FF745E56FF7A635AFECAB8ADFFC7B4A8FF6B544BFE755F
        56FE9F8B80FFAA968AFF41312BC9000000100000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000C5344
        3EABC2B4ADFFE2D8D2FFD0C1B7FFC2B1A5FFCEBDB2FFCCBAB1FFBEAAA0FFC9B6
        AAFFCAB5A9FFA28E83FF3C2F29B1000000120000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000040000000E120F
        0D3B927F77FCE9E1DDFFD7C9C1FFD5C7BEFFE1D6D0FFE6DDD6FFDFD3CBFFD0C0
        B5FFCBB8AEFF7A6359FD0E0B0A47000000140000000700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000072D24216C5242
        3BBB8B756BFED8CDC7FFE1D7D0FFCFC2BBFF998179FF9F887EFFD2C5BEFFE1D6
        CFFFC3B1A6FF755E55FF4F3E38C2281F1C720000000C00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000020000000A957D72FFD9D0
        CCFFEBE4E1FFE7E0DCFFE7DDD9FF897167FF251D1B64261E1C65987F77FFE8E0
        DBFFD2C2B9FFCFC0B4FFBBA79CFF836C62FF0000001000000004000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000000000000100000001000000010000000300000009998276FFDBD2
        CEFFF6F3F1FFF9F6F5FFEBE5E1FF7E625BFF1F17155C2018165D8A7068FFEDE6
        E2FFDACAC3FFD2C4BCFFC9BBB5FF877066FF0000000F00000004000000000000
        0000000000000000000000000001000000020000000400000005000000040000
        0002000000010000000200000004000000060000000500000007352E2A606A5B
        52B59A8379FEECE7E4FFEDE6E3FFCEC1BCFF8B736CFF8C736DFFD1C6C0FFE7DE
        D9FFD4C8C1FF8E776CFD60514AB92E2623620201010C00000002000000000000
        0000000000000000000100000003000000080000000F0504031E020202160000
        000800000005000000090101011305040320000000110000000B0000000B1713
        1232AB978EFDF4F0EEFFF0EAE7FFEEE8E4FFF0EAE7FFECE5E1FFEBE3DFFFEBE5
        E1FFE7DEDAFF8A756BFD130F0E3C0000000D0000000400000001000000000000
        0000000000000000000200000007100C0B373B2D289F675248F342332DB20000
        0018000000110000001841322CB2644E46F4382B25A10F0B0A3A0000000D695A
        53AADDD5D1FFF5F2F0FFF4F1EFFFEBE5E2FFFCFAFAFFF0E9E7FFE0D7D1FFF9F7
        F6FFF7F4F2FFC8BCB5FF54453DAF000000090000000200000000000000000000
        000000000001000000030000000B392C2795B1A39CFFD9CFC7FFA18E84FF3529
        24960000002535292599A5958DFFCABBB0FFA3928AFF35292497000000117868
        5FBDE5DFDCFFDED4D1FFAF9C92FDA28B80FDFAF8F8FFF2EDEBFF9E887EFDA997
        8DFBD9CFCBFFE1DAD5FF73625AC1000000070000000200000000000000000000
        000100000002000000050000000E352A258CAE9F99FFE1D7D0FFD6C9BFFF8D78
        6FFF6B5349FF8D786FFFD3C4BBFFD0C2B6FFA29188FF32262290000000130605
        05147B6B62C06A5B54A61814132E72625AB2E2DAD6FFE1DAD6FF705F58B31512
        112D645750A47A6A61C606050412000000030000000100000000000000020000
        0005000000090000000D000000163329248AA19189FFDCD1C9FFD1C1B6FFD9CD
        C2FFDCD1C7FFD7C9BFFFCDBFB2FFD5C7BDFF96837AFF332723910000001B0000
        0013000000100000000B000000073B332F5FA89186FFA89085FF3B332F5F0000
        0005000000050000000400000003000000010000000000000000000000050F0C
        0B2D372D28842F252176362B26897A665DF4D2C6BEFFD6C8BFFFD2C5B9FFD2C4
        B8FFD1C3B7FFD1C2B7FFD1C2B6FFD2C3B8FFCBBDB4FF7A6259F834282493382C
        279940312CA6100D0B3800000009000000040000000300000003000000020000
        0001000000010000000100000000000000000000000000000000000000094336
        3197B4A59FFFA7968EFFA6958DFFD5C8C4FFDCCFC8FFD7C8BEFFD5C7BDFFD5C7
        BDFFD3C6BBFFD3C5BBFFD2C5BBFFD2C4B9FFD3C6BBFFCFC3B9FF9C8A80FFA898
        8EFFAF9F95FF40322CA40000000E000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000040403137964
        5AF0F0EDEAFFEEE8E5FFE9E1DCFFE2D7D1FFE0D3CCFFDDCFC7FFDCD0C7FFE5DD
        D7FFF0EBE8FFF1EBE7FFE6DBD6FFD8CAC0FFD5C6BCFFD5C8BEFFDBD0C8FFD9CD
        C3FFE1DAD4FF6F5951F50504041B000000040000000100000000000000000000
        00000000000000000000000000000000000000000000000000000302020E4F41
        3AA7BEB1ACFFF9F7F5FFECE5E0FFE2D8D0FFE1D8D0FFE1D6D0FFDED6D0FFAD9D
        96FF948078FFB09F99FFE6DFDBFFE5DCD7FFD7C8BFFFD6C8BEFFD6C7BEFFEBE3
        DFFFAA9B95FF41332E9F0101010F000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000040000
        000B4236308CAA9A92FFF6F3F1FFE6DDD6FFE5DAD3FFE4DAD3FFA3928CFF3C32
        2F830000001B40363389A4938DFFECE4E0FFDACBC3FFD8CBC2FFE3D9D4FF9987
        7FFF3227237F0000001100000006000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000700000012806A60F9F3F0EFFFE8E0DAFFE7DFD8FFE6DDD8FF7E6A64FC0303
        021D0000001306050524836E66FFE9E1DCFFDBCEC6FFDBCDC6FFECE5E1FF7861
        57FF0000001A0000000B00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000940352F82AA9992FFF3EEEAFFE9E3DDFFE9E2DDFFE9E1DCFF907D77FF382D
        2B86000000173C312E8C917F7AFFE0D5CDFFDDD2C9FFDDD1C8FFE9E2DCFF9A86
        7EFF332A267D0000000F00000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020101085647
        41A1C0B4AEFFF6F3F1FFEDE6E1FFECE5E1FFECE4DFFFEBE4DFFFDAD1CBFF8C79
        74FF735D57FF8C7872FFD4CBC4FFE0D6CDFFE0D5CDFFDFD3CCFFDFD3CCFFEBE4
        DDFFAE9E97FF4437319400000009000000020000000000000000000000000000
        00000000000000000000000000000000000000000000000000000504040F8A75
        6CF1F6F4F4FFFAF8F7FFFAF9F7FFF5F2EEFFEFE9E5FFEEE7E3FFEDE7E3FFECE7
        E2FFECE6E0FFECE5DFFFECE5DFFFE7DED8FFE2D8D1FFE3DCD5FFF1EDEAFFF2EC
        E9FFF0EDEAFF826E64F507060519000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000045245
        3F94CBBFBAFFBCAEA7FFBBAEA7FFEEEAE8FFF9F6F4FFF1EBE8FFEFE9E5FFEFE8
        E5FFEFE8E4FFEEE8E4FFEEE8E4FFEEE7E3FFEBE4E1FFEDE9E7FFB6A8A1FFCCC2
        BEFFCCC2BDFF4E403AA100000008000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000021310
        0F254E433C8B3B322D6D4539347F948076F5E7E2DFFFF7F3F1FFF1EBE8FFF1EB
        E8FFF0EBE7FFF0EAE7FFF0EAE6FFF1EBE8FFEFEAE9FF98867DFB4438338A5143
        3DA151433C9F1612103300000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000030000000400000007493E3885C3B6B0FFFAF7F6FFF3EDEBFFFBF9
        F9FFFEFEFDFFFDFBFAFFF6F3F0FFF7F4F2FFBFB3ACFF4A3F38910000000C0000
        0008000000060000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000010000000453474091D0C5C0FFF9F8F5FFFAFAF8FFB09F
        97FF937C71FFAF9E96FFFCFAFAFFFAF7F5FFCCC1BCFF4F423D93000000070000
        0003000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000025A4C4698D4CBC6FFFAFAF9FFC3B5AFFF4036
        3172000000093F353172C1B4ADFFFAF9F9FFD3CAC6FF584A429D000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000011D19173261514BA19C887DF75A4C46990000
        00040000000300000005584B4499998479F75D4F48A21C181535000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000020B090915020201050000
        00010000000100000001020201060B0908160000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_04: TdxBarLargeButton
      Tag = 3
      Caption = 'Test'
      Category = 0
      Hint = 'Test'
      Visible = ivNever
      OnClick = ClickMenuButton
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000002000000040000000500000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000800000008000000070000
        0006000000030000000100000001000000000000000000000000000000000000
        000000000001000000040000000A000000110000001500000016000000170000
        0017000000180000001800000019000000190000001A0000001A0000001B0000
        001B0000001B0000001C0000001C0000001D0000001D0000001D0000001C0000
        00170000000E0000000500000001000000000000000000000000000000000000
        000000000002000000090E1E31592C66A6F52C69ADFF2B68ACFF2966ABFF2765
        AAFF2663A9FF2563A9FF2462A8FF2360A7FF225FA7FF215FA6FF205EA6FF1F5D
        A5FF1E5BA5FF1D5AA4FF1C5AA4FF1B5AA3FF1B59A2FF1A58A2FF1A57A2FF1851
        97F207182D610000000E00000003000000010000000000000000000000000000
        0000000000040000000F3068A9F364AEDDFF74C4F0FF72C3EFFF6FC1EFFF6DC0
        EEFF6BBFEEFF69BEEEFF67BCECFF65BBECFF64BAEBFF61B8EAFF60B7EAFF5CB6
        EAFF5BB5EAFF59B4E9FF56B2E9FF56B1E8FF53B0E8FF52AFE8FF50ADE8FF3F94
        D4FF185299F40000001700000006000000010000000000000000000000000000
        000000000004000000123571B2FF7BC9F1FF76C7EFFF61BAEBFF58B2E9FF55B1
        E9FF55B0E9FF53AFE8FF52AEE8FF50ABE7FF4EABE6FF4DAAE6FF4BA9E5FF4AA7
        E5FF49A6E5FF47A5E5FF46A4E5FF44A4E3FF45A2E4FF45A6E5FF49A8E5FF49A8
        E6FF1A58A2FF0000001C00000007000000010000000000000000000000000000
        000000000005000000123976B5FF80CCF2FF78C6F1FF4092D2FF3785C7FF3483
        C6FF3381C5FF3180C4FF307EC4FF2E7EC3FF2D7CC2FF2C7CC2FF2B7AC0FF2979
        BFFF2878BEFF2777BEFF2676BDFF2475BDFF2474BCFF2A7EC6FF47A6E5FF4AAA
        E7FF1B5AA3FF0000001D00000008000000010000000000000000000000000000
        000000000004000000123C78B7FF85CEF3FF77C6F0FF3B88CAFFF0EBE9FFEBE5
        E3FFEAE3E1FFE9E3E0FFE8E1DFFFE7E0DDFFE6DFDCFFE5DEDAFFE4DCD9FFE3DB
        D8FFE3DBD6FFE2D9D6FFE1D8D5FFE0D8D4FFE0D6D3FF2374BCFF46A3E4FF4CAB
        E7FF1D5BA4FF0000001D00000007000000010000000000000000000000000000
        000000000004000000113E7BB9FF88D1F3FF7CC8F1FF3D8ACCFFF1EDEBFFECE6
        E4FFEBE5E3FFEAE4E1FFE9E3E0FFE8E2DFFFE7E0DDFFE6E0DCFFE6DEDAFFE5DD
        DAFFE4DCD9FFE3DBD8FFE2DAD6FFE1D9D5FFE1D8D4FF2575BDFF46A5E5FF4EAD
        E7FF1E5CA5FF0000001C00000007000000010000000000000000000000000000
        00000000000400000011427EBCFF8DD3F4FF80CBF2FF3F8DCCFFF2EFEDFFEDE8
        E6FFEDE7E4FFEBE6E3FF7C75ACFF373295FFABA4C1FFE8E1DEFFA9A1BEFF322E
        8FFF736BA2FFE3DCD9FFE3DBD7FFE2DAD6FFE2D9D5FF2776BEFF49A6E6FF50AE
        E8FF1F5DA5FF0000001B00000007000000010000000000000000000000000000
        000000000004000000104581BDFF91D5F5FF85CDF2FF428FCEFFF4F1F0FFEFEA
        E7FFEDE8E6FFECE7E5FF4F47AAFF5763CDFF3938A0FF857DB1FF36349EFF515C
        CBFF483EA3FFE5DEDAFFE4DCD9FFE3DCD7FFE2DAD6FF2978BFFF4BA8E5FF52B0
        E8FF215FA7FF0000001B00000007000000010000000000000000000000000000
        0000000000040000000F4885C0FF96D7F6FF89D1F5FF4491CFFFF5F2F1FFEFEC
        EAFFEFEAE8FFEEE9E7FFBCB6D4FF5655B9FF6B77D9FF494EB6FF6673D8FF504D
        B6FFB5ADCCFFE6DFDCFFE5DEDAFFE4DDD9FFE4DCD8FF2A79C0FF4DAAE6FF54B2
        E9FF2361A8FF0000001A00000007000000010000000000000000000000000000
        0000000000040000000F4C87C3FF99DAF6FF8DD3F5FF4793D1FFF7F5F3FFF0EC
        EBFFF0ECE9FFEEEBE8FFEEE9E6FF9A96CAFF6065C7FF7D8AE0FF5C61C5FF9690
        C5FFE8E2DFFFE7E1DDFFE6DFDCFFE5DEDAFFE4DDD9FF2C7BC1FF50ABE7FF57B3
        EAFF2462A8FF0000001900000007000000010000000000000000000000000000
        0000000000040000000E4E8BC6FF9EDCF6FF91D5F5FF4A96D2FFF8F6F5FFF2EE
        EDFFF1EDEBFFF0ECEAFFBEBAD7FF5E60BDFF95A2E8FF787DD1FF92A0E5FF5658
        B7FFB6B1CEFFE8E2DFFFE7E1DDFFE6DFDCFFE5DFDBFF2E7DC2FF51AEE8FF59B5
        EAFF2765AAFF0000001900000006000000010000000000000000000000000000
        0000000000030000000E528FC8FFA1DDF7FF95D7F5FF4B98D4FFF9F8F7FFF3F0
        EEFFF2EEEDFFF1EDEBFF6060BCFFA8B1EBFF7679CEFFA3A1D2FF7376CBFFA2AD
        E7FF5553B2FFE9E3E0FFE8E2DFFFE8E1DEFFE7E0DDFF3080C4FF55B0E8FF5BB6
        EAFF2A68ACFF0000001800000006000000010000000000000000000000000000
        0000000000030000000D5491CAFFA5DFF8FF9AD9F6FF4F9AD5FFFAF9F8FFF4F1
        EFFFF4F0EFFFF2EFEDFFA2A1D7FF7778CCFFC8C5DFFFEFEAE7FFC6C2DCFF7272
        C7FF9A98D0FFEBE5E2FFE9E4E1FFE8E3DFFFE7E1DEFF3382C5FF57B3E9FF5EBA
        EBFF2C69AEFF0000001800000006000000010000000000000000000000000000
        0000000000030000000D5894CCFFA8E0F8FF9DDCF7FF519CD7FFFBFAFAFFF5F3
        F2FFF4F1F0FFF3F0EEFFF3EFEDFFF1EEEBFFF1EDEAFFF0EBE9FFEFEAE8FFEDE9
        E6FFEDE8E5FFECE6E4FFEAE5E2FFEAE4E1FFE9E3E0FF3583C6FF5BB5EBFF63BB
        ECFF2F6CAFFF0000001700000006000000010000000000000000000000000000
        0000000000030000000C5998CFFFABE2F9FFA1DDF7FF539ED8FFFCFBFBFFF6F4
        F3FFF6F3F1FFF5F2F0FFF3F1EFFFF3EFEEFFC5CFC8FF266A4DFF749687FFEFEA
        E8FFEEE9E7FFEDE8E5FFECE7E4FFEBE5E3FFEAE4E1FF3786C7FF5FB8EBFF66BD
        EEFF3270B1FF0000001600000006000000000000000000000000000000000000
        0000000000030000000C5D9AD3FFAEE3FAFFA3DEF8FF56A0D9FFFDFCFBFFF7F5
        F4FFF6F4F3FFF5F3F2FFF5F2F1FFDEE2DDFF377A5EFF44CE9FFF296E52FFDADD
        D8FFEFEAE9FFEEE9E7FFEEE8E6FFECE7E4FFEBE6E3FF3A88C9FF64BBEBFF6BC0
        EEFF3572B4FF0000001600000006000000000000000000000000000000000000
        0000000000030000000B5F9DD3FFB1E4F9FFA7E0F8FF59A2DAFFFDFDFCFFF9F6
        F6FFF8F5F5FFF7F5F4FFEAEBE8FF49856DFF60CFAEFF71E5C3FF42AC89FF7499
        88FFF1EDEAFFEFEBE9FFEEEAE7FFEDE9E6FFEDE7E5FF3C8ACBFF67BDEDFF6FC3
        EFFF3874B6FF0000001500000006000000000000000000000000000000000000
        0000000000030000000B62A0D6FFB3E6FAFFAAE1F8FF5AA4DBFFFEFDFDFFFAF8
        F7FFF8F7F6FFF8F5F5FF619F87FF8ED4C1FF6BB69DFF409578FF7FE7CCFF3385
        66FFC1CEC6FFF0ECEAFFEFEBE9FFEEEAE7FFEEE8E7FF3F8CCCFF6BC0EFFF72C5
        F0FF3B77B8FF0000001500000005000000000000000000000000000000000000
        0000000000020000000A64A3D9FFB6E6FAFFACE2F9FF5DA5DCFFFEFEFEFFFBF9
        F9FFFAF8F8FFF9F7F6FFA2C8B8FF3B9071FF94BDADFFC3D7CEFF489D7FFF83E3
        CAFF41866CFFDCE0DBFFF0ECEAFFF0EBEAFFEFEAE8FF418FCDFF6FC2F0FF76C7
        F1FF3E7BBAFF0000001400000005000000000000000000000000000000000000
        0000000000020000000A66A5DBFFB9E7FAFFAEE3F9FF5FA8DDFFFEFEFEFFFBFB
        FAFFFAF9F9FFF9F8F8FFF9F7F6FFEDF0EDFFF8F5F5FFF7F4F3FFB1CEC1FF58A5
        89FFA0DDCEFF568F79FFF2EEEDFFF1EDEBFFF0ECEAFF4490CFFF73C4F0FF7ACA
        F2FF417EBCFF0000001400000005000000000000000000000000000000000000
        0000000000020000000967A6DCFFBAE8FBFFB1E3F9FF61A9DEFFFFFFFFFFFCFC
        FBFFFBFAF9FFFBFAF9FFF9F8F7FFF9F6F6FFF7F6F4FFF6F4F2FFF4F3F1FFC1D7
        CDFF52A287FFB3CEC3FFF1EDECFFF0EDEBFFF1ECEAFF4792D0FF76C7F1FF7FCC
        F3FF4581BEFF0000001300000005000000000000000000000000000000000000
        0000000000020000000868A8DDFFBDE8FBFFB3E5FAFF63AADFFFFFFFFFFFFDFD
        FCFFFCFAFAFFFAF8F8FFF6F4F4FFF3F2F1FFF0EFEEFFEFEDEBFFECEAEAFFECE9
        E9FFEBE9E8FFEAE8E7FFE9E7E6FFE9E6E4FFEAE8E6FF4791CCFF79C8EFFF80CE
        F2FF4784C1FF0000001200000005000000000000000000000000000000000000
        0000000000020000000868A9DFFFBDE9FBFFB5E6FAFF65ACE0FFFFFFFFFFFCFC
        FCFFFAF9F9FFF5F3F3FFECECEBFFE6E5E4FFE1E1E0FFDEDCDCFFDAD9D8FFDAD8
        D7FFD9D7D6FFD8D6D5FFD8D6D5FFD8D6D5FFDEDAD9FF478EC6FF7AC4E9FF83CD
        F0FF4B87C3FF0000001200000005000000000000000000000000000000000000
        0000000000020000000869AAE0FFBFE9FBFFB6E6FAFF67ADE1FFFEFEFEFFF9F9
        F9FFF0F0EFFFDFDEDEFFCDCDCDFFBFBFBEFFB6B4B3FFADABABFFA8A6A5FFA7A7
        A6FFABABAAFFB0AEADFFB8B6B5FFC1BEBEFFCECBCAFF4689BDFF79C1E5FF86CD
        EFFF4E89C5FF0000001100000005000000000000000000000000000000000000
        000000000002000000076AABE1FFC0EAFBFFB7E6FAFF69AEE2FFF9F9F9FFE8E8
        E8FFB7B4B3FF8B8683FF736C67FF6B635EFF615651FF5D514CFF5A4F4BFF5E55
        51FF5E5652FF696360FF7F7C7BFF999999FFB5B5B4FF4381B3FF7ABFE2FF88CE
        EEFF508DC7FF0000001000000004000000000000000000000000000000000000
        000000000001000000066BACE3FFC2EAFBFFB8E7FAFF6BAEE0FF6399C1FF6C6F
        74FF8B827CFFA69C97FFB7AFAAFFB7AEA8FFC3B9B2FFC1B6AFFFBAADA6FFA598
        91FF9D8F88FF867871FF685C56FF494849FF2E5272FF366F9FFF7CC2E2FF8CD1
        F0FF5591CAFF0000000F00000004000000000000000000000000000000000000
        00000000000100000005619DCFE8ABDAF5FFBCE8FAFFA5DAF1FF82807FFFE3DF
        DDFFF3F1EFFFF1EEECFFEEEBE9FFECE9E6FFD9D1CDFFD0C8C3FFCBC2BCFFC6BC
        B5FFC6BBB5FFDBD4CFFFD9D0CCFFC2B9B5FF514E4DFF619AB4FF9BD2E8FF93CB
        EAFF4F87BAE90000000C00000003000000000000000000000000000000000000
        000000000001000000031B2B39445E98C9E169ABE3FF5C9DD9FFA69C98FFA299
        94FFA09791FF9C938FFF998F8BFFE2DFDDFFEDEAE7FFE2DDD9FFDAD3D0FFC5BE
        B9FF827874FF7E7570FF7B716DFF786E69FF746B67FF477AAEFF5895CAFF4B7F
        AEDA1626334B0000000700000002000000000000000000000000000000000000
        0000000000000000000100000002000000040000000600000006000000070000
        00070000000800000008000000089A9593CFE2E0DEFFF3F1F0FFD5D1CFFF7E77
        73DD000000140000000B0000000B0000000C0000000C0000000C0000000C0000
        000A000000060000000200000001000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000020000
        00020000000200000002000000021211111D76706DB2A39A96F9524A47B20C0B
        0A1D000000030000000300000003000000030000000300000003000000030000
        0002000000010000000100000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_05: TdxBarLargeButton
      Tag = 4
      Caption = 'Temp'
      Category = 0
      Hint = 'Temp'
      Visible = ivNever
      OnClick = ClickMenuButton
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000B0000000F0000001100000012000000120000
        00110000000F0000000B00000007000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000C0000001600000024000000310000003D0000004400000049000000490000
        00450000003D0000003100000024000000170000000C00000005000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000B000000180000
        002D0001075101032893020546C103065EDF040770F203087DFC03077BFC0206
        6EF202045AE0010342C201022694000007530000002E000000190000000B0000
        0003000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000005000000100000002700010B550205
        3AAB040866E40F1593FF10179BFF131BA2FF161EA7FF161FABFF161EAAFF131B
        A4FF10169DFF0C1293FF070C88FF02045DE5010234AD00000A58000000280000
        0011000000050000000100000000000000000000000000000000000000000000
        0000000000000000000100000006000000140000003102042789040960DA151C
        9BFF161FA7FF171FA8FF10169BFF0A0F90FF060A87FF030780FF020680FF0408
        85FF080C8BFF0C1294FF11179EFF0E149AFF070C8AFF020355DC0102228C0000
        0033000000150000000600000001000000000000000000000000000000000000
        0000000000010000000500000013000000340205369F0E1582F11D26A8FF1720
        ABFF0E1598FF282B93FF5D60A5FF8C8DB7FFB1B1C5FFCAC9CEFFC8C8CDFFAEAF
        C2FF8889B3FF595BA0FF24278CFF090E8EFF0F159DFF0B1293FF040770F20102
        2EA2000000360000001400000005000000010000000000000000000000000000
        0001000000040000000F0000002F0306379E141B8EF7222DB0FF141DA5FF2227
        97FF6E71AFFFBBBBCCFFD8D8D8FFD7D8D8FFD7D6D7FFD6D6D6FFD5D4D5FFD3D3
        D3FFD2D1D1FFD1D0D1FFB1B1C3FF6769A4FF1D208CFF0C1196FF0E1499FF0509
        79F801012EA20000003200000010000000040000000100000000000000000000
        00020000000A0000002503052A86121887F02932B4FF141DA4FF3C3F9EFF9B9D
        C3FFDCDBDCFFDBDCDCFFDBDCDBFFB5B6B6FF807F80FF525253FF343535FF4D4D
        4DFF767676FFABABABFFD1D2D1FFCFCFCFFF9091B5FF343791FF0C1093FF0E14
        99FF040770F20102228B000000270000000B0000000200000000000000000000
        00040000001601010C51060D68D72A34B2FF1922AAFF3C40A1FFACAECBFFDFDF
        DEFFDFDFDFFFDEDFDFFFA8A6A7FF585959FF3D3D3DFF383938FF353533FF3131
        31FF2E2E2EFF464645FF969696FFD1D1D1FFD0CFD0FF9F9EBAFF343791FF0C11
        96FF0C1193FF010355DA00000A55000000180000000500000000000000010000
        000A00000028050841A4232DABFF2933B8FF262C9FFF9FA2C8FFE1E2E1FFE2E2
        E2FFD6D6D6FF8A8C8CFF595958FF474746FF424141FF3D3D3DFF3A3939FF3635
        36FF313131FF2E2E2EFF474747FFACACACFFD2D2D1FFD0D0CFFF9091B5FF1D20
        8CFF0F159CFF080C8AFF010234AA0000002C0000000B00000001000000030000
        001301010949080F75DF3540BCFF141DA5FF7578B9FFE4E4E4FFE5E5E4FFDADA
        DAFF717271FF555555FF515151FF4B4B4BFF484747FF424242FF3D3D3DFF3A39
        3AFF363636FF323132FF2F302FFF787777FFD4D4D4FFD1D2D2FFCFCFCFFF6769
        A5FF090E8EFF0F159AFF01045DE30000074F0000001600000004000000060000
        001E03063088202AABFF333FC0FF2E34A2FFC6C7DAFFE7E7E7FFDEDEDDFF7D7D
        7BFF626161FF5C5C5DFF565656FF515151FF4D4B4DFF484848FF434343FF3E3E
        3EFF3A3A3CFF373637FF333332FF4F4F4FFFD6D7D7FFD3D4D4FFD1D2D1FFB1B2
        C3FF24278CFF11179FFF070C87FF010226900000002200000006000000090000
        0027060B55B7333DB9FF202BB2FF686CB7FFE9E9E9FFE1E1E1FF878788FF6E6D
        6EFF686869FF636363FF5C5D5DFF565856FF525253FF4E4D4DFF484948FF4444
        43FF3F3F3EFF3C3C3CFF373737FF363736FFD9D8D8FFD6D6D5FFD3D3D3FFD0D1
        D0FF595BA0FF0C1194FF0C1294FF010342BE0000002D0000000A0000000B0000
        002E081074D6434DC5FF151FA7FF9C9ECCFFE7E8E7FF939293FF7C7C7CFF7575
        75FF868684FF696969FF636362FF5F5F5FFF595959FF535353FF4E4E4EFF4949
        49FF444644FF413F3FFF3D3D3DFF383738FFDADADAFFD8D8D8FFD4D4D4FFD1D2
        D2FF8789B3FF090D8BFF10179CFF02045BDC000000370000000D0000000C0000
        00330B148EED4F5ACFFF0E179FFFC7C8DEFFD9DADAFF888A88FF838383FF9090
        90FFE6E7E7FF707070FF6B6B6BFF656563FF5F5F5FFF59595BFF555555FF4F4F
        4EFF4A494AFF464646FF414141FF3D3D3DFFDCDCDCFFD9D9DAFFD6D7D6FFD4D3
        D3FFAEAFC2FF040984FF131BA4FF02066FF00000003D0000000F0000000C0000
        00340D189EFA5764D5FF0A149BFFE5E5EAFFE2E2E2FFBEBEBEFFB2B2B2FFEAEA
        EAFFF4F3F4FF777777FF727171FF6B6C6CFF656565FF606060FF5B5B5BFF5555
        55FF51514FFF4B4B4BFF464647FF424242FFDDDDDEFFDADBDAFFD8D8D8FFD5D5
        D4FFC8C8CDFF030680FF161EAAFF03077BFB000000400000000F0000000C0000
        00310E199FFA5864D6FF0C149CFFE7E7ECFFF3F3F2FFF4F4F4FFF5F5F4FFF5F5
        F5FFF6F6F6FF7F7F7DFF797879FFBDBDBCFF6C6C6CFF666666FFB2B2B2FF5B5C
        5BFF565555FFA8A8A7FF4B4B4BFF474748FFDFDFDFFFDCDCDCFFD8D9D9FFD5D6
        D6FFCAC9CFFF030681FF171FABFF03087BFB0000003E0000000F0000000B0000
        002B0B1791EB515DD2FF111BA3FFCCCDE4FFF4F4F4FFF6F6F6FFF7F6F7FFF8F8
        F8FFF8F8F8FF858585FF7F807FFFC4C4C4FF727472FF6D6D6DFFB5B5B5FF6261
        62FF5C5C5DFFB1B1B1FF525252FF4B4D4DFFE0E0E0FFDDDDDCFFDADAD9FFD7D7
        D7FFB1B2C5FF060986FF151EA8FF030771EE000000380000000E000000090000
        00240A137AD04551CBFF1D28AEFFA3A6D5FFF6F6F5FFF8F7F7FFF8F9F8FFFAF9
        FAFFFAFAFAFF8D8E8DFF858787FFCBCBCBFF79797AFF747574FFBEBFBEFF6868
        68FF636262FFB8B8B8FF585658FF535253FFE1E1E1FFDEDEDEFFDADADBFFD7D8
        D7FF8C8DB7FF0A0F90FF131BA1FF03065ED7000000300000000C000000060000
        001B080F5AA93642C2FF2F3BBDFF7074C3FFF7F7F7FFF9F9F9FFFBFAFAFFFBFC
        FBFFFCFCFCFF949494FF8E8E8EFFD2D2D2FF828283FF7C7C7CFFC4C5C5FF7070
        70FF696969FFBFBEBEFF5F5F5FFF585858FFE1E1E1FFDFDEDFFFDBDBDCFFD8D8
        D8FF5D5FA6FF0F169BFF0F169BFF020547B40000002500000008000000040000
        0013050834732330B7FF4B57CDFF353DAFFFD6D7EBFFFAF9F9FFFBFBFBFFFDFD
        FDFFFDFDFDFF9B9B9BFF949694FFD9D9D9FF88888AFF838383FFCBCBCAFF7777
        77FF707170FFC5C5C5FF656565FF605F5FFFE2E2E1FFDEDFDEFFDBDBDBFFBBBB
        CCFF282B93FF161EA7FF0F1693FF020328800000001A00000005000000020000
        000B0101092F0C1580D24551CCFF2632B6FF8186CBFFFAFAFAFFFBFCFCFFFDFD
        FEFFFFFFFFFFA3A3A2FF9C9C9CFFDFDFDFFF908F8FFF8A8A8AFFD0D0D0FF7D7D
        7DFF777878FFC9C9C9FF6C6C6CFF666566FFE2E2E2FFDFDFDFFFDCDBDCFF6E71
        AFFF0E1598FF171FA7FF030967D90000083C0000001000000003000000000000
        000500000015060C49892A37BCFF4855CDFF3139B1FFB2B5DFFFFBFCFBFFFDFD
        FCFFFEFDFEFFD4D4D4FFBEBEBEFFE3E3E4FF979797FF909091FFD5D5D5FF8585
        84FF7F7F7DFFD0D1D0FF969696FFAAAAAAFFE2E2E2FFDFDFDFFF9C9DC3FF2227
        96FF1720AAFF151D9BFF02053A940000001E0000000800000001000000000000
        00020000000A01020E300B1376C23B49C6FF3845C2FF474FB7FFC3C6E5FFFBFC
        FCFFFCFCFCFFFBFCFBFFFAFBFAFFF9F9F9FF9E9E9EFF999999FFD7D8D7FF8D8B
        8DFF858785FFEAEAEBFFE7E7E8FFE5E5E5FFE2E1E1FFACAECBFF3B3F9EFF151D
        A5FF1D26A7FF04095FC900010B3C0000000F0000000300000000000000000000
        0001000000040000000F0508306118239BE54451CCFF323DBFFF474FB7FFB3B5
        DEFFFAFAFBFFF9FAFAFFF9F9F8FFF8F8F7FFA6A6A6FF9F9F9FFFDDDCDCFFAFAF
        AFFFBFBEBEFFEAEAEAFFE6E7E7FFE4E4E3FF9FA1C8FF3D41A1FF141DA4FF232D
        B0FF0F1582E80204276C00000016000000060000000100000000000000000000
        0000000000010000000600000012060B41771D28A7EF4451CDFF3845C3FF3039
        B2FF8286CBFFD6D8EBFFF7F7F7FFF5F6F6FFD1D1D2FFCECECEFFF0F0F0FFEEEE
        EEFFECECEBFFE8E8E9FFC6C7DAFF7578B9FF262C9EFF1922ABFF2932B4FF151B
        8FF0030636800000001900000009000000020000000100000000000000000000
        000000000000000000020000000600000011060A417417239BE33A48C6FF4854
        CCFF2731B6FF343CAFFF6F74C2FFA3A6D5FFCCCDE4FFE7E6ECFFE5E4EBFFC7C8
        DEFF9C9FCCFF686CB7FF2E34A2FF141DA5FF2834B7FF2A34B2FF121888E50306
        377C000000180000000900000002000000000000000000000000000000000000
        0000000000000000000000000002000000060000000E050831590A1376BB2937
        BCFF4451CCFF4B56CDFF303BBCFF1D27AEFF111BA4FF0C149CFF0A139AFF0E17
        9FFF161FA7FF212BB1FF333FBFFF3540BDFF242DABFF060D67BF030529600000
        0013000000080000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000040000000901020E24070C
        497B0B1481C82430B7FF3642C1FF4451CBFF515DD2FF5864D6FF5763D4FF4F5A
        CFFF424DC6FF333DB9FF202AABFF080F74CB0408418001010C290000000D0000
        0006000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000050000
        00090102091C0508345C080E5A940A1379C00C1691E20D189FF70D179EF70B14
        8EE2081074C1060C55950307305E0101091F0000000C00000007000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00020000000400000006000000080000000A0000000C0000000D0000000D0000
        000D0000000B0000000A00000007000000050000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000200000003000000030000
        0003000000020000000200000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Version'
      Category = 0
      Hint = 'Version'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000700000007000000070000
        0007000000050000000400000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000070000000C0000001100000016000000190000001B0000001B0000
        001900000016000000120000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
        3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000162D1E
        1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
        ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
        75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
        C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
        0011000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
        C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
        55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
        145A000000120000000600000001000000000000000000000000000000000000
        000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
        C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
        3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
        5AFA221714590000001000000005000000010000000000000000000000000000
        00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
        5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
        41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
        B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
        00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
        40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
        3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
        C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
        00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
        44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
        DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
        C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
        00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
        46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
        F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
        89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
        0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
        48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
        EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
        47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
        0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
        49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
        FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
        41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
        000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
        52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
        FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
        44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
        000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
        63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
        FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
        46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
        000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
        68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
        FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
        4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
        000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
        6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
        FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
        54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
        0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
        72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
        FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
        59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
        000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
        77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
        FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
        5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
        0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
        7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
        71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
        5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
        00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
        81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
        61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
        67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
        0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
        86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
        D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
        B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
        0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
        8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
        F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
        EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
        0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
        89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
        C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
        F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
        0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
        A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
        8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
        E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
        000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
        FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
        8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
        91F92F2623480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
        FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
        A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
        2447000000050000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000002181412229C8177C8D6BC
        B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
        FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000034136
        3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
        EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
        7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
  end
  object tm_RefreshRecvBufferViewer: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tm_RefreshRecvBufferViewerTimer
    Left = 435
  end
  object tm_AutoSend: TTimer
    Enabled = False
    OnTimer = tm_AutoSendTimer
    Left = 463
  end
end
