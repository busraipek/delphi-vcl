object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 470
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnCreate = FormCreate
  TextHeight = 15
  object RichEdit1: TRichEdit
    Left = 5
    Top = 61
    Width = 315
    Height = 345
    Margins.Top = 110
    Align = alCustom
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 0
  end
  object RichEdit2: TRichEdit
    Left = 323
    Top = 61
    Width = 315
    Height = 345
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 172
    Top = 32
    Width = 145
    Height = 23
    TabOrder = 2
    Text = 'tr'
  end
  object ComboBox2: TComboBox
    Left = 323
    Top = 32
    Width = 145
    Height = 23
    TabOrder = 3
    Text = 'en'
  end
  object Button1: TButton
    Left = 0
    Top = 412
    Width = 646
    Height = 58
    Margins.Left = 20
    Margins.Right = 20
    Align = alBottom
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
    ExplicitWidth = 643
  end
end
