object Form1: TForm1
  Left = 549
  Top = 296
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 136
    Top = 72
    Width = 273
    Height = 89
  end
  object SpeedButton1: TSpeedButton
    Left = 88
    Top = 240
    Width = 225
    Height = 81
  end
  object SpeedButton2: TSpeedButton
    Left = 80
    Top = 376
    Width = 233
    Height = 89
  end
  object Edit1: TEdit
    Left = 896
    Top = 64
    Width = 241
    Height = 40
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object UpDown1: TUpDown
    Left = 536
    Top = 80
    Width = 17
    Height = 65
    Min = 1
    Max = 4
    Position = 1
    TabOrder = 1
    Wrap = True
    OnChanging = UpDown1Changing
  end
  object UpDown2: TUpDown
    Left = 608
    Top = 72
    Width = 17
    Height = 65
    Min = 1
    Max = 4
    Position = 2
    TabOrder = 2
    Wrap = True
    OnChanging = UpDown2Changing
  end
end
