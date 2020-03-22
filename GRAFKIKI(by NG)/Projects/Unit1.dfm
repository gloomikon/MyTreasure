object Form1: TForm1
  Left = 317
  Top = 356
  Cursor = crCross
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 602
  ClientWidth = 1128
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
  object Image1: TImage
    Left = 24
    Top = 48
    Width = 81
    Height = 57
    Stretch = True
  end
  object UpDown1: TUpDown
    Left = 904
    Top = 224
    Width = 137
    Height = 161
    Min = 20
    Increment = 5
    Position = 20
    TabOrder = 0
    OnClick = UpDown1Click
  end
  object Button1: TButton
    Left = 440
    Top = 8
    Width = 89
    Height = 113
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 120
    Width = 89
    Height = 113
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button2Click
  end
end
