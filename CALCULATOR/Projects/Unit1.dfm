object Form1: TForm1
  Left = 192
  Top = 125
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
  object fon: TImage
    Left = 0
    Top = 0
    Width = 201
    Height = 113
  end
  object a: TEdit
    Left = 72
    Top = 176
    Width = 265
    Height = 137
    TabStop = False
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = '@MS Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object BitBtn1: TBitBtn
    Left = 792
    Top = 112
    Width = 97
    Height = 97
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -27
    Font.Name = '@MS Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 360
    Top = 128
    Width = 73
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = '@FangSong'
    Font.Style = []
    ItemHeight = 24
    ParentFont = False
    TabOrder = 2
  end
  object b: TEdit
    Left = 456
    Top = 120
    Width = 225
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = '@MS Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '0'
  end
  object c: TEdit
    Left = 992
    Top = 440
    Width = 225
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = '@MS Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0'
  end
  object ce: TBitBtn
    Left = 744
    Top = 304
    Width = 97
    Height = 97
    Caption = 'CE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = '@MS Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = ceClick
  end
end
