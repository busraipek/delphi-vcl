object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 745
  Height = 550
  TabOrder = 0
  object ListBox1: TListBox
    Left = 400
    Top = 144
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 0
  end
  object ListView1: TListView
    Left = 216
    Top = 296
    Width = 250
    Height = 150
    Action = Action3
    Columns = <>
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 112
    Top = 112
    object DialogColorSelect1: TColorSelect
      Category = 'Dialog'
      Caption = 'Select &Color...'
      Hint = 'Color Select'
    end
    object Action1: TAction
      Category = 'Dialog'
      Caption = 'Action1'
    end
    object Action2: TAction
      Category = 'Dialog'
      Caption = 'Action2'
    end
    object Action3: TAction
      Caption = 'Action3'
    end
  end
end
