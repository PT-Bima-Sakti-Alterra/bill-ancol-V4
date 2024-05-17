object uikthisar: Tuikthisar
  Left = 190
  Top = 64
  BorderStyle = bsNone
  Caption = 'uikthisar'
  ClientHeight = 175
  ClientWidth = 397
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
  PixelsPerInch = 96
  TextHeight = 15
  object sumberair: TcxComboBox
    Left = 382
    Top = 302
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 0
    Width = 121
  end
  object ceksumberair: TcxCheckBox
    Left = 406
    Top = 306
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
    Left = 398
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
    Left = 443
    Top = 261
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 3
    Width = 60
  end
  object cekcabang: TcxCheckBox
    Left = 406
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
    Left = 443
    Top = 285
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 5
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 403
    Top = 261
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 6
    Width = 100
  end
  object cabang: TcxComboBox
    Left = 403
    Top = 285
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 7
    Width = 100
  end
  object cxLabel3: TcxLabel
    Left = 437
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
    Left = 374
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
    Width = 397
    Height = 175
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 10
    object cxLabel1: TcxLabel
      Left = 48
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
      Top = 104
      Width = 153
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
      Left = 208
      Top = 104
      Width = 145
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
      Left = 138
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
      TabOrder = 4
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
      TabOrder = 5
      Width = 65
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
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
      TabOrder = 11
      Text = 'Hanya yang belum dibayar'
      Width = 217
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 385
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'IKTHISAR REKENING AIR'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      ''
      'g.kodegol,'
      'g.golongan,'
      'COALESCE(h3.lembar,0) AS pelanggandrd,'
      'COALESCE(h1.lembar,0) AS lembar,'
      'COALESCE(h1.pakai,0) AS pakai,'
      'COALESCE(h1.biayapemakaian,0) AS biayapemakaian,'
      'COALESCE(h1.administrasi,0) AS administrasi,'
      'COALESCE(h1.pemeliharaan,0) AS pemeliharaan,'
      'COALESCE(h1.rekair,0) AS rekair,'
      'COALESCE(h1.rata2hargaair,0) AS rata2hargaair,'
      'COALESCE(h2.rekair,0) AS rekairlalu'
      ''
      'FROM golongan g '
      'LEFT JOIN '
      '('
      ''
      'SELECT '
      '  kodegol AS kode,'
      '  COUNT(nosamb) AS lembar,'
      '  SUM(pakai) AS pakai,'
      '  SUM(biayapemakaian) AS biayapemakaian,'
      '  SUM(administrasi) AS administrasi,'
      '  SUM(pemeliharaan) AS pemeliharaan,'#9
      '  SUM(rekair) AS rekair,'
      '  SUM(biayapemakaian) /  SUM(pakai) AS rata2hargaair'
      '  '
      'FROM'
      '  drdposting:periode  WHERE flagpublish="1"'
      'GROUP BY kodegol '
      ') h1 ON g.`kodegol`=h1.kode'
      ''
      'LEFT JOIN'
      ''
      '('
      
        'SELECT kodegol AS kode, SUM(rekair) AS rekair FROM drdposting:pe' +
        'riodelalu WHERE flagpublish="1" GROUP BY kodegol'
      ') h2 ON g.kodegol=h2.kode'
      ''
      'LEFT JOIN'
      '('
      
        'SELECT kodegol AS kode, COUNT(nosamb) AS lembar FROM drdposting:' +
        'periode GROUP BY kodegol'
      ') h3 ON g.kodegol=h3.kode'
      ''
      'ORDER BY g.kodegol ASC')
    Connection = DM.Conn
    Left = 568
    Top = 227
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
    Left = 464
    Top = 280
  end
  object ActionList1: TActionList
    Left = 232
    Top = 264
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
    ReportOptions.CreateDate = 42860.899298518500000000
    ReportOptions.LastChange = 42862.695033298600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Draft 20cpi'
      Font.Style = []
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 211.653680000000000000
        Width = 1254.803960000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 64.043689450000000000
          Top = 11.338590000000000000
          Width = 155.347611020000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tarif          [frxDBDataset3."kodegol"]')
          ParentFont = False
        end
        object frxDBDataset3pelanggandrd: TfrxMemoView
          Left = 222.992270000000000000
          Top = 11.338590000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pelanggandrd'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."pelanggandrd"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 33.539608740000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'lembar'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."lembar"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 506.457020000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."rekair"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 612.224339840000000000
          Top = 11.338590000000000000
          Width = 100.618826220000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekairlalu'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."rekairlalu"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 823.937540000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."administrasi"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 929.764380000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."pemeliharaan"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 718.110700000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."biayapemakaian"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."rekair"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 1158.232504490000000000
          Top = 11.338590000000000000
          Width = 76.661962830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'rata2hargaair'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."rata2hargaair"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 222.992270000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line1: TfrxLineView
          Left = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 415.748300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 612.283860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 823.937540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 929.764380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 1035.591220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 1156.536180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 1239.685840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset3."pakai"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 502.677490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 45.354360000000000000
          Top = 60.472480000000000000
          Width = 177.637910000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uraian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 41.574830000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 222.992270000000000000
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jum.'
            'Pelanggan'
            'DRD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 328.819110000000000000
          Top = 60.472480000000000000
          Width = 86.929190000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jum.'
            'Lembar'
            '( Publish )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 502.677490000000000000
          Top = 83.149660000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tagihan'
            'Bln. Ini')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Top = 83.149660000000000000
          Width = 105.826840000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tagihan'
            'Bln. Lalu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 823.937540000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By. Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 929.764380000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sewa Meter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 718.110700000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uang Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 105.826840000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 718.110700000000000000
          Top = 83.149660000000000000
          Width = 438.425480000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Unsur Lainnya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Pembebanan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 1156.536180000000000000
          Top = 60.472480000000000000
          Width = 83.149660000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Air'
            'Rata-Rata'
            'Setiap M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 461.102660000000000000
          Top = 15.118120000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'IKTHISAR REKENING AIR BULAN : ')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'IKTHISAR REKENING AIR BULAN : ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 415.748300000000000000
          Top = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 64.252010000000000000
          ShowHint = False
          DataSet = udrd_posting.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 362.834880000000000000
        Top = 313.700990000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo26: TfrxMemoView
          Left = 222.992270000000000000
          Top = 31.768195350000000000
          Width = 90.708720000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pelanggandrd">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 328.819110000000000000
          Top = 31.768195350000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."lembar">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 506.457020000000000000
          Top = 31.768195350000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 612.224339840000000000
          Top = 31.768195350000000000
          Width = 100.618826220000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."rekairlalu">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 823.937540000000000000
          Top = 31.768195350000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 929.764380000000000000
          Top = 31.768195350000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 718.110700000000000000
          Top = 31.768195350000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 31.768195350000000000
          Width = 113.385900000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 3.779530000000000000
          Top = 19.719286960000000000
          Width = 1235.906310000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo25: TfrxMemoView
          Left = 56.692950000000000000
          Top = 31.768195350000000000
          Width = 158.740260000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Bulan Ini')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 56.692950000000000000
          Top = 72.304052170000000000
          Width = 158.740260000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah S/D Bulan Lalu')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 1235.906310000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 3.779530000000000000
          Top = 107.742626090000000000
          Width = 1235.906310000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 222.992270000000000000
          Height = 151.091972450000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 328.819110000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 45.354360000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 3.779530000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 415.748300000000000000
          Height = 151.091972450000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 612.283860000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 718.110700000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 823.937540000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 929.764380000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 1035.591220000000000000
          Height = 151.091972452174000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 1156.536180000000000000
          Height = 151.091972450000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 1239.685840000000000000
          Height = 151.091972450000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 419.527830000000000000
          Top = 31.768195350000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Height = 151.091972450000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object lembar: TfrxMemoView
          Left = 328.819110000000000000
          Top = 72.304052170000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object pakai: TfrxMemoView
          Left = 419.527830000000000000
          Top = 72.304052170000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object rekair: TfrxMemoView
          Left = 510.236550000000000000
          Top = 72.304052170000000000
          Width = 94.488250000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object biayapemakaian: TfrxMemoView
          Left = 718.110700000000000000
          Top = 72.304052170000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object administrasi: TfrxMemoView
          Left = 823.937540000000000000
          Top = 72.304052170000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object pemeliharaan: TfrxMemoView
          Left = 929.764380000000000000
          Top = 72.304052170000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object rekair2: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 72.304052170000000000
          Width = 113.385900000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object lembar2: TfrxMemoView
          Left = 328.819110000000000000
          Top = 111.742626090000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object pakai2: TfrxMemoView
          Left = 419.527830000000000000
          Top = 111.742626090000000000
          Width = 79.370130000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object rekair3: TfrxMemoView
          Left = 510.236550000000000000
          Top = 111.742626090000000000
          Width = 94.488250000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object biayapemakaian2: TfrxMemoView
          Left = 718.110700000000000000
          Top = 111.742626090000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object administrasi2: TfrxMemoView
          Left = 823.937540000000000000
          Top = 111.742626090000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object pemeliharaan2: TfrxMemoView
          Left = 929.764380000000000000
          Top = 111.742626090000000000
          Width = 98.267780000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object rekair4: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 111.742626090000000000
          Width = 113.385900000000000000
          Height = 32.865478260000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 56.692950000000000000
          Top = 111.742626086957000000
          Width = 158.740260000000000000
          Height = 32.865478260869600000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah S/D Bulan Ini')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 222.992270000000000000
          Top = 111.742626090000000000
          Width = 90.708720000000000000
          Height = 32.865478260000000000
          ShowHint = False
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset3."pelanggandrd">,MasterData1)]')
          ParentFont = False
        end
        object jab1: TfrxMemoView
          Left = 117.165430000000000000
          Top = 204.958512571428600000
          Width = 208.819032500000000000
          Height = 43.950534571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 117.165430000000000000
          Top = 288.864078571428600000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 117.165430000000000000
          Top = 312.837097428571400000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 922.205320000000000000
          Top = 170.078850000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 117.165430000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_posting.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 510.236550000000000000
          Top = 204.958512571428600000
          Width = 197.480442500000000000
          Height = 43.950534571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 510.236550000000000000
          Top = 288.864078571428600000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo78: TfrxMemoView
          Left = 510.236550000000000000
          Top = 312.837097428571400000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 510.236550000000000000
          Top = 188.976500000000000000
          Width = 196.535560000000000000
          Height = 15.982012571428570000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_posting.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 922.205320000000000000
          Top = 204.958512571428600000
          Width = 197.480442500000000000
          Height = 43.950534571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 922.205320000000000000
          Top = 288.864078571428600000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          Left = 922.205320000000000000
          Top = 312.837097428571400000
          Width = 207.874150000000000000
          Height = 15.982012571428570000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 922.205320000000000000
          Top = 188.976500000000000000
          Width = 200.315090000000000000
          Height = 15.982012571428570000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = udrd_posting.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'POSTING')
          ParentFont = False
        end
      end
    end
  end
  object Qcek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      ''
      'g.kodegol,'
      'g.golongan,'
      'COALESCE(h3.lembar,0) AS pelanggandrd,'
      'COALESCE(h1.lembar,0) AS lembar,'
      'COALESCE(h1.pakai,0) AS pakai,'
      'COALESCE(h1.biayapemakaian,0) AS biayapemakaian,'
      'COALESCE(h1.administrasi,0) AS administrasi,'
      'COALESCE(h1.pemeliharaan,0) AS pemeliharaan,'
      'COALESCE(h1.rekair,0) AS rekair,'
      'COALESCE(h1.rata2hargaair,0) AS rata2hargaair,'
      'COALESCE(h2.rekair,0) AS rekairlalu'
      ''
      'FROM golongan g '
      'LEFT JOIN '
      '('
      ''
      'SELECT '
      '  kodegol AS kode,'
      '  COUNT(nosamb) AS lembar,'
      '  SUM(pakai) AS pakai,'
      '  SUM(biayapemakaian) AS biayapemakaian,'
      '  SUM(administrasi) AS administrasi,'
      '  SUM(pemeliharaan) AS pemeliharaan,'#9
      '  SUM(rekair) AS rekair,'
      '  SUM(biayapemakaian) /  SUM(pakai) AS rata2hargaair'
      '  '
      'FROM'
      '  drdposting:periode  WHERE flagpublish="1"'
      'GROUP BY kodegol '
      ') h1 ON g.`kodegol`=h1.kode'
      ''
      'LEFT JOIN'
      ''
      '('
      
        'SELECT kodegol AS kode, SUM(rekair) AS rekair FROM drdposting:pe' +
        'riodelalu WHERE flagpublish="1" GROUP BY kodegol'
      ') h2 ON g.kodegol=h2.kode'
      ''
      'LEFT JOIN'
      '('
      
        'SELECT kodegol AS kode, COUNT(nosamb) AS lembar FROM drdposting:' +
        'periode GROUP BY kodegol'
      ') h3 ON g.kodegol=h3.kode'
      ''
      'ORDER BY g.kodegol ASC')
    Connection = DM.Conn
    Left = 360
    Top = 243
  end
end
