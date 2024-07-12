object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object RichEdit1: TRichEdit
    Left = 80
    Top = 24
    Width = 548
    Height = 384
    HelpType = htKeyword
    ParentCustomHint = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    HideSelection = False
    ParentFont = False
    ParentShowHint = False
    PlainText = True
    ShowHint = False
    SpellChecking = True
    TabOrder = 0
  end
  object CategoryButtons1: TCategoryButtons
    Left = 0
    Top = 0
    Width = 65
    Height = 408
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentCustomHint = False
    Align = alLeft
    Anchors = []
    BackgroundGradientDirection = gdVertical
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ButtonFlow = cbfVertical
    ButtonHeight = 30
    ButtonWidth = 25
    ButtonOptions = [boAllowCopyingButtons, boFullSize, boShowCaptions, boVerticalCategoryCaptions, boUsePlusMinus, boCaptionOnlyBorder]
    Categories = <
      item
        Caption = 'love'
        Color = clTeal
        Collapsed = False
        Items = <>
      end
      item
        Caption = 'not'
        Color = 15395839
        Collapsed = False
        Items = <>
      end
      item
        Caption = 'dizi'
        Color = 15466474
        Collapsed = False
        Items = <>
      end
      item
        Caption = 'film'
        Color = 16771818
        Collapsed = False
        Items = <>
      end>
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Segoe UI'
    Font.Orientation = 1
    Font.Pitch = fpFixed
    Font.Style = []
    Font.Quality = fqProof
    ParentDoubleBuffered = False
    RegularButtonColor = clWhite
    SelectedButtonColor = clMaroon
    TabOrder = 1
    StyleElements = [seFont, seClient]
    OnSelectedCategoryChange = CategoryButtons1SelectedCategoryChange
  end
  object TrackBar1: TTrackBar
    Left = 392
    Top = 0
    Width = 236
    Height = 18
    HelpType = htKeyword
    HelpContext = 6
    Ctl3D = False
    Max = 8
    ParentCtl3D = False
    ParentShowHint = False
    Position = 4
    ShowHint = True
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 65
    Top = 0
    Width = 16
    Height = 445
    BevelOuter = bvNone
    TabOrder = 4
  end
  object Button1: TButton
    Left = 0
    Top = 408
    Width = 628
    Height = 34
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Button1'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 81
    Top = 0
    Width = 313
    Height = 23
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 5
    TextHint = 'Konu'
  end
end
