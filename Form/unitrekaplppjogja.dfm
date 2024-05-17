object urekaplppjogja: Turekaplppjogja
  Left = 629
  Top = 103
  BorderStyle = bsNone
  Caption = 'urekaplppjogja'
  ClientHeight = 387
  ClientWidth = 351
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
    Width = 351
    Height = 387
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cxButton2: TcxButton
      Left = 26
      Top = 283
      Width = 295
      Height = 38
      Caption = 'Tampilkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 25
      Top = 328
      Width = 296
      Height = 41
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 53
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
      Top = 75
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
      Width = 153
    end
    object cxLabel2: TcxLabel
      Left = 176
      Top = 53
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
      Top = 75
      ParentFont = False
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 145
    end
    object cekkasir: TcxCheckBox
      Left = 776
      Top = 224
      Caption = 'Kasir :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
      Width = 121
    end
    object kasir: TcxComboBox
      Left = 776
      Top = 243
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
      TabOrder = 7
      Width = 297
    end
    object cekgol: TcxCheckBox
      Left = 24
      Top = 224
      Caption = 'Golongan Pelanggan :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      OnClick = cekgolClick
      Width = 145
    end
    object kodegol: TcxComboBox
      Left = 24
      Top = 243
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
      TabOrder = 9
      Width = 105
    end
    object golongan: TcxComboBox
      Left = 128
      Top = 243
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
      TabOrder = 10
      Width = 193
    end
    object cekloket: TcxCheckBox
      Left = 24
      Top = 112
      Caption = 'Loket :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Transparent = True
      OnClick = cekloketClick
      Width = 121
    end
    object kodeloket: TcxComboBox
      Left = 24
      Top = 131
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
      TabOrder = 12
      Width = 105
    end
    object loket: TcxComboBox
      Left = 128
      Top = 131
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
      TabOrder = 13
      Width = 193
    end
    object kodeloket2: TcxComboBox
      Left = 72
      Top = 181
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
      TabOrder = 14
      Width = 105
    end
    object loket2: TcxComboBox
      Left = 176
      Top = 181
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
      TabOrder = 15
      Width = 145
    end
    object cxLabel3: TcxLabel
      Left = 72
      Top = 159
      Caption = 'S/d Loket :'
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
      Width = 341
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'REKAP PENERIMAAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
  end
  object Qrek: TMyQuery
    SQLInsert.Strings = (
      'SELECT '
      'l.kodeloket,'
      'COALESCE(a.lembar,0) AS lembarair,'
      'COALESCE(a.biayapemakaian,0) AS biayapemakaianair,'
      'COALESCE(a.administrasi,0) AS administrasiair,'
      'COALESCE(a.pemeliharaan,0) AS pemeliharaanair,'
      'COALESCE(a.meterai,0) AS meteraiair,'
      ''
      'COALESCE(a.biayapemakaian,0)+'
      'COALESCE(a.administrasi,0) +'
      'COALESCE(a.pemeliharaan,0) +'
      'COALESCE(a.meterai,0) AS totalair,'
      ''
      ''
      'COALESCE(b.lembar,0) AS lembarna,'
      'COALESCE(b.total,0) AS totalna,'
      ''
      'COALESCE(c.lembar,0) AS lembarangs,'
      'COALESCE(c.total,0) AS totalangs'
      ''
      ''
      ''
      'FROM'
      ''
      '(SELECT kodeloket FROM loket ) l'
      ''
      'LEFT JOIN '
      '('
      'SELECT c.loketbayar AS kodeloket ,'
      'COUNT(c.kode) AS lembar,'
      'SUM(c.biayapemakaian) AS biayapemakaian,'
      'SUM(c.administrasi) AS administrasi,'
      'SUM(c.pemeliharaan) AS pemeliharaan,'
      'SUM(c.meterai) AS meterai '
      
        'FROM bayar:tahun c WHERE flaglunas="1" AND flagangsur="0" GROUP ' +
        'BY c.loketbayar'
      ') a ON l.kodeloket=a.kodeloket'
      ''
      ''
      'LEFT JOIN '
      '('
      'SELECT c.loketbayar AS kodeloket ,'
      'COUNT(c.urutan) AS lembar,'
      'SUM(c.total) AS total '
      
        'FROM nonair c WHERE flaglunas="1" AND flagangsur="0" GROUP BY c.' +
        'loketbayar'
      ') b ON l.kodeloket=b.kodeloket'
      ''
      ''
      'LEFT JOIN '
      '('
      'SELECT c.loketbayar AS kodeloket ,'
      'COUNT(c.urutan) AS lembar,'
      'SUM(c.total) AS total '
      
        'FROM nonair c WHERE flaglunas="1" AND flagangsur="1" GROUP BY c.' +
        'loketbayar'
      ') c ON l.kodeloket=c.kodeloket'
      ''
      ''
      ''
      ''
      'ORDER BY CAST(l.kodeloket AS UNSIGNED) ASC')
    SQLRefresh.Strings = (
      'SELECT '
      'l.kodeloket,'
      'COALESCE(a.lembar,0) AS lembarair,'
      'COALESCE(a.biayapemakaian,0) AS biayapemakaianair,'
      'COALESCE(a.administrasi,0) AS administrasiair,'
      'COALESCE(a.pemeliharaan,0) AS pemeliharaanair,'
      'COALESCE(a.meterai,0) AS meteraiair,'
      ''
      'COALESCE(a.biayapemakaian,0)+'
      'COALESCE(a.administrasi,0) +'
      'COALESCE(a.pemeliharaan,0) +'
      'COALESCE(a.meterai,0) AS totalair,'
      ''
      ''
      'COALESCE(b.lembar,0) AS lembarna,'
      'COALESCE(b.total,0) AS totalna,'
      ''
      'COALESCE(c.lembar,0) AS lembarangs,'
      'COALESCE(c.total,0) AS totalangs'
      ''
      ''
      ''
      'FROM'
      ''
      '(SELECT kodeloket FROM loket ) l')
    Connection = DM.Conn
    Left = 336
    Top = 128
    object Qrekkodeloket: TStringField
      FieldName = 'kodeloket'
      Origin = 'l.kodeloket'
      Size = 50
    end
    object Qreklembarair: TLargeintField
      FieldName = 'lembarair'
      Origin = 'lembarair'
    end
    object Qrekbiayapemakaianair: TFloatField
      FieldName = 'biayapemakaianair'
      Origin = 'biayapemakaianair'
    end
    object Qrekadministrasiair: TFloatField
      FieldName = 'administrasiair'
      Origin = 'administrasiair'
    end
    object Qrekpemeliharaanair: TFloatField
      FieldName = 'pemeliharaanair'
      Origin = 'pemeliharaanair'
    end
    object Qrekmeteraiair: TFloatField
      FieldName = 'meteraiair'
      Origin = 'meteraiair'
    end
    object Qrektotalair: TFloatField
      FieldName = 'totalair'
      Origin = 'totalair'
    end
    object Qreklembarna: TLargeintField
      FieldName = 'lembarna'
      Origin = 'lembarna'
    end
    object Qrektotalna: TFloatField
      FieldName = 'totalna'
      Origin = 'totalna'
    end
    object Qreklembarangs: TLargeintField
      FieldName = 'lembarangs'
      Origin = 'lembarangs'
    end
    object Qrektotalangs: TFloatField
      FieldName = 'totalangs'
      Origin = 'totalangs'
    end
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 392
    Top = 152
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kodeloket=kodeloket'
      'lembarair=lembarair'
      'biayapemakaianair=biayapemakaianair'
      'administrasiair=administrasiair'
      'pemeliharaanair=pemeliharaanair'
      'meteraiair=meteraiair'
      'totalair=totalair'
      'lembarna=lembarna'
      'totalna=totalna'
      'lembarangs=lembarangs'
      'totalangs=totalangs')
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
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42808.991107557900000000
    ReportOptions.LastChange = 42808.991107557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 176
    Datasets = <
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
      PaperWidth = 352.000000000000000000
      PaperHeight = 280.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 687.874460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REKAP PENERIMAAN PENDAPATAN')
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
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING AIR DAN NON AIR')
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
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAN KOTA YOGYAKARTA'
            'PDAM TIRTAMARTA'
            'YOGYAKARTA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 120.944960000000000000
        Width = 1254.803960000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'KODE'
            'TELLER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 120.944960000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'LMBR'
            'REK.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 181.417440000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'LMBR REK.'
            'ANGSURAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 1213.229130000000000000
          Top = 3.779530000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 1213.229130000000000000
          Top = 79.370130000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 257.008040000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'JML RP.'
            'ANGSURAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 332.598640000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'JML RP.'
            'PEMEL. METER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 408.189240000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'JML RP.'
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 483.779840000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'JML RP.'
            'METERAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 559.370440000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'JML RP.'
            'PEMAKAIAN AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL'
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 710.551640000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'LMBR'
            'REK.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 786.142240000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'LMBR REK.'
            'ANGSURAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 861.732840000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH RP.'
            'ANGSURAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 937.323440000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH RP.'
            'REK.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL'
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 1092.284170000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL RP.'
            'AIR DAN NONAIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 589.606680000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 710.551640000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING NON AIR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 264.567100000000000000
        Top = 347.716760000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Top = 4.000000000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 1213.229130000000000000
          Top = 30.236240000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object jab1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 102.047310000000000000
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
          Left = 60.472480000000000000
          Top = 181.417440000000000000
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
          Left = 60.472480000000000000
          Top = 196.535560000000000000
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
          Left = 778.583180000000000000
          Top = 68.031540000000000000
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
        object Memo40: TfrxMemoView
          Left = 60.472480000000000000
          Top = 86.929190000000000000
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
        object Memo41: TfrxMemoView
          Left = 415.748300000000000000
          Top = 102.047310000000000000
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
          Left = 415.748300000000000000
          Top = 181.417440000000000000
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
          Left = 415.748300000000000000
          Top = 196.535560000000000000
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
          Left = 415.748300000000000000
          Top = 86.929190000000000000
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
          Left = 778.583180000000000000
          Top = 102.047310000000000000
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
          Left = 778.583180000000000000
          Top = 181.417440000000000000
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
          Left = 778.583180000000000000
          Top = 196.535560000000000000
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
          Left = 778.583180000000000000
          Top = 86.929190000000000000
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
        object Memo32: TfrxMemoView
          Left = 120.944960000000000000
          Top = 4.000000000000000000
          Width = 60.472480000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembarair">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 332.598640000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaanair">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 408.189240000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasiair">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 483.779840000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."meteraiair">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 559.370440000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaianair">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 634.961040000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalair">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 710.551640000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembarna">,MasterData1)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 786.142240000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembarangs">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 861.732840000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalangs">,MasterData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 937.323440000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalna">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."totalna">+<rek."totalangs">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 1088.504640000000000000
          Top = 4.000000000000000000
          Width = 120.944960000000000000
          Height = 28.346475000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<rek."totalair">+<rek."totalna">+<rek."totalangs">,MasterDa' +
              'ta1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 1213.229130000000000000
          Width = -1209.449600000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 264.567100000000000000
        Width = 1254.803960000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object rekkodeloket: TfrxMemoView
          Left = 64.252010000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'kodeloket'
          DataSet = rek
          DataSetName = 'rek'
          Memo.UTF8 = (
            '[rek."kodeloket"]')
        end
        object reklembarair: TfrxMemoView
          Left = 120.944960000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'lembarair'
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
            '[rek."lembarair"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 332.598640000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'pemeliharaanair'
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
            '[rek."pemeliharaanair"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'administrasiair'
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
            '[rek."administrasiair"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 483.779840000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'meteraiair'
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
            '[rek."meteraiair"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 559.370440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'biayapemakaianair'
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
            '[rek."biayapemakaianair"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 634.961040000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'totalair'
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
            '[rek."totalair"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 710.551640000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'lembarna'
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
            '[rek."lembarna"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 786.142240000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'lembarangs'
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
            '[rek."lembarangs"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 861.732840000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'totalangs'
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
            '[rek."totalangs"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 937.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'totalna'
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
            '[rek."totalna"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1012.914040000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[<rek."totalna">+<rek."totalangs">]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 1088.504640000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            '[<rek."totalair">+<rek."totalna">+<rek."totalangs">]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 41.574830000000000000
        Top = 634.961040000000000000
        Width = 1254.803960000000000000
        object Memo51: TfrxMemoView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 170.078850000000000000
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
        object Page: TfrxMemoView
          Left = 1077.166050000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
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
        object Memo58: TfrxMemoView
          Left = 1077.166050000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Laporan BSBS')
          ParentFont = False
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
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
end
