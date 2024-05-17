object UTpelanggan: TUTpelanggan
  Left = 814
  Top = 146
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 720
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 720
    Align = alClient
    BevelWidth = 2
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderShadow = clWhite
    BorderWidth = 5
    Color = 16316664
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    GradientColorStart = 9103615
    GradientColorStop = 9234687
    ParentFont = False
    TabOrder = 0
    object nama: TcxTextEdit
      Left = 128
      Top = 69
      ParentFont = False
      Properties.MaxLength = 40
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 305
    end
    object cxLabel2: TcxLabel
      Left = 32
      Top = 71
      Caption = 'NAMA *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 32
      Top = 208
      Caption = 'ALAMAT *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 32
      Top = 138
      Caption = 'GOLONGAN *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 32
      Top = 92
      Caption = 'RAYON *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 32
      Top = 161
      Caption = 'UKURAN MTR *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 32
      Top = 343
      Caption = 'MERK METER'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object merkwm: TcxComboBox
      Left = 128
      Top = 343
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 305
    end
    object serimeter: TcxTextEdit
      Left = 320
      Top = 320
      ParentFont = False
      Properties.MaxLength = 30
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 113
    end
    object cxLabel9: TcxLabel
      Left = 248
      Top = 319
      Caption = 'SERI METER'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gsmcdma: TcxTextEdit
      Left = 208
      Top = 366
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 32
      Top = 366
      Caption = 'TELP / HP'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object telp: TcxTextEdit
      Left = 128
      Top = 366
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 81
    end
    object cxLabel16: TcxLabel
      Left = 32
      Top = 550
      Caption = 'TGL.JADI PEL. *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object alamat: TcxMemo
      Left = 128
      Top = 208
      ParentFont = False
      Properties.MaxLength = 50
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 66
      Width = 305
    end
    object cxLabel23: TcxLabel
      Left = 32
      Top = 619
      Caption = 'STATUS *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object status: TcxComboBox
      Left = 128
      Top = 618
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'NON AKTIF'
        'AKTIF'
        'SEGEL')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 29
      Text = 'AKTIF'
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 49
      Caption = 'NO.SAMB *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel32: TcxLabel
      Left = 32
      Top = 389
      Caption = 'KOLEKTIF *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodekolektif: TcxComboBox
      Left = 128
      Top = 389
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 57
    end
    object stan: TcxCurrencyEdit
      Left = 320
      Top = 274
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 113
    end
    object labelstan: TcxLabel
      Left = 248
      Top = 274
      Caption = 'STAN MTR'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object koderayon: TcxComboBox
      Left = 128
      Top = 92
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = koderayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 81
    end
    object kodegol: TcxComboBox
      Left = 128
      Top = 138
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 81
    end
    object kodediameter: TcxComboBox
      Left = 128
      Top = 161
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodediameterPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 81
    end
    object tgldaftar: TcxDateEdit
      Left = 128
      Top = 550
      AutoSize = False
      ParentFont = False
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.EditFormat = 'dd MMM yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 26
      Height = 21
      Width = 121
    end
    object golongan: TcxComboBox
      Left = 208
      Top = 138
      TabStop = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Width = 225
    end
    object kolektif: TcxComboBox
      Left = 184
      Top = 389
      TabStop = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 36
      Width = 249
    end
    object cxButton1: TcxButton
      Left = 284
      Top = 47
      Width = 149
      Height = 21
      Caption = 'Auto Nosamb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel14: TcxLabel
      Left = 32
      Top = 114
      Caption = 'KELURAHAN *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodekelurahan: TcxComboBox
      Left = 128
      Top = 114
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodekelurahanPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 34
      Width = 81
    end
    object kelurahan: TcxComboBox
      Left = 208
      Top = 114
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kelurahanPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 35
      Width = 225
    end
    object ukuran: TcxComboBox
      Left = 208
      Top = 161
      TabStop = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = ukuranPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 33
      Width = 225
    end
    object namarayon: TcxComboBox
      Left = 208
      Top = 92
      TabStop = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = namarayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 32
      Width = 225
    end
    object kepemilikan: TcxComboBox
      Left = 280
      Top = 481
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 23
      Width = 153
    end
    object cxLabel8: TcxLabel
      Left = 200
      Top = 482
      Caption = 'BANGUNAN'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 32
      Top = 412
      Caption = 'PEMILIK'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object namapemilik: TcxTextEdit
      Left = 128
      Top = 412
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 305
    end
    object cxLabel17: TcxLabel
      Left = 35
      Top = 437
      Caption = 'KTP'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object noktp: TcxTextEdit
      Left = 128
      Top = 435
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 161
    end
    object cxLabel18: TcxLabel
      Left = 32
      Top = 458
      Caption = 'PEKERJAAN'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object pekerjaan: TcxTextEdit
      Left = 128
      Top = 458
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 161
    end
    object cxLabel21: TcxLabel
      Left = 32
      Top = 481
      Caption = 'PENGHUNI'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object penghuni: TcxTextEdit
      Left = 128
      Top = 481
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 57
    end
    object sumberair: TcxComboBox
      Left = 128
      Top = 504
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 24
      Width = 305
    end
    object cxLabel22: TcxLabel
      Left = 32
      Top = 504
      Caption = 'SUMBER AIR'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object nosamb: TcxTextEdit
      Left = 128
      Top = 46
      ParentFont = False
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 153
    end
    object cxLabel31: TcxLabel
      Left = 32
      Top = 272
      Caption = 'ADM. LAIN *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodeadmlain: TcxComboBox
      Left = 128
      Top = 274
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 81
    end
    object cxLabel33: TcxLabel
      Left = 32
      Top = 296
      Caption = 'PEM.LAIN *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodepemlain: TcxComboBox
      Left = 128
      Top = 297
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 81
    end
    object cxLabel34: TcxLabel
      Left = 32
      Top = 319
      Caption = 'RET.LAIN *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object koderetlain: TcxComboBox
      Left = 128
      Top = 320
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 81
    end
    object cxLabel15: TcxLabel
      Left = 664
      Top = 173
      Caption = 'BLOK'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodeblok: TcxComboBox
      Left = 704
      Top = 173
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodeblokPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 62
      Width = 65
    end
    object namablok: TcxComboBox
      Left = 768
      Top = 173
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = namablokPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 63
      Width = 201
    end
    object cxLabel19: TcxLabel
      Left = 248
      Top = 297
      Caption = 'LUAS RMH'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object luasrumah: TcxCurrencyEdit
      Left = 320
      Top = 297
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 113
    end
    object ok: TcxButton
      Left = 128
      Top = 659
      Width = 129
      Height = 33
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 65
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object no: TcxButton
      Left = 263
      Top = 659
      Width = 130
      Height = 33
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 66
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel10: TcxLabel
      Left = 32
      Top = 527
      Caption = 'EMAIL'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object email: TcxTextEdit
      Left = 128
      Top = 527
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 25
      Width = 305
    end
    object cxLabel12: TcxLabel
      Left = 648
      Top = 235
      Caption = 'NO.REKENING'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object norekening: TcxTextEdit
      Left = 744
      Top = 232
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 30
      Width = 153
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 453
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA PELANGGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      GradientColorStart = 20966
      GradientColorStop = 19157
      ParentFont = False
      TabOrder = 69
      OnMouseDown = RzPanel8MouseDown
    end
    object cxLabel24: TcxLabel
      Left = 584
      Top = 331
      Caption = 'NO.RUMAH'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object norumah: TcxTextEdit
      Left = 680
      Top = 331
      Enabled = False
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 81
    end
    object cxLabel25: TcxLabel
      Left = 800
      Top = 331
      Caption = 'RT'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object rt: TcxTextEdit
      Left = 824
      Top = 331
      Enabled = False
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 65
    end
    object cxLabel26: TcxLabel
      Left = 893
      Top = 331
      Caption = 'RW'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object rw: TcxTextEdit
      Left = 920
      Top = 331
      Enabled = False
      ParentFont = False
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 65
    end
    object cekhanyamelengkapidata: TcxCheckBox
      Left = 128
      Top = 187
      TabStop = False
      Caption = 'Hanya Melengkapi Data'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 73
      Transparent = True
      OnClick = cekhanyamelengkapidataClick
      Width = 273
    end
    object cxLabel20: TcxLabel
      Left = 32
      Top = 595
      Caption = 'KONDISI METER'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodekondisimeter: TcxComboBox
      Left = 128
      Top = 595
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Properties.OnChange = kodekondisimeterPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Width = 57
    end
    object kondisimeter: TcxComboBox
      Left = 184
      Top = 595
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.MaxLength = 20
      Properties.OnChange = kondisimeterPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 28
      Width = 249
    end
    object cxLabel27: TcxLabel
      Left = 32
      Top = 572
      Caption = 'TGL. METER *'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tglmeter: TcxDateEdit
      Left = 128
      Top = 572
      AutoSize = False
      ParentFont = False
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.EditFormat = 'dd MMM yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 76
      Height = 21
      Width = 121
    end
    object cxLabel35: TcxLabel
      Left = 256
      Top = 570
      Caption = 'URUTAN BACA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object urutanbaca: TcxCurrencyEdit
      Left = 344
      Top = 570
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.EditFormat = ',0.;-,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 78
      Width = 89
    end
  end
  object ActionList1: TActionList
    Left = 304
    Top = 160
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
  object Qcek: TMyQuery
    Connection = DM.Conn
    Left = 64
    Top = 472
  end
  object Qnosamb: TMyQuery
    Connection = Umain.host
    Left = 344
    Top = 400
  end
  object QcekVPS: TMyQuery
    Connection = Umain.host
    Left = 392
    Top = 368
  end
end
