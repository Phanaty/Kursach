object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077' '#1084#1072#1090#1088#1080#1094
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 157
    Width = 33
    Height = 58
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 35
    Top = 23
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
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
    Left = 130
    Top = 23
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    Left = 816
    Top = 18
    Width = 113
    Height = 33
    Caption = #1054#1095#1080#1090#1089#1082#1072' '#1084#1072#1090#1088#1080#1094
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 130
    Top = 153
    Width = 53
    Height = 53
    ColCount = 2
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 3
    OnKeyPress = StringGrid1KeyPress
    ColWidths = (
      24
      24)
    RowHeights = (
      24
      24)
  end
  object StringGrid2: TStringGrid
    Left = 448
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
    TabOrder = 4
    Visible = False
    OnKeyPress = StringGrid2KeyPress
    ColWidths = (
      24
      24)
    RowHeights = (
      24
      24)
  end
  object RadioButton1: TRadioButton
    Left = 496
    Top = 11
    Width = 193
    Height = 17
    Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077' '#1084#1072#1090#1088#1080#1094#1099' '#1085#1072' '#1084#1072#1090#1088#1080#1094#1091
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 496
    Top = 34
    Width = 193
    Height = 17
    Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077' '#1084#1072#1090#1088#1080#1094#1099' '#1085#1072' '#1095#1080#1089#1083#1086
    TabOrder = 6
    OnClick = RadioButton2Click
  end
  object Button1: TButton
    Left = 600
    Top = 153
    Width = 75
    Height = 53
    Caption = '='
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object ComboBox3: TComboBox
    Left = 267
    Top = 24
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Text = #1089#1090#1088#1086#1082#1080
    Visible = False
    OnChange = ComboBox3Change
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object ComboBox4: TComboBox
    Left = 362
    Top = 24
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = #1089#1090#1086#1083#1073#1094#1099
    Visible = False
    OnChange = ComboBox4Change
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object Edit1: TEdit
    Left = 448
    Top = 157
    Width = 53
    Height = 53
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumbersOnly = True
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnChange = Edit1Change
  end
  object StringGrid3: TStringGrid
    Left = 784
    Top = 153
    Width = 53
    Height = 53
    ColCount = 2
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 11
    Visible = False
    OnKeyPress = StringGrid3KeyPress
    ColWidths = (
      24
      24)
    RowHeights = (
      24
      24)
  end
  object PopupMenu1: TPopupMenu
    Left = 712
    Top = 304
    object N1: TMenuItem
      Caption = #1056#1072#1085#1076#1086#1084#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
      Enabled = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1091#1095#1085#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '
      Enabled = False
      OnClick = N2Click
    end
  end
end
