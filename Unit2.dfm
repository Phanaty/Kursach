object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 421
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    1003
    421)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 164
    Width = 26
    Height = 39
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 304
    Top = 164
    Width = 14
    Height = 39
    Anchors = []
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object StringGrid1: TStringGrid
    Left = 136
    Top = 157
    Width = 63
    Height = 55
    ColCount = 2
    DefaultColWidth = 28
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    PopupMenu = PopupMenu1
    TabOrder = 0
    ColWidths = (
      28
      28)
    RowHeights = (
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 440
    Top = 157
    Width = 63
    Height = 55
    ColCount = 2
    DefaultColWidth = 28
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    PopupMenu = PopupMenu1
    TabOrder = 1
    ColWidths = (
      28
      28)
    RowHeights = (
      24
      24)
  end
  object StringGrid3: TStringGrid
    Left = 752
    Top = 157
    Width = 63
    Height = 55
    ColCount = 2
    DefaultColWidth = 28
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    TabOrder = 2
    ColWidths = (
      28
      28)
    RowHeights = (
      24
      24)
  end
  object RadioButton1: TRadioButton
    Left = 390
    Top = 8
    Width = 113
    Height = 17
    Caption = #1057#1083#1086#1078#1077#1085#1080#1077
    Enabled = False
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 390
    Top = 39
    Width = 113
    Height = 17
    Caption = #1042#1099#1095#1080#1090#1072#1085#1080#1077
    Enabled = False
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object Edit1: TEdit
    Left = 27
    Top = 37
    Width = 73
    Height = 21
    TabOrder = 5
    Text = '2'
  end
  object Edit2: TEdit
    Left = 202
    Top = 37
    Width = 73
    Height = 21
    TabOrder = 6
    Text = '2'
  end
  object UpDown1: TUpDown
    Left = 100
    Top = 37
    Width = 16
    Height = 21
    Associate = Edit1
    Min = 2
    Max = 6
    Position = 2
    TabOrder = 7
    OnClick = UpDown1Click
  end
  object UpDown2: TUpDown
    Left = 275
    Top = 37
    Width = 16
    Height = 21
    Associate = Edit2
    Min = 2
    Max = 6
    Position = 2
    TabOrder = 8
    OnClick = UpDown2Click
  end
  object Button1: TButton
    Left = 592
    Top = 168
    Width = 75
    Height = 33
    Caption = '='
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 576
    Top = 23
    Width = 91
    Height = 33
    Caption = #1086#1095#1080#1089#1090#1082#1072' '#1084#1072#1090#1088#1080#1094
    Enabled = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 928
    Top = 336
    object N1: TMenuItem
      Caption = #1088#1072#1085#1076#1086#1084#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1088#1091#1095#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
      OnClick = N2Click
    end
  end
end
