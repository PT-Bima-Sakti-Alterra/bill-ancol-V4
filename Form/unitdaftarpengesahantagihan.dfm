object udaftarpengesahantagihan: Tudaftarpengesahantagihan
  Left = 252
  Top = 19
  BorderStyle = bsNone
  Caption = 'udaftarpengesahantagihan'
  ClientHeight = 541
  ClientWidth = 608
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
    Top = 0
    Width = 608
    Height = 541
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 48
      Top = 455
      Width = 297
      Height = 45
      Caption = 
        '- Kode TTD : "Sesuai Kode Satker"'#13'- Percetakan Printer Desktop'#13'-' +
        ' Continous Form Ukuran Kertas (PxL) : 21,59 cm x 33 cm'
      Transparent = True
      BlinkIntervalOff = 700
      BlinkIntervalOn = 600
    end
    object cxButton2: TcxButton
      Left = 376
      Top = 488
      Width = 169
      Height = 36
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 21
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 376
      Top = 448
      Width = 169
      Height = 36
      Caption = 'Tampilkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object periode: TRzDateTimePicker
      Left = 137
      Top = 103
      Width = 135
      Height = 23
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
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 47
      Top = 104
      Caption = 'Bulan/Tahun'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodekolektif: TcxComboBox
      Left = 136
      Top = 78
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 65
    end
    object kolektif: TcxComboBox
      Left = 201
      Top = 78
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 217
    end
    object cxLabel2: TcxLabel
      Left = 48
      Top = 79
      Caption = 'Kolektif'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object alamat: TcxComboBox
      Left = 1088
      Top = 100
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 273
    end
    object jabpj: TcxComboBox
      Left = 1088
      Top = 124
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 273
    end
    object namapj: TcxComboBox
      Left = 1088
      Top = 148
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 273
    end
    object ketpj: TcxComboBox
      Left = 1088
      Top = 172
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 273
    end
    object ket: TcxComboBox
      Left = 1088
      Top = 76
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 273
    end
    object cxLabel3: TcxLabel
      Left = 48
      Top = 173
      Caption = 'Kesatuan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 48
      Top = 215
      Caption = 'Alamat Satker'
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
      Left = 48
      Top = 310
      Caption = 'Jabatan Penanggung Jawab ( Kiri )'
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
      Left = 48
      Top = 354
      Caption = 'Nama Penanggung Jawab ( Kiri )'
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
      Left = 48
      Top = 398
      Caption = 'Keterangan Penanggung Jawab ( Kiri )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ket2: TcxTextEdit
      Left = 48
      Top = 191
      Properties.CharCase = ecUpperCase
      TabOrder = 17
      Width = 369
    end
    object alamat2: TcxTextEdit
      Left = 48
      Top = 234
      Properties.CharCase = ecUpperCase
      TabOrder = 18
      Width = 369
    end
    object jabpj2: TcxTextEdit
      Left = 48
      Top = 329
      Properties.CharCase = ecUpperCase
      TabOrder = 19
      Width = 249
    end
    object ketpj2: TcxTextEdit
      Left = 48
      Top = 416
      Properties.CharCase = ecUpperCase
      TabOrder = 20
      Width = 249
    end
    object namapj2: TcxTextEdit
      Left = 48
      Top = 372
      Properties.CharCase = ecUpperCase
      TabOrder = 21
      Width = 249
    end
    object cxLabel8: TcxLabel
      Left = 48
      Top = 57
      Caption = 'Kode Satker'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object kodesatker: TcxComboBox
      Left = 136
      Top = 54
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.Items.Strings = (
        'TNI AD'
        'TNI AL'
        'INSTANSI'
        'POLISI REPUBLIK INDONESIA')
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 23
      Width = 209
    end
    object cxLabel9: TcxLabel
      Left = 312
      Top = 310
      Caption = 'Jabatan Penanggung Jawab ( Tengah )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object jabpj3: TcxTextEdit
      Left = 312
      Top = 329
      Properties.CharCase = ecUpperCase
      TabOrder = 25
      Width = 233
    end
    object cxLabel10: TcxLabel
      Left = 312
      Top = 354
      Caption = 'Nama Penanggung Jawab ( Tengah )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object namapj3: TcxTextEdit
      Left = 312
      Top = 372
      Properties.CharCase = ecUpperCase
      TabOrder = 27
      Width = 233
    end
    object cxLabel11: TcxLabel
      Left = 312
      Top = 398
      Caption = 'Keterangan Penanggung Jawab ( Tengah )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ketpj3: TcxTextEdit
      Left = 312
      Top = 416
      Properties.CharCase = ecUpperCase
      TabOrder = 29
      Width = 233
    end
    object jabpj4: TcxComboBox
      Left = 1088
      Top = 196
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 30
      Width = 273
    end
    object namapj4: TcxComboBox
      Left = 1088
      Top = 220
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Width = 273
    end
    object ketpj4: TcxComboBox
      Left = 1088
      Top = 244
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 32
      Width = 273
    end
    object cxLabel12: TcxLabel
      Left = 48
      Top = 265
      Caption = 'Fungsi Penangung Jawab ( Kiri )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object fungsipj2: TcxTextEdit
      Left = 48
      Top = 284
      Properties.CharCase = ecUpperCase
      TabOrder = 34
      Width = 249
    end
    object cxLabel13: TcxLabel
      Left = 312
      Top = 265
      Caption = 'Fungsi Penangung Jawab ( Tengah )'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object fungsipj3: TcxTextEdit
      Left = 312
      Top = 284
      Properties.CharCase = ecUpperCase
      TabOrder = 36
      Width = 233
    end
    object fungsipj: TcxComboBox
      Left = 1088
      Top = 268
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 37
      Width = 273
    end
    object fungsipj4: TcxComboBox
      Left = 1088
      Top = 292
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 38
      Width = 273
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 144
      Width = 577
      Height = 25
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'PARAMETER LAPORAN'
      Color = 445951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 596
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DAFTAR PENGESAHAN TAGIHAN'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 416
    Top = 152
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 512
    Top = 216
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT p.nama,p.alamat,p.nosamb,p.norekening,c.stanlalu,c.stansk' +
        'rg,'
      
        'c.pakai,c.kodegol,c.biayapemakaian,c.administrasi,c.pemeliharaan' +
        ','
      
        'c.rekair, COALESCE(n.totalna,0) AS totalna,c.rekair+ COALESCE(n.' +
        'totalna,0) AS total'
      ''
      'FROM piutang c LEFT JOIN pelanggan p ON c.`nosamb`=p.nosamb '
      'LEFT JOIN '
      '('
      
        'SELECT dibebankankepada,SUM(total) AS totalna FROM nonair WHERE ' +
        'flaglunas="0" AND flagangsur="0" AND DATE_FORMAT(waktuinput,"%Y%' +
        'm")=:periodeinput'
      'GROUP BY dibebankankepada'
      
        ') n ON c.`nosamb`=n.dibebankankepada WHERE c.flaglunas="0" AND c' +
        '.flagangsur="0" AND c.periode=:periode AND c.kodekolektif=:kodek' +
        'olektif oRDER BY CAST(c.nosamb AS UNSIGNED) ASC;')
    Connection = DM.Conn
    Left = 480
    Top = 67
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
    object Qreknosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'p.nosamb'
      Size = 50
    end
    object Qreknorekening: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
      Size = 50
    end
    object Qrekstanlalu: TFloatField
      FieldName = 'stanlalu'
      Origin = 'c.stanlalu'
    end
    object Qrekstanskrg: TFloatField
      FieldName = 'stanskrg'
      Origin = 'c.stanskrg'
    end
    object Qrekpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'c.pakai'
    end
    object Qrekkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
    object Qrekbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
      Origin = 'c.biayapemakaian'
    end
    object Qrekadministrasi: TFloatField
      FieldName = 'administrasi'
      Origin = 'c.administrasi'
    end
    object Qrekpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
      Origin = 'c.pemeliharaan'
    end
    object Qrekrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'c.rekair'
    end
    object Qrektotalna: TFloatField
      FieldName = 'totalna'
      Origin = 'totalna'
    end
    object Qrektotal: TFloatField
      FieldName = 'total'
      Origin = 'total'
    end
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
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 42364.487461724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 399
    Datasets = <
      item
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
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 256
      LeftMargin = 20.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 143.622140000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 106.046903310000000000
          Top = 8.440241940000000000
          Width = 149.975279920000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 48.148033230000000000
          Top = 8.440241940000000000
          Width = 57.148846620000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Samb')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 256.021369850000000000
          Top = 8.440241940000000000
          Width = 32.653207710000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Gol')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 389.708242790000000000
          Top = 8.440241940000000000
          Width = 38.051329290000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 431.978069240000000000
          Top = 8.440241940000000000
          Width = 79.036809050000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 511.181423740000000000
          Top = 8.440241940000000000
          Width = 55.905875650000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 566.911544930000000000
          Top = 8.440241940000000000
          Width = 52.526076920000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Beban')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 620.738971600000000000
          Top = 8.440241940000000000
          Width = 79.438595050000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 13.220470000000000000
          Top = 8.440241940000000000
          Width = 32.353953310000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line27: TfrxLineView
          Left = 11.338590000000000000
          Top = 5.708720000000000000
          Width = 691.687603174970000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 11.338590000000000000
          Top = 36.165430000000000000
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 11.338590000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 45.354360000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 105.826840000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 289.567100000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 702.992580000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line44: TfrxLineView
          Left = 255.551330000000000000
          Top = 5.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 430.866420000000000000
          Top = 6.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 510.236550000000000000
          Top = 6.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 566.929500000000000000
          Top = 6.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 619.842920000000000000
          Top = 6.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo38: TfrxMemoView
          Left = 341.157700000000000000
          Top = 8.826840000000000000
          Width = 45.610389290000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bln'
            'Kini')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 290.803340000000000000
          Top = 8.826840000000000000
          Width = 53.169449290000000000
          Height = 21.945658060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bln'
            'Lalu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line79: TfrxLineView
          Left = 389.291590000000000000
          Top = 6.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line80: TfrxLineView
          Left = 340.157700000000000000
          Top = 6.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 721.512277000000000000
        Child = report.Child3
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Line25: TfrxLineView
          Left = 105.826840000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line61: TfrxLineView
          Left = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line62: TfrxLineView
          Left = 256.008040000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line68: TfrxLineView
          Left = 289.244280000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line69: TfrxLineView
          Left = 430.866420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 510.236550000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line75: TfrxLineView
          Left = 702.992580000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = 11.338590000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line81: TfrxLineView
          Left = 389.291590000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line82: TfrxLineView
          Left = 340.157700000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line71: TfrxLineView
          Left = 566.929500000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line72: TfrxLineView
          Left = 619.842920000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 108.606370000000000000
          Top = 0.779530000000000000
          Width = 147.401670000000000000
          Height = 11.392915270000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
        end
        object reknosamb: TfrxMemoView
          Left = 49.133890000000000000
          Top = 0.779530000000000000
          Width = 56.692950000000000000
          Height = 11.392915270000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object rekstanlalu: TfrxMemoView
          Left = 388.834880000000000000
          Top = 0.779530000000000000
          Width = 37.795300000000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object rekprog3: TfrxMemoView
          Left = 430.409710000000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 509.779840000000000000
          Top = 0.779530000000000000
          Width = 53.002106160000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."cadministrasi"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 566.385721690000000000
          Top = 0.779530000000000000
          Width = 49.398330630000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."cpemeliharaan"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.779530000000000000
          Width = 30.236240000000000000
          Height = 11.392915270000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Top = 0.779530000000000000
          Width = 79.370130000000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataField = 'rekair'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
        end
        object rekgolongan: TfrxMemoView
          Left = 256.551330000000000000
          Top = 0.945674730000000000
          Width = 30.236240000000000000
          Height = 11.392915270000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 291.023810000000000000
          Top = 0.945674730000000000
          Width = 45.354360000000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanlalu"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 340.157700000000000000
          Top = 0.945674730000000000
          Width = 45.354360000000000000
          Height = 11.392915270000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanskrg"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 60.472480000000000000
        Top = 551.811380000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 4.338590000000000000
          Width = 79.370130000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Memo26: TfrxMemoView
          Left = 566.209967230000000000
          Top = 4.338590000000000000
          Width = 49.574085100000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
            '[SUM(<rek."cpemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 513.559370000000000000
          Top = 4.338590000000000000
          Width = 49.222576160000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
            '[SUM(<rek."cadministrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 430.409710000000000000
          Top = 4.338590000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Memo3: TfrxMemoView
          Left = 15.118120000000000000
          Top = 4.338590000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'TOTAL : ')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.559060000000000000
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 11.338590000000000000
          Top = 45.913420000000000000
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line52: TfrxLineView
          Left = 703.095747800000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 388.834880000000000000
          Top = 4.338590000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Line57: TfrxLineView
          Left = 430.409710000000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 98.267780000000000000
          Top = 4.338590000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 510.236550000000000000
          Top = 0.779530000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 566.929500000000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line56: TfrxLineView
          Left = 619.842920000000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line78: TfrxLineView
          Left = 389.291590000000000000
          Top = 0.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 30.236240000000000000
        Top = 257.008040000000000000
        Width = 721.512277000000000000
        Child = report.Child2
        Condition = 'rek."kodewil"'
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 423.243013780000000000
          Height = 18.897640240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'WILAYAH : [rek."wilayah"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 445.984540000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 619.842920000000000000
          Top = 4.559060000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Memo15: TfrxMemoView
          Left = 566.209967230000000000
          Top = 4.559060000000000000
          Width = 49.574085100000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
            '[SUM(<rek."cpemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 513.383615530000000000
          Top = 4.559060000000000000
          Width = 49.398330630000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
            '[SUM(<rek."cadministrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 430.409710000000000000
          Top = 4.559060000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Memo27: TfrxMemoView
          Left = 15.118120000000000000
          Top = 4.559060000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'SUB TOTAL :')
          ParentFont = False
        end
        object Line39: TfrxLineView
          Left = 11.338590000000000000
          Top = 37.574830000000000000
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          Left = 388.834880000000000000
          Top = 4.559060000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
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
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 4.559060000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 510.236550000000000000
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 566.929500000000000000
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 702.992580000000000000
          Top = 0.220470000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line77: TfrxLineView
          Left = 389.291590000000000000
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 619.421001360000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 430.409710000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child2: TfrxChild
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Line74: TfrxLineView
          Left = 11.338590000000000000
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child3: TfrxChild
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Line83: TfrxLineView
          Left = 11.338590000000000000
          Top = -0.000000000000000028
          Width = 691.757157800000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 279.685220000000000000
          Top = 12.858380000000000000
          Width = 325.039580000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'DAFTAR REKENING YANG DITAGIH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 279.685220000000000000
          Top = 35.535560000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Bulan/Tahun : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan: TfrxMemoView
          Left = 377.953000000000000000
          Top = 35.535560000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '?????')
          ParentFont = False
          VAlign = vaCenter
        end
        object keterangan: TfrxMemoView
          Left = 11.338590000000000000
          Top = 65.771800000000000000
          Width = 702.992580000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 12.858380000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header1"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 11.338590000000000000
          Top = 35.535560000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header2"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 634.961040000000000000
        Width = 721.512277000000000000
        object Date1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          Left = 472.441250000000000000
          Top = 15.118120000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal. [Page#] dari [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 472.441250000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'DRD REAL')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 256
      LeftMargin = 20.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Memo40: TfrxMemoView
          Left = 321.260050000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Bulan/Tahun : ')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 13.527520000000000000
          Top = 87.012210890000000000
          Width = 31.178110620000000000
          Height = 37.696656360000000000
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
        object Memo43: TfrxMemoView
          Left = 47.429978240000000000
          Top = 87.012210890000000000
          Width = 130.204042030000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama'
            'Golongan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 180.175740910000000000
          Top = 87.012210890000000000
          Width = 52.496900120000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lembar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 232.672641020000000000
          Top = 87.012210890000000000
          Width = 58.887895990000000000
          Height = 37.696656360000000000
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
            '(m3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 295.710405060000000000
          Top = 87.012210890000000000
          Width = 117.326329100000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga '
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 497.285615650000000000
          Top = 87.012210890000000000
          Width = 84.955644470000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Beban')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 586.588996200000000000
          Top = 87.012210890000000000
          Width = 107.397462290000000000
          Height = 37.696656360000000000
          ShowHint = False
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
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 411.210866720000000000
          Top = 87.012210890000000000
          Width = 83.119026340000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Biaya'
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 321.260050000000000000
          Top = 11.338590000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKAPITULASI DRD')
          ParentFont = False
        end
        object bulan2: TfrxMemoView
          Left = 415.748300000000000000
          Top = 30.236240000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '???')
          ParentFont = False
        end
        object keterangan2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 60.472480000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.077058490000000000
          Top = 86.660537950000000000
          Width = 688.143670537018000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 11.077058490000000000
          Top = 124.708867250000000000
          Width = 688.143670537018000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 234.330860000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 181.417440000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 294.803340000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 413.858535000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line59: TfrxLineView
          Left = 497.638116670000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 585.827150000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 699.213050000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 86.929190000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo63: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header1"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header2"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 34.015770000000000000
        Top = 207.874150000000000000
        Width = 721.512277000000000000
        Child = report.Child1
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          Left = 49.133890000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '[gol."kodegol"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 234.330860000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."pakai"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 294.803340000000000000
          Width = 114.645743333333000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."biayapemakaian"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 497.638116670000000000
          Width = 83.779581670000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."cpemeliharaan"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 586.996866140000000000
          Width = 108.436653860000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."rekair"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 177.637910000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."lembar"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 234.330860000000000000
          Height = 24.027225233012600000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 294.803340000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 413.858535000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 497.638116666667000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line55: TfrxLineView
          Left = 585.827150000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 699.213050000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 11.338590000000000000
          Height = 24.027225233012600000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 181.417440000000000000
          Top = 0.312384066987396000
          Height = 24.027225233012600000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 45.354360000000000000
          Height = 24.027225233012600000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo75: TfrxMemoView
          Left = 413.858535000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."cadministrasi"]')
          ParentFont = False
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 222.992270000000000000
        Top = 347.716760000000000000
        Width = 721.512277000000000000
        object Memo50: TfrxMemoView
          Left = 586.996866140000000000
          Top = 3.779530000000000000
          Width = 108.436653860000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."rekair">,MasterData2)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 497.638116670000000000
          Top = 3.779530000000000000
          Width = 83.779581670000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."cpemeliharaan">,MasterData2)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 413.858535000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."cadministrasi">,MasterData2)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 114.645743333333000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."biayapemakaian">,MasterData2)]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 230.551330000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."pakai">,MasterData2)]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."lembar">,MasterData2)]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 30.106545690000000000
          Top = 10.497473210000000000
          Width = 40.350382120000000000
          Height = 15.104806350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Total : ')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.240285613579400000
          Top = 46.354360000000000000
          Width = 687.980443413438000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 181.417440000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 234.330860000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 294.803340000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Left = 413.858535000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 497.638116666667000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line60: TfrxLineView
          Left = 585.827150000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line63: TfrxLineView
          Left = 699.213050000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 11.338590000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object jab1: TfrxMemoView
          Left = 45.354360000000000000
          Top = 98.267780000000000000
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
          Left = 45.354360000000000000
          Top = 177.637910000000000000
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
          Left = 45.354360000000000000
          Top = 192.756030000000000000
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
          Left = 506.457020000000000000
          Top = 64.252010000000000000
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
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Top = 83.149660000000000000
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
        object Memo24: TfrxMemoView
          Left = 272.126160000000000000
          Top = 98.267780000000000000
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
        object Memo34: TfrxMemoView
          Left = 272.126160000000000000
          Top = 177.637910000000000000
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
        object Memo67: TfrxMemoView
          Left = 272.126160000000000000
          Top = 192.756030000000000000
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
        object Memo71: TfrxMemoView
          Left = 272.126160000000000000
          Top = 83.149660000000000000
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
          Left = 506.457020000000000000
          Top = 98.267780000000000000
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
          Left = 506.457020000000000000
          Top = 177.637910000000000000
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
          Left = 506.457020000000000000
          Top = 192.756030000000000000
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
          Left = 506.457020000000000000
          Top = 83.149660000000000000
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
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 721.512277000000000000
        Stretched = True
        object Line8: TfrxLineView
          Left = 11.313879266561600000
          Width = 687.980443413438000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 593.386210000000000000
        Width = 721.512277000000000000
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 472.441250000000000000
          Top = 15.118120000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal. [Page#] dari [TotalPages#]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 472.441250000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'DRD REAL')
          ParentFont = False
        end
      end
    end
  end
  object Qgol: TMyQuery
    Connection = DM.Conn
    Left = 568
    Top = 88
    object Qgolkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'golongan.kodegol'
      Size = 50
    end
    object Qgolgolongan: TStringField
      FieldName = 'golongan'
      Origin = 'golongan.golongan'
      Size = 100
    end
    object Qgolaktif: TStringField
      FieldName = 'aktif'
      Origin = 'golongan.aktif'
      FixedChar = True
      Size = 1
    end
    object Qgolkategori: TStringField
      FieldName = 'kategori'
      Origin = 'golongan.kategori'
      Size = 30
    end
    object Qgolt1: TFloatField
      FieldName = 't1'
      Origin = 'golongan.t1'
    end
    object Qgolt2: TFloatField
      FieldName = 't2'
      Origin = 'golongan.t2'
    end
    object Qgolt3: TFloatField
      FieldName = 't3'
      Origin = 'golongan.t3'
    end
    object Qgolt4: TFloatField
      FieldName = 't4'
      Origin = 'golongan.t4'
    end
  end
  object gol: TfrxDBDataset
    UserName = 'gol'
    CloseDataSource = False
    DataSource = DSgol
    BCDToCurrency = False
    Left = 504
    Top = 168
  end
  object DSgol: TMyDataSource
    DataSet = Qgol
    Left = 488
    Top = 248
  end
  object frxReport1: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42836.474880185200000000
    ReportOptions.LastChange = 42836.474880185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 152
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
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 1171.654300000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 41.574830000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 234.330860000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."alamat"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 423.307360000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'norekening'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."norekening"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 559.370440000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanlalu'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanlalu"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 608.504330000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanskrg'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanskrg"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 657.638220000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'kodegol'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 699.213050000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 744.567410000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 823.937540000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 899.528140000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'totalna'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."totalna"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1050.709340000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."total"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 423.307360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 491.338900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 559.370440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 608.504330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 657.638220000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 699.213050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 744.567410000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 823.937540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 899.528140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 975.118740000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 1050.709340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 1141.418060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        Stretched = True
        object Memo55: TfrxMemoView
          Left = 457.323130000000000000
          Top = 26.456710000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR PENGESAHAN TAGIHAN')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KESATUAN')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KODE SATKER')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'ALAMAT SATKER')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 226.771800000000000000
          Top = 64.252010000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 226.771800000000000000
          Top = 83.149660000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 793.701300000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Lampiran Surat PDAM Nomor')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 793.701300000000000000
          Top = 45.354360000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. Pengesahan Tagihan')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 793.701300000000000000
          Top = 64.252010000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. Penerimaan Kembali')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 960.000620000000000000
          Top = 26.456710000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 960.000620000000000000
          Top = 45.354360000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 960.000620000000000000
          Top = 64.252010000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 975.118740000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '      / DPD / Prop DIY /      / 2017')
          ParentFont = False
        end
        object kolektif: TfrxMemoView
          Left = 253.228510000000000000
          Top = 45.354360000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KESATUAN')
          ParentFont = False
        end
        object kodesatker: TfrxMemoView
          Left = 253.228510000000000000
          Top = 64.252010000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'TNI AD')
          ParentFont = False
        end
        object alamat: TfrxMemoView
          Left = 253.228510000000000000
          Top = 83.149660000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KESATUAN')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAH KOTA YOGYAKARTA'
            '" PDAM TIRTAMARTA"'
            'Y O G Y A K A R T A')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 793.701300000000000000
          Top = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tagihan Bulan')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 960.000620000000000000
          Top = 83.149660000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 971.339210000000000000
          Top = 83.149660000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tagihan Bulan')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 177.637910000000000000
        Width = 1171.654300000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 1137.638530000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 230.551330000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 423.307360000000000000
          Top = 17.007885000000000000
          Width = 68.031540000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 491.338900000000000000
          Top = 17.007885000000000000
          Width = 68.031540000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'C')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 559.370440000000000000
          Top = 17.007885000000000000
          Width = 49.133890000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Meter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 608.504330000000000000
          Top = 17.007885000000000000
          Width = 49.133890000000000000
          Height = 13.228355000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Akhir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Gol'
            'Tarif')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 699.213050000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Volume'
            '( m3 )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 744.567410000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Biaya'
            'Pemakaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 823.937540000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Biaya'
            'Pemel WM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 899.528140000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Biaya'
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 975.118740000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tagihan'
            'Non Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 1050.709340000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH'
            'Air dan Non Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 423.307360000000000000
          Top = 17.007885000000000000
          Width = 234.330860000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Height = 52.913420000000000000
        Top = 377.953000000000000000
        Width = 1171.654300000000000000
        object Shape3: TfrxShapeView
          Left = 3.779530000000000000
          Width = 1137.638530000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
        end
        object Memo42: TfrxMemoView
          Left = 1050.709340000000000000
          Width = 83.149660000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 1050.709340000000000000
          Top = 17.007885000000000000
          Width = 83.149660000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalna">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 975.118740000000000000
          Top = 17.007885000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalna">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 899.528140000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 899.528140000000000000
          Top = 17.007885000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 823.937540000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 823.937540000000000000
          Top = 17.007885000000000000
          Width = 71.811070000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 744.567410000000000000
          Width = 75.590600000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 744.567410000000000000
          Top = 17.007885000000000000
          Width = 75.590600000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 699.213050000000000000
          Width = 41.574830000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 699.213050000000000000
          Top = 17.007885000000000000
          Width = 41.574830000000000000
          Height = 17.007885000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1,2)]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 1050.709340000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 975.118740000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 899.528140000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 823.937540000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 744.567410000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 699.213050000000000000
          Height = 17.007885000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 699.213050000000000000
          Top = 17.007885000000000000
          Width = 442.205010000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          Left = 483.779840000000000000
          Width = 170.078850000000000000
          Height = 17.007885000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total halaman ini')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 457.323130000000000000
          Top = 17.007885000000000000
          Width = 170.078850000000000000
          Height = 17.007885000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total sampai halaman ini')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 453.543600000000000000
        Width = 1171.654300000000000000
        object TotalPages: TfrxMemoView
          Left = 948.662030000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal  [Page#] - [TotalPages#]')
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
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 1171.654300000000000000
        DataSet = gol
        DataSetName = 'gol'
        RowCount = 0
        Stretched = True
        object golkodegol: TfrxMemoView
          Left = 672.756340000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = gol
          DataSetName = 'gol'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[gol."kodegol"] / [gol."golongan"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 861.732840000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 't1'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."t1"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 933.543910000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 't2'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."t2"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 't3'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."t3"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 1077.166050000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 't4'
          DataSet = gol
          DataSetName = 'gol'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."t4"]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 861.732840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 933.543910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 1005.354980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 1077.166050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 1148.977120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 861.732840000000000000
          Top = 15.118120000000000000
          Width = 287.244280000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        Stretched = True
        object Memo32: TfrxMemoView
          Left = 861.732840000000000000
          Top = 3.779530000000000000
          Width = 287.244280000000000000
          Height = 14.536653846153850000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TARIP AIR MINUM ( M3 )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 861.732840000000000000
          Top = 18.316183850000000000
          Width = 71.811070000000000000
          Height = 15.699586150000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '0 - 10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 933.543910000000000000
          Top = 18.316183850000000000
          Width = 71.811070000000000000
          Height = 15.699586150000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '11 -20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 18.316183850000000000
          Width = 71.811070000000000000
          Height = 15.699586150000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '21 - 30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 1077.166050000000000000
          Top = 18.316183850000000000
          Width = 71.811070000000000000
          Height = 15.699586150000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '> 30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Terbilang : ')
          ParentFont = False
        end
        object terbilang: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Terbilang : ')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 226.771800000000000000
        Top = 264.567100000000000000
        Width = 1171.654300000000000000
        Stretched = True
        object ket2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 56.692950000000000000
          Width = 318.425402500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket2')
          ParentFont = False
        end
        object ket3: TfrxMemoView
          Left = 41.574830000000000000
          Top = 94.488250000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket3')
          ParentFont = False
          WordWrap = False
        end
        object ket4: TfrxMemoView
          Left = 41.574830000000000000
          Top = 109.606370000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket4')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 767.244590000000000000
          Top = 11.338590000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , ................................ 2017')
          ParentFont = False
        end
        object ket1: TfrxMemoView
          Left = 41.574830000000000000
          Top = 41.574830000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket1')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 706.772110000000000000
          Top = 56.692950000000000000
          Width = 341.102582500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 706.772110000000000000
          Top = 94.488250000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 706.772110000000000000
          Top = 109.606370000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 706.772110000000000000
          Top = 41.574830000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object ket6: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692950000000000000
          Width = 341.102582500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket6')
          ParentFont = False
        end
        object ket7: TfrxMemoView
          Left = 370.393940000000000000
          Top = 94.488250000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket7')
          ParentFont = False
          WordWrap = False
        end
        object ket8: TfrxMemoView
          Left = 370.393940000000000000
          Top = 109.606370000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket8')
          ParentFont = False
        end
        object ket5: TfrxMemoView
          Left = 370.393940000000000000
          Top = 41.574830000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ket5')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 1171.654300000000000000
        object Memo54: TfrxMemoView
          Left = 948.662030000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal  [Page#] - [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 472
    Top = 392
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
  object Qterbilang: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT coalesce( SUM(c.rekair+ COALESCE(n.totalna,0)) , 0) AS to' +
        'tal'
      ''
      'FROM piutang c LEFT JOIN pelanggan p ON c.`nosamb`=p.nosamb '
      'LEFT JOIN '
      '('
      
        'SELECT dibebankankepada,SUM(total) AS totalna FROM nonair WHERE ' +
        'flaglunas="0" AND flagangsur="0" AND DATE_FORMAT(waktuinput,"%Y%' +
        'm")=:periodeinput'
      'GROUP BY dibebankankepada'
      
        ') n ON c.`nosamb`=n.dibebankankepada WHERE c.flaglunas="0" AND c' +
        '.flagangsur="0" AND c.periode=:periode AND c.kodekolektif=:kodek' +
        'olektif;')
    Connection = DM.Conn
    Left = 600
    Top = 235
  end
end