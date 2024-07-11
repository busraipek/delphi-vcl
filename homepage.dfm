object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'my-app'
  ClientHeight = 561
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = [fsItalic, fsUnderline]
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 217
    Top = 0
    Width = 749
    Height = 561
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 739
    ExplicitHeight = 541
  end
  object ListBox1: TListBox
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 217
    Height = 561
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alLeft
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ItemHeight = 45
    Items.Strings = (
      'Film'
      'G'#252'nl'#252'k'
      'Nedenler')
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnClick = ListBox1Click
    ExplicitHeight = 541
  end
end
