object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=delphi;Data Source=(locald' +
      'b)\MSSQLLocalDB;Initial File Name="";Server SPN="";Authenticatio' +
      'n="";Access Token=""'
    Mode = cmReadWrite
    Provider = 'MSOLEDBSQL.1'
    Left = 112
    Top = 232
  end
  object select: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select renk,tarih,durum,konu,devam from note')
    Left = 104
    Top = 24
  end
  object insert: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'renk'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tarih'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'durum'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'konu'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'devam'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 2000
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'insert into note (renk,tarih,durum,konu,devam)'
      'values'
      '(:renk,:tarih,:durum,:konu,:devam)')
    Left = 168
    Top = 24
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from note'
    DataSource = DataSource1
    Parameters = <>
    Prepared = True
    Left = 232
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = select
    Left = 312
    Top = 200
  end
end
