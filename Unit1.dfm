object Form1: TForm1
  Left = 720
  Top = 115
  Width = 877
  Height = 913
  BorderStyle = bsSizeToolWin
  Caption = 'Torrent Tracker 1.0b - by Imagin4ry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 861
    Height = 875
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = 8
      Width = 827
      Height = 854
      Caption = 'Torrent Tracker '
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 8
        Top = 16
        Width = 809
        Height = 633
        Caption = 'Torrent Search'
        TabOrder = 0
        object ListBox1: TListBox
          Left = 8
          Top = 40
          Width = 793
          Height = 121
          ItemHeight = 13
          TabOrder = 0
          OnDblClick = ListBox1DblClick
        end
        object Edit2: TEdit
          Left = 8
          Top = 19
          Width = 345
          Height = 21
          TabOrder = 1
          OnKeyDown = Edit2KeyDown
        end
        object Button2: TButton
          Left = 358
          Top = 18
          Width = 57
          Height = 21
          Caption = 'search'
          TabOrder = 2
          OnClick = Button2Click
        end
        object CheckBox1: TCheckBox
          Left = 520
          Top = 23
          Width = 145
          Height = 17
          Caption = 'Save Search + RunTimer!'
          TabOrder = 3
          OnClick = CheckBox1Click
        end
        object ListBox4: TListBox
          Left = 8
          Top = 496
          Width = 793
          Height = 121
          ItemHeight = 13
          TabOrder = 4
          OnDblClick = ListBox4DblClick
        end
        object Edit4: TEdit
          Left = 8
          Top = 475
          Width = 345
          Height = 21
          TabOrder = 5
          OnKeyDown = Edit4KeyDown
        end
        object Button4: TButton
          Left = 366
          Top = 474
          Width = 57
          Height = 21
          Caption = 'search'
          TabOrder = 6
          OnClick = Button4Click
        end
        object CheckBox4: TCheckBox
          Left = 520
          Top = 479
          Width = 145
          Height = 17
          Caption = 'Save Search + RunTimer!'
          TabOrder = 7
          OnClick = CheckBox4Click
        end
        object CheckBox3: TCheckBox
          Left = 520
          Top = 327
          Width = 145
          Height = 17
          Caption = 'Save Search + RunTimer!'
          TabOrder = 8
          OnClick = CheckBox3Click
        end
        object Button3: TButton
          Left = 366
          Top = 322
          Width = 57
          Height = 21
          Caption = 'search'
          TabOrder = 9
          OnClick = Button3Click
        end
        object Edit3: TEdit
          Left = 8
          Top = 323
          Width = 345
          Height = 21
          TabOrder = 10
          OnKeyDown = Edit3KeyDown
        end
        object ListBox3: TListBox
          Left = 8
          Top = 344
          Width = 793
          Height = 121
          ItemHeight = 13
          TabOrder = 11
          OnDblClick = ListBox3DblClick
        end
        object ListBox2: TListBox
          Left = 8
          Top = 192
          Width = 793
          Height = 121
          ItemHeight = 13
          TabOrder = 12
          OnDblClick = ListBox2DblClick
        end
        object Button1: TButton
          Left = 366
          Top = 170
          Width = 57
          Height = 21
          Caption = 'search'
          TabOrder = 13
          OnClick = Button1Click
        end
        object Edit1: TEdit
          Left = 8
          Top = 171
          Width = 345
          Height = 21
          TabOrder = 14
          OnKeyDown = Edit1KeyDown
        end
        object CheckBox2: TCheckBox
          Left = 520
          Top = 175
          Width = 145
          Height = 17
          Caption = 'Save Search + RunTimer!'
          TabOrder = 15
          OnClick = CheckBox2Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 664
        Width = 809
        Height = 185
        Caption = 'Ez.TV'
        TabOrder = 1
        object ComboBox1: TComboBox
          Left = 8
          Top = 40
          Width = 785
          Height = 24
          BevelKind = bkFlat
          Style = csDropDownList
          DropDownCount = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnSelect = ComboBox1Select
        end
        object Button5: TButton
          Left = 8
          Top = 16
          Width = 233
          Height = 17
          Caption = 'Search'
          TabOrder = 1
          Visible = False
          OnClick = Button5Click
        end
        object ListBox5: TListBox
          Left = 8
          Top = 72
          Width = 785
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          OnDblClick = ListBox5DblClick
        end
        object Button6: TButton
          Left = 560
          Top = 14
          Width = 233
          Height = 17
          Caption = 'Run Search'
          TabOrder = 3
          OnClick = Button6Click
        end
      end
    end
  end
  object Timer2: TTimer
    Interval = 1800000
    OnTimer = Timer2Timer
    Left = 726
    Top = 4
  end
  object Timer3: TTimer
    Interval = 1800000
    OnTimer = Timer3Timer
    Left = 758
    Top = 4
  end
  object Timer4: TTimer
    Interval = 1800000
    OnTimer = Timer4Timer
    Left = 662
    Top = 4
  end
  object Timer1: TTimer
    Interval = 1800000
    OnTimer = Timer1Timer
    Left = 694
    Top = 4
  end
end
