object urekapikthisar4: Turekapikthisar4
  Left = 639
  Top = 289
  BorderStyle = bsNone
  Caption = 'Konsolidasi Pemakaian DRD'
  ClientHeight = 232
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object pemakaian: TcxTextEdit
    Left = 544
    Top = 64
    Enabled = False
    TabOrder = 0
    Visible = False
    Width = 113
  end
  object cekpemakaian: TcxCheckBox
    Left = 496
    Top = 72
    Caption = 'Pemakaian'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Transparent = True
    Visible = False
    Width = 97
  end
  object sumberair: TcxComboBox
    Left = 600
    Top = 192
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 2
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
    TabOrder = 3
    Transparent = True
    Width = 97
  end
  object cxLabel2: TcxLabel
    Left = 664
    Top = 65
    Caption = '(Gunakan Operator)'
    Enabled = False
    Transparent = True
    Visible = False
  end
  object kodeparaf: TcxComboBox
    Left = 592
    Top = 29
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
    TabOrder = 5
    Width = 137
  end
  object cxLabel3: TcxLabel
    Left = 474
    Top = 32
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
  object RzPanel8: TRzPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'KONSOLIDASI DRD'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 33
    Width = 389
    Height = 199
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 20966
    BorderWidth = 3
    Color = 14676991
    TabOrder = 8
    object kodewil: TcxComboBox
      Left = 144
      Top = 45
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
      TabOrder = 0
      Width = 60
    end
    object cekwilayah: TcxCheckBox
      Left = 16
      Top = 45
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      OnClick = cekwilayahClick
      Width = 97
    end
    object wilayah: TcxComboBox
      Left = 204
      Top = 45
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
      TabOrder = 2
      Width = 165
    end
    object cekloket: TcxCheckBox
      Left = 16
      Top = 72
      Caption = 'Loket Penagihan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      OnClick = cekloketClick
      Width = 129
    end
    object kodeloket: TcxComboBox
      Left = 144
      Top = 72
      Enabled = False
      ParentFont = False
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 60
    end
    object loket: TcxComboBox
      Left = 203
      Top = 72
      Enabled = False
      ParentFont = False
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 166
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 17
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
    object periode: TRzDateTimePicker
      Left = 146
      Top = 17
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
      TabOrder = 7
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxButton1: TcxButton
      Left = 19
      Top = 106
      Width = 350
      Height = 36
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 19
      Top = 146
      Width = 350
      Height = 36
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
      ''
      'c.kode,'
      'c.kodegol,'
      'c.koderayon,'
      'c.kodewil,'
      'c.namarayon,'
      'COALESCE(pk1.lembar,0) AS lembar1,'
      'COALESCE(pk1.pakai,0) AS blok1,'
      'COALESCE(pk1.bpakai,0) AS prog1,'
      'COALESCE(pk2.lembar,0) AS lembar2,'
      'COALESCE(pk2.pakai,0) AS blok2,'
      'COALESCE(pk2.bpakai,0) AS prog2,'
      'COALESCE(pk3.lembar,0) AS lembar3,'
      'COALESCE(pk3.pakai,0) AS blok3,'
      'COALESCE(pk3.bpakai,0) AS prog3,'
      'COALESCE(pk4.lembar,0) AS lembar4,'
      'COALESCE(pk4.pakai,0) AS blok4,'
      'COALESCE(pk4.bpakai,0) AS prog4,'
      ''
      'COALESCE(pk1.lembar,0) +'
      'COALESCE(pk2.lembar,0) +'
      'COALESCE(pk3.lembar,0) +'
      'COALESCE(pk4.lembar,0) AS jumlembar,'
      ''
      'COALESCE(pk1.pakai,0) +'
      'COALESCE(pk2.pakai,0) +'
      'COALESCE(pk3.pakai,0) +'
      'COALESCE(pk4.pakai,0) AS jumblok,'
      ''
      'COALESCE(pk1.bpakai,0) +'
      'COALESCE(pk2.bpakai,0) +'
      'COALESCE(pk3.bpakai,0) +'
      'COALESCE(pk4.bpakai,0) AS jumprog,'
      ''
      ''
      'COALESCE(bbn.administrasi,0) AS administrasi,'
      'COALESCE(bbn.pemeliharaan,0) AS pemeliharaan,'
      ''
      ''
      'COALESCE(pk1.bpakai,0) +'
      'COALESCE(pk2.bpakai,0) +'
      'COALESCE(pk3.bpakai,0) +'
      'COALESCE(pk4.bpakai,0) +'
      'COALESCE(bbn.administrasi,0) +'
      'COALESCE(bbn.pemeliharaan,0) AS total'
      ''
      ''
      ''
      ''
      'FROM'
      ''
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,c.kodegol,c.`ko' +
        'derayon`,r.`namarayon`,r.`kodewil`,r.kodeloket FROM drdposting:p' +
        'eriode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" GROUP BY CONCAT(c.koderayon,".",c.kodegol) ASC'
      ') c'
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,COUNT(c.nosamb)' +
        ' AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai' +
        ' FROM drdposting:periode c '
      
        'WHERE c.flagpublish="1" AND pakai=0 GROUP BY CONCAT(c.koderayon,' +
        '".",c.kodegol)'#9
      ') pk1 ON c.kode=pk1.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,COUNT(c.nosamb)' +
        ' AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai' +
        ' FROM drdposting:periode c '
      
        'WHERE c.flagpublish="1" AND pakai>0 AND pakai <=10 GROUP BY CONC' +
        'AT(c.koderayon,".",c.kodegol)'#9
      ') pk2 ON c.kode=pk2.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,COUNT(c.nosamb)' +
        ' AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai' +
        ' FROM drdposting:periode c '
      
        'WHERE c.flagpublish="1" AND pakai>10 AND pakai <=20 GROUP BY CON' +
        'CAT(c.koderayon,".",c.kodegol)'#9
      ') pk3 ON c.kode=pk3.kode'
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,COUNT(c.nosamb)' +
        ' AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai' +
        ' FROM drdposting:periode c '
      
        'WHERE c.flagpublish="1" AND pakai>20  GROUP BY CONCAT(c.koderayo' +
        'n,".",c.kodegol)'#9
      ') pk4 ON c.kode=pk4.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(c.koderayon,".",c.kodegol) AS kode,SUM(c.administr' +
        'asi+c.administrasilain) AS administrasi,SUM(c.pemeliharaan+c.pem' +
        'eliharaanlain) AS pemeliharaan FROM drdposting:periode c '
      
        'WHERE c.flagpublish="1" GROUP BY CONCAT(c.koderayon,".",c.kodego' +
        'l)'#9
      ') bbn ON c.kode=bbn.kode'
      ''
      ''
      'WHERE c.kode IS NOT NULL')
    Connection = DM.Conn
    Left = 536
    Top = 57
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 368
    Top = 48
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 392
    Top = 120
  end
  object ActionList1: TActionList
    Left = 320
    Top = 320
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
  object Qrek2: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      ''
      'c.kode,'
      'c.kodegol,'
      'c.kodewil,'
      'c.wilayah,'
      'COALESCE(pk1.lembar,0) AS lembar1,'
      'COALESCE(pk1.pakai,0) AS blok1,'
      'COALESCE(pk1.bpakai,0) AS prog1,'
      'COALESCE(pk2.lembar,0) AS lembar2,'
      'COALESCE(pk2.pakai,0) AS blok2,'
      'COALESCE(pk2.bpakai,0) AS prog2,'
      'COALESCE(pk3.lembar,0) AS lembar3,'
      'COALESCE(pk3.pakai,0) AS blok3,'
      'COALESCE(pk3.bpakai,0) AS prog3,'
      'COALESCE(pk4.lembar,0) AS lembar4,'
      'COALESCE(pk4.pakai,0) AS blok4,'
      'COALESCE(pk4.bpakai,0) AS prog4,'
      ''
      'COALESCE(pk1.lembar,0) +'
      'COALESCE(pk2.lembar,0) +'
      'COALESCE(pk3.lembar,0) +'
      'COALESCE(pk4.lembar,0) AS jumlembar,'
      ''
      'COALESCE(pk1.pakai,0) +'
      'COALESCE(pk2.pakai,0) +'
      'COALESCE(pk3.pakai,0) +'
      'COALESCE(pk4.pakai,0) AS jumblok,'
      ''
      'COALESCE(pk1.bpakai,0) +'
      'COALESCE(pk2.bpakai,0) +'
      'COALESCE(pk3.bpakai,0) +'
      'COALESCE(pk4.bpakai,0) AS jumprog,'
      ''
      ''
      ''
      'COALESCE(bbn.administrasi,0) AS administrasi,'
      'COALESCE(bbn.pemeliharaan,0) AS pemeliharaan,'
      ''
      ''
      'COALESCE(pk1.bpakai,0) +'
      'COALESCE(pk2.bpakai,0) +'
      'COALESCE(pk3.bpakai,0) +'
      'COALESCE(pk4.bpakai,0) +'
      'COALESCE(bbn.administrasi,0) +'
      'COALESCE(bbn.pemeliharaan,0) AS total'
      ''
      'FROM'
      ''
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,c.kodegol,r.`wila' +
        'yah`,r.`kodewil`,r.kodeloket FROM drdposting:periode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" GROUP BY CONCAT(r.kodewil,".",c.kodegol) ASC'
      ') c'
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,COUNT(c.nosamb) A' +
        'S lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai F' +
        'ROM drdposting:periode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" AND pakai=0 GROUP BY CONCAT(r.kodewil,".",c.kodegol)'#9
      ') pk1 ON c.kode=pk1.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,COUNT(c.nosamb) A' +
        'S lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai F' +
        'ROM drdposting:periode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" AND pakai>0 AND pakai <=10 GROUP BY CONCAT(r.kodewil,".",' +
        'c.kodegol)'#9
      ') pk2 ON c.kode=pk2.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,COUNT(c.nosamb) A' +
        'S lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai F' +
        'ROM drdposting:periode  c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" AND pakai>10 AND pakai <=20 GROUP BY CONCAT(r.kodewil,"."' +
        ',c.kodegol)'#9
      ') pk3 ON c.kode=pk3.kode'
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,COUNT(c.nosamb) A' +
        'S lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS bpakai F' +
        'ROM drdposting:periode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" AND pakai>20  GROUP BY CONCAT(r.kodewil,".",c.kodegol)'#9
      ') pk4 ON c.kode=pk4.kode'
      ''
      ''
      'LEFT JOIN '
      '('
      
        'SELECT CONCAT(r.kodewil,".",c.kodegol) AS kode,SUM(c.administras' +
        'i+c.administrasilain) AS administrasi,SUM(c.pemeliharaan+c.pemel' +
        'iharaanlain) AS pemeliharaan FROM drdposting:periode c '
      
        'LEFT JOIN rayon r ON c.koderayon=r.`koderayon` WHERE c.flagpubli' +
        'sh="1" GROUP BY CONCAT(r.kodewil,".",c.kodegol)'#9
      ') bbn ON c.kode=bbn.kode'
      ''
      ''
      'WHERE c.kode IS NOT NULL')
    Connection = DM.Conn
    Left = 432
    Top = 184
  end
  object DSrek2: TMyDataSource
    DataSet = Qrek2
    Left = 360
    Top = 240
  end
  object rek2: TfrxDBDataset
    UserName = 'rek2'
    CloseDataSource = False
    DataSource = DSrek2
    BCDToCurrency = False
    Left = 496
    Top = 160
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
    Left = 128
    Top = 89
    Datasets = <
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end
      item
        DataSet = rek
        DataSetName = 'rek'
      end
      item
        DataSet = rek2
        DataSetName = 'rek2'
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
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 24.027225230000000000
        Top = 294.803340000000000000
        Width = 1092.284170000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 38.616014362635910000
          Top = -0.000000000000000028
          Width = 34.662489343984090000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            ' [rek."kodegol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 73.278503706620100000
          Top = -0.000000000000000028
          Width = 34.662489343984090000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."lembar1"]')
          ParentFont = False
          WordWrap = False
        end
        object Line65: TfrxLineView
          Left = 38.616014362635910000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 110.887685007309600000
          Width = 64.504651066873200000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."prog1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 211.676202293499900000
          Width = 40.315406914476090000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."blok2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 256.023149897071400000
          Top = -0.000000000000000028
          Width = 68.536191755603010000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'prog2'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."prog2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 328.590882341769100000
          Width = 32.252325533436600000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lembar3'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."lembar3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 360.843207876228200000
          Top = -0.000000000000000028
          Width = 44.346947606566620000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'blok3'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."blok3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 405.190155482794900000
          Top = -0.000000000000000028
          Width = 64.504651064096940000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'prog3'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."prog3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 469.694806546891900000
          Top = -0.000000000000000028
          Width = 40.315406915060550000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lembar4'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."lembar4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 510.010213461952600000
          Top = -0.000000000000000028
          Width = 44.346947606566620000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'blok4'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."blok4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 554.357161068519300000
          Top = -0.000000000000000028
          Width = 64.504651064096940000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'prog4'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."prog4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 618.861812132616300000
          Top = -0.000000000000000028
          Width = 48.378488298072680000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlembar'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."jumlembar"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 671.271841122195200000
          Top = -0.000000000000000028
          Width = 48.378488298072680000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumblok'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."jumblok"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 719.650329420268000000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumprog'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."jumprog"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 175.392336064904200000
          Width = 36.283866219317030000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."lembar2"]')
          ParentFont = False
          WordWrap = False
        end
        object Line29: TfrxLineView
          Left = 74.603818779298440000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 110.887685002853100000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 175.392336066950100000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 211.676202290504700000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 256.023149897071400000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 324.559341652673600000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 405.190155482794900000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 469.694806546891900000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 360.843207876228200000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 510.010213461952600000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 554.357161068519300000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 618.861812132616300000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 671.271841122195200000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 719.650329420268000000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 804.312683941895300000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo135: TfrxMemoView
          Left = 804.312683941895300000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'administrasi'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          Left = 888.975038463521700000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pemeliharaan'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo151: TfrxMemoView
          Left = 973.637392982665200000
          Width = 84.662354524111250000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."total"]')
          ParentFont = False
          WordWrap = False
        end
        object Line53: TfrxLineView
          Left = 973.637392985151900000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 1058.299747506776000000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line52: TfrxLineView
          Left = 888.975038463521700000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 34.015770000000000000
        Top = 238.110390000000000000
        Width = 1092.284170000000000000
        Condition = 'rek."koderayon"'
        KeepTogether = True
        Stretched = True
        object Memo42: TfrxMemoView
          Left = 41.786201487023950000
          Top = 0.756030000000000000
          Width = 764.827220457815900000
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
            ' [rek."koderayon"]  [rek."namarayon"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line37: TfrxLineView
          Left = 38.319952555743950000
          Top = -0.000000000000000014
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line139: TfrxLineView
          Left = 38.319952559396950000
          Top = 23.677180000000000000
          Width = 1019.979794947380000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line141: TfrxLineView
          Left = 1058.299747506776000000
          Top = -0.000000000000000014
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 132.283550000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Memo15: TfrxMemoView
          Left = 74.603818779298440000
          Top = 18.897650000000000000
          Width = 36.283866223554490000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 110.887685002853100000
          Top = 18.897650000000000000
          Width = 64.504651064096940000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 175.392336066950100000
          Top = 18.897650000000000000
          Width = 36.283866223554490000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 211.676202290504700000
          Top = 18.897650000000000000
          Width = 44.346947606566620000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 256.023149897071400000
          Top = 18.897650000000000000
          Width = 68.536191755603010000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 324.559341652673600000
          Top = 18.897650000000000000
          Width = 36.283866223554490000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 360.843207876228200000
          Top = 18.897650000000000000
          Width = 44.346947606566620000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 405.190155482794900000
          Top = 18.897650000000000000
          Width = 64.504651064096940000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 469.694806546891900000
          Top = 18.897650000000000000
          Width = 40.315406915060550000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 510.010213461952600000
          Top = 18.897650000000000000
          Width = 44.346947606566620000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 554.357161068519300000
          Top = 18.897650000000000000
          Width = 64.504651064096940000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 618.861812132616300000
          Top = 18.897650000000000000
          Width = 48.378488298072680000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Lembar')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 671.271841122195200000
          Top = 18.897650000000000000
          Width = 48.378488298072680000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 719.650329420268000000
          Top = 18.897650000000000000
          Width = 84.662354521627170000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line13: TfrxLineView
          Left = 74.603818779298440000
          Top = 1.000000000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 110.887685002853100000
          Top = 19.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 175.392336066950100000
          Top = 1.000000000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 211.676202290504700000
          Top = 19.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 38.319952555743950000
          Width = 36.283866223554490000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Gol')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 74.603818778713970000
          Width = 100.788517286190200000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '0 - 10 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 175.392336064904200000
          Width = 149.167005581705800000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '11 - 20 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 324.559341655888700000
          Width = 145.135464895825400000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '21 - 30 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 469.694806542435400000
          Width = 149.167005581705800000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '> 30 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 618.861812132616300000
          Width = 185.450871809279000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Air')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Left = 256.023149897071400000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 324.559341652673600000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 360.843207876228200000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 405.190155482794900000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 469.694806546891900000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 510.010213461952600000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 554.357161068519300000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 618.861812132616300000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 804.312683941895300000
          Width = 84.662354521627170000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adm.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 888.975038463521700000
          Width = 84.662354521627170000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pemeliharaan')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line47: TfrxLineView
          Left = 888.975038463521700000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 973.637392985151900000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo45: TfrxMemoView
          Left = 973.637392985151900000
          Width = 84.662354521627170000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
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
          WordWrap = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Left = 1058.299747506776000000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 671.271841122195200000
          Top = 18.897650000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 719.650329420268000000
          Top = 18.897650000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 804.312683941895300000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Left = 38.319952555743950000
          Width = 1019.979794951035000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line137: TfrxLineView
          Left = 38.319952555743950000
          Top = 41.574830000000000000
          Width = 1019.979794951035000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 38.319952555743950000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line142: TfrxLineView
          Left = 74.603818779298440000
          Top = 18.897650000000000000
          Width = 729.708865162596800000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child1: TfrxChild
        Height = 7.559060000000000000
        Top = 340.157700000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Line138: TfrxLineView
          Left = 38.319952559396950000
          Width = 1019.979794947380000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 370.393940000000000000
        Width = 1092.284170000000000000
        Stretched = True
        object Memo44: TfrxMemoView
          Left = 72.982441900617400000
          Width = 34.662489341220450000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar1">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line40: TfrxLineView
          Left = 38.319952555743950000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo46: TfrxMemoView
          Left = 110.887685002853100000
          Top = -0.000000000000000028
          Width = 64.504651064096940000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog1">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 175.392336066950100000
          Top = -0.000000000000000028
          Width = 36.283866223554490000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Left = 211.676202290504700000
          Top = -0.000000000000000028
          Width = 40.315406915060550000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          Left = 256.023149897071400000
          Top = -0.000000000000000028
          Width = 68.536191755603010000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          Left = 328.590882344179700000
          Top = -0.000000000000000028
          Width = 32.252325532048420000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          Left = 360.843207876228200000
          Top = -0.000000000000000028
          Width = 44.346947606566620000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo52: TfrxMemoView
          Left = 405.190155482794900000
          Top = -0.000000000000000028
          Width = 64.504651064096940000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          Left = 469.694806546891900000
          Top = -0.000000000000000028
          Width = 40.315406915060550000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          Left = 510.010213461952600000
          Top = -0.000000000000000028
          Width = 44.346947606566620000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          Left = 554.357161068519300000
          Top = -0.000000000000000028
          Width = 64.504651064096940000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          Left = 618.861812132616300000
          Top = -0.000000000000000028
          Width = 48.378488298072680000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumlembar">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          Left = 671.271841122195200000
          Top = -0.000000000000000028
          Width = 48.378488298072680000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumblok">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          Left = 719.650329420268000000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumprog">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Left = 74.603818779298440000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 110.887685002853100000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 175.392336066950100000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 211.676202290504700000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 255.095286340514500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 324.559341652673600000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 404.262291931499000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 469.694806546891900000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 360.843207876228200000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line44: TfrxLineView
          Left = 510.010213461952600000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 554.357161068519300000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 618.861812132616300000
          Top = -0.000000000000000028
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 671.271841122195200000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 719.650329420268000000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 804.312683941895300000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo152: TfrxMemoView
          Left = 804.312683941895300000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo153: TfrxMemoView
          Left = 888.975038463521700000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo154: TfrxMemoView
          Left = 973.637392985151900000
          Top = -0.000000000000000028
          Width = 84.662354521627170000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line55: TfrxLineView
          Left = 888.975038463521700000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line56: TfrxLineView
          Left = 973.637392985151900000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line57: TfrxLineView
          Left = 1058.299747506776000000
          Top = -0.000000000000000028
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line140: TfrxLineView
          Left = 38.319952559396950000
          Top = 19.677180000000000000
          Width = 1019.979794947380000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1092.284170000000000000
        object Memo1: TfrxMemoView
          Left = 409.221696170721300000
          Top = 30.236240000000000000
          Width = 106.918668200379800000
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
          Left = 409.221696174301000000
          Top = 7.559060000000000000
          Width = 491.847964363739000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONSOLIDASI DRD PEMAKAIAN AIR PER RAYON')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 519.647252516141800000
          Top = 30.236240000000000000
          Width = 253.987063563055100000
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
        object keterangan: TfrxMemoView
          Left = 37.795300000000000000
          Top = 64.252010000000000000
          Width = 725.677324469848300000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 282.207848401332700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
        object Memo132: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
          Width = 282.207848401332700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
        Height = 22.677180000000000000
        Top = 691.653990000000000000
        Width = 1092.284170000000000000
        object Memo11: TfrxMemoView
          Left = 38.319952559396950000
          Width = 96.756976600309800000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 131.045388460383400000
          Width = 88.693895213133240000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 860.036308024401000000
          Width = 198.263439482375500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] dari [TotalPages#]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 207.874150000000000000
        Top = 461.102660000000000000
        Width = 1092.284170000000000000
        object Memo59: TfrxMemoView
          Left = 73.385652894562300000
          Width = 34.662489341220450000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar1">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line60: TfrxLineView
          Left = 38.723163553341850000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo60: TfrxMemoView
          Left = 110.363032447912700000
          Width = 64.504651066873200000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog1">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Left = 175.795547068127700000
          Width = 36.283866219317030000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Left = 212.079413287444800000
          Width = 40.315406914476090000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Left = 256.426360897079900000
          Width = 68.536191752753630000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog2">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          Left = 328.994093344992600000
          Width = 32.252325533436600000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          Left = 361.246418878429200000
          Width = 44.346947609635160000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          Left = 405.593366478785700000
          Width = 64.504651066873200000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog3">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 470.098017545659000000
          Width = 40.315406914476090000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembar4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          Left = 510.413424460135000000
          Width = 44.346947609635160000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."blok4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          Left = 554.760372069770200000
          Width = 64.504651066873200000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."prog4">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          Left = 619.265023127364800000
          Width = 48.378488295515580000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumlembar">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          Left = 671.675052118039400000
          Width = 48.378488295515580000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumblok">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          Left = 720.053540413555000000
          Width = 84.662354524111250000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."jumprog">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line61: TfrxLineView
          Left = 75.007029772658880000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line62: TfrxLineView
          Left = 111.290896001254500000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line63: TfrxLineView
          Left = 174.867683514785900000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 212.079413287444800000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line66: TfrxLineView
          Left = 255.498497343738100000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line67: TfrxLineView
          Left = 324.034689096491700000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line68: TfrxLineView
          Left = 404.665502925443900000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line69: TfrxLineView
          Left = 470.098017545659000000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 360.318555325087400000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line71: TfrxLineView
          Left = 510.413424460135000000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line72: TfrxLineView
          Left = 554.760372069770200000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line73: TfrxLineView
          Left = 618.337159574022900000
          Height = 20.247695230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line74: TfrxLineView
          Left = 671.675052118039400000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line75: TfrxLineView
          Left = 720.053540413555000000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = 803.788031384324400000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 804.715894937666200000
          Width = 84.662354524111250000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          Left = 889.378249461777500000
          Width = 84.662354524111250000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          Left = 974.040603985888700000
          Width = 84.662354524111250000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line77: TfrxLineView
          Left = 888.450385908435600000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line78: TfrxLineView
          Left = 974.040603985888700000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line79: TfrxLineView
          Left = 1058.702958500721000000
          Height = 16.468165230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line80: TfrxLineView
          Left = 38.723163553341850000
          Top = 19.677180000000000000
          Width = 1019.979794947380000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo76: TfrxMemoView
          Left = 38.723163553341850000
          Width = 34.662489341220450000
          Height = 18.897650000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          Left = 249.136451699069000000
          Top = 71.811070000000000000
          Width = 214.976384714398600000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 249.136451699069000000
          Top = 151.181200000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 249.136451699069000000
          Top = 166.299320000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 751.090881085295800000
          Top = 37.795300000000000000
          Width = 304.464162086879800000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 249.136451699069000000
          Top = 56.692950000000000000
          Width = 213.947789575065800000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 495.999285825572300000
          Top = 71.811070000000000000
          Width = 214.976384714398600000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 495.999285825572300000
          Top = 151.181200000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          Left = 495.999285825572300000
          Top = 166.299320000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 495.999285825572300000
          Top = 56.692950000000000000
          Width = 213.947789575065800000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 751.090881085295800000
          Top = 71.811070000000000000
          Width = 214.976384714398600000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 751.090881085295800000
          Top = 151.181200000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo88: TfrxMemoView
          Left = 751.090881085295800000
          Top = 166.299320000000000000
          Width = 226.290931284174500000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 751.090881085295800000
          Top = 56.692950000000000000
          Width = 213.947789575065800000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 3.000000000000000000
      RightMargin = 5.900000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 31.586285230000000000
        Top = 302.362400000000000000
        Width = 1088.882593000000000000
        Child = report.Child2
        DataSet = rek2
        DataSetName = 'rek2'
        RowCount = 0
        Stretched = True
        object Memo155: TfrxMemoView
          Left = 38.328419458389260000
          Width = 34.542721087248330000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            ' [rek2."kodegol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo156: TfrxMemoView
          Left = 72.871140545637600000
          Width = 34.542721087248330000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."lembar1"]')
          ParentFont = False
          WordWrap = False
        end
        object Line143: TfrxLineView
          Left = 38.328419463335160000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo157: TfrxMemoView
          Left = 110.350371968504100000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."prog1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo158: TfrxMemoView
          Left = 210.790637716535100000
          Width = 40.176106299212570000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."blok2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo159: TfrxMemoView
          Left = 254.984354645669800000
          Width = 68.299380708661440000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."prog2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo160: TfrxMemoView
          Left = 327.301345984252100000
          Width = 32.140885039370070000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."lembar3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo161: TfrxMemoView
          Left = 359.442231023622500000
          Width = 44.193716929133860000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."blok3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo162: TfrxMemoView
          Left = 403.635947952756300000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."prog3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo163: TfrxMemoView
          Left = 467.917718031496000000
          Width = 40.176106299212570000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."lembar4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo164: TfrxMemoView
          Left = 508.093824330709000000
          Width = 44.193716929133860000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."blok4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo165: TfrxMemoView
          Left = 552.287541259842700000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."prog4"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo166: TfrxMemoView
          Left = 616.569311338582500000
          Width = 48.211327559055160000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."jumlembar"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo167: TfrxMemoView
          Left = 668.798249527558900000
          Width = 48.211327559055160000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."jumblok"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo168: TfrxMemoView
          Left = 717.009577088255300000
          Width = 84.369823230201370000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."jumprog"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo169: TfrxMemoView
          Left = 174.632142047243900000
          Width = 36.158495669291370000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."lembar2"]')
          ParentFont = False
          WordWrap = False
        end
        object Line144: TfrxLineView
          Left = 74.191876296644310000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line145: TfrxLineView
          Left = 110.350371968504100000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line146: TfrxLineView
          Left = 174.632142047243900000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line147: TfrxLineView
          Left = 210.790637716535100000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line148: TfrxLineView
          Left = 254.984354645669800000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line149: TfrxLineView
          Left = 323.283735354330400000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line150: TfrxLineView
          Left = 403.635947952756300000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line151: TfrxLineView
          Left = 467.917718031496000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line152: TfrxLineView
          Left = 359.442231023622500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line153: TfrxLineView
          Left = 508.093824330709000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line154: TfrxLineView
          Left = 552.287541259842700000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line155: TfrxLineView
          Left = 616.569311338582500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line156: TfrxLineView
          Left = 668.798249527558900000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line157: TfrxLineView
          Left = 717.009577086614400000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line158: TfrxLineView
          Left = 801.379400314961100000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo170: TfrxMemoView
          Left = 801.379400314961100000
          Width = 84.369823228346520000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."administrasi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo171: TfrxMemoView
          Left = 885.749223539597600000
          Width = 84.369823230201370000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."pemeliharaan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo172: TfrxMemoView
          Left = 970.119046769799000000
          Width = 80.945416854362440000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."total"]')
          ParentFont = False
          WordWrap = False
        end
        object Line159: TfrxLineView
          Left = 970.119046771656300000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line160: TfrxLineView
          Left = 1054.488870000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line161: TfrxLineView
          Left = 885.749223543306900000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 34.015770000000000000
        Top = 245.669450000000000000
        Width = 1088.882593000000000000
        Condition = 'rek2."kodewil"'
        KeepTogether = True
        Stretched = True
        object Memo173: TfrxMemoView
          Left = 41.487652736577180000
          Top = 0.756030000000000000
          Width = 765.773126151342500000
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
            ' [rek2."wilayah"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line162: TfrxLineView
          Left = 38.033380629921290000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line163: TfrxLineView
          Left = 38.033380627852350000
          Top = 23.677180000000000000
          Width = 1016.455489372148000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line164: TfrxLineView
          Left = 1054.488870000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageHeader3: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 132.283550000000000000
        Width = 1088.882593000000000000
        Stretched = True
        object Memo174: TfrxMemoView
          Left = 74.191876299212570000
          Top = 18.897650000000000000
          Width = 36.158495669291370000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 110.350371968504100000
          Top = 18.897650000000000000
          Width = 64.281770078740150000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 174.632142047243900000
          Top = 18.897650000000000000
          Width = 36.158495669291370000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 210.790637716535100000
          Top = 18.897650000000000000
          Width = 44.193716929133860000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 254.984354645669800000
          Top = 18.897650000000000000
          Width = 68.299380708661440000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 323.283735354330400000
          Top = 18.897650000000000000
          Width = 36.158495669291370000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 359.442231023622500000
          Top = 18.897650000000000000
          Width = 44.193716929133860000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 403.635947952756300000
          Top = 18.897650000000000000
          Width = 64.281770078740150000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 467.917718031496000000
          Top = 18.897650000000000000
          Width = 40.176106299212570000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'SR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 508.093824330709000000
          Top = 18.897650000000000000
          Width = 44.193716929133860000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 552.287541259842700000
          Top = 18.897650000000000000
          Width = 64.281770078740150000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 616.569311338582500000
          Top = 18.897650000000000000
          Width = 48.211327559055160000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Lembar')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 668.798249527558900000
          Top = 18.897650000000000000
          Width = 48.211327559055160000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 717.009577086614400000
          Top = 18.897650000000000000
          Width = 84.369823228346520000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Rupiah')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line165: TfrxLineView
          Left = 74.191876299212570000
          Top = 1.000000000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line166: TfrxLineView
          Left = 110.350371968504100000
          Top = 19.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line167: TfrxLineView
          Left = 174.632142047243900000
          Top = 1.000000000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line168: TfrxLineView
          Left = 210.790637716535100000
          Top = 19.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo188: TfrxMemoView
          Left = 38.033380629921290000
          Width = 36.158495669291370000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Gol')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 74.191876296644310000
          Width = 100.440265750671200000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '0 - 10 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          Left = 174.632142047315500000
          Width = 148.651593303020200000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '11 - 20 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          Left = 323.283735350335700000
          Width = 144.633982675167800000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '21 - 30 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          Left = 467.917718034563900000
          Width = 148.651593303020200000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '> 30 M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          Left = 616.569311338582500000
          Width = 184.810088976377700000
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
          HAlign = haCenter
          Memo.UTF8 = (
            'Air')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line169: TfrxLineView
          Left = 254.984354645669800000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line170: TfrxLineView
          Left = 323.283735354330400000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line171: TfrxLineView
          Left = 359.442231023622500000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line172: TfrxLineView
          Left = 403.635947952756300000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line173: TfrxLineView
          Left = 467.917718031496000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line174: TfrxLineView
          Left = 508.093824330709000000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line175: TfrxLineView
          Left = 552.287541259842700000
          Top = 18.897650000000000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line176: TfrxLineView
          Left = 616.569311338582500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo194: TfrxMemoView
          Left = 801.379400314961100000
          Width = 84.369823228346520000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adm.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          Left = 885.749223543306900000
          Width = 84.369823228346520000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pemeliharaan')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line177: TfrxLineView
          Left = 885.749223543306900000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line178: TfrxLineView
          Left = 970.119046771656300000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo196: TfrxMemoView
          Left = 970.119046769799000000
          Width = 84.369823230201370000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
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
          WordWrap = False
          VAlign = vaCenter
        end
        object Line179: TfrxLineView
          Left = 1054.488870000000000000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line180: TfrxLineView
          Left = 668.798249527558900000
          Top = 18.897650000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line181: TfrxLineView
          Left = 717.009577086614400000
          Top = 18.897650000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line182: TfrxLineView
          Left = 801.379400314961100000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line183: TfrxLineView
          Left = 38.033380629921290000
          Width = 1016.455489370082000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line184: TfrxLineView
          Left = 38.033380627852350000
          Top = 41.574830000000000000
          Width = 1016.455489372148000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line185: TfrxLineView
          Left = 38.033380629921290000
          Height = 39.145345230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line186: TfrxLineView
          Left = 74.191876299212570000
          Top = 18.897650000000000000
          Width = 727.187524015748200000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 400.630180000000000000
        Width = 1088.882593000000000000
        Stretched = True
        object Memo197: TfrxMemoView
          Left = 72.576101714173260000
          Width = 34.542721084251970000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar1">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Line188: TfrxLineView
          Left = 38.033380629921290000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo198: TfrxMemoView
          Left = 110.350371968504100000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog1">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo199: TfrxMemoView
          Left = 174.632142047243900000
          Width = 36.158495669291370000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar2">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo200: TfrxMemoView
          Left = 210.790637716535100000
          Width = 40.176106299212570000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok2">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo201: TfrxMemoView
          Left = 254.984354645669800000
          Width = 68.299380708661440000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog2">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo202: TfrxMemoView
          Left = 327.301345984252100000
          Width = 32.140885039370070000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar3">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo203: TfrxMemoView
          Left = 359.442231023622500000
          Width = 44.193716929133860000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok3">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo204: TfrxMemoView
          Left = 403.635947952756300000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog3">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo205: TfrxMemoView
          Left = 467.917718031496000000
          Width = 40.176106299212570000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar4">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo206: TfrxMemoView
          Left = 508.093824330709000000
          Width = 44.193716929133860000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok4">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo207: TfrxMemoView
          Left = 552.287541259842700000
          Width = 64.281770078740150000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog4">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo208: TfrxMemoView
          Left = 616.569311338582500000
          Width = 48.211327559055160000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumlembar">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo209: TfrxMemoView
          Left = 668.798249527558900000
          Width = 48.211327559055160000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumblok">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo210: TfrxMemoView
          Left = 717.009577090000000000
          Width = 84.369823230000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumprog">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Line189: TfrxLineView
          Left = 74.191876299212570000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line190: TfrxLineView
          Left = 110.350371968504100000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line191: TfrxLineView
          Left = 174.632142047243900000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line192: TfrxLineView
          Left = 210.790637716535100000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line193: TfrxLineView
          Left = 254.984354645669800000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line194: TfrxLineView
          Left = 323.283735354330400000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line195: TfrxLineView
          Left = 403.635947952756300000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line196: TfrxLineView
          Left = 467.917718031496000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line197: TfrxLineView
          Left = 359.442231023622500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line198: TfrxLineView
          Left = 508.093824330709000000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line199: TfrxLineView
          Left = 552.287541259842700000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line200: TfrxLineView
          Left = 616.569311338582500000
          Height = 20.247695230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line201: TfrxLineView
          Left = 668.798249527558900000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line202: TfrxLineView
          Left = 717.009577086614400000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line203: TfrxLineView
          Left = 801.379400314961100000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo211: TfrxMemoView
          Left = 801.379400314961100000
          Width = 84.369823228346520000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."administrasi">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo212: TfrxMemoView
          Left = 885.749223543306900000
          Width = 84.369823228346520000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."pemeliharaan">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo213: TfrxMemoView
          Left = 970.119046771656300000
          Width = 84.369823228346520000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData3)]')
          ParentFont = False
          WordWrap = False
        end
        object Line204: TfrxLineView
          Left = 885.749223543306900000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line205: TfrxLineView
          Left = 970.119046771656300000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line206: TfrxLineView
          Left = 1054.488870000000000000
          Height = 16.468165230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line207: TfrxLineView
          Left = 38.033380627852350000
          Top = 19.677180000000000000
          Width = 1016.455489372148000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle3: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1088.882593000000000000
        object Memo214: TfrxMemoView
          Left = 407.653558580537000000
          Top = 30.236240000000000000
          Width = 106.830693395637600000
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
        object Memo215: TfrxMemoView
          Left = 407.653558582677100000
          Top = 7.559060000000000000
          Width = 490.148496850394100000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONSOLIDASI DRD PEMAKAIAN AIR PER WILAYAH')
          ParentFont = False
        end
        object bulan2: TfrxMemoView
          Left = 517.908658352013600000
          Top = 30.236240000000000000
          Width = 253.109469681543700000
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
          Left = 34.015770000000000000
          Top = 64.252010000000000000
          Width = 723.169913385827300000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 281.232744094488700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
        object Memo219: TfrxMemoView
          Left = 34.015770000000000000
          Top = 30.236240000000000000
          Width = 281.232744094488700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
      object PageFooter3: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 714.331170000000000000
        Width = 1088.882593000000000000
        object Memo220: TfrxMemoView
          Left = 37.440176375838930000
          Width = 95.883378523489960000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 129.899148523490000000
          Width = 89.034565771812110000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 905.837276692913800000
          Width = 148.651593307086500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] dari [TotalPages#]')
          ParentFont = False
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 196.535560000000000000
        Top = 495.118430000000000000
        Width = 1088.882593000000000000
        object Memo138: TfrxMemoView
          Left = 267.037186535433200000
          Top = 71.811070000000000000
          Width = 209.920155413385900000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 267.037186535433200000
          Top = 151.181200000000000000
          Width = 220.968584645669800000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 267.037186535433200000
          Top = 166.299320000000000000
          Width = 220.968584645669800000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 757.185683385827300000
          Top = 37.795300000000000000
          Width = 297.303186614173000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 267.037186535433200000
          Top = 56.692950000000000000
          Width = 208.915752755905400000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 508.093824330709000000
          Top = 71.811070000000000000
          Width = 209.920155413385900000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 508.093824330709000000
          Top = 151.181200000000000000
          Width = 220.968584645669800000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          Left = 508.093824330709000000
          Top = 166.299320000000000000
          Width = 220.968584645669800000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 508.093824330709000000
          Top = 56.692950000000000000
          Width = 208.915752755905400000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 757.185683390000000000
          Top = 71.811070000000000000
          Width = 209.920155410000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 757.185683390000000000
          Top = 151.181200000000000000
          Width = 220.968584650000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo149: TfrxMemoView
          Left = 757.185683385827300000
          Top = 166.299320000000000000
          Width = 220.968584645669800000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 757.185683385827300000
          Top = 56.692950000000000000
          Width = 208.915752755905400000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          Left = 72.576101715100680000
          Width = 34.542721087248330000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar1">,MasterData3)]')
          ParentFont = False
        end
        object Line208: TfrxLineView
          Left = 38.033380629921290000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo217: TfrxMemoView
          Left = 110.350371968504100000
          Width = 64.281770078740150000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog1">,MasterData3)]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 174.632142047243900000
          Width = 36.158495669291370000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar2">,MasterData3)]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 210.790637716535100000
          Width = 40.176106299212570000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok2">,MasterData3)]')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 254.984354649664500000
          Width = 68.299380709731570000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog2">,MasterData3)]')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          Left = 327.301345984252100000
          Width = 32.140885039370070000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar3">,MasterData3)]')
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          Left = 359.442231023622500000
          Width = 44.193716929133860000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok3">,MasterData3)]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          Left = 403.635947952756300000
          Width = 64.281770078740150000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog3">,MasterData3)]')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 467.917718031496000000
          Width = 40.176106299212570000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembar4">,MasterData3)]')
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          Left = 508.093824330709000000
          Width = 44.193716929133860000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."blok4">,MasterData3)]')
          ParentFont = False
        end
        object Memo231: TfrxMemoView
          Left = 552.287541259842700000
          Width = 64.281770078740150000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."prog4">,MasterData3)]')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 616.569311338582500000
          Width = 48.211327559055160000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumlembar">,MasterData3)]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          Left = 668.798249527558900000
          Width = 48.211327559055160000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumblok">,MasterData3)]')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          Left = 717.009577090000000000
          Width = 84.369823230000000000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."jumprog">,MasterData3)]')
          ParentFont = False
        end
        object Line209: TfrxLineView
          Left = 74.191876299212570000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line210: TfrxLineView
          Left = 110.350371968504100000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line211: TfrxLineView
          Left = 174.632142047243900000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line212: TfrxLineView
          Left = 210.790637716535100000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line213: TfrxLineView
          Left = 254.984354645669800000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line214: TfrxLineView
          Left = 323.283735354330400000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line215: TfrxLineView
          Left = 403.635947952756300000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line216: TfrxLineView
          Left = 467.917718031496000000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line217: TfrxLineView
          Left = 359.442231023622500000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line218: TfrxLineView
          Left = 508.093824330709000000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line219: TfrxLineView
          Left = 552.287541259842700000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line220: TfrxLineView
          Left = 616.569311338582500000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line221: TfrxLineView
          Left = 668.798249527558900000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line222: TfrxLineView
          Left = 717.009577086614400000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line223: TfrxLineView
          Left = 801.379400314961100000
          Height = 24.027225230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo235: TfrxMemoView
          Left = 801.379400320000000000
          Width = 84.369823230000000000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."administrasi">,MasterData3)]')
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          Left = 885.749223543306900000
          Width = 84.369823228346520000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."pemeliharaan">,MasterData3)]')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          Left = 970.119046771656300000
          Width = 84.369823228346520000
          Height = 26.456710000000000000
          ShowHint = False
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData3)]')
          ParentFont = False
        end
        object Line224: TfrxLineView
          Left = 885.749223543306900000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line225: TfrxLineView
          Left = 970.119046771656300000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line226: TfrxLineView
          Left = 1054.488870000000000000
          Height = 27.806755230000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line227: TfrxLineView
          Left = 38.033380629921290000
          Top = 27.236240000000000000
          Width = 1016.455489370082000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          Left = 38.033380629921290000
          Width = 34.542721084251970000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          WordWrap = False
        end
      end
      object Child2: TfrxChild
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 1088.882593000000000000
        Child = report.Child1
        Stretched = True
        object Line59: TfrxLineView
          Left = 37.440176375838930000
          Width = 1016.455489372148000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
end
