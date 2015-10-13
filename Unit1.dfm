object Form1: TForm1
  Left = 249
  Top = 152
  Width = 539
  Height = 289
  BiDiMode = bdRightToLeftReadingOnly
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 32
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 104
    Top = 64
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = #30830#23450'(&Y)'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 80
    Top = 0
    Width = 75
    Height = 25
    Caption = #21462#28040'(&N)'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object num7: TButton
    Left = 184
    Top = 72
    Width = 41
    Height = 25
    Caption = '7'
    TabOrder = 3
    OnClick = num7Click
  end
  object num4: TButton
    Left = 184
    Top = 104
    Width = 41
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = num4Click
  end
  object num1: TButton
    Left = 184
    Top = 136
    Width = 41
    Height = 25
    Caption = '1'
    TabOrder = 5
    OnClick = num1Click
  end
  object num8: TButton
    Left = 232
    Top = 72
    Width = 41
    Height = 25
    Caption = '8'
    TabOrder = 6
    OnClick = num8Click
  end
  object num5: TButton
    Left = 232
    Top = 104
    Width = 41
    Height = 25
    Caption = '5'
    TabOrder = 7
    OnClick = num5Click
  end
  object num2: TButton
    Left = 232
    Top = 136
    Width = 41
    Height = 25
    Caption = '2'
    TabOrder = 8
    OnClick = num2Click
  end
  object num9: TButton
    Left = 280
    Top = 72
    Width = 41
    Height = 25
    Caption = '9'
    TabOrder = 9
    OnClick = num9Click
  end
  object num6: TButton
    Left = 280
    Top = 104
    Width = 41
    Height = 25
    Caption = '6'
    TabOrder = 10
    OnClick = num6Click
  end
  object num3: TButton
    Left = 280
    Top = 136
    Width = 41
    Height = 25
    Caption = '3'
    TabOrder = 11
    OnClick = num3Click
  end
  object num0: TButton
    Left = 184
    Top = 168
    Width = 89
    Height = 25
    Caption = '0'
    TabOrder = 12
    OnClick = num0Click
  end
  object dian: TButton
    Left = 280
    Top = 168
    Width = 41
    Height = 25
    Caption = '.'
    TabOrder = 13
    OnClick = dianClick
  end
  object jia: TButton
    Left = 328
    Top = 72
    Width = 41
    Height = 57
    Caption = '+'
    TabOrder = 14
    OnClick = jiaClick
  end
  object deng: TButton
    Left = 328
    Top = 136
    Width = 41
    Height = 57
    Caption = '='
    TabOrder = 15
    OnClick = dengClick
  end
  object clear: TButton
    Left = 184
    Top = 40
    Width = 41
    Height = 25
    Caption = 'Clear'
    TabOrder = 16
    OnClick = clearClick
  end
  object chu: TButton
    Left = 232
    Top = 40
    Width = 41
    Height = 25
    Caption = '/'
    TabOrder = 17
    OnClick = chuClick
  end
  object cheng: TButton
    Left = 280
    Top = 40
    Width = 41
    Height = 25
    Caption = '*'
    TabOrder = 18
    OnClick = chengClick
  end
  object jian: TButton
    Left = 328
    Top = 40
    Width = 41
    Height = 25
    Caption = '-'
    TabOrder = 19
    OnClick = jianClick
  end
  object show_result: TMemo
    Left = 184
    Top = 0
    Width = 185
    Height = 33
    Alignment = taRightJustify
    Lines.Strings = (
      ''
      '0')
    ReadOnly = True
    TabOrder = 20
  end
end
