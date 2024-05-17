object ubiayalain: Tubiayalain
  Left = 470
  Top = 266
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Data Biaya Lain'
  ClientHeight = 177
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 177
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 56
      Top = 48
      Caption = 'Kode'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 72
      Caption = 'Keterangan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 56
      Top = 96
      Caption = 'Biaya'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kode: TcxTextEdit
      Left = 96
      Top = 48
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 145
    end
    object keterangan: TcxTextEdit
      Left = 96
      Top = 72
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 100
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 241
    end
    object biaya: TcxCurrencyEdit
      Left = 96
      Top = 96
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 81
    end
    object button: TcxButton
      Left = 96
      Top = 128
      Width = 105
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = buttonClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 208
      Top = 128
      Width = 129
      Height = 30
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 354
      Height = 33
      Align = alTop
      BorderOuter = fsFlat
      BorderColor = clBlack
      Caption = 'BIAYA LAIN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object ActionList1: TActionList
    Left = 48
    Top = 65513
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = buttonClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
  object ActionList2: TActionList
    Left = 192
    Top = 152
    object Action3: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action4: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
  end
end
