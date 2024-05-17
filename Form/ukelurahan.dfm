object fkelurahan: Tfkelurahan
  Left = 565
  Top = 309
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Data Kelurahan'
  ClientHeight = 149
  ClientWidth = 382
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
    Width = 385
    Height = 145
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 8
      Top = 56
      Caption = 'KD.kel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodekelurahan: TcxTextEdit
      Left = 96
      Top = 56
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 7
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 105
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 80
      Caption = 'Kelurahan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kelurahan: TcxTextEdit
      Left = 96
      Top = 80
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 25
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 273
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Kode Cabang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodecabang: TcxComboBox
      Left = 96
      Top = 8
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodecabangPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object cabang: TcxComboBox
      Left = 96
      Top = 32
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cabangPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 273
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 32
      Caption = 'Cabang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object button: TcxButton
      Left = 96
      Top = 112
      Width = 80
      Height = 29
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = buttonClick
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = DM.icon24
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 184
      Top = 112
      Width = 80
      Height = 29
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.icon24
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object ActionList1: TActionList
    Left = 448
    Top = 48
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
end
