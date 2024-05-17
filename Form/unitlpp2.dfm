object ulpp2: Tulpp2
  Left = 404
  Top = 137
  BorderStyle = bsNone
  Caption = 'ulpp2'
  ClientHeight = 371
  ClientWidth = 704
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
    Width = 704
    Height = 371
    Align = alClient
    BorderOuter = fsNone
    BorderWidth = 5
    Color = 10936063
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 24
      Top = 45
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
      Top = 67
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
    object cxLabel2: TcxLabel
      Left = 576
      Top = 53
      Caption = 'Sampai :'
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
    object tanggal2: TcxDateEdit
      Left = 576
      Top = 75
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 145
    end
    object cekkasir: TcxCheckBox
      Left = 24
      Top = 104
      Caption = 'Kasir :'
      Enabled = False
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
      Top = 123
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
      Width = 305
    end
    object cekgol: TcxCheckBox
      Left = 472
      Top = 272
      Caption = 'Golongan Pelanggan :'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
      OnClick = cekgolClick
      Width = 145
    end
    object kodegol: TcxComboBox
      Left = 472
      Top = 291
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
      TabOrder = 7
      Width = 105
    end
    object golongan: TcxComboBox
      Left = 576
      Top = 291
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
      TabOrder = 8
      Width = 193
    end
    object cekloket: TcxCheckBox
      Left = 464
      Top = 160
      Caption = 'Loket :'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Transparent = True
      OnClick = cekloketClick
      Width = 121
    end
    object kodeloket: TcxComboBox
      Left = 464
      Top = 179
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
      TabOrder = 10
      Width = 105
    end
    object loket: TcxComboBox
      Left = 568
      Top = 179
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
    object kodeloket2: TcxComboBox
      Left = 512
      Top = 229
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = kodeloket2PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 105
    end
    object loket2: TcxComboBox
      Left = 616
      Top = 229
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.OnChange = loket2PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 145
    end
    object cxLabel3: TcxLabel
      Left = 512
      Top = 207
      Caption = 'S/d Loket :'
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
    object RzPanel20: TRzPanel
      Left = 5
      Top = 5
      Width = 694
      Height = 36
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'LAPORAN PENERIMAAN'
      Color = 13500416
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object btnOK: TRzPanel
      Left = 24
      Top = 164
      Width = 153
      Height = 41
      Cursor = crHandPoint
      BorderOuter = fsFlatRounded
      Caption = 'OK (ENTER )'
      Color = 10289309
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = btnOKClick
    end
    object btnNo: TRzPanel
      Left = 184
      Top = 164
      Width = 145
      Height = 41
      Cursor = crHandPoint
      BorderOuter = fsFlatRounded
      Caption = 'BATAL ( ESC )'
      Color = 6447871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = btnNoClick
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.nosamb,'
      '  p.norekening,'
      '  p.nama,'
      'c.kodegol,'
      '  p.alamat,'
      '  c.periode,'
      '  c.biayapemakaian,'
      '  c.pemeliharaan,'
      '  c.administrasi,'
      '  c.rekair '
      'FROM'
      '  bayar c '
      '  LEFT JOIN pelanggan p '
      '    ON c.nosamb = p.`nosamb` '
      
        'WHERE DATE(c.tglbayar) = :tanggal1 AND c.flaglunas="1" AND c.fla' +
        'gangsur="0"')
    Connection = DM.Conn
    Left = 472
    Top = 32
    object Qreknosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'c.nosamb'
      Size = 50
    end
    object Qreknorekening: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
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
    object Qrekperiode: TStringField
      FieldName = 'periode'
      Origin = 'c.periode'
      Size = 6
    end
    object Qrekbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
      Origin = 'c.biayapemakaian'
    end
    object Qrekpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
      Origin = 'c.pemeliharaan'
    end
    object Qrekadministrasi: TFloatField
      FieldName = 'administrasi'
      Origin = 'c.administrasi'
    end
    object Qrekrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'c.rekair'
    end
    object Qrekkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 480
    Top = 120
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nosamb=nosamb'
      'norekening=norekening'
      'nama=nama'
      'alamat=alamat'
      'periode=periode'
      'biayapemakaian=biayapemakaian'
      'pemeliharaan=pemeliharaan'
      'administrasi=administrasi'
      'rekair=rekair'
      'kodegol=kodegol')
    DataSource = DSrek
    BCDToCurrency = False
    Left = 488
    Top = 80
  end
  object report: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42808.991107557900000000
    ReportOptions.LastChange = 42808.991107557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 88
    Datasets = <
      item
        DataSet = rek
        DataSetName = 'rek'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 1254.803960000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object reknosamb: TfrxMemoView
          Left = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'norekening'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."norekening"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 222.992270000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."alamat"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 668.976810000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."periode"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 737.008350000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
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
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 827.717070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
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
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 914.646260000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
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
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1111.181820000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 181.417440000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'kodegol'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 7.559060000000000000
        Top = 325.039580000000000000
        Width = 1254.803960000000000000
        Condition = 'rek."nosamb"'
        Stretched = True
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 400.630180000000000000
        Width = 1254.803960000000000000
      end
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo27: TfrxMemoView
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 687.874460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PERHITUNGAN BAYAR KAS')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 317.480520000000000000
          Top = 30.236240000000000000
          Width = 687.874460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING AIR')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          Left = 317.480520000000000000
          Top = 45.354360000000000000
          Width = 687.874460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 317.480520000000000000
          Top = 60.472480000000000000
          Width = 687.874460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 204.094620000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAN KOTA YOGYAKARTA'
            'PDAM TIRTAMARTA'
            'YOGYAKARTA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 132.283550000000000000
        Width = 1254.803960000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.'
            'URUT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NO.'
            'SAMB')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 120.944960000000000000
          Top = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NO.'
            'REK')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 222.992270000000000000
          Top = 52.913420000000000000
          Width = 204.094620000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 241.889920000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 668.976810000000000000
          Top = 52.913420000000000000
          Width = 68.031540000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN.'
            'REKENING')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 737.008350000000000000
          Top = 52.913420000000000000
          Width = 90.708720000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'JUMLAH'
            'PEMAKAIAN'
            'AIR')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 827.717070000000000000
          Top = 52.913420000000000000
          Width = 86.929190000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'BIAYA'
            'PEML.METER')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 914.646260000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'BIAYA'
            'ADM.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 997.795920000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'ANGSURAN')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1073.386520000000000000
          Top = 52.913420000000000000
          Width = 37.795300000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'KE')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 1111.181820000000000000
          Top = 52.913420000000000000
          Width = 102.047310000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 181.417440000000000000
          Top = 52.913420000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 737.008350000000000000
          Top = 98.267780000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '(RP)')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 827.717070000000000000
          Top = 98.267780000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '(RP)')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 914.646260000000000000
          Top = 98.267780000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '(RP)')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 1111.181820000000000000
          Top = 98.267780000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '(RP)')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1213.229130000000000000
          Top = 45.354360000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 1213.229130000000000000
          Top = 120.944960000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 1213.229130000000000000
          Top = 124.724490000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 1213.229130000000000000
          Top = 41.574830000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 1073.386520000000000000
          Top = 22.677180000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 1073.386520000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsItalic]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Laporan BSLOKET')
          ParentFont = False
        end
        object namauser2: TfrxMemoView
          Left = 861.732840000000000000
          Top = 22.677180000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'FOOTER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 755.906000000000000000
        Width = 1254.803960000000000000
        PrintOnLastPage = False
        object Memo30: TfrxMemoView
          Left = 1111.181820000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 737.008350000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 827.717070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 914.646260000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ' SUB TOTAL PIUTANG HALAMAN INI')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 1213.229130000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 1213.229130000000000000
          Top = 18.897650000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 264.567100000000000000
        Top = 468.661720000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo31: TfrxMemoView
          Left = 1111.181820000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 737.008350000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 827.717070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 914.646260000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 1213.229130000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 1213.229130000000000000
          Top = 18.897650000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 200
    Top = 81
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnOKClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = btnNoClick
    end
  end
  object Qna: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT c.jenis,c.nomor,c.nama,c.alamat,c.total,c.ketjenis,p.nore' +
        'kening,c.periode,p.kodegol FROM nonair c LEFT JOIN pelanggan p O' +
        'N c.nomor=p.nosamb '
      'WHERE c.flaglunas="1" AND DATE(c.waktubayar)=:tanggal1')
    Connection = DM.Conn
    Left = 432
    Top = 328
    object Qnajenis: TStringField
      FieldName = 'jenis'
      Origin = 'c.jenis'
      Size = 40
    end
    object Qnanomor: TStringField
      FieldName = 'nomor'
      Origin = 'c.nomor'
      Size = 50
    end
    object Qnanama: TStringField
      FieldName = 'nama'
      Origin = 'c.nama'
      Size = 50
    end
    object Qnaalamat: TStringField
      FieldName = 'alamat'
      Origin = 'c.alamat'
      Size = 100
    end
    object Qnatotal: TFloatField
      FieldName = 'total'
      Origin = 'c.total'
    end
    object Qnanorekening: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
      Size = 50
    end
    object Qnaperiode: TStringField
      FieldName = 'periode'
      Origin = 'c.periode'
      Size = 6
    end
    object Qnakodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'p.kodegol'
      Size = 15
    end
    object Qnaketjenis: TStringField
      FieldName = 'ketjenis'
      Origin = 'c.ketjenis'
      Size = 50
    end
  end
  object DSna: TMyDataSource
    DataSet = Qna
    Left = 488
    Top = 352
  end
  object rek2: TfrxDBDataset
    UserName = 'rek2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jenis=jenis'
      'nomor=nomor'
      'nama=nama'
      'alamat=alamat'
      'total=total'
      'norekening=norekening'
      'periode=periode'
      'kodegol=kodegol'
      'ketjenis=ketjenis')
    DataSource = DSna
    BCDToCurrency = False
    Left = 584
    Top = 280
  end
  object report2: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42808.991107557900000000
    ReportOptions.LastChange = 42808.991107557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 168
    Datasets = <
      item
        DataSet = rek2
        DataSetName = 'rek2'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 1254.803960000000000000
        DataSet = rek2
        DataSetName = 'rek2'
        RowCount = 0
        Stretched = True
        object reknosamb: TfrxMemoView
          Left = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."nomor"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'norekening'
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."norekening"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 230.551330000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."nama"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."alamat"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 680.315400000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ketjenis'
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."ketjenis"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 975.118740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = rek2
          DataSetName = 'rek2'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek2."total"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 185.196970000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'kodegol'
          DataSet = rek2
          DataSetName = 'rek2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."kodegol"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 306.141930000000000000
        Width = 1254.803960000000000000
        Condition = 'rek2."jenis"'
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek2."jenis"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 457.323130000000000000
        Width = 1254.803960000000000000
      end
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo27: TfrxMemoView
          Left = 291.023810000000000000
          Top = 15.118120000000000000
          Width = 548.031850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PERHITUNGAN BAYAR KAS')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 291.023810000000000000
          Top = 30.236240000000000000
          Width = 548.031850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NON AIR')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000000000
          Width = 548.031850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 291.023810000000000000
          Top = 60.472480000000000000
          Width = 548.031850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 204.094620000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAN KOTA YOGYAKARTA'
            'PDAM TIRTAMARTA'
            'YOGYAKARTA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 113.385900000000000000
        Top = 132.283550000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 45.354360000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.'
            'URUT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NOMOR')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 120.944960000000000000
          Top = 49.133890000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NO.'
            'REK')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 222.992270000000000000
          Top = 49.133890000000000000
          Width = 204.094620000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 427.086890000000000000
          Top = 49.133890000000000000
          Width = 241.889920000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 672.756340000000000000
          Top = 49.133890000000000000
          Width = 283.464750000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 975.118740000000000000
          Top = 49.133890000000000000
          Width = 102.047310000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 181.417440000000000000
          Top = 49.133890000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 978.898270000000000000
          Top = 71.811070000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '(RP)')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1088.504640000000000000
          Top = 41.574830000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 1088.504640000000000000
          Top = 98.267780000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 1088.504640000000000000
          Top = 102.047310000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 1088.504640000000000000
          Top = 37.795300000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Date: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 948.662030000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 948.662030000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsItalic]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Laporan BSLOKET')
          ParentFont = False
        end
        object namauser2: TfrxMemoView
          Left = 737.008350000000000000
          Top = 18.897650000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'FOOTER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 842.835190000000000000
        Width = 1254.803960000000000000
        PrintOnLastPage = False
        object Memo30: TfrxMemoView
          Left = 975.118740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ' SUB TOTAL PIUTANG HALAMAN INI')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 1092.284170000000000000
          Width = -1088.504640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 1092.284170000000000000
          Top = 18.897650000000000000
          Width = -1088.504640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 20cpi'
        Font.Style = []
        Height = 264.567100000000000000
        ParentFont = False
        Top = 555.590910000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo31: TfrxMemoView
          Left = 975.118740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Width = 260.787570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 1088.504640000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 1088.504640000000000000
          Top = 18.897650000000000000
          Width = -1084.725110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 7.559060000000000000
        Top = 381.732530000000000000
        Width = 1254.803960000000000000
        Condition = 'rek2."nomor"'
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 487.559370000000000000
        Width = 1254.803960000000000000
      end
    end
  end
end
