object upengguna: Tupengguna
  Left = 488
  Top = 188
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Pengguna Aplikasi Pusat'
  ClientHeight = 328
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 328
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object cxLabel4: TcxLabel
      Left = 45
      Top = 104
      Caption = 'User Name'
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
      Left = 71
      Top = 80
      Caption = 'Nama'
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
      Left = 51
      Top = 128
      Caption = 'Password'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 45
      Top = 149
      Caption = 'Konfirmasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 49
      Top = 56
      Caption = 'Hak Akses'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object hakakses: TcxComboBox
      Left = 119
      Top = 56
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 154
    end
    object konfirm: TcxTextEdit
      Left = 120
      Top = 149
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 200
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 153
    end
    object pass: TcxTextEdit
      Left = 120
      Top = 128
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 200
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 153
    end
    object namauser: TcxTextEdit
      Left = 120
      Top = 104
      ParentFont = False
      Properties.MaxLength = 30
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 153
    end
    object nama: TcxTextEdit
      Left = 120
      Top = 80
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 153
    end
    object cxLabel1: TcxLabel
      Left = 35
      Top = 170
      Caption = 'No. Identitas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object noid: TcxTextEdit
      Left = 120
      Top = 170
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 153
    end
    object cxLabel2: TcxLabel
      Left = 69
      Top = 194
      Caption = 'Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object status: TcxComboBox
      Left = 184
      Top = 194
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Non Aktif'
        'Aktif')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 89
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 301
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA PENGGUNA'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object cxButton2: TcxButton
      Left = 38
      Top = 234
      Width = 235
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 38
      Top = 266
      Width = 235
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object ActionList1: TActionList
    Left = 680
    Top = 280
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
end