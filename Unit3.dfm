object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 407
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 176
    Top = 157
    Width = 53
    Height = 53
    ColCount = 2
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 0
    ColWidths = (
      24
      24)
    RowHeights = (
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 688
    Top = 157
    Width = 57
    Height = 53
    ColCount = 2
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 1
    Visible = False
    ColWidths = (
      24
      24)
    RowHeights = (
      24
      24)
  end
  object Button1: TButton
    Left = 368
    Top = 168
    Width = 209
    Height = 25
    Caption = #1058#1088#1072#1085#1089#1087#1086#1085#1080#1088#1086#1074#1072#1090#1100
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 51
    Top = 23
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = #1089#1090#1088#1086#1082#1080
    OnChange = ComboBox1Change
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object ComboBox2: TComboBox
    Left = 219
    Top = 23
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = #1089#1090#1086#1083#1073#1094#1099
    OnChange = ComboBox2Change
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object Button2: TButton
    Left = 648
    Top = 18
    Width = 113
    Height = 33
    Caption = #1086#1095#1080#1089#1090#1082#1072' '#1084#1072#1090#1088#1080#1094
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 896
    Top = 33
    object N1: TMenuItem
      Caption = #1056#1072#1085#1076#1086#1084#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1091#1095#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
      OnClick = N2Click
    end
  end
end
