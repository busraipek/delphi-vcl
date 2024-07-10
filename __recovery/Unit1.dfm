object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 746
  Height = 511
  BiDiMode = bdLeftToRight
  ParentBiDiMode = False
  TabOrder = 0
  object RichEdit1: TRichEdit
    Left = 30
    Top = 78
    Width = 330
    Height = 345
    Margins.Top = 110
    Align = alCustom
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 0
  end
  object RichEdit2: TRichEdit
    Left = 366
    Top = 78
    Width = 330
    Height = 345
    Enabled = False
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 132
    Top = 27
    Width = 197
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'tr'
  end
  object ComboBox2: TComboBox
    Left = 395
    Top = 27
    Width = 198
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'en'
  end
  object Button1: TButton
    Left = 40
    Top = 439
    Width = 636
    Height = 58
    Margins.Left = 40
    Margins.Right = 40
    Align = alCustom
    Caption = 'Button1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
end
