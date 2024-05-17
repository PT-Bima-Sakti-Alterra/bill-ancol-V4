object urekapgolongan3: Turekapgolongan3
  Left = 488
  Top = 162
  BorderStyle = bsNone
  Caption = 'Rekap Perbandingan DRD'
  ClientHeight = 267
  ClientWidth = 364
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
    Left = 536
    Top = 80
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
    Left = 672
    Top = 80
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodekelurahanPropertiesChange
    TabOrder = 3
    Width = 60
  end
  object cekcabang: TcxCheckBox
    Left = 536
    Top = 104
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
    Left = 672
    Top = 104
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodecabangPropertiesChange
    TabOrder = 5
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 736
    Top = 80
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kelurahanPropertiesChange
    TabOrder = 6
    Width = 100
  end
  object cabang: TcxComboBox
    Left = 736
    Top = 104
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cabangPropertiesChange
    TabOrder = 7
    Width = 100
  end
  object cxLabel3: TcxLabel
    Left = 466
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
  object kodeparaf: TcxComboBox
    Left = 584
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
    TabOrder = 9
    Width = 137
  end
  object RzPanel8: TRzPanel
    Left = 0
    Top = 0
    Width = 364
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'PERBANDINGAN DRD'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 33
    Width = 364
    Height = 234
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 20966
    BorderWidth = 3
    Color = clWhite
    TabOrder = 11
    object cxLabel1: TcxLabel
      Left = 32
      Top = 19
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
    object kodegol: TcxComboBox
      Left = 127
      Top = 47
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
      TabOrder = 1
      Width = 60
    end
    object cekkodegol: TcxCheckBox
      Left = 15
      Top = 47
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
      Left = 15
      Top = 75
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
    object koderayon: TcxComboBox
      Left = 127
      Top = 75
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
      TabOrder = 4
      Width = 60
    end
    object cekwil: TcxCheckBox
      Left = 15
      Top = 103
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      OnClick = cekwilClick
      Width = 97
    end
    object kodewil: TcxComboBox
      Left = 127
      Top = 103
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
      TabOrder = 6
      Width = 60
    end
    object namarayon: TcxComboBox
      Left = 191
      Top = 75
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
      TabOrder = 7
      Width = 154
    end
    object golongan: TcxComboBox
      Left = 191
      Top = 47
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
      TabOrder = 8
      Width = 154
    end
    object wilayah: TcxComboBox
      Left = 191
      Top = 103
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
      TabOrder = 9
      Width = 154
    end
    object periode: TRzDateTimePicker
      Left = 128
      Top = 18
      Width = 153
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
      TabOrder = 10
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
      Top = 138
      Width = 326
      Height = 36
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 19
      Top = 178
      Width = 326
      Height = 36
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
      '  kini.kodegol,'
      '  g.golongan,'
      '  kini.kodewil,'
      '  w.wilayah,'
      '  COALESCE(kini.lembar, 0) AS lembar1,'
      '  COALESCE(lalu.lembar, 0)  AS lembar2,'
      '  COALESCE(kini.pakai, 0) AS pakai1,'
      '  COALESCE(lalu.pakai, 0)  AS pakai2,'
      '  COALESCE(kini.biayapemakaian, 0) AS biayapemakaian1,'
      '  COALESCE(lalu.biayapemakaian, 0)  AS biayapemakaian2,'
      '  COALESCE(kini.administrasi, 0)AS administrasi1,'
      '  COALESCE(lalu.administrasi, 0)  AS administrasi2,'
      '  COALESCE(kini.beban, 0) AS beban1,'
      '  COALESCE(lalu.beban, 0)  AS beban2,'
      'COALESCE(kini.pemeliharaan, 0) AS pemeliharaan1,'
      '  COALESCE(lalu.pemeliharaan, 0)  AS pemeliharaan2,'
      'COALESCE(kini.retribusi, 0) AS retribusi1,'
      '  COALESCE(lalu.retribusi, 0)  AS retribusi2,'
      '  COALESCE(kini.rekair, 0)  AS rekair1,'
      '  COALESCE(lalu.rekair, 0)  AS rekair2,  '
      
        '  COALESCE(kini.rekair, 0) - COALESCE(lalu.rekair, 0)  AS naiktu' +
        'run,'
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
      ':footer as footer'
      'FROM')
    Connection = DM.Conn
    Left = 335
    Top = 96
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
    ReportOptions.LastChange = 42474.970604768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 311
    Top = 320
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 785.764287000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 321.260050000000000000
          Top = 41.574830000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Bulan/Tahun : ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 321.260050000000000000
          Top = 11.338590000000000000
          Width = 328.819110000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKAPITULASI DAFTAR REKENING YANG DITAGIH'
            'PERBANDINGAN BULAN INI & BULAN LALU')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 684.094930000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 408.189240000000000000
          Top = 41.574830000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '???')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 684.094930000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
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
            '[Time]')
          ParentFont = False
        end
        object keterangan: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
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
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 294.803340000000000000
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
        object Memo106: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 294.803340000000000000
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
      object MasterData1: TfrxMasterData
        Height = 71.811070000000000000
        Top = 272.126160000000000000
        Width = 785.764287000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 52.913420000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 208.254639600000000000
          Width = 57.073439600000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai1"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 269.132975170000000000
          Width = 98.927295300000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian1"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 444.158189930000000000
          Width = 72.293023490000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan1"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 584.533485370000000000
          Width = 95.122399330000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair1"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 151.181200000000000000
          Width = 53.268543620000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."lembar1"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 207.874150000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 268.346630000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 370.393940000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 442.205010000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line55: TfrxLineView
          Left = 517.795610000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 680.315400000000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 770.152439990000000000
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
          Left = 154.960730000000000000
          Top = 0.312384070000000000
          Height = 24.027225230000000000
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
        object Memo27: TfrxMemoView
          Left = 371.865166440000000000
          Width = 68.488127520000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi1"]')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 11.338590000000000000
          Width = 759.766802680000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 679.426660910000000000
          Top = 3.779530000000000000
          Width = 86.723727260000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.;(#,##0.)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."naikturun"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 208.254639600000000000
          Top = 27.266609290000000000
          Width = 57.073439600000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai2"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 269.132975170000000000
          Top = 27.266609290000000000
          Width = 98.927295300000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian2"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 444.158189930000000000
          Top = 27.266609290000000000
          Width = 72.293023490000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan2"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 584.533485370000000000
          Top = 27.266609290000000000
          Width = 95.122399330000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair2"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 151.181200000000000000
          Top = 27.266609290000000000
          Width = 53.268543620000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."lembar2"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 371.865166440000000000
          Top = 27.266609290000000000
          Width = 68.488127520000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi2"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 519.730293490000000000
          Width = 62.015098680000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."retribusi1"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 582.898655420000000000
          Height = 24.027225230000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 519.730293490000000000
          Top = 27.266609290000000000
          Width = 62.015098680000000000
          Height = 25.646810710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."retribusi2"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 260.787570000000000000
        Top = 737.008350000000000000
        Visible = False
        Width = 785.764287000000000000
        object Memo28: TfrxMemoView
          Left = 581.908422680000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair1">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 442.065812680000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan1">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 370.254742680000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi1">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 268.207432680000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian1">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 203.955422680000000000
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai1">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 150.960730000000000000
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembar1">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Total : ')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 91.708720000000000000
          Width = 759.766802680000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 154.821532680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 207.734952680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 268.207432680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 370.254742680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 442.065812680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 517.656412680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 680.176202680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 770.884922680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 11.419862680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo47: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 581.908422680000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair2">,MasterData1)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 442.065812680000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan2">,MasterData1)]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 370.254742680000000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi2">,MasterData1)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 268.207432680000000000
          Top = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian2">,MasterData1)]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 203.955422680000000000
          Top = 49.133890000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai2">,MasterData1)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 150.960730000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembar2">,MasterData1)]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 678.317451820000000000
          Top = 3.779530000000000000
          Width = 86.723727260000000000
          Height = 83.149660000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.;(#,##0.)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."naikturun">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 517.366708840000000000
          Top = 3.779530000000000000
          Width = 61.601664690000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."retribusi1">,MasterData1)]')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Left = 582.210566410000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          Left = 517.366708840000000000
          Top = 49.133890000000000000
          Width = 61.601664690000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."retribusi2">,MasterData1)]')
          ParentFont = False
        end
        object jab1: TfrxMemoView
          Left = 75.590600000000000000
          Top = 136.063080000000000000
          Width = 197.480442500000000000
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
        object nama1: TfrxMemoView
          Left = 75.590600000000000000
          Top = 215.433210000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 75.590600000000000000
          Top = 230.551330000000000000
          Width = 207.874150000000000000
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
        object Date: TfrxMemoView
          Left = 536.693260000000000000
          Top = 102.047310000000000000
          Width = 279.685220000000000000
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
        object Memo24: TfrxMemoView
          Left = 75.590600000000000000
          Top = 120.944960000000000000
          Width = 196.535560000000000000
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
        object Memo34: TfrxMemoView
          Left = 302.362400000000000000
          Top = 136.063080000000000000
          Width = 197.480442500000000000
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
        object Memo38: TfrxMemoView
          Left = 302.362400000000000000
          Top = 215.433210000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 302.362400000000000000
          Top = 230.551330000000000000
          Width = 207.874150000000000000
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
        object Memo71: TfrxMemoView
          Left = 302.362400000000000000
          Top = 120.944960000000000000
          Width = 200.315090000000000000
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
        object Memo77: TfrxMemoView
          Left = 536.693260000000000000
          Top = 136.063080000000000000
          Width = 197.480442500000000000
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
        object Memo78: TfrxMemoView
          Left = 536.693260000000000000
          Top = 215.433210000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 536.693260000000000000
          Top = 230.551330000000000000
          Width = 207.874150000000000000
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
        object Memo81: TfrxMemoView
          Left = 536.693260000000000000
          Top = 120.944960000000000000
          Width = 200.315090000000000000
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
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Width = 759.766802680000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 785.764287000000000000
        Stretched = True
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Width = 759.766802680000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 83.149660000000000000
        Top = 166.299320000000000000
        Width = 785.764287000000000000
        Condition = 'rek."kodewil"'
        StartNewPage = True
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 13.527520000000000000
          Top = 37.760200890000000000
          Width = 31.178110620000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 47.429978240000000000
          Top = 37.760200890000000000
          Width = 103.747332030000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 153.719030910000000000
          Top = 37.760200890000000000
          Width = 52.496900120000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 206.215931020000000000
          Top = 37.760200890000000000
          Width = 58.887895990000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 269.124114340000000000
          Top = 37.760200890000000000
          Width = 100.565424940000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 441.902866270000000000
          Top = 37.760200890000000000
          Width = 72.819123830000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 579.029936200000000000
          Top = 37.760200890000000000
          Width = 96.463097160000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 368.124510050000000000
          Top = 37.760200890000000000
          Width = 71.244879720000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 11.077058490000000000
          Top = 37.408527950000000000
          Width = 759.947061510000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 207.874150000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 154.960730000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 268.346630000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 370.393940000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line59: TfrxLineView
          Left = 442.205010000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 517.795610000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 680.315400000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 770.152439990000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 691.653990000000000000
          Top = 37.677180000000000000
          Width = 70.889452750000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Naik'
            '(Turun)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 517.795610000000000000
          Top = 37.760200890000000000
          Width = 62.466403150000000000
          Height = 37.696656360000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ret')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Left = 582.898655420000000000
          Top = 37.677180000000000000
          Height = 31.489269300000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 389.646713620000000000
          Height = 18.087750710000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'WILAYAH : [rek."wilayah"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 264.567100000000000000
        Top = 411.968770000000000000
        Width = 785.764287000000000000
        Stretched = True
        object Memo40: TfrxMemoView
          Left = 581.908422680000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair1">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 442.065812680000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan1">,MasterData1)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 370.254742680000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi1">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 268.207432680000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian1">,MasterData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 203.955422680000000000
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai1">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 150.960730000000000000
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembar1">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Sub Total : ')
          ParentFont = False
        end
        object Line31: TfrxLineView
          Left = 11.338590000000000000
          Top = 91.708720000000000000
          Width = 759.766802680000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 154.821532680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 207.734952680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 268.207432680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 370.254742680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 442.065812680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 517.656412680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 680.176202680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 770.884922680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 11.419862680000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo54: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 581.908422680000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."rekair2">,MasterData1)]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 442.065812680000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan2">,MasterData1)]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 370.254742680000000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."administrasi2">,MasterData1)]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 268.207432680000000000
          Top = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian2">,MasterData1)]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 203.955422680000000000
          Top = 49.133890000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai2">,MasterData1)]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 150.960730000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."lembar2">,MasterData1)]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 678.317451820000000000
          Top = 3.779530000000000000
          Width = 86.723727260000000000
          Height = 83.149660000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '#,##0.;(#,##0.)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."naikturun">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 517.366708840000000000
          Top = 3.779530000000000000
          Width = 61.601664690000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."retribusi1">,MasterData1)]')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 582.210566410000000000
          Height = 91.961749300000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 517.366708840000000000
          Top = 49.133890000000000000
          Width = 61.601664690000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."retribusi2">,MasterData1)]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 548.031850000000000000
          Top = 113.385900000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."footer"] , [Date]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 313.700990000000000000
          Top = 147.401670000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab2"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 313.700990000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 313.700990000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
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
            '[rek."nik2"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 313.700990000000000000
          Top = 132.283550000000000000
          Width = 196.535560000000000000
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
            '[rek."ket2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          Left = 548.031850000000000000
          Top = 147.401670000000000000
          Width = 212.598562500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab3"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 548.031850000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          Left = 548.031850000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
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
            '[rek."nik3"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 548.031850000000000000
          Top = 132.283550000000000000
          Width = 211.653680000000000000
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
            '[rek."ket3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          Left = 79.370130000000000000
          Top = 147.401670000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."jab1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo88: TfrxMemoView
          Left = 79.370130000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          Left = 79.370130000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
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
            '[rek."nik1"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 79.370130000000000000
          Top = 132.283550000000000000
          Width = 196.535560000000000000
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
            '[rek."ket1"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
