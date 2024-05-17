object udrd_posting: Tudrd_posting
  Left = 406
  Top = 108
  BorderStyle = bsNone
  Caption = 'DRD'
  ClientHeight = 403
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object sumberair: TcxComboBox
    Left = 752
    Top = 328
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 0
    Width = 121
  end
  object ceksumberair: TcxCheckBox
    Left = 648
    Top = 328
    Caption = 'Sumber Air'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans Extrabold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Transparent = True
    Width = 97
  end
  object cekkelurahan: TcxCheckBox
    Left = 584
    Top = 261
    Caption = 'Kelurahan'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Transparent = True
    Width = 105
  end
  object kodekelurahan: TcxComboBox
    Left = 712
    Top = 261
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodekelurahanPropertiesChange
    TabOrder = 3
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 776
    Top = 261
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kelurahanPropertiesChange
    TabOrder = 4
    Width = 100
  end
  object cxLabel3: TcxLabel
    Left = 690
    Top = 195
    Caption = 'Kode Paraf'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object kodeparaf: TcxComboBox
    Left = 800
    Top = 192
    Enabled = False
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Tidak'
      'Ya')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 129
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 403
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 7
    object cxLabel1: TcxLabel
      Left = 64
      Top = 58
      Caption = 'Bulan/Tahun'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 48
      Top = 336
      Width = 209
      Height = 40
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 264
      Top = 336
      Width = 201
      Height = 40
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object periode: TRzDateTimePicker
      Left = 194
      Top = 57
      Width = 135
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      Color = clBtnHighlight
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object pemakaian2: TcxTextEdit
      Left = 256
      Top = 85
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 73
    end
    object cekpemakaian: TcxCheckBox
      Left = 48
      Top = 86
      Caption = 'M3'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      OnClick = cekpemakaianClick
      Width = 97
    end
    object kodegol: TcxComboBox
      Left = 192
      Top = 112
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 65
    end
    object cekkodegol: TcxCheckBox
      Left = 48
      Top = 113
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      OnClick = cekkodegolClick
      Width = 97
    end
    object cekrayon: TcxCheckBox
      Left = 48
      Top = 166
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      OnClick = cekrayonClick
      Width = 97
    end
    object koderayon: TcxComboBox
      Left = 192
      Top = 166
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = koderayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 65
    end
    object cekwil: TcxCheckBox
      Left = 48
      Top = 140
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
      OnClick = cekwilClick
      Width = 97
    end
    object kodewil: TcxComboBox
      Left = 192
      Top = 139
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodewilPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 65
    end
    object namarayon: TcxComboBox
      Left = 256
      Top = 166
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = namarayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 209
    end
    object golongan: TcxComboBox
      Left = 256
      Top = 112
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 209
    end
    object wilayah: TcxComboBox
      Left = 256
      Top = 139
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = wilayahPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 209
    end
    object cekloket: TcxCheckBox
      Left = 48
      Top = 247
      Caption = 'Loket Penagihan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Transparent = True
      OnClick = cekloketClick
      Width = 137
    end
    object kodeloket: TcxComboBox
      Left = 192
      Top = 247
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 65
    end
    object loket: TcxComboBox
      Left = 256
      Top = 247
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 209
    end
    object cekbayar: TcxCheckBox
      Left = 544
      Top = 500
      Caption = 'Keterangan'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Transparent = True
      OnClick = cekbayarClick
      Width = 129
    end
    object bayar: TcxComboBox
      Left = 672
      Top = 500
      Enabled = False
      ParentFont = False
      Properties.Items.Strings = (
        'Hanya yang belum dibayar'
        'Hanya yang sudah dibayar')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Text = 'Hanya yang belum dibayar'
      Width = 217
    end
    object pemakaian1: TcxComboBox
      Left = 192
      Top = 85
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        '='
        '<>'
        '>'
        '<'
        '>='
        '<=')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 65
    end
    object cekkolektif: TcxCheckBox
      Left = 48
      Top = 221
      Caption = 'Kolektif'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Transparent = True
      OnClick = cekkolektifClick
      Width = 97
    end
    object kodekolektif: TcxComboBox
      Left = 192
      Top = 220
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 65
    end
    object kolektif: TcxComboBox
      Left = 256
      Top = 220
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 23
      Width = 209
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 502
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'RINCIAN DRD'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object cekcabang: TcxCheckBox
      Left = 592
      Top = 108
      Caption = 'Cabang'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 25
      Transparent = True
      OnClick = cekcabangClick
      Width = 97
    end
    object kodecabang: TcxComboBox
      Left = 736
      Top = 107
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodecabangPropertiesChange
      TabOrder = 26
      Width = 65
    end
    object cabang: TcxComboBox
      Left = 800
      Top = 107
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cabangPropertiesChange
      TabOrder = 27
      Width = 209
    end
    object kodearea: TcxComboBox
      Left = 192
      Top = 193
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodeareaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 28
      Width = 65
    end
    object area: TcxComboBox
      Left = 254
      Top = 193
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = areaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 29
      Width = 211
    end
    object cekarea: TcxCheckBox
      Left = 48
      Top = 194
      Caption = 'Area'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 30
      Transparent = True
      OnClick = cekareaClick
      Width = 97
    end
    object cekflag: TcxCheckBox
      Left = 48
      Top = 274
      Caption = 'Flag Pelanggan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Transparent = True
      OnClick = cekflagClick
      Width = 137
    end
    object kodeflag: TcxComboBox
      Left = 192
      Top = 274
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = kodeflagPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 32
      Width = 65
    end
    object flag: TcxComboBox
      Left = 256
      Top = 274
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = flagPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 33
      Width = 209
    end
  end
  object Qrek: TMyQuery
    Connection = DM.Conn
    Left = 592
    Top = 139
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nosamb=nosamb'
      'serimeter=serimeter'
      'kodegol=kodegol'
      'kodediameter=kodediameter'
      'kodekelurahan=kodekelurahan'
      'koderayon=koderayon'
      'kodekolektif=kodekolektif'
      'stanlalu=stanlalu'
      'stanskrg=stanskrg'
      'stanangkat=stanangkat'
      'pakai=pakai'
      'pakai2=pakai2'
      'biayapemakaian=biayapemakaian'
      'administrasi=administrasi'
      'pemeliharaan=pemeliharaan'
      'pelayanan=pelayanan'
      'retribusi=retribusi'
      'airlimbah=airlimbah'
      'dendapakai0=dendapakai0'
      'pemeliharaanlain=pemeliharaanlain'
      'administrasilain=administrasilain'
      'retribusilain=retribusilain'
      'meterai=meterai'
      'rekair=rekair'
      'dendatunggakan=dendatunggakan'
      'angsuran=angsuran'
      'ppn=ppn'
      'total=total'
      'tglkoreksi=tglkoreksi'
      'tglpublish=tglpublish'
      'tglbayar=tglbayar'
      'userkoreksi=userkoreksi'
      'userpublish=userpublish'
      'flagpublish=flagpublish'
      'flaglunas=flaglunas'
      'flagangsur=flagangsur'
      'noangsuran=noangsuran'
      'blok1=blok1'
      'blok2=blok2'
      'blok3=blok3'
      'blok4=blok4'
      'blok5=blok5'
      'prog1=prog1'
      'prog2=prog2'
      'prog3=prog3'
      'prog4=prog4'
      'prog5=prog5'
      'kelainan=kelainan'
      'kasir=kasir'
      'nolpp=nolpp'
      'flagkoreksi=flagkoreksi'
      'flagbatal=flagbatal'
      'flagaktif=flagaktif'
      'loketbayar=loketbayar'
      'flagkirim=flagkirim'
      'tglkirim=tglkirim'
      'tglmulaidenda=tglmulaidenda'
      'tglmulaidenda2=tglmulaidenda2'
      'tglmulaidenda3=tglmulaidenda3'
      'tglmulaidenda4=tglmulaidenda4'
      'tglmulaidendaperbulan=tglmulaidendaperbulan'
      'userkirim=userkirim'
      'flagdownload=flagdownload'
      'tgldownload=tgldownload'
      'userdownload=userdownload'
      'tglbatal=tglbatal'
      'pembacameter=pembacameter'
      'trf_dendatunggakan=trf_dendatunggakan'
      'trf_dendatunggakan2=trf_dendatunggakan2'
      'trf_dendatunggakan3=trf_dendatunggakan3'
      'trf_dendatunggakan4=trf_dendatunggakan4'
      'trf_dendatunggakanperbulan=trf_dendatunggakanperbulan'
      'kodeadministrasilain=kodeadministrasilain'
      'kodepemeliharaanlain=kodepemeliharaanlain'
      'koderetribusilain=koderetribusilain'
      'waktu=waktu'
      'kodeblok=kodeblok'
      'luasrumah=luasrumah'
      'nonair=nonair'
      'potongan=potongan'
      'flag=flag'
      'nama=nama'
      'alamat=alamat'
      'namarayon=namarayon'
      'norumah=norumah')
    DataSource = DSrek
    BCDToCurrency = False
    Left = 560
    Top = 176
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 544
    Top = 256
  end
  object ActionList1: TActionList
    Left = 168
    Top = 328
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
    object F5: TAction
      Caption = 'F5'
      ShortCut = 116
      OnExecute = F5Execute
    end
  end
  object Qgol: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'c.kodegol,'
      'g.golongan,'
      'COUNT(c.nosamb) AS lembar,'
      'SUM(c.pakai) AS pakai,'
      'SUM(c.prog1) AS prog1,'
      'SUM(c.prog2) AS prog2,'
      'SUM(c.prog3) AS prog3,'
      'SUM(c.prog4) AS prog4,'
      'SUM(c.prog5) AS prog5,'
      'SUM(c.prog3) +'
      'SUM(c.prog4) AS prog6,'
      ''
      'SUM(c.biayapemakaian) AS biayapemakaian,'
      'SUM(c.administrasi)+ SUM(c.administrasilain)AS cadministrasi,'
      'SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain) AS cpemeliharaan,'
      'SUM(c.retribusi)+SUM(c.retribusilain) AS cretribusi,'
      'SUM(c.meterai) AS meterai,'
      'SUM(c.dendatunggakan) AS dendatunggakan,'
      'SUM(c.rekair) AS rekair,'
      'SUM(c.total) AS total,'
      'SUM(c.biayapemakaian)/SUM(c.pakai) as rata2hargaair,'
      'SUm(c.pakai)/COUNT(c.nosamb) as rata2pakaiair,'
      'SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain)+'
      'SUM(c.retribusi)+SUM(c.retribusilain) AS beban')
    Connection = DM.Conn
    Left = 472
    Top = 163
  end
  object gol: TfrxDBDataset
    UserName = 'gol'
    CloseDataSource = False
    DataSource = DSgol
    BCDToCurrency = False
    Left = 632
    Top = 152
  end
  object DSgol: TMyDataSource
    DataSet = Qgol
    Left = 448
    Top = 280
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 42976.000802407410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 79
    Datasets = <
      item
        DataSet = gol
        DataSetName = 'gol'
      end
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end
      item
        DataSet = rek
        DataSetName = 'rek'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader3: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 45.354360000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.'
            'SAMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 105.826840000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA'
            'PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 302.362400000000000000
          Top = 41.574830000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'METER'
            'AWAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 351.496290000000000000
          Top = 41.574830000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'METER'
            'AKHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 400.630180000000000000
          Top = 41.574830000000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 438.425480000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BY.'
            'PAKAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 510.236550000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BY.'
            'RAWAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 574.488560000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BY.'
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 634.961040000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.'
            'RMH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 3.663236770000000000
          Top = 15.118120000000000000
          Width = 710.667933230000000000
          Height = 22.677180000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."koderayon"] [rek."namarayon"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 355.275820000000000000
        Width = 740.409927000000000000
        Condition = 'rek."koderayon"'
        StartNewPage = True
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 230.551330000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanlalu"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 351.496290000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanskrg"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'norumah'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."norumah"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Child = report.Child1
        Stretched = True
        object Memo28: TfrxMemoView
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 389.291590000000000000
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 438.425480000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 510.236550000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 574.488560000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 3.663236770000000000
          Top = 3.779530000000000000
          Width = 710.667933230000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Top = 11.338590000000000000
          Width = 358.997203380000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH :  [rek."koderayon"] [rek."namarayon"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        object Line28: TfrxLineView
          Left = 3.663236770000000000
          Top = 7.559060000000000000
          Width = 710.667933230000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 173.858380000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo51: TfrxMemoView
          Left = 3.663236770000000000
          Top = 90.708720000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'L A P O R A N  D R D')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 285.732468000000000000
          Top = 83.149660000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 285.732468000000000000
          Top = 113.385900000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object bulan: TfrxMemoView
          Left = 3.663236770000000000
          Top = 120.944960000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'L A P O R A N  D R D')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 3.663236770000000000
          Top = 147.401670000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'L A P O R A N  D R D')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Jln. MT. Haryono No. 87 Telp. (0771)-21574, Fax. (0771)-21366. T' +
              'anjungpinang')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.667933230000000000
          Height = 37.795300000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAN PROVINSI KEPULAUAN RIAU'
            'PERUSAHAAN DAERAH AIR MINUM TIRTA KEPRI')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 200.315090000000000000
          Top = 41.574830000000000000
          Width = 308.932967540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 238.110390000000000000
        Top = 570.709030000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo24: TfrxMemoView
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 389.291590000000000000
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 438.425480000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 510.236550000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 574.488560000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.663236770000000000
          Top = 3.779530000000000000
          Width = 710.667933230000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Top = 11.338590000000000000
          Width = 358.997203380000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 710.667933230000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object jab1: TfrxMemoView
          Left = 30.236240000000000000
          Top = 102.047310000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 30.236240000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 30.236240000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 491.338900000000000000
          Top = 68.031540000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 30.236240000000000000
          Top = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 257.008040000000000000
          Top = 102.047310000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 257.008040000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 257.008040000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 257.008040000000000000
          Top = 86.929190000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 491.338900000000000000
          Top = 102.047310000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 491.338900000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 491.338900000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 491.338900000000000000
          Top = 86.929190000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 831.496600000000000000
        Width = 740.409927000000000000
        object Page4: TfrxMemoView
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'HAL [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object waktuposting: TfrxMemoView
          Left = 45.354360000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'waktuposting')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 168
    Top = 40
  end
end
