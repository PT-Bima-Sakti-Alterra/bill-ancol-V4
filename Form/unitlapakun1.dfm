object ulapakun1: Tulapakun1
  Left = 473
  Top = 168
  BorderStyle = bsNone
  Caption = 'ulapakun1'
  ClientHeight = 177
  ClientWidth = 331
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
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 177
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cekkasir: TcxCheckBox
      Left = 376
      Top = 330
      Caption = 'Kasir'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Transparent = True
      OnClick = cekkasirClick
      Width = 57
    end
    object kasir: TcxComboBox
      Left = 464
      Top = 329
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 169
    end
    object cxButton1: TcxButton
      Left = 30
      Top = 116
      Width = 135
      Height = 30
      Caption = 'Tampilkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 172
      Top = 116
      Width = 121
      Height = 30
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 21
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel20: TRzPanel
      Left = 6
      Top = 6
      Width = 319
      Height = 37
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'REKAP PENERIMAAN NONAIR UNTUK AKUN'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object tanggal1: TcxDateEdit
      Left = 112
      Top = 56
      TabOrder = 5
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 45
      Top = 56
      Caption = 'Tanggal'
      Transparent = True
    end
    object tanggal2: TcxDateEdit
      Left = 112
      Top = 80
      TabOrder = 7
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 69
      Top = 80
      Caption = 'S/d'
      Transparent = True
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
    ReportOptions.CreateDate = 42865.442837233800000000
    ReportOptions.LastChange = 42865.476777800900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 168
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 362.834880000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'PEMERINTAH KOTAMADIA DATI II YOGYAKARTA'
            'PERUSAHAAN DAERAH AIR MINUM "TIRTAMARTA"')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Y O G Y A K A R T A')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 434.645950000000000000
          Top = 60.472480000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Rekapitulasi Penerimaan Non Air (Kas dan Bank)')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 79.370130000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 434.645950000000000000
          Top = 98.267780000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Dicetak Tanggal')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 540.472790000000000000
          Top = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 540.472790000000000000
          Top = 98.267780000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 559.370440000000000000
          Top = 98.267780000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]  [Time]')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          Left = 559.370440000000000000
          Top = 79.370130000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Teller')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 86.929190000000000000
        Top = 381.732530000000000000
        Width = 1254.803960000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = -3.779530000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'loketbayar'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."loketbayar"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biayapasang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayapasang"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jaminan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."jaminan"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biaya1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biaya1"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'administrasi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."administrasi"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biayaperbaikan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayaperbaikan"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biayafpb'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayafpb"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'gwm'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."gwm"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."meterkas"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayateswm"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'dendatunggakan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."dendatunggakan"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 687.874460000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biayagantinama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayagantinama"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 748.346940000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'meterai'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."meterai"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 808.819420000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."lainnya"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 869.291900000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayaprosestutup"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 929.764380000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'biayaprosesbuka'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayaprosesbuka"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 990.236860000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'pul'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."pul"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 1050.709340000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."memakaiairtidaksah"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 1171.654300000000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."total"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'biayakartupemakaianair'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayakartupemakaianair"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sewakendaraantangki'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."sewakendaraantangki"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 325.039580000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penjualanairtangki'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."penjualanairtangki"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 385.512060000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'perbaikan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."perbaikan"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 445.984540000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."piutangsisapemakaianair"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 506.457020000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'piutanggwm'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."piutanggwm"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 566.929500000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."piutangmeterkas"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 627.401980000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."dendapelanggaran"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayabahan"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 748.346940000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'angsurannonair'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."angsurannonair"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 808.819420000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'ppn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."ppn"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 83.149660000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'dendaadmpelanggan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."dendaadmpelanggan"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 143.622140000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayasegelputus"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 130.022271150000000000
        Top = 192.756030000000000000
        Width = 1254.803960000000000000
        object Memo6: TfrxMemoView
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 45.354360000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode'
            'Teller')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 83.149660000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Pasang')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 143.622140000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Uang Jaminan')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 204.094620000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Buka'
            'Tutup')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Adm')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 325.039580000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Perbaikan')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 385.512060000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'FPB')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 445.984540000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'GWM')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 506.457020000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Meter Kas')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Tes WM')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Denda')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 687.874460000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Gnt.Nama')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 748.346940000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Meterai')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 808.819420000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Lain-Lain')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 869.291900000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Proses Tutup')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 929.764380000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Proses Buka')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 990.236860000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'PUL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 1050.709340000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Memakai'
            'Air '
            'Tdk.Sah')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 1171.654300000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 204.094620000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Kartu'
            'Air')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 264.567100000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Sewa'
            'Mbl.'
            'Tangki')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 325.039580000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pnjl.'
            'Air'
            'Tangki')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 385.512060000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Piut.'
            'Perbaikan')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 445.984540000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Piut.'
            'PUL')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 506.457020000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Piut.'
            'GWM')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 566.929500000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Piut.'
            'Mtr.Kas')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 627.401980000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Denda'
            'Langgar')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 687.874460000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Bahan')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 748.346940000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Angsuran'
            'Non Air')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 808.819420000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PPN')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 83.149660000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Denda'
            'Adm.'
            'PLG')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 143.622140000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'By.'
            'Segel Pts')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 83.149660000000000000
          Top = 60.472480000000000000
          Width = 1088.504640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo32: TfrxMemoView
          Left = 83.149660000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.10')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 143.622140000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '62.04.20')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.92')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.97')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 325.039580000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.80')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 566.929500000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.72')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 627.401980000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.50')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.51')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 748.346940000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '96.02.60')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 929.764380000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.40')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 990.236860000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.01.90')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 83.149660000000000000
          Top = 109.606370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.96')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 264.567100000000000000
          Top = 109.606370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.02.96')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 325.039580000000000000
          Top = 109.606370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '81.01.90')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 385.512060000000000000
          Top = 109.606370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '13.02.11')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 445.984540000000000000
          Top = 109.606370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '13.02.12')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 170.078850000000000000
        Top = 529.134200000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo90: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayapasang">,MasterData1)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."jaminan">,MasterData1)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biaya1">,MasterData1)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayaperbaikan">,MasterData1)]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayafpb">,MasterData1)]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."gwm">,MasterData1)]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."meterkas">,MasterData1)]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayateswm">,MasterData1)]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendatunggakan">,MasterData1)]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 687.874460000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayagantinama">,MasterData1)]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 748.346940000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."meterai">,MasterData1)]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 808.819420000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."lainnya">,MasterData1)]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 869.291900000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayaprosestutup">,MasterData1)]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 929.764380000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayaprosesbuka">,MasterData1)]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 990.236860000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."pul">,MasterData1)]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 1050.709340000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."memakaiairtidaksah">,MasterData1)]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 1171.654300000000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayakartupemakaianair">,MasterData1)]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 264.567100000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."sewakendaraantangki">,MasterData1)]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 325.039580000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."penjualanairtangki">,MasterData1)]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 385.512060000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."perbaikan">,MasterData1)]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 445.984540000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."piutangsisapemakaianair">,MasterData1)]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 506.457020000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."piutanggwm">,MasterData1)]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 566.929500000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."piutangmeterkas">,MasterData1)]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 627.401980000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendapelanggaran">,MasterData1)]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 687.874460000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayabahan">,MasterData1)]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 748.346940000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."angsurannonair">,MasterData1)]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 808.819420000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."ppn">,MasterData1)]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 83.149660000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendaadmpelanggan">,MasterData1)]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 143.622140000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayasegelputus">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo121: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Qcek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  loketbayar,'
      '  kasir,  '
      '  SUM(biayapasang) AS biayapasang,'
      '  SUM(jaminan) AS jaminan,'
      '  SUM(biaya1) AS biaya1,'
      '  SUM(administrasi) AS administrasi,'
      '  SUM(biayaperbaikan) AS biayaperbaikan,'
      '  SUM(biayafpb) AS biayafpb,'
      '  SUM(gwm) AS gwm,'
      '  SUM(meterkas) AS meterkas,'
      '  SUM(biayateswm) AS biayateswm,'
      '  SUM(dendatunggakan)AS dendatunggakan,'
      '  SUM(biayagantinama) AS biayagantinama,'
      '  SUM(meterai)AS meterai,'
      '  SUM(lainnya)AS lainnya,'
      '  SUM(biayaprosestutup)AS biayaprosestutup,'
      '  SUM(biayaprosesbuka) AS biayaprosesbuka,'
      '  SUM(pul) AS pul,'
      '  SUM(memakaiairtidaksah) AS memakaiairtidaksah,'
      '  SUM(dendaadmpelanggan)AS dendaadmpelanggan, '
      '  SUM(biayasegelputus)AS biayasegelputus,'
      '  SUM(biayakartupemakaianair) AS biayakartupemakaianair,'
      '  SUM(sewakendaraantangki) AS sewakendaraantangki,'
      '  SUM(penjualanairtangki) AS penjualanairtangki,'
      '  SUM(perbaikan) AS perbaikan,'
      '  SUM(piutangsisapemakaianair) AS piutangsisapemakaianair,'
      '  SUM(piutanggwm) AS piutanggwm,'
      '  SUM(piutangmeterkas) AS piutangmeterkas,'
      '  SUM(dendapelanggaran) AS dendapelanggaran,'
      '  SUM(biayabahan) AS biayabahan,  '
      '  SUM(angsuran1+angsuran2) AS angsurannonair,'
      '  SUM(ppn) AS ppn,'
      '  SUM(total) AS total '
      'FROM'
      '  nonair '
      'WHERE flaglunas = "1" '
      
        '  AND DATE(waktubayar) >= :tanggal1 AND DATE(waktubayar) <= :tan' +
        'ggal2')
    Connection = DM.Conn
    Left = 96
    Top = 208
  end
  object DScek: TMyDataSource
    DataSet = Qcek
    Left = 360
    Top = 144
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'loketbayar=loketbayar'
      'kasir=kasir'
      'biayapasang=biayapasang'
      'jaminan=jaminan'
      'biaya1=biaya1'
      'administrasi=administrasi'
      'biayaperbaikan=biayaperbaikan'
      'biayafpb=biayafpb'
      'gwm=gwm'
      'meterkas=meterkas'
      'biayateswm=biayateswm'
      'dendatunggakan=dendatunggakan'
      'biayagantinama=biayagantinama'
      'meterai=meterai'
      'lainnya=lainnya'
      'biayaprosestutup=biayaprosestutup'
      'biayaprosesbuka=biayaprosesbuka'
      'pul=pul'
      'memakaiairtidaksah=memakaiairtidaksah'
      'dendaadmpelanggan=dendaadmpelanggan'
      'biayasegelputus=biayasegelputus'
      'biayakartupemakaianair=biayakartupemakaianair'
      'sewakendaraantangki=sewakendaraantangki'
      'penjualanairtangki=penjualanairtangki'
      'perbaikan=perbaikan'
      'piutangsisapemakaianair=piutangsisapemakaianair'
      'piutanggwm=piutanggwm'
      'piutangmeterkas=piutangmeterkas'
      'dendapelanggaran=dendapelanggaran'
      'biayabahan=biayabahan'
      'angsurannonair=angsurannonair'
      'ppn=ppn'
      'total=total')
    DataSource = DScek
    BCDToCurrency = False
    Left = 248
    Top = 64
  end
  object ActionList1: TActionList
    Left = 328
    Top = 88
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
