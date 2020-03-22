object Form1: TForm1
  Left = 234
  Top = 307
  Cursor = crCross
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
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 136
    Width = 81
    Height = 57
    OnClick = Image1Click
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object PaintBox1: TPaintBox
    Left = 256
    Top = 256
    Width = 73
    Height = 33
  end
  object Image2: TImage
    Left = 128
    Top = 144
    Width = 145
    Height = 17
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 24
    Width = 97
    Height = 41
    Caption = 'Color'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Open'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 97
    Height = 33
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button2Click
  end
  object UpDown1: TUpDown
    Left = 464
    Top = 16
    Width = 41
    Height = 57
    Min = 1
    Max = 150
    Position = 1
    TabOrder = 3
    OnChanging = UpDown1Changing
  end
  object Button3: TButton
    Left = 216
    Top = 16
    Width = 41
    Height = 41
    Caption = 'Line'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 264
    Top = 16
    Width = 41
    Height = 41
    Caption = 'Rctngl'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 312
    Top = 16
    Width = 41
    Height = 41
    Caption = 'Round'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 120
    Top = 16
    Width = 41
    Height = 41
    Caption = 'Pencil'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 168
    Top = 16
    Width = 41
    Height = 41
    Caption = 'Stars'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 200
    Top = 64
    Width = 81
    Height = 25
    Caption = #1047#1072#1083#1080#1074#1082#1072
    TabOrder = 9
    OnClick = Button8Click
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 120
    Top = 184
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 208
    Top = 200
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 176
    Top = 176
  end
end
