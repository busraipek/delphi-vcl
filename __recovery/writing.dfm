object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 442
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 588
    Top = 20
    Width = 34
    Height = 15
    Alignment = taRightJustify
    Caption = 'Label1'
  end
  object TrackBar1: TTrackBar
    Left = 392
    Top = 0
    Width = 236
    Height = 20
    Hint = 'de'#287'erlendir'
    HelpType = htKeyword
    HelpContext = 6
    ParentCustomHint = False
    Ctl3D = False
    Max = 6
    ParentCtl3D = False
    ParentShowHint = False
    PageSize = 1
    Position = 3
    ShowHint = True
    TabOrder = 1
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object RichEdit1: TRichEdit
    Left = 80
    Top = 36
    Width = 548
    Height = 372
    HelpType = htKeyword
    ParentCustomHint = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Orientation = 1
    Font.Pitch = fpFixed
    Font.Style = []
    Font.Quality = fqProof
    ParentDoubleBuffered = False
    RegularButtonColor = clWhite
    SelectedButtonColor = clMaroon
    TabOrder = 2
    StyleElements = [seFont, seClient]
    OnSelectedCategoryChange = CategoryButtons1SelectedCategoryChange
    ExplicitHeight = 399
  end
  object Panel1: TPanel
    Left = 65
    Top = 1
    Width = 16
    Height = 445
    BevelOuter = bvNone
    TabOrder = 4
  end
  object Button1: TButton
    Left = 0
    Top = 408
    Width = 629
    Height = 34
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Kaydet'
    TabOrder = 3
    OnClick = Button1Click
    ExplicitTop = 399
    ExplicitWidth = 623
  end
  object Edit1: TEdit
    Left = 81
    Top = 1
    Width = 313
    Height = 34
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'Konu'
  end
end
