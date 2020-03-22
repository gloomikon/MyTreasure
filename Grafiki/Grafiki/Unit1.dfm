object Form1: TForm1
  Left = 398
  Top = 316
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 602
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 81
    Height = 49
    Caption = #1051#1080#1085#1077#1081#1085#1072#1103
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 64
    Width = 81
    Height = 49
    Caption = #1055#1072#1088#1072#1073#1086#1083#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 120
    Width = 81
    Height = 49
    Caption = '1/'#1061
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 176
    Width = 81
    Height = 41
    Caption = 'Clear'
    TabOrder = 3
    OnClick = Button4Click
  end
  object UpDown1: TUpDown
    Left = 24
    Top = 224
    Width = 65
    Height = 113
    Min = 10
    Max = 50
    Increment = 5
    Position = 10
    TabOrder = 4
    OnChanging = UpDown1Changing
  end
  object Edit1: TEdit
    Left = 104
    Top = 88
    Width = 33
    Height = 25
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 144
    Top = 88
    Width = 33
    Height = 25
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 184
    Top = 88
    Width = 33
    Height = 25
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 104
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 144
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 9
  end
end
