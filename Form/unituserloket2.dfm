object uuserloket2: Tuuserloket2
  Left = 703
  Top = 195
  BorderStyle = bsNone
  Caption = 'PENGGUNA LOKET'
  ClientHeight = 319
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
    Height = 319
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object ok: TcxButton
      Left = 47
      Top = 263
      Width = 210
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object no: TcxButton
      Left = 264
      Top = 263
      Width = 209
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object nama: TcxTextEdit
      Left = 264
      Top = 56
      Properties.MaxLength = 30
      TabOrder = 0
      Width = 209
    end
    object cxLabel1: TcxLabel
      Left = 48
      Top = 56
      Caption = 'Nama Pengguna'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 48
      Top = 104
      Caption = 'Kata Sandi'
      Transparent = True
    end
    object namauser: TcxTextEdit
      Left = 264
      Top = 80
      Properties.MaxLength = 20
      TabOrder = 1
      Width = 209
    end
    object cxLabel2: TcxLabel
      Left = 48
      Top = 80
      Caption = 'User Name'
      Transparent = True
    end
    object passworduser: TcxTextEdit
      Left = 264
      Top = 104
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 100
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 137
    end
    object cxLabel4: TcxLabel
      Left = 48
      Top = 128
      Caption = 'Konfirmasi Kata Sandi'
      Transparent = True
    end
    object konfirmasipassword: TcxTextEdit
      Left = 264
      Top = 128
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 100
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 137
    end
    object kodeloket: TcxComboBox
      Left = 264
      Top = 177
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 5
      Width = 137
    end
    object cxLabel5: TcxLabel
      Left = 48
      Top = 177
      Caption = 'Kode Loket'
      Transparent = True
    end
    object cxLabel13: TcxLabel
      Left = 48
      Top = 227
      Caption = 'Aktif'
      Transparent = True
    end
    object flagaktif: TcxComboBox
      Left = 264
      Top = 227
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tidak'
        'Ya')
      TabOrder = 6
      Width = 57
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 506
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'PENGGUNA BSHL - BSPRC - BSDIST'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object cxLabel6: TcxLabel
      Left = 48
      Top = 152
      Caption = 'Hak Akses'
      Transparent = True
    end
    object hakakses: TcxComboBox
      Left = 264
      Top = 152
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 4
      Width = 209
    end
    object cxLabel7: TcxLabel
      Left = 48
      Top = 202
      Caption = 'Kode Kelurahan'
      Transparent = True
    end
    object kodekelurahan: TcxComboBox
      Left = 264
      Top = 202
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 18
      Width = 137
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 233
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = okClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = noClick
    end
  end
end
