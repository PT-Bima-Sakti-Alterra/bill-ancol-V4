object urekapgolongan: Turekapgolongan
  Left = 448
  Top = 132
  BorderStyle = bsNone
  Caption = 'Rekapitulasi'
  ClientHeight = 304
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object sumberair: TcxComboBox
    Left = 600
    Top = 192
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 0
    Width = 121
  end
  object ceksumberair: TcxCheckBox
    Left = 496
    Top = 192
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
    Left = 512
    Top = 120
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
    Left = 648
    Top = 120
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodekelurahanPropertiesChange
    TabOrder = 3
    Width = 60
  end
  object cekcabang: TcxCheckBox
    Left = 512
    Top = 144
    Caption = 'Cabang'
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
    Width = 97
  end
  object kodecabang: TcxComboBox
    Left = 648
    Top = 144
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodecabangPropertiesChange
    TabOrder = 5
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 712
    Top = 120
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kelurahanPropertiesChange
    TabOrder = 6
    Width = 100
  end
  object cabang: TcxComboBox
    Left = 712
    Top = 144
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cabangPropertiesChange
    TabOrder = 7
    Width = 100
  end
  object cxLabel3: TcxLabel
    Left = 458
    Top = 80
    Caption = 'Kode Paraf'
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
    Left = 576
    Top = 77
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
    TabOrder = 9
    Visible = False
    Width = 137
  end
  object cekbayar: TcxCheckBox
    Left = 472
    Top = 234
    Caption = 'Keterangan'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 10
    Transparent = True
    OnClick = cekbayarClick
    Width = 129
  end
  object bayar: TcxComboBox
    Left = 600
    Top = 234
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
    TabOrder = 11
    Text = 'Hanya yang belum dibayar'
    Width = 217
  end
  object RzPanel8: TRzPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'REKAP DRD UNTUK UNIT'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 33
    Width = 450
    Height = 271
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 20966
    BorderWidth = 3
    Color = 14676991
    TabOrder = 13
    object cxLabel1: TcxLabel
      Left = 32
      Top = 10
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
    object cekpemakaian: TcxCheckBox
      Left = 16
      Top = 38
      Caption = 'M3'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      OnClick = cekpemakaianClick
      Width = 97
    end
    object cekkodegol: TcxCheckBox
      Left = 16
      Top = 65
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Transparent = True
      OnClick = cekkodegolClick
      Width = 97
    end
    object cekrayon: TcxCheckBox
      Left = 16
      Top = 91
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      OnClick = cekrayonClick
      Width = 97
    end
    object cekwil: TcxCheckBox
      Left = 16
      Top = 118
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      OnClick = cekwilClick
      Width = 97
    end
    object cekloket: TcxCheckBox
      Left = 16
      Top = 145
      Caption = 'Loket Penagihan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      OnClick = cekloketClick
      Width = 137
    end
    object kodeloket: TcxComboBox
      Left = 160
      Top = 145
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 65
    end
    object kodewil: TcxComboBox
      Left = 160
      Top = 118
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodewilPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 65
    end
    object koderayon: TcxComboBox
      Left = 160
      Top = 91
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = koderayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 65
    end
    object kodegol: TcxComboBox
      Left = 160
      Top = 64
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 65
    end
    object pemakaian1: TcxComboBox
      Left = 160
      Top = 37
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
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
      TabOrder = 10
      Width = 65
    end
    object pemakaian2: TcxTextEdit
      Left = 224
      Top = 37
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 73
    end
    object golongan: TcxComboBox
      Left = 224
      Top = 64
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 209
    end
    object namarayon: TcxComboBox
      Left = 224
      Top = 91
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = namarayonPropertiesChange
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
      Left = 224
      Top = 118
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
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
    object loket: TcxComboBox
      Left = 224
      Top = 145
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 209
    end
    object periode: TRzDateTimePicker
      Left = 162
      Top = 9
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
      TabOrder = 16
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 181
      Width = 417
      Height = 36
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 221
      Width = 417
      Height = 36
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'r.kodewil,'
      'r.wilayah,'
      'c.koderayon,'
      'r.namarayon,'
      'COUNT(c.nosamb) AS lembar,'
      'SUM(c.pakai) AS pakai,'
      'SUM(c.biayapemakaian) AS biayapemakaian,'
      'SUM(c.administrasi)+SUm(c.administrasilain) AS administrasi,'
      'SUM(c.pemeliharaan)+SUm(c.pemeliharaanlain) AS pemeliharaan,'
      'SUM(c.retribusi)+SUm(c.retribusilain) AS retribusi,'
      'SUM(c.meterai) AS meterai,'
      'SUM(C.rekair) AS rekair,'
      'SUM(c.biayapemakaian)/SUM(c.pakai) AS rata2hargaair,'
      'SUM(c.pakai)/COUNT(c.nosamb) AS rata2pakaiair,'
      
        'SUM(c.pemeliharaan)+SUm(c.pemeliharaanlain)+ SUM(c.retribusi)+SU' +
        'm(c.retribusilain) AS beban,'
      'g.golongan,'
      'c.kodegol,'
      'f.ket1,'
      'f.jab1,'
      'f.nama1,'
      'f.nik1,'
      ''
      'f.ket2,'
      'f.jab2,'
      'f.nama2,'
      'f.nik2,'
      ''
      'f.ket3,'
      'f.jab3,'
      'f.nama3,'
      'f.nik3,'
      ':footer as footer')
    Connection = DM.Conn
    Left = 536
    Top = 56
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 488
    Top = 56
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 528
    Top = 136
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
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 42161.680762581000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 120
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 3.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 446.419428220000000000
          Top = 49.133890000000000000
          Width = 117.007010740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Rekening Bulan : ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 446.419428220000000000
          Top = 11.338590000000000000
          Width = 422.275195860000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKAPITULASI DAFTAR REKENING YANG DITAGIH'
            'KLASIFIKASI GOLONGAN PER WILAYAH')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 972.850745030000000000
          Top = 15.118120000000000000
          Width = 106.782233430000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 563.426438960000000000
          Top = 49.133890000000000000
          Width = 305.785486650000000000
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
        object Memo13: TfrxMemoView
          Left = 972.850745030000000000
          Top = 34.015770000000000000
          Width = 106.782233430000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 48.412921780000000000
          Top = 68.031540000000000000
          Width = 900.565181990000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 48.412921780000000000
          Top = 11.338590000000000000
          Width = 378.591554910000000000
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
          Left = 48.412921780000000000
          Top = 34.015770000000000000
          Width = 378.591554910000000000
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
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 291.023810000000000000
        Width = 1092.284170000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 96.950300620000000000
          Width = 165.027088040000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."golongan"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 334.783456910000000000
          Width = 72.806068250000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 412.443263040000000000
          Width = 126.197184970000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 635.715205680000000000
          Width = 92.221019780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 920.554912190000000000
          Width = 158.338599850000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 48.412921780000000000
          Width = 38.829903070000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 261.977388650000000000
          Width = 67.952330370000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."lembar"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 334.783456910000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 412.443263040000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 543.494185890000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 635.715205680000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line55: TfrxLineView
          Left = 732.789963350000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 47.412921780000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 266.831126540000000000
          Top = 0.312384070000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 92.096562740000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Left = 543.494185890000000000
          Width = 87.367281900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 48.412921780000000000
          Width = 1036.178166350000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Left = 733.177981560000000000
          Width = 92.221019780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."retribusi"]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 830.512370000000000000
          Top = 0.118120000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 1084.725110000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 922.205320000000000000
          Top = 0.118120000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          Left = 831.884618210000000000
          Top = 0.035099109999999990
          Width = 84.661959780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."meterai"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 98.267780000000000000
        Top = 170.078850000000000000
        Width = 1092.284170000000000000
        Condition = 'rek."kodewil"'
        KeepTogether = True
        StartNewPage = True
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 51.223983600000000000
          Top = 47.319260890000000000
          Width = 40.039469630000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 94.762107630000000000
          Top = 47.319260890000000000
          Width = 167.210285770000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Klasifikasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 270.090252950000000000
          Top = 47.319260890000000000
          Width = 62.563690440000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lembar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 332.653943370000000000
          Top = 47.319260890000000000
          Width = 75.624855910000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Memo6: TfrxMemoView
          Left = 413.441721890000000000
          Top = 47.319260890000000000
          Width = 129.147860390000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Memo7: TfrxMemoView
          Left = 635.327187470000000000
          Top = 47.319260890000000000
          Width = 93.515579970000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Dana'
            'Meter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 923.660628050000000000
          Top = 47.319260890000000000
          Width = 153.693918780000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 540.579744650000000000
          Top = 47.319260890000000000
          Width = 91.493908420000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Line1: TfrxLineView
          Left = 48.077058490000000000
          Top = 46.967587950000000000
          Width = 1036.409657860000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 48.077058490000000000
          Top = 85.015917250000000000
          Width = 1036.409657860000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 334.783456910000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 266.831126540000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 412.443263040000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 543.494185890000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line59: TfrxLineView
          Left = 635.715205680000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 732.789963350000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 47.412921780000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 92.096562740000000000
          Top = 47.236240000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 732.789963350000000000
          Top = 47.319260890000000000
          Width = 93.515579970000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ret')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 48.412921780000000000
          Top = 20.779530000000000000
          Width = 970.747576680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'WILAYAH : [rek."wilayah"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 830.512370000000000000
          Top = 47.354360000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 1084.725110000000000000
          Top = 47.133890000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 922.205320000000000000
          Top = 47.354360000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Left = 831.496600000000000000
          Top = 47.354360000000000000
          Width = 93.515579970000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Materai')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 234.330860000000000000
        Top = 393.071120000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 920.659283980000000000
          Top = 3.779530000000000000
          Width = 158.338599850000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 635.819577460000000000
          Top = 3.779530000000000000
          Width = 92.221019780000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 543.598557680000000000
          Top = 3.779530000000000000
          Width = 87.367281900000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 412.547634820000000000
          Top = 3.779530000000000000
          Width = 126.197184970000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 330.034090810000000000
          Top = 3.779530000000000000
          Width = 77.659806130000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 262.081760440000000000
          Top = 3.779530000000000000
          Width = 67.952330370000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembar">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 72.785982980000000000
          Top = 3.779530000000000000
          Width = 82.513544020000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Sub Total : ')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 48.412921780000000000
          Top = 46.354360000000000000
          Width = 1036.178166350000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 266.935498320000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 334.887828690000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 412.547634820000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 543.598557680000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 635.819577460000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 732.894335130000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 47.517293570000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          Left = 174.714478540000000000
          Top = 3.779530000000000000
          Width = 67.952330370000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 733.282353340000000000
          Top = 3.779530000000000000
          Width = 92.221019780000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."retribusi">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 720.973676630000000000
          Top = 68.031540000000000000
          Width = 268.467883370000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."footer"] , [Date]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 420.041927860000000000
          Top = 102.047310000000000000
          Width = 253.607804410000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab2"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 420.041927860000000000
          Top = 177.637910000000000000
          Width = 266.955583590000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          Left = 420.041927860000000000
          Top = 196.535560000000000000
          Width = 266.955583590000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nik2"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 420.041927860000000000
          Top = 86.929190000000000000
          Width = 252.394369940000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."ket2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 720.973676630000000000
          Top = 102.047310000000000000
          Width = 273.022755940000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab3"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 720.973676630000000000
          Top = 177.637910000000000000
          Width = 266.955583590000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Left = 720.973676630000000000
          Top = 196.535560000000000000
          Width = 266.955583590000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nik3"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 720.973676630000000000
          Top = 86.929190000000000000
          Width = 271.809321470000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."ket3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          Left = 119.110179090000000000
          Top = 102.047310000000000000
          Width = 253.607804410000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          Left = 119.110179090000000000
          Top = 177.637910000000000000
          Width = 266.955583590000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          Left = 119.110179090000000000
          Top = 196.535560000000000000
          Width = 266.955583590000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nik1"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 119.110179090000000000
          Top = 86.929190000000000000
          Width = 252.394369940000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."ket1"]')
          ParentFont = False
          WordWrap = False
        end
        object Line36: TfrxLineView
          Left = 830.512370000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 1084.725110000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 922.205320000000000000
          Height = 46.607389300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo24: TfrxMemoView
          Left = 831.988989990000000000
          Top = 3.814629110000000000
          Width = 84.661959780000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."meterai">,MasterData1)]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Line8: TfrxLineView
          Left = 48.412921780000000000
          Width = 1036.178166350000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 552
    Top = 336
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
end
