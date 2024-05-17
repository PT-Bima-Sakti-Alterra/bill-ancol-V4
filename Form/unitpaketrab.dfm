object upaketrab: Tupaketrab
  Left = 641
  Top = 471
  BorderStyle = bsNone
  Caption = 'upaketrab'
  ClientHeight = 206
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 206
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 32
      Top = 56
      Caption = 'Nama Paket'
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
      Left = 32
      Top = 80
      Caption = 'Paket Material'
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
      Left = 32
      Top = 104
      Caption = 'Paket Ongkos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object namapaket: TcxTextEdit
      Left = 176
      Top = 56
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 40
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 297
    end
    object button: TcxButton
      Left = 178
      Top = 160
      Width = 103
      Height = 27
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
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 288
      Top = 160
      Width = 105
      Height = 27
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
      Width = 506
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA PAKET RAB'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object paketmat: TcxComboBox
      Left = 176
      Top = 80
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 1
      Width = 297
    end
    object paketongkos: TcxComboBox
      Left = 176
      Top = 104
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 2
      Width = 297
    end
    object persen: TcxCurrencyEdit
      Left = 176
      Top = 128
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;,0.'
      Properties.EditFormat = ',0.;,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      TabOrder = 9
      Width = 65
    end
    object cxLabel4: TcxLabel
      Left = 32
      Top = 128
      Caption = 'Persen Jasa dari material'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 240
      Top = 128
      Caption = ' % '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object ActionList1: TActionList
    Left = 32
    Top = 17
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
    Left = 120
    Top = 192
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
