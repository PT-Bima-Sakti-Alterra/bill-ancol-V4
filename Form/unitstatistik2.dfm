object ustatistik2: Tustatistik2
  Left = 294
  Top = 199
  BorderStyle = bsNone
  Caption = 'ustatistik2'
  ClientHeight = 379
  ClientWidth = 731
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
  object sumberair: TcxComboBox
    Left = 712
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
    TabOrder = 3
    Width = 60
  end
  object cekcabang: TcxCheckBox
    Left = 584
    Top = 285
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
    Left = 712
    Top = 285
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 5
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 733
    Top = 261
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 6
    Width = 100
  end
  object cabang: TcxComboBox
    Left = 733
    Top = 285
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 7
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
    Left = 704
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
    TabOrder = 9
    Width = 129
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 379
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 10
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
      Top = 128
      Width = 177
      Height = 35
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
      Left = 232
      Top = 128
      Width = 169
      Height = 35
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
      Left = 154
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
    object cekrayon: TcxCheckBox
      Left = 48
      Top = 91
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      OnClick = cekrayonClick
      Width = 97
    end
    object koderayon: TcxComboBox
      Left = 152
      Top = 91
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
      TabOrder = 5
      Width = 65
    end
    object cekwil: TcxCheckBox
      Left = 552
      Top = 86
      Caption = 'Wilayah'
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
      Width = 97
    end
    object kodewil: TcxComboBox
      Left = 696
      Top = 86
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 65
    end
    object namarayon: TcxComboBox
      Left = 216
      Top = 91
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
      TabOrder = 8
      Width = 185
    end
    object wilayah: TcxComboBox
      Left = 760
      Top = 86
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 209
    end
    object cekloket: TcxCheckBox
      Left = 552
      Top = 113
      Caption = 'Loket Penagihan'
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
      Width = 137
    end
    object kodeloket: TcxComboBox
      Left = 696
      Top = 113
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 65
    end
    object loket: TcxComboBox
      Left = 760
      Top = 113
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
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
      TabOrder = 13
      Transparent = True
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
      TabOrder = 14
      Text = 'Hanya yang belum dibayar'
      Width = 217
    end
    object RzPanel8: TRzPanel
      Left = 5
      Top = 5
      Width = 721
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'STATISTIK REKENING AIR'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.kodegol,'
      '  COUNT(c.nosamb) AS lembar,'
      '  SUM(c.pakai) AS pakai,'
      '  SUM(c.blok1) AS blok1,'
      '  SUM(c.blok2) AS blok2,'
      '  SUM(c.blok3) AS blok3,'
      '  SUM(c.blok4) AS blok4,'
      '  SUM(c.prog1) AS p1,'
      '    SUM(c.prog2) AS p2,'
      '      SUM(c.prog3) AS p3,'
      '        SUM(c.prog4) AS p4,'
      '       SUM(c.pemeliharaan) AS pemeliharaan,'
      '       SUM(c.administrasi) AS administrasi,'
      '       SUM(c.rekair) AS rekair'
      '       '
      '  FROM drdposting:periode c WHERE c.flagpublish="1"')
    Connection = DM.Conn
    Left = 592
    Top = 139
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
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
    Left = 576
    Top = 360
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
  object frxReport1: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42877.761074247700000000
    ReportOptions.LastChange = 42883.057403726900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 71
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 356.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1269.922080000000000000
        object Memo43: TfrxMemoView
          Left = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PERUSAHAAN DAERAH AIR MINUM ')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'YOGYAKARTA')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'STATISTIK REKENING AIR UNTUK SELURUH GOLONGAN TARIF')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 574.488560000000000000
          Top = 31.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 650.079160000000000000
          Top = 30.236240000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Diperiksa oleh ')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 3.779530000000000000
          Top = 106.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 102.047310000000000000
          Top = 79.606370000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 102.047310000000000000
          Top = 106.063080000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 124.724490000000000000
          Top = 96.724490000000000000
          Width = 188.976500000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 124.724490000000000000
          Top = 123.181200000000000000
          Width = 188.976500000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object bulan: TfrxMemoView
          Left = 676.535870000000000000
          Top = 30.236240000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 574.488560000000000000
          Top = 56.692950000000000000
          Width = 419.527830000000000000
          Height = 49.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'T I R T A M A R T A')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 42.574830000000000000
        Top = 302.362400000000000000
        Width = 1269.922080000000000000
        AllowSplit = True
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 18.460370370000000000
          Top = 11.338590000000000000
          Width = 54.701314990000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[frxDBDataset3."kodegol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 84.180850960000000000
          Top = 11.338590000000000000
          Width = 79.948075760000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."lembar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 172.544513640000000000
          Top = 11.338590000000000000
          Width = 92.571456140000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."pakai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 277.739350160000000000
          Top = 11.338590000000000000
          Width = 63.116901910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."blok1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 348.403979440000000000
          Top = 11.338590000000000000
          Width = 58.909108450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."blok2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 416.596534370000000000
          Top = 11.338590000000000000
          Width = 58.909108450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."blok3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 483.921229740000000000
          Top = 11.338590000000000000
          Width = 58.909108450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."blok4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 551.245925110000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."p1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 648.025174710000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."p2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 744.804424310000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."p4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 841.583673910000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."p4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 938.362923510000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."pemeliharaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 1035.142173110000000000
          Top = 11.338590000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."administrasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 1131.921422710000000000
          Top = 11.338590000000000000
          Width = 122.026010360000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."rekair"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 64.252010000000000000
        Top = 177.637910000000000000
        Width = 1269.922080000000000000
        object Line73: TfrxLineView
          Left = 0.024981742495876400
          Top = 0.873840000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line74: TfrxLineView
          Left = 0.647389558342679000
          Top = 0.881880000000000000
          Width = 1258.130244796650000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = -0.220470000000000000
          Top = 7.559060000000000000
          Width = 1258.130244800000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo72: TfrxMemoView
          Left = 938.362923513907000000
          Top = 11.338590000000000000
          Width = 86.379677156346400000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SEWA WM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line84: TfrxLineView
          Left = 1030.294414920000000000
          Top = 7.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 1134.148045315070000000
          Top = 11.338590000000000000
          Width = 115.834231382355000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH'
            'TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 1035.142173113650000000
          Top = 11.338590000000000000
          Width = 90.587470617204700000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIAYA'
            'ADMIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 8.440568664212570000
          Top = 15.118120000000000000
          Width = 63.116901912875200000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'GOL.'
            'TARIF')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 84.180850959662800000
          Top = 15.118120000000000000
          Width = 79.948075756308600000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH'
            'KWITANSI')
          ParentFont = False
        end
        object Line75: TfrxLineView
          Left = 78.859746200000000000
          Top = 9.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line77: TfrxLineView
          Left = 168.336720180000000000
          Top = 10.559060000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 172.544513637688000000
          Top = 15.118120000000000000
          Width = 96.779249599742000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMAKAIAN'
            'AIR')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 273.531556700000000000
          Top = 7.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 281.947143620005000000
          Top = 11.338590000000000000
          Width = 256.675401112359000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RINCIAN PEMAKAIAN AIR')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 281.947143620005000000
          Top = 37.795300000000000000
          Width = 54.701314991158500000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'M31')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 273.531556700000000000
          Top = 34.015770000000000000
          Width = 660.623573350000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 345.064045532880000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 349.271838993739000000
          Top = 37.795300000000000000
          Width = 54.701314991158500000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'M32')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 412.388740906614000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 416.596534367472000000
          Top = 37.795300000000000000
          Width = 54.701314991158500000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'M33')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 479.713436280347000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 483.921229741206000000
          Top = 37.795300000000000000
          Width = 54.701314991158500000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'M34')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 547.038131654081000000
          Top = 11.338590000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 551.245925110000000000
          Top = 11.338590000000000000
          Width = 378.701411480000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RINCIAN PEMBAYARAN')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 551.245925114939000000
          Top = 37.795300000000000000
          Width = 88.363662678025300000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RP1')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 643.817381250000000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          Left = 648.025174714681000000
          Top = 37.795300000000000000
          Width = 88.363662678025300000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RP2')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 740.596630850000000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 744.804424314423000000
          Top = 37.795300000000000000
          Width = 88.363662678025300000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RP3')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 837.375880450000000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 841.583673914165000000
          Top = 37.795300000000000000
          Width = 88.363662678025300000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RP4')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 934.155130050000000000
          Top = 11.338590000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 1.779530000000000000
          Top = 55.472480000000000000
          Width = 1258.130244800000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 1130.079470000000000000
          Top = 7.559060000000000000
          Height = 45.354360000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 1258.583490000000000000
          Top = 1.000000000000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 2.779530000000000000
          Top = 61.472480000000000000
          Width = 1254.350714800000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 297.244280000000000000
        Top = 404.409710000000000000
        Width = 1269.922080000000000000
        Stretched = True
        object Line92: TfrxLineView
          Left = 4.232775203354220000
          Width = 1253.922451335790000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line99: TfrxLineView
          Left = 4.232775203354220000
          Top = 32.456710000000000000
          Width = 1253.922451335790000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line100: TfrxLineView
          Left = 0.024981740000000000
          Top = 3.779530000000000000
          Height = 34.181203970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 4.232775203354220000
          Top = 10.559060000000000000
          Width = 67.324695373733600000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 84.180850960000000000
          Top = 9.779530000000000000
          Width = 79.948075760000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."lembar">,MasterData2)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 172.544513640000000000
          Top = 9.779530000000000000
          Width = 92.571456140000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pakai">,MasterData2)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 277.739350160000000000
          Top = 9.779530000000000000
          Width = 63.116901910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."blok1">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 345.064045530000000000
          Top = 9.779530000000000000
          Width = 63.116901910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."blok2">,MasterData2)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 412.388740910000000000
          Top = 9.779530000000000000
          Width = 63.116901910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."blok3">,MasterData2)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 479.713436280000000000
          Top = 9.779530000000000000
          Width = 63.116901910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."blok4">,MasterData2)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 551.245925110000000000
          Top = 10.559060000000000000
          Width = 88.363662680000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."p1">,MasterData2)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 648.025174714681000000
          Top = 9.779530000000000000
          Width = 88.363662678025300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."p2">,MasterData2)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 744.804424314423000000
          Top = 9.779530000000000000
          Width = 88.363662678025300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."p3">,MasterData2)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 841.583673914165000000
          Top = 9.779530000000000000
          Width = 88.363662678025300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."p4">,MasterData2)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 938.362923513907000000
          Top = 9.779530000000000000
          Width = 88.363662678025300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pemeliharaan">,MasterData2)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 1035.142173113650000000
          Top = 9.779530000000000000
          Width = 88.363662678025300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."administrasi">,MasterData2)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 1131.921422713390000000
          Top = 9.779530000000000000
          Width = 122.026010364892000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."rekair">,MasterData2)]')
          ParentFont = False
        end
        object Line39: TfrxLineView
          Left = 3.119463900000000000
          Top = 40.236240000000000000
          Width = 1257.701981340000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 3.119463902515670000
          Top = 6.220470000000000000
          Width = 1253.922451335790000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 1258.583490000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'POSTING')
          ParentFont = False
        end
        object jab1: TfrxMemoView
          Left = 170.078850000000000000
          Top = 90.708720000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 170.078850000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 170.078850000000000000
          Top = 185.196970000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 914.646260000000000000
          Top = 56.692950000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 170.078850000000000000
          Top = 75.590600000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_real_karyawan.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 563.149970000000000000
          Top = 90.708720000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 563.149970000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo78: TfrxMemoView
          Left = 563.149970000000000000
          Top = 185.196970000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 563.149970000000000000
          Top = 75.590600000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_real_karyawan.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 914.646260000000000000
          Top = 90.708720000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 914.646260000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          Left = 914.646260000000000000
          Top = 185.196970000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 914.646260000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_real_karyawan.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
    end
  end
end
