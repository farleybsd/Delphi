object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 34
    Height = 13
    Caption = 'DOLAR'
  end
  object Label2: TLabel
    Left = 144
    Top = 40
    Width = 25
    Height = 13
    Caption = 'REAL'
  end
  object MSG: TLabel
    Left = 16
    Top = 120
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 520
    Top = 248
    Width = 113
    Height = 49
    Caption = 'CONVERSAO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DOLAR: TEdit
    Left = 8
    Top = 66
    Width = 121
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object REAL: TEdit
    Left = 144
    Top = 66
    Width = 121
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object COMPRA: TButton
    Left = 288
    Top = 57
    Width = 137
    Height = 55
    Caption = 'COMPRA'
    Enabled = False
    TabOrder = 3
    OnClick = COMPRAClick
  end
end
