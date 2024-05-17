object ulpp: Tulpp
  Left = 226
  Top = 48
  BorderStyle = bsNone
  Caption = 'ulpp'
  ClientHeight = 466
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 25
    Width = 707
    Height = 441
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 27887
    BorderWidth = 2
    Color = 14676991
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 24
      Top = 13
      Caption = 'Tanggal :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal1: TcxDateEdit
      Left = 24
      Top = 35
      ParentFont = False
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 153
    end
    object cekloket: TcxCheckBox
      Left = 24
      Top = 168
      Caption = 'Loket :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Transparent = True
      OnClick = cekloketClick
      Width = 121
    end
    object kodeloket: TcxComboBox
      Left = 24
      Top = 187
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 105
    end
    object cekkasir: TcxCheckBox
      Left = 24
      Top = 72
      Caption = 'Kasir :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      OnClick = cekkasirClick
      Width = 121
    end
    object kasir: TcxComboBox
      Left = 24
      Top = 91
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 297
    end
    object cxButton2: TcxButton
      Left = 26
      Top = 339
      Width = 295
      Height = 38
      Caption = 'Tampilkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 25
      Top = 384
      Width = 296
      Height = 41
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cekwilloket: TcxCheckBox
      Left = 24
      Top = 120
      Caption = 'Wilayah Loket :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      OnClick = cekwilloketClick
      Width = 121
    end
    object kodewillokasi: TcxComboBox
      Left = 24
      Top = 139
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodewillokasiPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 105
    end
    object wilayahlokasi: TcxComboBox
      Left = 128
      Top = 139
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = wilayahlokasiPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 193
    end
    object loket: TcxComboBox
      Left = 128
      Top = 187
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 193
    end
    object cxLabel2: TcxLabel
      Left = 176
      Top = 13
      Caption = 'Sampai :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal2: TcxDateEdit
      Left = 176
      Top = 35
      ParentFont = False
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 145
    end
    object cekwil: TcxCheckBox
      Left = 24
      Top = 224
      Caption = 'Wilayah Pelanggan :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Transparent = True
      OnClick = cekwilClick
      Width = 145
    end
    object kodewil: TcxComboBox
      Left = 24
      Top = 243
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodewilPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 105
    end
    object wilayah: TcxComboBox
      Left = 128
      Top = 243
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = wilayahPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 193
    end
    object cekgol: TcxCheckBox
      Left = 24
      Top = 280
      Caption = 'Golongan Pelanggan :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Transparent = True
      OnClick = cekgolClick
      Width = 145
    end
    object kodegol: TcxComboBox
      Left = 24
      Top = 299
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 105
    end
    object golongan: TcxComboBox
      Left = 128
      Top = 299
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 193
    end
  end
  object RzPanel20: TRzPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'LAPORAN PENERIMAAN'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 392
    Top = 152
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      ''
      'b.nosamb,'
      'b.bulan,'
      'p.nama,'
      'p.alamat,'
      'b.kodegol,'
      'b.kodediameter,'
      'b.koderayon,'
      'r.wilayah,'
      'b.stanlalu,'
      'b.stanskrg,'
      'b.pakai,'
      'b.biayapemakaian,'
      'b.administrasi+b.administrasilain AS administrasi,'
      'b.pemeliharaan+b.pemeliharaanlain AS pemeliharaan,'
      'b.retribusi+b.retribusilain AS retribusi,'
      'b.ppn,'
      'b.meterai,'
      'b.dendatunggakan,'
      'b.rekair,'
      'b.total,'
      'b.tglbayar,'
      'b.kasir,'
      'b.loketbayar,'
      'l.loket,'
      'l.`kodewillokasi`,'
      'wl.wilayah AS wilayahlokasi'
      ''
      'FROM bayar b '
      'LEFT JOIN pelanggan p ON b.nosamb=p.nosamb'
      'LEFT JOIN loket l ON b.`loketbayar`=l.`kodeloket`'
      'LEFT JOIN rayon r ON b.`koderayon`=r.`koderayon`'
      
        'LEFT JOIN (SELECT kodewil,wilayah FROM rayon GROUP BY kodewil) w' +
        'l ON l.`kodewillokasi`=wl.kodewil'
      ''
      
        'WHERE b.flaglunas="1" AND b.flagangsur="0" AND DATE(b.tglbayar)>' +
        '=:tanggal1 AND  DATE(b.tglbayar)<=:tanggal2')
    Connection = DM.Conn
    Left = 336
    Top = 128
    object Qreknosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'b.nosamb'
      Size = 50
    end
    object Qreknama: TStringField
      FieldName = 'nama'
      Origin = 'p.nama'
      Size = 50
    end
    object Qrekalamat: TStringField
      FieldName = 'alamat'
      Origin = 'p.alamat'
      Size = 100
    end
    object Qrekkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'b.kodegol'
      Size = 50
    end
    object Qrekkodediameter: TStringField
      FieldName = 'kodediameter'
      Origin = 'b.kodediameter'
      Size = 50
    end
    object Qrekkoderayon: TStringField
      FieldName = 'koderayon'
      Origin = 'b.koderayon'
      Size = 10
    end
    object Qrekwilayah: TStringField
      FieldName = 'wilayah'
      Origin = 'r.wilayah'
      Size = 50
    end
    object Qrekstanlalu: TFloatField
      FieldName = 'stanlalu'
      Origin = 'b.stanlalu'
    end
    object Qrekstanskrg: TFloatField
      FieldName = 'stanskrg'
      Origin = 'b.stanskrg'
    end
    object Qrekpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'b.pakai'
    end
    object Qrekbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
      Origin = 'b.biayapemakaian'
    end
    object Qrekadministrasi: TFloatField
      FieldName = 'administrasi'
      Origin = 'administrasi'
    end
    object Qrekpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
      Origin = 'pemeliharaan'
    end
    object Qrekretribusi: TFloatField
      FieldName = 'retribusi'
      Origin = 'retribusi'
    end
    object Qrekppn: TFloatField
      FieldName = 'ppn'
      Origin = 'b.ppn'
    end
    object Qrekmeterai: TFloatField
      FieldName = 'meterai'
      Origin = 'b.meterai'
    end
    object Qrekdendatunggakan: TFloatField
      FieldName = 'dendatunggakan'
      Origin = 'b.dendatunggakan'
    end
    object Qrekrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'b.rekair'
    end
    object Qrektotal: TFloatField
      FieldName = 'total'
      Origin = 'b.total'
    end
    object Qrektglbayar: TDateTimeField
      FieldName = 'tglbayar'
      Origin = 'b.tglbayar'
    end
    object Qrekkasir: TStringField
      FieldName = 'kasir'
      Origin = 'b.kasir'
      Size = 50
    end
    object Qrekloketbayar: TStringField
      FieldName = 'loketbayar'
      Origin = 'b.loketbayar'
      Size = 50
    end
    object Qrekloket: TStringField
      FieldName = 'loket'
      Origin = 'l.loket'
      Size = 50
    end
    object Qrekkodewillokasi: TStringField
      FieldName = 'kodewillokasi'
      Origin = 'l.kodewillokasi'
      Size = 30
    end
    object Qrekwilayahlokasi: TStringField
      FieldName = 'wilayahlokasi'
      Origin = 'wl.wilayah'
      Size = 50
    end
    object Qrekbulan: TStringField
      FieldName = 'bulan'
      Origin = 'b.bulan'
      Size = 15
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nosamb=nosamb'
      'nama=nama'
      'alamat=alamat'
      'kodegol=kodegol'
      'kodediameter=kodediameter'
      'koderayon=koderayon'
      'wilayah=wilayah'
      'stanlalu=stanlalu'
      'stanskrg=stanskrg'
      'pakai=pakai'
      'biayapemakaian=biayapemakaian'
      'administrasi=administrasi'
      'pemeliharaan=pemeliharaan'
      'retribusi=retribusi'
      'ppn=ppn'
      'meterai=meterai'
      'dendatunggakan=dendatunggakan'
      'rekair=rekair'
      'total=total'
      'tglbayar=tglbayar'
      'kasir=kasir'
      'loketbayar=loketbayar'
      'loket=loket'
      'kodewillokasi=kodewillokasi'
      'wilayahlokasi=wilayahlokasi'
      'bulan=bulan')
    DataSource = DSrek
    BCDToCurrency = False
    Left = 488
    Top = 80
  end
  object Qnonair: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      ''
      'b.nomor,'
      'b.nama,'
      'b.alamat,'
      'b.jenis,'
      'b.ketjenis,'
      'b.waktubayar,'
      'b.kasir,'
      'b.loketbayar,'
      'l.`loket`,'
      'l.`kodewillokasi`,'
      'wl.wilayah AS wilayahlokasi,'
      'b.`total`'
      ''
      'FROM nonair b '
      'LEFT JOIN loket l ON b.loketbayar=l.`kodeloket`'
      
        'LEFT JOIN (SELECT kodewil,wilayah FROM rayon GROUP BY kodewil) w' +
        'l ON l.`kodewillokasi`=wl.kodewil'
      
        'WHERE b.flaglunas="1" AND b.jenis NOT IN ("DENDA","TUNGGAKAN") A' +
        'ND DATE(b.waktubayar)>=:tanggal1 AND  DATE(b.waktubayar)<=:tangg' +
        'al2')
    Connection = DM.Conn
    Left = 528
    Top = 109
    object Qnonairnomor: TStringField
      FieldName = 'nomor'
      Origin = 'b.nomor'
      Size = 50
    end
    object Qnonairjenis: TStringField
      FieldName = 'jenis'
      Origin = 'b.jenis'
      Size = 40
    end
    object Qnonairketjenis: TStringField
      FieldName = 'ketjenis'
      Origin = 'b.ketjenis'
      Size = 50
    end
    object Qnonairwaktubayar: TDateTimeField
      FieldName = 'waktubayar'
      Origin = 'b.waktubayar'
    end
    object Qnonairkasir: TStringField
      FieldName = 'kasir'
      Origin = 'b.kasir'
      Size = 50
    end
    object Qnonairloketbayar: TStringField
      FieldName = 'loketbayar'
      Origin = 'b.loketbayar'
      Size = 50
    end
    object Qnonairloket: TStringField
      FieldName = 'loket'
      Origin = 'l.loket'
      Size = 50
    end
    object Qnonairkodewillokasi: TStringField
      FieldName = 'kodewillokasi'
      Origin = 'l.kodewillokasi'
      Size = 30
    end
    object Qnonairwilayahlokasi: TStringField
      FieldName = 'wilayahlokasi'
      Origin = 'wl.wilayah'
      Size = 50
    end
    object Qnonairtotal: TFloatField
      FieldName = 'total'
      Origin = 'b.total'
    end
    object Qnonairnama: TStringField
      FieldName = 'nama'
      Origin = 'b.nama'
      Size = 50
    end
    object Qnonairalamat: TStringField
      FieldName = 'alamat'
      Origin = 'b.alamat'
      Size = 100
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qnonair
    Left = 608
    Top = 152
  end
  object na: TfrxDBDataset
    UserName = 'na'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'jenis=jenis'
      'ketjenis=ketjenis'
      'waktubayar=waktubayar'
      'kasir=kasir'
      'loketbayar=loketbayar'
      'loket=loket'
      'kodewillokasi=kodewillokasi'
      'wilayahlokasi=wilayahlokasi'
      'total=total'
      'nama=nama'
      'alamat=alamat')
    DataSource = MyDataSource1
    BCDToCurrency = False
    Left = 656
    Top = 96
  end
  object report: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42732.497513819400000000
    ReportOptions.LastChange = 42732.497513819400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 241
    Datasets = <
      item
        DataSet = ang
        DataSetName = 'ang'
      end
      item
        DataSet = gol
        DataSetName = 'gol'
      end
      item
        DataSet = na
        DataSetName = 'na'
      end
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end
      item
        DataSet = per
        DataSetName = 'per'
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
    object Page4: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle3: TfrxReportTitle
        Height = 151.613146290000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 226.771800000000000000
          Top = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PENERIMAAN PENAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object keterangan: TfrxMemoView
          Left = -7.559060000000000000
          Top = 52.913420000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'LOKET : ASASAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object tanggal: TfrxMemoView
          Left = 226.771800000000000000
          Top = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 7.559060000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header1"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Top = 30.236240000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header2"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        Child = report.Child4
        DataSet = gol
        DataSetName = 'gol'
        RowCount = 0
        Stretched = True
        object Memo89: TfrxMemoView
          Left = 32.634418930000000000
          Width = 176.026333760000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[gol."golongan"] ( [gol."kodegol"] )')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 3.664417410000000000
          Width = 21.756279290000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 394.605954520000000000
          Width = 58.515565990000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."administrasi"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 630.394907310000000000
          Width = 73.058123050000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."total"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 321.087381120000000000
          Width = 69.739043400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."biayapemakaian"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 262.686927720000000000
          Width = 54.736035990000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."pakai"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 579.323288730000000000
          Width = 47.407201170000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'denda'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."denda"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 214.819276190000000000
          Width = 40.423704110000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'lembar'
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."lembar"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 460.565467920000000000
          Width = 54.620923400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."pemeliharaan"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 521.575140000000000000
          Width = 54.620923400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."rekair"]')
          ParentFont = False
        end
        object Line105: TfrxLineView
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line106: TfrxLineView
          Left = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line107: TfrxLineView
          Left = 211.653680000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line108: TfrxLineView
          Left = 260.787570000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line109: TfrxLineView
          Left = 321.260050000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line110: TfrxLineView
          Left = 393.071120000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line111: TfrxLineView
          Left = 457.323130000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line112: TfrxLineView
          Left = 631.181510000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line113: TfrxLineView
          Left = 706.772110000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line114: TfrxLineView
          Left = 578.268090000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line115: TfrxLineView
          Left = 517.795610000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 37.795300000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object Memo101: TfrxMemoView
          Left = 394.605954520000000000
          Width = 58.515565990000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."administrasi">,MasterData4)]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 630.394907310000000000
          Width = 73.058123050000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."total">,MasterData4)]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 321.087381120000000000
          Width = 69.739043400000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."biayapemakaian">,MasterData4)]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 262.686927720000000000
          Width = 54.736035990000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."pakai">,MasterData4)]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 579.323288730000000000
          Width = 47.407201170000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."denda">,MasterData4)]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 214.819276190000000000
          Width = 40.423704110000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."lembar">,MasterData4)]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 460.565467920000000000
          Width = 54.620923400000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."pemeliharaan">,MasterData4)]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 521.575140000000000000
          Width = 54.620923400000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."rekair">,MasterData4)]')
          ParentFont = False
        end
        object Line117: TfrxLineView
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line118: TfrxLineView
          Left = 211.653680000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line119: TfrxLineView
          Left = 260.787570000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line120: TfrxLineView
          Left = 321.260050000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line121: TfrxLineView
          Left = 393.071120000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line122: TfrxLineView
          Left = 457.323130000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line123: TfrxLineView
          Left = 631.181510000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line124: TfrxLineView
          Left = 706.772110000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line125: TfrxLineView
          Left = 578.268090000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line126: TfrxLineView
          Left = 517.795610000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line127: TfrxLineView
          Top = 26.456710000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo110: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 176.026333760000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
      end
      object PageFooter4: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        object Memo49: TfrxMemoView
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 64.252010000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo74: TfrxMemoView
          Top = 22.677180000000000000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 30.236240000000000000
          Top = 22.677180000000000000
          Width = 181.417440000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uraian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lmbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line92: TfrxLineView
          Top = 22.677180000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line93: TfrxLineView
          Left = 30.236240000000000000
          Top = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line94: TfrxLineView
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo79: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pakai'
            '(M3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line95: TfrxLineView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line96: TfrxLineView
          Left = 321.260050000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line97: TfrxLineView
          Left = 393.071120000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line98: TfrxLineView
          Left = 457.323130000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line99: TfrxLineView
          Left = 517.795610000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line100: TfrxLineView
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line101: TfrxLineView
          Left = 631.181510000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line102: TfrxLineView
          Left = 706.772110000000000000
          Top = 22.677180000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 321.260050000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 393.071120000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By. '
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 457.323130000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By. '
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 517.795610000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Rek.Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Denda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 631.181510000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line103: TfrxLineView
          Top = 56.692950000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line104: TfrxLineView
          Top = 22.677180000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo155: TfrxMemoView
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - REKAP KLASIFIKASI GOLONGAN  ( REKENING AIR & DENDA )')
          ParentFont = False
        end
      end
      object Child4: TfrxChild
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line116: TfrxLineView
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData5: TfrxMasterData
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Child = report.Child4
        DataSet = per
        DataSetName = 'per'
        RowCount = 0
        Stretched = True
        object Memo124: TfrxMemoView
          Left = 32.634418930000000000
          Width = 176.026333760000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[per."bulan"] ')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 3.664417410000000000
          Width = 21.756279290000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 394.605954520000000000
          Width = 58.515565990000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."administrasi"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 630.394907310000000000
          Width = 73.058123050000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."total"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 321.087381120000000000
          Width = 69.739043400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."biayapemakaian"]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 262.686927720000000000
          Width = 54.736035990000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."pakai"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 579.323288730000000000
          Width = 47.407201170000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'denda'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."denda"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 214.819276190000000000
          Width = 40.423704110000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'lembar'
          DataSet = per
          DataSetName = 'per'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."lembar"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 460.565467920000000000
          Width = 54.620923400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."pemeliharaan"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 521.575140000000000000
          Width = 54.620923400000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = per
          DataSetName = 'per'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[per."rekair"]')
          ParentFont = False
        end
        object Line128: TfrxLineView
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line129: TfrxLineView
          Left = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line130: TfrxLineView
          Left = 211.653680000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line131: TfrxLineView
          Left = 260.787570000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line132: TfrxLineView
          Left = 321.260050000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line133: TfrxLineView
          Left = 393.071120000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line134: TfrxLineView
          Left = 457.323130000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line135: TfrxLineView
          Left = 631.181510000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line136: TfrxLineView
          Left = 706.772110000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line137: TfrxLineView
          Left = 578.268090000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line138: TfrxLineView
          Left = 517.795610000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        Height = 65.645640000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo134: TfrxMemoView
          Top = 22.952690000000000000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 30.236240000000000000
          Top = 22.952690000000000000
          Width = 181.417440000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uraian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.952690000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lmbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line139: TfrxLineView
          Top = 22.952690000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line140: TfrxLineView
          Left = 30.236240000000000000
          Top = 22.952690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line141: TfrxLineView
          Left = 211.653680000000000000
          Top = 22.952690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo137: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.952690000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pakai'
            '(M3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line142: TfrxLineView
          Left = 260.787570000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line143: TfrxLineView
          Left = 321.260050000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line144: TfrxLineView
          Left = 393.071120000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line145: TfrxLineView
          Left = 457.323130000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line146: TfrxLineView
          Left = 517.795610000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line147: TfrxLineView
          Left = 578.268090000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line148: TfrxLineView
          Left = 631.181510000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line149: TfrxLineView
          Left = 706.772110000000000000
          Top = 22.952690000000000000
          Height = 15.283553970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo138: TfrxMemoView
          Left = 321.260050000000000000
          Top = 22.952690000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 393.071120000000000000
          Top = 22.952690000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By. '
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 457.323130000000000000
          Top = 22.952690000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By. '
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 517.795610000000000000
          Top = 22.952690000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tagihan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 578.268090000000000000
          Top = 22.952690000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Denda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 631.181510000000000000
          Top = 22.952690000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line150: TfrxLineView
          Top = 56.968460000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line151: TfrxLineView
          Top = 22.952690000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo156: TfrxMemoView
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - REKAP KLASIFIKASI  BULAN DRD ( REKENING AIR & DENDA )')
          ParentFont = False
        end
      end
      object ReportSummary4: TfrxReportSummary
        Height = 325.039580000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo144: TfrxMemoView
          Left = 394.605954520000000000
          Width = 58.515565990000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."administrasi">,MasterData5)]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 630.394907310000000000
          Width = 73.058123050000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."total">,MasterData5)]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 321.087381120000000000
          Width = 69.739043400000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."biayapemakaian">,MasterData5)]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 262.686927720000000000
          Width = 54.736035990000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."pakai">,MasterData5)]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 579.323288730000000000
          Width = 47.407201170000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."denda">,MasterData5)]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 214.819276190000000000
          Width = 40.423704110000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."lembar">,MasterData5)]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 460.565467920000000000
          Width = 54.620923400000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."pemeliharaan">,MasterData5)]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 521.575140000000000000
          Width = 54.620923400000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<per."rekair">,MasterData5)]')
          ParentFont = False
        end
        object Line152: TfrxLineView
          Height = 30.072596739051300000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line153: TfrxLineView
          Left = 211.653680000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line154: TfrxLineView
          Left = 260.787570000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line155: TfrxLineView
          Left = 321.260050000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line156: TfrxLineView
          Left = 393.071120000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line157: TfrxLineView
          Left = 457.323130000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line158: TfrxLineView
          Left = 631.181510000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line159: TfrxLineView
          Left = 706.772110000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line160: TfrxLineView
          Left = 578.268090000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line161: TfrxLineView
          Left = 517.795610000000000000
          Height = 30.401673970000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line162: TfrxLineView
          Top = 30.236240000000000000
          Width = 707.002335180000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo152: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 176.026333760000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 67.133890000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 26.456710000000000000
          Top = 67.133890000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.SAMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 102.047310000000000000
          Top = 67.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 211.653680000000000000
          Top = 67.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 275.905690000000000000
          Top = 67.133890000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 306.141930000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 374.173470000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 442.205010000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 510.236550000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'REK.AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 578.268090000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 646.299630000000000000
          Top = 67.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line163: TfrxLineView
          Left = 26.456710000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line164: TfrxLineView
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line165: TfrxLineView
          Left = 102.047310000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line166: TfrxLineView
          Left = 211.653680000000000000
          Top = 67.133890000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line167: TfrxLineView
          Left = 275.905690000000000000
          Top = 67.133890000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line168: TfrxLineView
          Left = 306.141930000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line169: TfrxLineView
          Left = 374.173470000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line170: TfrxLineView
          Left = 442.205010000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line171: TfrxLineView
          Left = 510.236550000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line172: TfrxLineView
          Left = 578.268090000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line173: TfrxLineView
          Left = 646.299630000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line174: TfrxLineView
          Left = 714.331170000000000000
          Top = 67.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line175: TfrxLineView
          Top = 67.133890000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line176: TfrxLineView
          Top = 86.031540000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo119: TfrxMemoView
          Top = 49.133890000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - RINCIAN REKENING AIR & DENDA')
          ParentFont = False
        end
      end
      object PageFooter5: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Memo51: TfrxMemoView
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
      end
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object reknosamb: TfrxMemoView
          Left = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Memo.UTF8 = (
            '[rek."nosamb"]')
        end
        object Memo1: TfrxMemoView
          Left = 105.826840000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Memo.UTF8 = (
            '[rek."nama"]')
        end
        object rekbiayapemakaian: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'biayapemakaian'
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
        object rekadministrasi: TfrxMemoView
          Left = 374.173470410000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'administrasi'
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
        object rekpemeliharaan: TfrxMemoView
          Left = 442.205010810000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pemeliharaan'
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
        object rekretribusi: TfrxMemoView
          Left = 510.236551220000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'rekair'
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
        object rekdendatunggakan: TfrxMemoView
          Left = 578.268091630000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dendatunggakan'
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
            '[rek."dendatunggakan"]')
          ParentFont = False
        end
        object rektotal: TfrxMemoView
          Left = 646.299632030000000000
          Width = 64.251966470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total'
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
            '[rek."total"]')
          ParentFont = False
        end
        object rekkodegol: TfrxMemoView
          Left = 275.905690000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kodegol'
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
        object Line: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 215.433210000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bulan'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."bulan"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 306.141930000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 442.205010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 510.236550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 578.268090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 646.299630000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 714.331170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo3: TfrxMemoView
          Top = 25.559060000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 26.456710000000000000
          Top = 25.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.SAMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 102.047310000000000000
          Top = 25.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 211.653680000000000000
          Top = 25.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 275.905690000000000000
          Top = 25.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 306.141930000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 374.173470000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 442.205010000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 510.236550000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'REK.AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 578.268090000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Top = 25.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 26.456710000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 102.047310000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 211.653680000000000000
          Top = 25.559060000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 275.905690000000000000
          Top = 25.559060000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 306.141930000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 374.173470000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 442.205010000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 510.236550000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 578.268090000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 646.299630000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 714.331170000000000000
          Top = 25.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line13: TfrxLineView
          Top = 25.559060000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line14: TfrxLineView
          Top = 44.456710000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Top = 7.559060000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - RINCIAN REKENING AIR & DENDA')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line27: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.795300000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 374.173470410000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 442.205010810000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 510.236551220000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 578.268091630000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."dendatunggakan">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 646.299632030000000000
          Width = 64.251966470000000000
          Height = 22.677180000000000000
          ShowHint = False
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
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 306.141930000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 374.173470000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 442.205010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 510.236550000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 578.268090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 646.299630000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 714.331170000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line29: TfrxLineView
          Top = 26.456710000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line30: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData3: TfrxMasterData
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        Child = report.Child2
        DataSet = ang
        DataSetName = 'ang'
        RowCount = 0
        Stretched = True
        object Memo58: TfrxMemoView
          Left = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nomor'
          DataSet = ang
          DataSetName = 'ang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ang."nomor"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 154.960730000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = ang
          DataSetName = 'ang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ang."nama"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 264.567100000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = ang
          DataSetName = 'ang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ang."alamat"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 415.748300000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ketjenis'
          DataSet = ang
          DataSetName = 'ang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ang."ketjenis"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = ang
          DataSetName = 'ang'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[ang."total"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line63: TfrxLineView
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line71: TfrxLineView
          Left = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line72: TfrxLineView
          Left = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line73: TfrxLineView
          Left = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line74: TfrxLineView
          Left = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line75: TfrxLineView
          Left = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo64: TfrxMemoView
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<ang."total">,MasterData3)]')
          ParentFont = False
        end
        object Line76: TfrxLineView
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line77: TfrxLineView
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line78: TfrxLineView
          Left = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line79: TfrxLineView
          Left = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line80: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'na."jenis"'
        Stretched = True
        object Memo65: TfrxMemoView
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - ANGSURAN REKENING AIR  /  TUNGGAKAN')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 37.795300000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'URAIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 22.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line81: TfrxLineView
          Top = 22.677180000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line82: TfrxLineView
          Top = 41.574830000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line83: TfrxLineView
          Left = 37.795300000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line84: TfrxLineView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line85: TfrxLineView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line86: TfrxLineView
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line87: TfrxLineView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line88: TfrxLineView
          Left = 714.331170000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line89: TfrxLineView
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Child3: TfrxChild
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line90: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageFooter3: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo93: TfrxMemoView
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        Child = report.Child2
        DataSet = na
        DataSetName = 'na'
        RowCount = 0
        Stretched = True
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nomor'
          DataSet = na
          DataSetName = 'na'
          Memo.UTF8 = (
            '[na."nomor"]')
        end
        object Memo24: TfrxMemoView
          Left = 154.960730000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = na
          DataSetName = 'na'
          Memo.UTF8 = (
            '[na."nama"]')
        end
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = na
          DataSetName = 'na'
          Memo.UTF8 = (
            '[na."alamat"]')
        end
        object Memo27: TfrxMemoView
          Left = 415.748300000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ketjenis'
          DataSet = na
          DataSetName = 'na'
          Memo.UTF8 = (
            '[na."ketjenis"]')
        end
        object Memo28: TfrxMemoView
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[na."total"]')
          ParentFont = False
        end
        object Line41: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line43: TfrxLineView
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line44: TfrxLineView
          Left = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line49: TfrxLineView
          Left = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo36: TfrxMemoView
          Left = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<na."total">,MasterData2)]')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line57: TfrxLineView
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line58: TfrxLineView
          Left = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line59: TfrxLineView
          Left = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line60: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'na."jenis"'
        Stretched = True
        object Memo26: TfrxMemoView
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '- - NON AIR : [na."jenis"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'URAIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Top = 22.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line31: TfrxLineView
          Top = 22.677180000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line32: TfrxLineView
          Top = 41.574830000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 37.795300000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 151.181200000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 260.787570000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line52: TfrxLineView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 714.331170000000000000
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line55: TfrxLineView
          Top = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Child2: TfrxChild
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line40: TfrxLineView
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 309.921460000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo37: TfrxMemoView
          Left = 604.724800000000000000
          Top = 73.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<na."total">,MasterData2)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line61: TfrxLineView
          Left = 376.953000000000000000
          Top = 91.811070000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 376.953000000000000000
          Top = 35.913420000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo38: TfrxMemoView
          Left = 604.724800000000000000
          Top = 17.015770000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
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
          WordWrap = False
          VAlign = vaCenter
        end
        object Line67: TfrxLineView
          Left = 377.953000000000000000
          Top = 17.015770000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line68: TfrxLineView
          Left = 713.331170000000000000
          Top = 17.015770000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line69: TfrxLineView
          Left = 604.724800000000000000
          Top = 17.015770000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 376.953000000000000000
          Top = 17.015770000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 604.724800000000000000
          Top = 54.811070000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."dendatunggakan">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line66: TfrxLineView
          Left = 376.953000000000000000
          Top = 73.708720000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo40: TfrxMemoView
          Left = 385.512060000000000000
          Top = 17.015770000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 385.512060000000000000
          Top = 54.811070000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 73.708720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NON AIR LAINNYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 604.724800000000000000
          Top = 92.811070000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)+'
            'SUM(<rek."dendatunggakan">,MasterData1)+'
            'SUM(<na."total">,MasterData2)+'
            'SUM(<ang."total">,MasterData3)   ]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 385.512060000000000000
          Top = 92.606370000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line62: TfrxLineView
          Left = 376.953000000000000000
          Top = 111.504020000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo72: TfrxMemoView
          Left = 604.724800000000000000
          Top = 35.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<ang."total">,MasterData3)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 385.512060000000000000
          Top = 35.913420000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ANGSURAN REK. AIR / TUNGGAKAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line91: TfrxLineView
          Left = 376.953000000000000000
          Top = 54.811070000000000000
          Width = 336.378170000000000000
          ShowHint = False
          Diagonal = True
        end
        object jab1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 173.858380000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
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
          Left = 15.118120000000000000
          Top = 253.228510000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 15.118120000000000000
          Top = 268.346630000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 476.220780000000000000
          Top = 139.842610000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
        object Memo15: TfrxMemoView
          Left = 15.118120000000000000
          Top = 158.740260000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
        object Memo22: TfrxMemoView
          Left = 241.889920000000000000
          Top = 173.858380000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
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
        object Memo45: TfrxMemoView
          Left = 241.889920000000000000
          Top = 253.228510000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
        object Memo46: TfrxMemoView
          Left = 241.889920000000000000
          Top = 268.346630000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
        object Memo47: TfrxMemoView
          Left = 241.889920000000000000
          Top = 158.740260000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 476.220780000000000000
          Top = 173.858380000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
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
          Left = 476.220780000000000000
          Top = 253.228510000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 476.220780000000000000
          Top = 268.346630000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 476.220780000000000000
          Top = 158.740260000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo55: TfrxMemoView
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 352
    Top = 57
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
  object Qangsurantunggakan: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      ''
      'b.nomor,'
      'b.nama,'
      'b.alamat,'
      'b.jenis,'
      'b.ketjenis,'
      'b.waktubayar,'
      'b.kasir,'
      'b.loketbayar,'
      'l.`loket`,'
      'l.`kodewillokasi`,'
      'wl.wilayah AS wilayahlokasi,'
      'b.`total`'
      ''
      'FROM nonair b '
      'LEFT JOIN loket l ON b.loketbayar=l.`kodeloket`'
      
        'LEFT JOIN (SELECT kodewil,wilayah FROM rayon GROUP BY kodewil) w' +
        'l ON l.`kodewillokasi`=wl.kodewil'
      
        'WHERE b.flaglunas="1" AND b.jenis IN ("TUNGGAKAN") AND DATE(b.wa' +
        'ktubayar)>=:tanggal1 AND  DATE(b.waktubayar)<=:tanggal2')
    Connection = DM.Conn
    Left = 568
    Top = 349
    object StringField1: TStringField
      FieldName = 'nomor'
      Origin = 'b.nomor'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'jenis'
      Origin = 'b.jenis'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'ketjenis'
      Origin = 'b.ketjenis'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'waktubayar'
      Origin = 'b.waktubayar'
    end
    object StringField4: TStringField
      FieldName = 'kasir'
      Origin = 'b.kasir'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'loketbayar'
      Origin = 'b.loketbayar'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'loket'
      Origin = 'l.loket'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'kodewillokasi'
      Origin = 'l.kodewillokasi'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'wilayahlokasi'
      Origin = 'wl.wilayah'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'total'
      Origin = 'b.total'
    end
    object StringField9: TStringField
      FieldName = 'nama'
      Origin = 'b.nama'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'alamat'
      Origin = 'b.alamat'
      Size = 100
    end
  end
  object ang: TfrxDBDataset
    UserName = 'ang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'jenis=jenis'
      'ketjenis=ketjenis'
      'waktubayar=waktubayar'
      'kasir=kasir'
      'loketbayar=loketbayar'
      'loket=loket'
      'kodewillokasi=kodewillokasi'
      'wilayahlokasi=wilayahlokasi'
      'total=total'
      'nama=nama'
      'alamat=alamat')
    DataSource = MyDataSource2
    BCDToCurrency = False
    Left = 688
    Top = 352
  end
  object MyDataSource2: TMyDataSource
    DataSet = Qangsurantunggakan
    Left = 472
    Top = 424
  end
  object Qgol: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.kodegol,'
      '  g.golongan,'
      '  COUNT(c.kode) AS lembar,'
      '  SUM(c.pakai) AS pakai,'
      '  SUM(c.biayapemakaian) AS biayapemakaian,'
      '  SUM(c.administrasi)+SUM(c.administrasilain) AS administrasi,'
      '  SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain) AS pemeliharaan,'
      '  SUM(c.retribusi)+SUM(c.retribusilain) AS retribusi,'
      '  SUM(c.rekair) AS rekair,'
      '  SUM(c.dendatunggakan) AS denda,'
      '  SUM(c.total) AS total'
      '  FROM bayar c '
      '  LEFT JOIN golongan g ON c.kodegol=g.`kodegol`'
      'LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      ''
      '  WHERE c.flaglunas="1"'
      
        'AND c.flaglunas="1" AND c.flagangsur="0"  AND DATE(c.tglbayar)>=' +
        ':tanggal1 AND  DATE(c.tglbayar)<=:tanggal2')
    Connection = DM.Conn
    Left = 128
    Top = 536
    object Qgolkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
    object Qgolgolongan: TStringField
      FieldName = 'golongan'
      Origin = 'g.golongan'
      Size = 100
    end
    object Qgollembar: TLargeintField
      FieldName = 'lembar'
      Origin = 'lembar'
    end
    object Qgolpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'pakai'
    end
    object Qgolbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
      Origin = 'biayapemakaian'
    end
    object Qgoladministrasi: TFloatField
      FieldName = 'administrasi'
      Origin = 'administrasi'
    end
    object Qgolpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
      Origin = 'pemeliharaan'
    end
    object Qgolretribusi: TFloatField
      FieldName = 'retribusi'
      Origin = 'retribusi'
    end
    object Qgolrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'rekair'
    end
    object Qgoldenda: TFloatField
      FieldName = 'denda'
      Origin = 'denda'
    end
    object Qgoltotal: TFloatField
      FieldName = 'total'
      Origin = 'total'
    end
  end
  object gol: TfrxDBDataset
    UserName = 'gol'
    CloseDataSource = False
    DataSource = Dgol
    BCDToCurrency = False
    Left = 216
    Top = 528
  end
  object Dgol: TMyDataSource
    DataSet = Qgol
    Left = 120
    Top = 600
  end
  object Qper: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.periode,'
      '  c.bulan,'
      '  COUNT(c.kode) AS lembar,'
      '  SUM(c.pakai) AS pakai,'
      '  SUM(c.biayapemakaian) AS biayapemakaian,'
      '  SUM(c.administrasi)+SUM(c.administrasilain) AS administrasi,'
      '  SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain) AS pemeliharaan,'
      '  SUM(c.retribusi)+SUM(c.retribusilain) AS retribusi,'
      '  SUM(c.rekair) AS rekair,'
      '  SUM(c.dendatunggakan) AS denda,'
      '  SUM(c.total) AS total'
      '  FROM bayar c '
      '  LEFT JOIN golongan g ON c.kodegol=g.`kodegol`'
      'LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      '  WHERE c.flaglunas="1"'
      
        'AND c.flaglunas="1" AND c.flagangsur="0"  AND DATE(c.tglbayar)>=' +
        ':tanggal1 AND  DATE(c.tglbayar)<=:tanggal2')
    Connection = DM.Conn
    Left = 448
    Top = 552
    object Qperperiode: TStringField
      FieldName = 'periode'
      Origin = 'c.periode'
      Size = 6
    end
    object Qperbulan: TStringField
      FieldName = 'bulan'
      Origin = 'c.bulan'
      Size = 15
    end
    object Qperlembar: TLargeintField
      FieldName = 'lembar'
      Origin = 'lembar'
    end
    object Qperpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'pakai'
    end
    object Qperbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
      Origin = 'biayapemakaian'
    end
    object Qperadministrasi: TFloatField
      FieldName = 'administrasi'
      Origin = 'administrasi'
    end
    object Qperpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
      Origin = 'pemeliharaan'
    end
    object Qperretribusi: TFloatField
      FieldName = 'retribusi'
      Origin = 'retribusi'
    end
    object Qperrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'rekair'
    end
    object Qperdenda: TFloatField
      FieldName = 'denda'
      Origin = 'denda'
    end
    object Qpertotal: TFloatField
      FieldName = 'total'
      Origin = 'total'
    end
  end
  object Dper: TMyDataSource
    DataSet = Qper
    Left = 440
    Top = 608
  end
  object per: TfrxDBDataset
    UserName = 'per'
    CloseDataSource = False
    FieldAliases.Strings = (
      'periode=periode'
      'bulan=bulan'
      'lembar=lembar'
      'pakai=pakai'
      'biayapemakaian=biayapemakaian'
      'administrasi=administrasi'
      'pemeliharaan=pemeliharaan'
      'retribusi=retribusi'
      'rekair=rekair'
      'denda=denda'
      'total=total')
    DataSource = Dper
    BCDToCurrency = False
    Left = 536
    Top = 536
  end
end
