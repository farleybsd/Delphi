object FORM_CONTATOS: TFORM_CONTATOS
  Left = 0
  Top = 0
  Caption = 'Gest'#227'o De Contatos'
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
  object Edit1: TEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Farley'
  end
  object Edit3: TEdit
    Left = 8
    Top = 118
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '991057769'
  end
  object Edit4: TEdit
    Left = 8
    Top = 145
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'farley.souza@univale.br'
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\MyGit\Delphi\Win32\Debug\assets\contatos.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 240
  end
  object BindSourceContatos: TBindSourceDB
    DataSet = FDTableContatos
    ScopeMappings = <>
    Left = 216
    Top = 240
  end
  object FDTableContatos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Contatos'
    TableName = 'Contatos'
    Left = 112
    Top = 240
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'id'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'Nome'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'Telefone'
      Control = Edit3
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'Email'
      Control = Edit4
      Track = True
    end
  end
end
