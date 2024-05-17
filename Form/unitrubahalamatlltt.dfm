object urubahalamatlltt: Turubahalamatlltt
  Left = 1285
  Top = 284
  BorderStyle = bsNone
  Caption = 'urubahalamatlltt'
  ClientHeight = 582
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 582
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object ok: TcxButton
      Left = 24
      Top = 486
      Width = 425
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object no: TcxButton
      Left = 24
      Top = 520
      Width = 425
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 52
      Caption = 'Kode Rayon Lama :'
      Transparent = True
    end
    object koderayonlama: TcxTextEdit
      Left = 24
      Top = 71
      Enabled = False
      TabOrder = 11
      Width = 137
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 148
      Caption = 'Kode Rayon Baru :'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 24
      Top = 304
      Caption = 'Nomor Berita Acara :'
      Transparent = True
    end
    object nomorba: TcxTextEdit
      Left = 24
      Top = 323
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 425
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 400
      Caption = 'Alasan Perubahan Nama :'
      Transparent = True
    end
    object tanggal: TcxDateEdit
      Left = 24
      Top = 371
      TabOrder = 6
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 352
      Caption = 'Tanggal Berita Acara :'
      Transparent = True
    end
    object alasan: TcxMemo
      Left = 24
      Top = 419
      TabOrder = 7
      Height = 49
      Width = 425
    end
    object koderayonbaru: TcxComboBox
      Left = 24
      Top = 168
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = koderayonbaruPropertiesChange
      TabOrder = 0
      Width = 137
    end
    object cxLabel6: TcxLabel
      Left = 24
      Top = 197
      Caption = 'Alamat Baru :'
      Transparent = True
    end
    object alamatbaru: TcxTextEdit
      Left = 24
      Top = 216
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 425
    end
    object cxLabel7: TcxLabel
      Left = 24
      Top = 100
      Caption = 'Alamat Lama :'
      Transparent = True
    end
    object alamatlama: TcxTextEdit
      Left = 24
      Top = 119
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 18
      Width = 425
    end
    object cxLabel8: TcxLabel
      Left = 632
      Top = 52
      Caption = 'Kode Kelurahan Lama :'
      Enabled = False
      Transparent = True
    end
    object kodekelurahanlama: TcxTextEdit
      Left = 632
      Top = 71
      Enabled = False
      TabOrder = 20
      Width = 137
    end
    object cxLabel9: TcxLabel
      Left = 608
      Top = 100
      Caption = 'Kode Blok Lama :'
      Enabled = False
      Transparent = True
    end
    object kodebloklama: TcxTextEdit
      Left = 608
      Top = 119
      Enabled = False
      TabOrder = 22
      Width = 137
    end
    object cxLabel10: TcxLabel
      Left = 608
      Top = 212
      Caption = 'Kode Blok Baru :'
      Enabled = False
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 584
      Top = 148
      Caption = 'Kode Kelurahan Baru :'
      Enabled = False
      Transparent = True
    end
    object kodeblokbaru: TcxComboBox
      Left = 608
      Top = 232
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 25
      Width = 137
    end
    object kodekelurahanbaru: TcxComboBox
      Left = 584
      Top = 168
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 26
      Width = 137
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 464
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'RUBAH ALAMAT'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object cxLabel12: TcxLabel
      Left = 24
      Top = 253
      Caption = 'No.Rumah :'
      Transparent = True
    end
    object norumah: TcxTextEdit
      Left = 24
      Top = 272
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 201
    end
    object cxLabel13: TcxLabel
      Left = 232
      Top = 253
      Caption = 'RT :'
      Transparent = True
    end
    object rt: TcxTextEdit
      Left = 232
      Top = 272
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 105
    end
    object cxLabel14: TcxLabel
      Left = 344
      Top = 253
      Caption = 'RW :'
      Transparent = True
    end
    object rw: TcxTextEdit
      Left = 344
      Top = 272
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      Width = 105
    end
    object cxLabel15: TcxLabel
      Left = 176
      Top = 52
      Caption = 'No.Rumah Lama :'
      Transparent = True
    end
    object norumahlama: TcxTextEdit
      Left = 176
      Top = 71
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 32
      Width = 97
    end
    object cxLabel16: TcxLabel
      Left = 280
      Top = 52
      Caption = 'RT Lama :'
      Transparent = True
    end
    object rtlama: TcxTextEdit
      Left = 280
      Top = 71
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 34
      Width = 81
    end
    object cxLabel17: TcxLabel
      Left = 368
      Top = 52
      Caption = 'RW Lama :'
      Transparent = True
    end
    object rwlama: TcxTextEdit
      Left = 368
      Top = 71
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 36
      Width = 81
    end
  end
  object ActionList1: TActionList
    Left = 552
    Top = 72
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
