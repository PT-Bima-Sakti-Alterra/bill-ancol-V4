object upenggunaloket: Tupenggunaloket
  Left = 429
  Top = 182
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Input Data Pengguna Unit Layanan'
  ClientHeight = 355
  ClientWidth = 385
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
  object cxButton1: TcxButton
    Left = 112
    Top = 316
    Width = 83
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
    OnClick = cxButton1Click
    OptionsImage.ImageIndex = 1
    OptionsImage.Images = DM.icon24
    SpeedButtonOptions.CanBeFocused = False
  end
  object cxButton2: TcxButton
    Left = 200
    Top = 316
    Width = 81
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
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Nama '
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 32
    Caption = 'User Name'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 56
    Caption = 'Password'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 77
    Caption = 'Jabatan'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel5: TcxLabel
    Left = 8
    Top = 149
    Caption = 'Status'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object nama: TcxTextEdit
    Left = 120
    Top = 8
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.MaxLength = 10
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 249
  end
  object username: TcxTextEdit
    Left = 120
    Top = 32
    ParentFont = False
    Properties.MaxLength = 30
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 161
  end
  object peran: TcxTextEdit
    Left = 120
    Top = 77
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.MaxLength = 30
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 249
  end
  object status: TcxComboBox
    Left = 120
    Top = 149
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
    Text = 'Non Aktif'
    Width = 89
  end
  object password: TcxTextEdit
    Left = 120
    Top = 56
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 13
    Properties.PasswordChar = 'l'
    Style.Font.Charset = SYMBOL_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 161
  end
  object cxLabel6: TcxLabel
    Left = 9
    Top = 103
    Caption = 'KD.Loket Unit'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.IsFontAssigned = True
    Transparent = True
  end
  object loket: TcxComboBox
    Left = 192
    Top = 101
    TabStop = False
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = loketPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    Width = 177
  end
  object jasa: TcxCurrencyEdit
    Left = 307
    Top = 150
    Enabled = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.;(,0.)'
    Properties.EditFormat = ',0.;(,0.)'
    Properties.UseThousandSeparator = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 65
  end
  object kodeloket: TcxComboBox
    Left = 120
    Top = 101
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodeloketPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 73
  end
  object pihakke2: TcxCheckBox
    Left = 8
    Top = 182
    Caption = 'Loket Mitra'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 16
    Transparent = True
    OnClick = pihakke2Click
    Width = 121
  end
  object _boleh_transaksi: TcxCheckBox
    Left = 8
    Top = 208
    Caption = 'Boleh Transaksi'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 17
    Transparent = True
    Width = 121
  end
  object _boleh_buka_lock_bulan: TcxCheckBox
    Left = 8
    Top = 232
    Caption = 'Boleh Buka Lock Bulan'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 18
    Transparent = True
    Width = 161
  end
  object _langganan: TcxCheckBox
    Left = 8
    Top = 256
    Caption = 'Boleh Akses BSHL Loket'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 19
    Transparent = True
    Width = 161
  end
  object _pembatalan: TcxCheckBox
    Left = 8
    Top = 280
    Caption = 'Boleh Membatalkan Transaksi'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 20
    Transparent = True
    Width = 185
  end
  object _data: TcxCheckBox
    Left = 200
    Top = 208
    Caption = 'Boleh Download Data'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 21
    Transparent = True
    Width = 241
  end
  object cxLabel7: TcxLabel
    Left = 219
    Top = 151
    Caption = 'Jasa Mitra (Rp.)'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object _cetakrekening: TcxCheckBox
    Left = 200
    Top = 232
    Caption = 'Boleh cetak Rekening manual'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 23
    Transparent = True
    Width = 241
  end
  object _bolehhapusdenda: TcxCheckBox
    Left = 200
    Top = 256
    Caption = 'Boleh Hapus Denda'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 24
    Transparent = True
    Width = 241
  end
  object _pelunasanmanual: TcxCheckBox
    Left = 200
    Top = 280
    Caption = 'Boleh Pelunasan Manual'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 25
    Transparent = True
    Width = 241
  end
  object cxLabel8: TcxLabel
    Left = 9
    Top = 127
    Caption = 'Hanya Wilayah'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.IsFontAssigned = True
    Transparent = True
  end
  object kodewil: TcxComboBox
    Left = 120
    Top = 125
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodewilPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 27
    Width = 73
  end
  object wilayah: TcxComboBox
    Left = 192
    Top = 125
    TabStop = False
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = wilayahPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 28
    Width = 177
  end
  object ActionList1: TActionList
    Left = 816
    Top = 192
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton1Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
  object Qhost1: TMyQuery
    Connection = Umain.host
    Left = 792
    Top = 168
  end
end
