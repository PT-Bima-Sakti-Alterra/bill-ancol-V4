object urekaplppjogja2: Turekaplppjogja2
  Left = 310
  Top = 171
  BorderStyle = bsNone
  Caption = 'urekaplppjogja2'
  ClientHeight = 187
  ClientWidth = 338
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 187
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 48
      Top = 58
      Caption = 'Tanggal'
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
      Left = 32
      Top = 120
      Width = 137
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
      Left = 176
      Top = 120
      Width = 129
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
      Text = 'Hanya yang belum dibayar'
      Width = 217
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 326
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'REKAP PENERIMAAN'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object tanggal1: TcxDateEdit
      Left = 112
      Top = 56
      TabOrder = 12
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 72
      Top = 82
      Caption = 's/d'
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
      Left = 112
      Top = 80
      TabOrder = 14
      Width = 121
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT * FROM dumprekaplppakun_air WHERE ket<>"ANGSURAN " ORDER ' +
        'BY CAST(loketbayar AS UNSIGNED),ket,periode ASC;')
    Connection = DM.Conn
    Left = 384
    Top = 152
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 472
    Top = 160
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 336
    Top = 192
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
    Left = 288
    Top = 56
    Datasets = <
      item
        DataSet = na
        DataSetName = 'na'
      end
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
      end
      item
        DataSet = rekap
        DataSetName = 'rekap'
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
        Height = 49.133890000000000000
        Top = 328.819110000000000000
        Width = 1254.803960000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rek."loketbayar"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 60.472480000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rek."periode"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l2'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g2'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l3'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l3"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g3'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g3"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l4'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l4"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g4'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g4"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l5'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g5'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g5"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l6'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l6"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g6'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g6"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l7'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l7"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g7'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g7"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l8'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l8"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g8'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g8"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l9'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l9"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g9'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g9"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l10'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l10"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g10'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g10"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 755.906000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l11'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l11"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 755.906000000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g11'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g11"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 820.158010000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l12'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."l12"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 820.158010000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g12'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."g12"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 884.410020000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lembarrekair'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."lembarrekair"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 948.662030000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'uangrekair'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."uangrekair"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 1107.402290000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."total"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 147.401670000000000000
        Width = 1254.803960000000000000
        object Memo31: TfrxMemoView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Loket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Bulan'
            'Rekening')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 306.141930000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-B')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 498.897960000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-C')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 627.401980000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 691.653990000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 755.906000000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 820.158010000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'V')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 884.410020000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Lembar'
            'Rekening'
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 948.662030000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah Rp.'
            'Rekening Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 1164.095240000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Tagihan Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 22.677180000000000000
          Top = 71.811070000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo166: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal : [Page#] - [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo147: TfrxMemoView
          Left = 449.764070000000000000
          Top = 11.338590000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PERHITUNGAN BAYAR KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 449.764070000000000000
          Top = 30.236240000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan: TfrxMemoView
          Left = 449.764070000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 294.803340000000000000
        Top = 529.134200000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo32: TfrxMemoView
          Left = 113.385900000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l1">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g1">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l2">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 177.637910000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g2">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 241.889920000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l3">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g3">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 306.141930000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l4">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g4">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l5">,MasterData1)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 370.393940000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g5">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l6">,MasterData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g6">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 498.897960000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l7">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 498.897960000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g7">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l8">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 563.149970000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g8">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l9">,MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 627.401980000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g9">,MasterData1)]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l10">,MasterData1)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 691.653990000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g10">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 755.906000000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l11">,MasterData1)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 755.906000000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g11">,MasterData1)]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 820.158010000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l12">,MasterData1)]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 820.158010000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g12">,MasterData1)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 884.410020000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembarrekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 948.662030000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."uangrekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 1103.622760000000000000
          Top = 30.236240000000000000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 22.677180000000000000
          Top = 64.252010000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 26.456710000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo302: TfrxMemoView
          Left = 102.047310000000000000
          Top = 109.606370000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo303: TfrxMemoView
          Left = 102.047310000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo304: TfrxMemoView
          Left = 102.047310000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo305: TfrxMemoView
          Left = 907.087200000000000000
          Top = 75.590600000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo306: TfrxMemoView
          Left = 102.047310000000000000
          Top = 94.488250000000000000
          Width = 207.874150000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo307: TfrxMemoView
          Left = 495.118430000000000000
          Top = 109.606370000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo308: TfrxMemoView
          Left = 495.118430000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo309: TfrxMemoView
          Left = 495.118430000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo310: TfrxMemoView
          Left = 495.118430000000000000
          Top = 94.488250000000000000
          Width = 196.535560000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo311: TfrxMemoView
          Left = 907.087200000000000000
          Top = 109.606370000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo312: TfrxMemoView
          Left = 907.087200000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo313: TfrxMemoView
          Left = 907.087200000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo314: TfrxMemoView
          Left = 907.087200000000000000
          Top = 94.488250000000000000
          Width = 200.315090000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 1254.803960000000000000
        Condition = 'rek."loketbayar"'
        Stretched = True
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 68.031540000000000000
        Top = 400.630180000000000000
        Width = 1254.803960000000000000
        object Memo77: TfrxMemoView
          Left = 113.385900000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l1">,MasterData1)]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g1">,MasterData1)]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l2">,MasterData1)]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 177.637910000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g2">,MasterData1)]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 241.889920000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l3">,MasterData1)]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g3">,MasterData1)]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 306.141930000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l4">,MasterData1)]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g4">,MasterData1)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 370.393940000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l5">,MasterData1)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 370.393940000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g5">,MasterData1)]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l6">,MasterData1)]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g6">,MasterData1)]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 498.897960000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l7">,MasterData1)]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 498.897960000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g7">,MasterData1)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l8">,MasterData1)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 563.149970000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g8">,MasterData1)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l9">,MasterData1)]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 627.401980000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g9">,MasterData1)]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l10">,MasterData1)]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 691.653990000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g10">,MasterData1)]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 755.906000000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l11">,MasterData1)]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 755.906000000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g11">,MasterData1)]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 820.158010000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."l12">,MasterData1)]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 820.158010000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."g12">,MasterData1)]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 884.410020000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."lembarrekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 948.662030000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."uangrekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 1107.402290000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 22.677180000000000000
          Top = 64.252010000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 49.133890000000000000
        Top = 328.819110000000000000
        Width = 1254.803960000000000000
        DataSet = rek2
        DataSetName = 'rek2'
        RowCount = 0
        Stretched = True
        object Memo369: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."loketbayar"]')
          ParentFont = False
        end
        object Memo370: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l1"]')
          ParentFont = False
        end
        object Memo371: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g1"]')
          ParentFont = False
        end
        object Memo372: TfrxMemoView
          Left = 60.472480000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."periode"]')
          ParentFont = False
        end
        object Memo373: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l2"]')
          ParentFont = False
        end
        object Memo374: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g2"]')
          ParentFont = False
        end
        object Memo375: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l3"]')
          ParentFont = False
        end
        object Memo376: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g3"]')
          ParentFont = False
        end
        object Memo377: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l4"]')
          ParentFont = False
        end
        object Memo378: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g4"]')
          ParentFont = False
        end
        object Memo379: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l5"]')
          ParentFont = False
        end
        object Memo380: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g5"]')
          ParentFont = False
        end
        object Memo381: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l6"]')
          ParentFont = False
        end
        object Memo382: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g6"]')
          ParentFont = False
        end
        object Memo383: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l7"]')
          ParentFont = False
        end
        object Memo384: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g7"]')
          ParentFont = False
        end
        object Memo385: TfrxMemoView
          Left = 563.149970000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l8"]')
          ParentFont = False
        end
        object Memo386: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g8"]')
          ParentFont = False
        end
        object Memo387: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l9"]')
          ParentFont = False
        end
        object Memo388: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g9"]')
          ParentFont = False
        end
        object Memo389: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l10"]')
          ParentFont = False
        end
        object Memo390: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g10"]')
          ParentFont = False
        end
        object Memo391: TfrxMemoView
          Left = 755.906000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l11"]')
          ParentFont = False
        end
        object Memo392: TfrxMemoView
          Left = 755.906000000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g11"]')
          ParentFont = False
        end
        object Memo393: TfrxMemoView
          Left = 820.158010000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."l12"]')
          ParentFont = False
        end
        object Memo394: TfrxMemoView
          Left = 820.158010000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."g12"]')
          ParentFont = False
        end
        object Memo395: TfrxMemoView
          Left = 884.410020000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."lembarrekair"]')
          ParentFont = False
        end
        object Memo396: TfrxMemoView
          Left = 948.662030000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."uangrekair"]')
          ParentFont = False
        end
        object Memo397: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."pemeliharaan"]')
          ParentFont = False
        end
        object Memo398: TfrxMemoView
          Left = 1118.740880000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek2."total"]')
          ParentFont = False
        end
      end
      object PageHeader4: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 147.401670000000000000
        Width = 1254.803960000000000000
        object Memo400: TfrxMemoView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Loket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo401: TfrxMemoView
          Left = 60.472480000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo402: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo403: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo404: TfrxMemoView
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo405: TfrxMemoView
          Left = 306.141930000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo406: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo407: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-B')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo408: TfrxMemoView
          Left = 498.897960000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-C')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo409: TfrxMemoView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo410: TfrxMemoView
          Left = 627.401980000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo411: TfrxMemoView
          Left = 691.653990000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo412: TfrxMemoView
          Left = 755.906000000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo413: TfrxMemoView
          Left = 820.158010000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'V')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo414: TfrxMemoView
          Left = 884.410020000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Lembar'
            'Rekening'
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo415: TfrxMemoView
          Left = 948.662030000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah Rp.'
            'Rekening Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo416: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo417: TfrxMemoView
          Left = 1103.622760000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Tagihan Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 22.677180000000000000
          Top = 71.811070000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo418: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'ANGSURAN TUNGGAKAN REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo419: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal : [Page#] - [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle4: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo421: TfrxMemoView
          Left = 449.764070000000000000
          Top = 11.338590000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PERHITUNGAN BAYAR KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo422: TfrxMemoView
          Left = 449.764070000000000000
          Top = 30.236240000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ANGSURAN TUNGGAKAN REKENING AIR ')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan4: TfrxMemoView
          Left = 449.764070000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary4: TfrxReportSummary
        Height = 294.803340000000000000
        Top = 529.134200000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Line20: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 22.677180000000000000
          Top = 64.252010000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo452: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo453: TfrxMemoView
          Left = 102.047310000000000000
          Top = 109.606370000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo454: TfrxMemoView
          Left = 102.047310000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo455: TfrxMemoView
          Left = 102.047310000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo456: TfrxMemoView
          Left = 907.087200000000000000
          Top = 75.590600000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo457: TfrxMemoView
          Left = 102.047310000000000000
          Top = 94.488250000000000000
          Width = 207.874150000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo458: TfrxMemoView
          Left = 495.118430000000000000
          Top = 109.606370000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo459: TfrxMemoView
          Left = 495.118430000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo460: TfrxMemoView
          Left = 495.118430000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo461: TfrxMemoView
          Left = 495.118430000000000000
          Top = 94.488250000000000000
          Width = 196.535560000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo462: TfrxMemoView
          Left = 907.087200000000000000
          Top = 109.606370000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo463: TfrxMemoView
          Left = 907.087200000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo464: TfrxMemoView
          Left = 907.087200000000000000
          Top = 204.094620000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo465: TfrxMemoView
          Left = 907.087200000000000000
          Top = 94.488250000000000000
          Width = 200.315090000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l1">,MasterData4)]')
          ParentFont = False
        end
        object Memo399: TfrxMemoView
          Left = 113.385900000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g1">,MasterData4)]')
          ParentFont = False
        end
        object Memo420: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l2">,MasterData4)]')
          ParentFont = False
        end
        object Memo424: TfrxMemoView
          Left = 177.637910000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g2">,MasterData4)]')
          ParentFont = False
        end
        object Memo425: TfrxMemoView
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l3">,MasterData4)]')
          ParentFont = False
        end
        object Memo426: TfrxMemoView
          Left = 241.889920000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g3">,MasterData4)]')
          ParentFont = False
        end
        object Memo427: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l4">,MasterData4)]')
          ParentFont = False
        end
        object Memo428: TfrxMemoView
          Left = 306.141930000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g4">,MasterData4)]')
          ParentFont = False
        end
        object Memo429: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l5">,MasterData4)]')
          ParentFont = False
        end
        object Memo430: TfrxMemoView
          Left = 370.393940000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g5">,MasterData4)]')
          ParentFont = False
        end
        object Memo431: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l6">,MasterData4)]')
          ParentFont = False
        end
        object Memo432: TfrxMemoView
          Left = 434.645950000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g6">,MasterData4)]')
          ParentFont = False
        end
        object Memo433: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l7">,MasterData4)]')
          ParentFont = False
        end
        object Memo434: TfrxMemoView
          Left = 498.897960000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g7">,MasterData4)]')
          ParentFont = False
        end
        object Memo435: TfrxMemoView
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l8">,MasterData4)]')
          ParentFont = False
        end
        object Memo436: TfrxMemoView
          Left = 563.149970000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g8">,MasterData4)]')
          ParentFont = False
        end
        object Memo437: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l9">,MasterData4)]')
          ParentFont = False
        end
        object Memo438: TfrxMemoView
          Left = 627.401980000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g9">,MasterData4)]')
          ParentFont = False
        end
        object Memo439: TfrxMemoView
          Left = 691.653990000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l10">,MasterData4)]')
          ParentFont = False
        end
        object Memo440: TfrxMemoView
          Left = 691.653990000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g10">,MasterData4)]')
          ParentFont = False
        end
        object Memo441: TfrxMemoView
          Left = 755.906000000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l11">,MasterData4)]')
          ParentFont = False
        end
        object Memo442: TfrxMemoView
          Left = 755.906000000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g11">,MasterData4)]')
          ParentFont = False
        end
        object Memo443: TfrxMemoView
          Left = 820.158010000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l12">,MasterData4)]')
          ParentFont = False
        end
        object Memo444: TfrxMemoView
          Left = 820.158010000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g12">,MasterData4)]')
          ParentFont = False
        end
        object Memo445: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembarrekair">,MasterData4)]')
          ParentFont = False
        end
        object Memo446: TfrxMemoView
          Left = 948.662030000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."uangrekair">,MasterData4)]')
          ParentFont = False
        end
        object Memo447: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."pemeliharaan">,MasterData4)]')
          ParentFont = False
        end
        object Memo448: TfrxMemoView
          Left = 1118.740880000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData2)]')
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 1254.803960000000000000
        Condition = 'rek."loketbayar"'
        Stretched = True
      end
      object GroupFooter5: TfrxGroupFooter
        Height = 68.031540000000000000
        Top = 400.630180000000000000
        Width = 1254.803960000000000000
        object Memo467: TfrxMemoView
          Left = 113.385900000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l1">,MasterData4)]')
          ParentFont = False
        end
        object Memo468: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g1">,MasterData4)]')
          ParentFont = False
        end
        object Memo469: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l2">,MasterData4)]')
          ParentFont = False
        end
        object Memo470: TfrxMemoView
          Left = 177.637910000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g2">,MasterData4)]')
          ParentFont = False
        end
        object Memo471: TfrxMemoView
          Left = 241.889920000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l3">,MasterData4)]')
          ParentFont = False
        end
        object Memo472: TfrxMemoView
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g3">,MasterData4)]')
          ParentFont = False
        end
        object Memo473: TfrxMemoView
          Left = 306.141930000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l4">,MasterData4)]')
          ParentFont = False
        end
        object Memo474: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g4">,MasterData4)]')
          ParentFont = False
        end
        object Memo475: TfrxMemoView
          Left = 370.393940000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l5">,MasterData4)]')
          ParentFont = False
        end
        object Memo476: TfrxMemoView
          Left = 370.393940000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g5">,MasterData4)]')
          ParentFont = False
        end
        object Memo477: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l6">,MasterData4)]')
          ParentFont = False
        end
        object Memo478: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g6">,MasterData4)]')
          ParentFont = False
        end
        object Memo479: TfrxMemoView
          Left = 498.897960000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l7">,MasterData4)]')
          ParentFont = False
        end
        object Memo480: TfrxMemoView
          Left = 498.897960000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g7">,MasterData4)]')
          ParentFont = False
        end
        object Memo481: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l8">,MasterData4)]')
          ParentFont = False
        end
        object Memo482: TfrxMemoView
          Left = 563.149970000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g8">,MasterData4)]')
          ParentFont = False
        end
        object Memo483: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l9">,MasterData4)]')
          ParentFont = False
        end
        object Memo484: TfrxMemoView
          Left = 627.401980000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g9">,MasterData4)]')
          ParentFont = False
        end
        object Memo485: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l10">,MasterData4)]')
          ParentFont = False
        end
        object Memo486: TfrxMemoView
          Left = 691.653990000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g10">,MasterData4)]')
          ParentFont = False
        end
        object Memo487: TfrxMemoView
          Left = 755.906000000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l11">,MasterData4)]')
          ParentFont = False
        end
        object Memo488: TfrxMemoView
          Left = 755.906000000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g11">,MasterData4)]')
          ParentFont = False
        end
        object Memo489: TfrxMemoView
          Left = 820.158010000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."l12">,MasterData4)]')
          ParentFont = False
        end
        object Memo490: TfrxMemoView
          Left = 820.158010000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."g12">,MasterData4)]')
          ParentFont = False
        end
        object Memo491: TfrxMemoView
          Left = 884.410020000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."lembarrekair">,MasterData4)]')
          ParentFont = False
        end
        object Memo492: TfrxMemoView
          Left = 948.662030000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."uangrekair">,MasterData4)]')
          ParentFont = False
        end
        object Memo493: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."pemeliharaan">,MasterData4)]')
          ParentFont = False
        end
        object Memo494: TfrxMemoView
          Left = 1118.740880000000000000
          Top = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek2."total">,MasterData2)]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 22.677180000000000000
          Top = 64.252010000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 49.133890000000000000
        Top = 294.803340000000000000
        Width = 1254.803960000000000000
        DataSet = rekap
        DataSetName = 'rekap'
        RowCount = 0
        Stretched = True
        object Memo214: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l1'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l1"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g1'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g1"]')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          Left = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = rekap
          DataSetName = 'rekap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."periode"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l2'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l2"]')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g2'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g2"]')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l3'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l3"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g3'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g3"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l4'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l4"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g4'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g4"]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l5'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l5"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g5'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g5"]')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l6'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l6"]')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g6'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g6"]')
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l7'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l7"]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g7'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g7"]')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 563.149970000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l8'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l8"]')
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g8'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g8"]')
          ParentFont = False
        end
        object Memo231: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l9'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l9"]')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g9'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g9"]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l10'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l10"]')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g10'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g10"]')
          ParentFont = False
        end
        object Memo235: TfrxMemoView
          Left = 755.906000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l10'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l10"]')
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          Left = 755.906000000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g11'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g11"]')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          Left = 820.158010000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'l12'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."l12"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          Left = 820.158010000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'g12'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."g12"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          Left = 884.410020000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'lembarrekair'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."lembarrekair"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          Left = 941.102970000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'uangrekair'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."uangrekair"]')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."pemeliharaan"]')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          Left = 1107.402290000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = rekap
          DataSetName = 'rekap'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rekap."total"]')
          ParentFont = False
        end
      end
      object PageHeader3: TfrxPageHeader
        Height = 86.929190000000000000
        Top = 147.401670000000000000
        Width = 1254.803960000000000000
        object Memo244: TfrxMemoView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo245: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo246: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'I-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo247: TfrxMemoView
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo248: TfrxMemoView
          Left = 306.141930000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo249: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IIA-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo250: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-B')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo251: TfrxMemoView
          Left = 498.897960000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'II-C')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo252: TfrxMemoView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo253: TfrxMemoView
          Left = 627.401980000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'III-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo254: TfrxMemoView
          Left = 691.653990000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo255: TfrxMemoView
          Left = 755.906000000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IV-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo256: TfrxMemoView
          Left = 820.158010000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'V')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo257: TfrxMemoView
          Left = 884.410020000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Lembar'
            'Rekening'
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          Left = 941.102970000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah Rp.'
            'Rekening Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 26.456710000000000000
          Width = 68.031540000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo260: TfrxMemoView
          Left = 1133.859000000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah'
            'Tagihan Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line15: TfrxLineView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 22.677180000000000000
          Top = 71.811070000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo261: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKAP REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal : [Page#] - [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle2: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo263: TfrxMemoView
          Left = 449.764070000000000000
          Top = 11.338590000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKAP LAPORAN PERHITUNGAN BAYAR KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          Left = 449.764070000000000000
          Top = 30.236240000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING AIR & ANGSURAN TUNGGAKAN REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan2: TfrxMemoView
          Left = 449.764070000000000000
          Top = 49.133890000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 302.362400000000000000
        Top = 404.409710000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo266: TfrxMemoView
          Left = 113.385900000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l1">,MasterData3)]')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g1">,MasterData3)]')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l2">,MasterData3)]')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          Left = 177.637910000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g2">,MasterData3)]')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          Left = 241.889920000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l3">,MasterData3)]')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g3">,MasterData3)]')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          Left = 306.141930000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l4">,MasterData3)]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g4">,MasterData3)]')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          Left = 370.393940000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l5">,MasterData3)]')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          Left = 370.393940000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g5">,MasterData3)]')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l6">,MasterData3)]')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g6">,MasterData3)]')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          Left = 498.897960000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l7">,MasterData3)]')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          Left = 498.897960000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g7">,MasterData3)]')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l8">,MasterData3)]')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          Left = 563.149970000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g8">,MasterData3)]')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l9">,MasterData3)]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          Left = 623.622450000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g9">,MasterData3)]')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l10">,MasterData3)]')
          ParentFont = False
        end
        object Memo285: TfrxMemoView
          Left = 691.653990000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g10">,MasterData3)]')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          Left = 755.906000000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l11">,MasterData3)]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          Left = 755.906000000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g11">,MasterData3)]')
          ParentFont = False
        end
        object Memo288: TfrxMemoView
          Left = 820.158010000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."l12">,MasterData3)]')
          ParentFont = False
        end
        object Memo289: TfrxMemoView
          Left = 820.158010000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."g12">,MasterData3)]')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          Left = 884.410020000000000000
          Top = 11.338590000000000000
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
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."lembarrekair">,MasterData3)]')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          Left = 941.102970000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."uangrekair">,MasterData3)]')
          ParentFont = False
        end
        object Memo292: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."pemeliharaan">,MasterData3)]')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          Left = 1107.402290000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rekap."total">,MasterData3)]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 22.677180000000000000
          Top = 68.031540000000000000
          Width = 1217.008660000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo294: TfrxMemoView
          Left = 26.456710000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo315: TfrxMemoView
          Left = 83.149660000000000000
          Top = 113.385900000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object Memo316: TfrxMemoView
          Left = 83.149660000000000000
          Top = 192.756030000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo317: TfrxMemoView
          Left = 83.149660000000000000
          Top = 207.874150000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo318: TfrxMemoView
          Left = 888.189550000000000000
          Top = 79.370130000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo319: TfrxMemoView
          Left = 83.149660000000000000
          Top = 98.267780000000000000
          Width = 207.874150000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo320: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo321: TfrxMemoView
          Left = 476.220780000000000000
          Top = 192.756030000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo322: TfrxMemoView
          Left = 476.220780000000000000
          Top = 207.874150000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo323: TfrxMemoView
          Left = 476.220780000000000000
          Top = 98.267780000000000000
          Width = 196.535560000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo324: TfrxMemoView
          Left = 888.189550000000000000
          Top = 113.385900000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo325: TfrxMemoView
          Left = 888.189550000000000000
          Top = 192.756030000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo326: TfrxMemoView
          Left = 888.189550000000000000
          Top = 207.874150000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo327: TfrxMemoView
          Left = 888.189550000000000000
          Top = 98.267780000000000000
          Width = 200.315090000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
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
      object MasterData2: TfrxMasterData
        Height = 71.811070000000000000
        Top = 411.968770000000000000
        Width = 1254.803960000000000000
        DataSet = na
        DataSetName = 'na'
        RowCount = 0
        Stretched = True
        object Memo106: TfrxMemoView
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[na."nama"]')
          ParentFont = False
        end
        object nadendatunggakan: TfrxMemoView
          Left = 230.551330000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayapasang"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'jaminan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."jaminan"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 351.496290000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biaya1'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biaya1"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'administrasi'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."administrasi"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayaperbaikan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayaperbaikan"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayafpb'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayafpb"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'gwm'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."gwm"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'meterkas'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."meterkas"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayateswm"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 721.890230000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'dendatunggakan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."dendatunggakan"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 778.583180000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayagantinama'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayagantinama"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 839.055660000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'meterai'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."meterai"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 895.748610000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'lainnya'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."lainnya"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 956.221090000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayaprosesbuka'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayaprosesbuka"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayaprosestutup'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayaprosestutup"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 1073.386520000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'pul'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."pul"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 1130.079470000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'memakaiairtidaksah'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."memakaiairtidaksah"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 1190.551950000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."total"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'periode'
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[na."periode"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dibebankankepada'
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[na."dibebankankepada"]')
          ParentFont = False
        end
        object Memo330: TfrxMemoView
          Left = 230.551330000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'dendaadmpelanggan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."dendaadmpelanggan"]')
          ParentFont = False
        end
        object Memo331: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayasegelputus'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayasegelputus"]')
          ParentFont = False
        end
        object Memo332: TfrxMemoView
          Left = 351.496290000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayakartupemakaianair"]')
          ParentFont = False
        end
        object Memo333: TfrxMemoView
          Left = 408.189240000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sewakendaraantangki'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."sewakendaraantangki"]')
          ParentFont = False
        end
        object Memo334: TfrxMemoView
          Left = 464.882190000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'penjualanairtangki'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."penjualanairtangki"]')
          ParentFont = False
        end
        object Memo335: TfrxMemoView
          Left = 521.575140000000000000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'perbaikan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."perbaikan"]')
          ParentFont = False
        end
        object Memo336: TfrxMemoView
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'piutangsisapemakaianair'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."piutangsisapemakaianair"]')
          ParentFont = False
        end
        object Memo337: TfrxMemoView
          Left = 619.842920000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'piutanggwm'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."piutanggwm"]')
          ParentFont = False
        end
        object Memo338: TfrxMemoView
          Left = 665.197280000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'piutangmeterkas'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."piutangmeterkas"]')
          ParentFont = False
        end
        object Memo339: TfrxMemoView
          Left = 721.890230000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'dendapelanggaran'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."dendapelanggaran"]')
          ParentFont = False
        end
        object Memo340: TfrxMemoView
          Left = 778.583180000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'biayabahan'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."biayabahan"]')
          ParentFont = False
        end
        object Memo341: TfrxMemoView
          Left = 839.055660000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'angsuran'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."angsuran"]')
          ParentFont = False
        end
        object Memo342: TfrxMemoView
          Left = 895.748610000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'ppn'
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[na."ppn"]')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 143.622140000000000000
        Top = 117.165430000000000000
        Width = 1254.803960000000000000
        object Memo126: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 34.015770000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 41.574830000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 185.196970000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
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
            'By.'
            'Pasang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 294.803340000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jaminan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 351.496290000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Buka/Tutup')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 408.189240000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 464.882190000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Perbaikan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 521.575140000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'FPB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 563.149970000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'GWM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 619.842920000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Meter Kas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 661.417750000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Test WM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 721.890230000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Denda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 778.583180000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Ganti Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 835.276130000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Meterai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 891.969080000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Lain-Lain')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 952.441560000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Proses Buka')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Biaya Proses Tutup')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 1069.606990000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'PUL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 1130.079470000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pakai Air'
            'Tdk. Sah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 1190.551950000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 230.551330000000000000
          Top = 86.929190000000000000
          Width = 960.000620000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo168: TfrxMemoView
          Top = 15.118120000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'REKENING  NON AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Left = 895.748610000000000000
          Top = 15.118120000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal : [Page#] - [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          Left = 136.063080000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          Left = 230.551330000000000000
          Top = 86.929190000000000000
          Width = 64.252010000000000000
          Height = 45.354360000000000000
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
            'Denda'
            'Adm. PLG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          Left = 294.803340000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Segel PTS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          Left = 351.496290000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kartu'
            'Pakai Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          Left = 408.189240000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sewa'
            'Mbl.Tangki')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          Left = 464.882190000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Air'
            'Tangki')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          Left = 521.575140000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Piut.'
            'Perbaikan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          Left = 563.149970000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Piut.'
            'PUL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo205: TfrxMemoView
          Left = 619.842920000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Piut.'
            'GWM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo206: TfrxMemoView
          Left = 661.417750000000000000
          Top = 86.929190000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Piut.'
            'Mtr.Kas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          Left = 721.890230000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Denda'
            'Langgar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line13: TfrxLineView
          Left = 230.551330000000000000
          Top = 132.283550000000000000
          Width = 960.000620000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo208: TfrxMemoView
          Left = 778.583180000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Bahan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          Left = 835.276130000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Angsuran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo329: TfrxMemoView
          Left = 891.969080000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PPN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 332.598640000000000000
        Top = 691.653990000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Line9: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo169: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object jab1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 147.401670000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 865.512370000000000000
          Top = 113.385900000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          Left = 60.472480000000000000
          Top = 132.283550000000000000
          Width = 207.874150000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          Left = 453.543600000000000000
          Top = 147.401670000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          Left = 453.543600000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo296: TfrxMemoView
          Left = 453.543600000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          Left = 453.543600000000000000
          Top = 132.283550000000000000
          Width = 196.535560000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          Left = 865.512370000000000000
          Top = 147.401670000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          Left = 865.512370000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo300: TfrxMemoView
          Left = 865.512370000000000000
          Top = 241.889920000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo301: TfrxMemoView
          Left = 865.512370000000000000
          Top = 132.283550000000000000
          Width = 200.315090000000000000
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
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 230.551330000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayapasang">,MasterData2)]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 294.803340000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."jaminan">,MasterData2)]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 351.496290000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biaya1">,MasterData2)]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 408.189240000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."administrasi">,MasterData2)]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 464.882190000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaperbaikan">,MasterData2)]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 521.575140000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayafpb">,MasterData2)]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 563.149970000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."gwm">,MasterData2)]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 619.842920000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."meterkas">,MasterData2)]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayateswm">,MasterData2)]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 721.890230000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendatunggakan">,MasterData2)]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 778.583180000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayagantinama">,MasterData2)]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 839.055660000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."meterai">,MasterData2)]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 895.748610000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."lainnya">,MasterData2)]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 956.221090000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaprosesbuka">,MasterData2)]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaprosestutup">,MasterData2)]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 1073.386520000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."pul">,MasterData2)]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 1130.079470000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."memakaiairtidaksah">,MasterData2)]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 1190.551950000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."total">,MasterData2)]')
          ParentFont = False
        end
        object Memo356: TfrxMemoView
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendaadmpelanggan">,MasterData2)]')
          ParentFont = False
        end
        object Memo357: TfrxMemoView
          Left = 294.803340000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayasegelputus">,MasterData2)]')
          ParentFont = False
        end
        object Memo358: TfrxMemoView
          Left = 351.496290000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayakartupemakaianair">,MasterData2)]')
          ParentFont = False
        end
        object Memo359: TfrxMemoView
          Left = 408.189240000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."sewakendaraantangki">,MasterData2)]')
          ParentFont = False
        end
        object Memo360: TfrxMemoView
          Left = 464.882190000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."penjualanairtangki">,MasterData2)]')
          ParentFont = False
        end
        object Memo361: TfrxMemoView
          Left = 521.575140000000000000
          Top = 41.574830000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."perbaikan">,MasterData2)]')
          ParentFont = False
        end
        object Memo362: TfrxMemoView
          Left = 563.149970000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutangsisapemakaianair">,MasterData2)]')
          ParentFont = False
        end
        object Memo363: TfrxMemoView
          Left = 619.842920000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutanggwm">,MasterData2)]')
          ParentFont = False
        end
        object Memo364: TfrxMemoView
          Left = 665.197280000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutangmeterkas">,MasterData2)]')
          ParentFont = False
        end
        object Memo365: TfrxMemoView
          Left = 721.890230000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendapelanggaran">,MasterData2)]')
          ParentFont = False
        end
        object Memo366: TfrxMemoView
          Left = 778.583180000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayabahan">,MasterData2)]')
          ParentFont = False
        end
        object Memo367: TfrxMemoView
          Left = 839.055660000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."angsuran">,MasterData2)]')
          ParentFont = False
        end
        object Memo368: TfrxMemoView
          Left = 895.748610000000000000
          Top = 41.574830000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."ppn">,MasterData2)]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 321.260050000000000000
        Width = 1254.803960000000000000
        Condition = 'na."loketbayar"'
        StartNewPage = True
        object Memo172: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 1239.685840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LOKET : [na."loketbayar"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 90.708720000000000000
        Top = 540.472790000000000000
        Width = 1254.803960000000000000
        object Memo173: TfrxMemoView
          Left = 230.551330000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayapasang">,MasterData2)]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 294.803340000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."jaminan">,MasterData2)]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 351.496290000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biaya1">,MasterData2)]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 408.189240000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."administrasi">,MasterData2)]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 464.882190000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaperbaikan">,MasterData2)]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayafpb">,MasterData2)]')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."gwm">,MasterData2)]')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          Left = 619.842920000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."meterkas">,MasterData2)]')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 665.197280000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayateswm">,MasterData2)]')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 721.890230000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendatunggakan">,MasterData2)]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 778.583180000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayagantinama">,MasterData2)]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 839.055660000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."meterai">,MasterData2)]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 895.748610000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."lainnya">,MasterData2)]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 956.221090000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaprosesbuka">,MasterData2)]')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayaprosestutup">,MasterData2)]')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 1073.386520000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."pul">,MasterData2)]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 1130.079470000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."memakaiairtidaksah">,MasterData2)]')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 1190.551950000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."total">,MasterData2)]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 1243.465370000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo210: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Total Loket : [na."loketbayar"]')
          ParentFont = False
        end
        object Memo343: TfrxMemoView
          Left = 230.551330000000000000
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendaadmpelanggan">,MasterData2)]')
          ParentFont = False
        end
        object Memo344: TfrxMemoView
          Left = 294.803340000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayasegelputus">,MasterData2)]')
          ParentFont = False
        end
        object Memo345: TfrxMemoView
          Left = 351.496290000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayakartupemakaianair">,MasterData2)]')
          ParentFont = False
        end
        object Memo346: TfrxMemoView
          Left = 408.189240000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."sewakendaraantangki">,MasterData2)]')
          ParentFont = False
        end
        object Memo347: TfrxMemoView
          Left = 464.882190000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."penjualanairtangki">,MasterData2)]')
          ParentFont = False
        end
        object Memo348: TfrxMemoView
          Left = 521.575140000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."perbaikan">,MasterData2)]')
          ParentFont = False
        end
        object Memo349: TfrxMemoView
          Left = 563.149970000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutangsisapemakaianair">,MasterData2)]')
          ParentFont = False
        end
        object Memo350: TfrxMemoView
          Left = 619.842920000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutanggwm">,MasterData2)]')
          ParentFont = False
        end
        object Memo351: TfrxMemoView
          Left = 665.197280000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."piutangmeterkas">,MasterData2)]')
          ParentFont = False
        end
        object Memo352: TfrxMemoView
          Left = 721.890230000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."dendapelanggaran">,MasterData2)]')
          ParentFont = False
        end
        object Memo353: TfrxMemoView
          Left = 778.583180000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."biayabahan">,MasterData2)]')
          ParentFont = False
        end
        object Memo354: TfrxMemoView
          Left = 839.055660000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."angsuran">,MasterData2)]')
          ParentFont = False
        end
        object Memo355: TfrxMemoView
          Left = 895.748610000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = na
          DataSetName = 'na'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<na."ppn">,MasterData2)]')
          ParentFont = False
        end
      end
      object ReportTitle3: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo265: TfrxMemoView
          Left = 404.409710000000000000
          Top = 7.559060000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKAP LAPORAN PERHITUNGAN BAYAR KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo328: TfrxMemoView
          Left = 404.409710000000000000
          Top = 26.456710000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING NON AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan3: TfrxMemoView
          Left = 404.409710000000000000
          Top = 45.354360000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 7.559060000000000000
        Top = 381.732530000000000000
        Width = 1254.803960000000000000
        Condition = 'na."dibebankankepada"'
        Stretched = True
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 506.457020000000000000
        Width = 1254.803960000000000000
      end
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qna
    Left = 96
    Top = 288
  end
  object Qna: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  loketbayar,  '
      '  periode,'
      '  dibebankankepada, '
      '  nama,'
      '  '
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
      '  SUM(angsuran1+angsuran2) AS angsuran,'
      '  SUM(ppn) AS ppn,'
      '  SUM(total) AS total '
      'FROM'
      '  nonair '
      'WHERE flaglunas = "1" '
      
        '  AND DATE(waktubayar) >= :tanggal1 AND DATE(waktubayar) <= :tan' +
        'ggal2'
      '  GROUP BY CONCAT(loketbayar,".",dibebankankepada,".",periode)'
      ''
      
        'ORDER BY CAST(loketbayar AS UNSIGNED),dibebankankepada,periode A' +
        'SC')
    Connection = DM.Conn
    Left = 144
    Top = 248
    object Qnaloketbayar: TStringField
      FieldName = 'loketbayar'
      Size = 50
    end
    object Qnaperiode: TStringField
      FieldName = 'periode'
      Size = 6
    end
    object Qnadibebankankepada: TStringField
      FieldName = 'dibebankankepada'
      Size = 50
    end
    object Qnanama: TStringField
      FieldName = 'nama'
      Size = 50
    end
    object Qnabiayapasang: TFloatField
      FieldName = 'biayapasang'
    end
    object Qnajaminan: TFloatField
      FieldName = 'jaminan'
    end
    object Qnabiaya1: TFloatField
      FieldName = 'biaya1'
    end
    object Qnaadministrasi: TFloatField
      FieldName = 'administrasi'
    end
    object Qnabiayaperbaikan: TFloatField
      FieldName = 'biayaperbaikan'
    end
    object Qnabiayafpb: TFloatField
      FieldName = 'biayafpb'
    end
    object Qnagwm: TFloatField
      FieldName = 'gwm'
    end
    object Qnameterkas: TFloatField
      FieldName = 'meterkas'
    end
    object Qnabiayateswm: TFloatField
      FieldName = 'biayateswm'
    end
    object Qnadendatunggakan: TFloatField
      FieldName = 'dendatunggakan'
    end
    object Qnabiayagantinama: TFloatField
      FieldName = 'biayagantinama'
    end
    object Qnameterai: TFloatField
      FieldName = 'meterai'
    end
    object Qnalainnya: TFloatField
      FieldName = 'lainnya'
    end
    object Qnabiayaprosestutup: TFloatField
      FieldName = 'biayaprosestutup'
    end
    object Qnabiayaprosesbuka: TFloatField
      FieldName = 'biayaprosesbuka'
    end
    object Qnapul: TFloatField
      FieldName = 'pul'
    end
    object Qnamemakaiairtidaksah: TFloatField
      FieldName = 'memakaiairtidaksah'
    end
    object Qnadendaadmpelanggan: TFloatField
      FieldName = 'dendaadmpelanggan'
    end
    object Qnabiayasegelputus: TFloatField
      FieldName = 'biayasegelputus'
    end
    object Qnabiayakartupemakaianair: TFloatField
      FieldName = 'biayakartupemakaianair'
    end
    object Qnasewakendaraantangki: TFloatField
      FieldName = 'sewakendaraantangki'
    end
    object Qnapenjualanairtangki: TFloatField
      FieldName = 'penjualanairtangki'
    end
    object Qnaperbaikan: TFloatField
      FieldName = 'perbaikan'
    end
    object Qnapiutangsisapemakaianair: TFloatField
      FieldName = 'piutangsisapemakaianair'
    end
    object Qnapiutanggwm: TFloatField
      FieldName = 'piutanggwm'
    end
    object Qnapiutangmeterkas: TFloatField
      FieldName = 'piutangmeterkas'
    end
    object Qnadendapelanggaran: TFloatField
      FieldName = 'dendapelanggaran'
    end
    object Qnabiayabahan: TFloatField
      FieldName = 'biayabahan'
    end
    object Qnaangsuran: TFloatField
      FieldName = 'angsuran'
    end
    object Qnappn: TFloatField
      FieldName = 'ppn'
    end
    object Qnatotal: TFloatField
      FieldName = 'total'
    end
  end
  object na: TfrxDBDataset
    UserName = 'na'
    CloseDataSource = False
    FieldAliases.Strings = (
      'loketbayar=loketbayar'
      'periode=periode'
      'dibebankankepada=dibebankankepada'
      'nama=nama'
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
      'angsuran=angsuran'
      'ppn=ppn'
      'total=total')
    DataSource = MyDataSource1
    BCDToCurrency = False
    Left = 232
    Top = 256
  end
  object Qexec: TMyQuery
    SQLInsert.Strings = (
      'START TRANSACTION;'
      ''
      'TRUNCATE TABLE `dumprekaplppakun_air`;'
      ''
      'REPLACE INTO `dumprekaplppakun_air` '
      ' '
      ' SELECT '
      
        '  CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur) AS kodeb' +
        'ayar,'
      '  c.loketbayar,'
      'IF(c.flagangsur="1","ANGSURAN ","PEMBAYARAN BIASA") as ket,'
      '  c.periode,'
      '  COALESCE(g1.lembar,0) AS l1 ,'
      '  COALESCE(g1.uang,0) AS g1 ,'
      '   COALESCE(g2.lembar,0) AS l2 ,'
      '  COALESCE(g2.uang,0) AS g2,'
      '   COALESCE(g3.lembar,0) AS l3 ,'
      '  COALESCE(g3.uang,0) AS g3,'
      '   COALESCE(g4.lembar,0) AS l4 ,'
      '  COALESCE(g4.uang,0) AS g4,'
      '   COALESCE(g5.lembar,0) AS l5 ,'
      '  COALESCE(g5.uang,0) AS g5,'
      '   COALESCE(g6.lembar,0) AS l6 ,'
      '  COALESCE(g6.uang,0) AS g6,'
      '   COALESCE(g7.lembar,0) AS l7 ,'
      '  COALESCE(g7.uang,0) AS g7,'
      '   COALESCE(g8.lembar,0) AS l8 ,'
      '  COALESCE(g8.uang,0) AS g8,'
      '   COALESCE(g9.lembar,0) AS l9 ,'
      '  COALESCE(g9.uang,0) AS g9,'
      '   COALESCE(g10.lembar,0) AS l10 ,'
      '  COALESCE(g10.uang,0) AS g10,'
      '   COALESCE(g11.lembar,0) AS l11 ,'
      '  COALESCE(g11.uang,0) AS g11,'
      '   COALESCE(g12.lembar,0) AS l12 ,'
      '  COALESCE(g12.uang,0) AS g12,'
      '  '
      '  COALESCE(b1.lembar,0) AS lembarrekair,'
      '  COALESCE(b1.uang,0) AS  uangrekair,'
      '  COALESCE(b1.pemeliharaan,0) AS  pemeliharaan,'
      '  COALESCE(b1.angsuran,0) AS  angsuran,'
      '  0'
      '  '
      'FROM'
      '  bayar:tahun c '
      '  '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-1" AND flaglunas="1" AND DAT' +
        'E(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g1 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g1' +
        '.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-2" AND flaglunas="1" AND DAT' +
        'E(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g2 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g2' +
        '.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-1" AND flaglunas="1"  AND ' +
        'DATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g3 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g3' +
        '.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      ' '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-2" AND flaglunas="1" AND D' +
        'ATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g4 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g4' +
        '.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-3" AND flaglunas="1" AND D' +
        'ATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g5 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g5' +
        '.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIB" AND flaglunas="1"  AND DA' +
        'TE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g6 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g6' +
        '.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIC" AND flaglunas="1"  AND DA' +
        'TE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g7 ON  CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur)=' +
        'g7.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-1" AND flaglunas="1"  AND ' +
        'DATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g8 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g8' +
        '.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-2" AND flaglunas="1" AND D' +
        'ATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g9 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g9' +
        '.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-1" AND flaglunas="1" AND DA' +
        'TE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g10 ON  CONCAT(c.periode, ".", c.loketbayar,".",flagangsur)=g' +
        '10.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-2" AND flaglunas="1" AND DA' +
        'TE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g11 ON  CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur)' +
        '=g11.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="V" AND flaglunas="1"  AND DATE' +
        '(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) g12 ON  CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur)' +
        '=g12.kode'
      ' '
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar,".",flagangsur) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang,'
      '  SUM(pemeliharaan) pemeliharaan,'
      ' SUM(angsuran) angsuran'
      '  '
      
        '  FROM bayar:tahun WHERE flaglunas="1" AND DATE(tglbayar) >= :ta' +
        'nggal1 AND DATE(tglbayar) <= :tanggal2 '
      '  GROUP BY CONCAT(periode, ".", loketbayar,".",flagangsur)   '
      
        ' ) b1 ON  CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur)=' +
        'b1.kode'
      ' '
      ' '
      ' '
      'WHERE c.flaglunas = "1" '
      
        '  AND DATE(tglbayar) >= :tanggal1 AND DATE(tglbayar) <= :tanggal' +
        '2 '
      'GROUP BY CONCAT(c.periode, ".", c.loketbayar,".",c.flagangsur) '
      'ORDER BY c.flagangsur,CAST(c.loketbayar AS UNSIGNED),'
      '  c.periode ASC;'
      '  '
      '  '
      '  '
      
        'UPDATE `dumprekaplppakun_air` SET total=uangrekair+pemeliharaan+' +
        'angsuran;'
      '  '
      '  '
      ' COMMIT;')
    Connection = DM.Conn
    Left = 88
    Top = 120
  end
  object ActionList1: TActionList
    Left = 224
    Top = 304
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
  object Qrekap: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  periode,'
      '  SUM(l1) AS l1,'
      '  SUM(l2) AS l2,'
      '  SUM(l3) AS l3,'
      '  SUM(l4) AS l4,'
      '  SUM(l5) AS l5,'
      '  SUM(l6) AS l6,'
      '  SUM(l7) AS l7,'
      '  SUM(l8) AS l8,'
      '  SUM(l9) AS l9,'
      '  SUM(l10) AS l10,'
      '  SUM(l11) AS l11,'
      '  SUM(l12) AS l12,'
      '  SUM(g1) AS g1,'
      '  SUM(g2) AS g2,'
      '  SUM(g3) AS g3,'
      '  SUM(g4) AS g4,'
      '  SUM(g5) AS g5,'
      '  SUM(g6) AS g6,'
      '  SUM(g7) AS g7,'
      '  SUM(g8) AS g8,'
      '  SUM(g9) AS g9,'
      '  SUM(g10) AS g10,'
      '  SUM(g11) AS g11,'
      '  SUM(g12) AS g12,'
      '  SUM(lembarrekair) AS lembarrekair,'
      '  SUM(uangrekair) AS uangrekair,'
      '  SUM(pemeliharaan) AS pemeliharaan,'
      '  SUM(angsuran) AS angsuran,'
      '  SUM(total) AS total'
      ''
      'FROM `dumprekaplppakun_air` GROUP BY periode ASC')
    Connection = DM.Conn
    Left = 424
    Top = 272
  end
  object MyDataSource2: TMyDataSource
    DataSet = Qrekap
    Left = 376
    Top = 312
  end
  object rekap: TfrxDBDataset
    UserName = 'rekap'
    CloseDataSource = False
    DataSource = MyDataSource2
    BCDToCurrency = False
    Left = 512
    Top = 280
  end
  object Qrek2: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT * FROM dumprekaplppakun_air WHERE ket="ANGSURAN " ORDER B' +
        'Y CAST(loketbayar AS UNSIGNED),ket,periode ASC;')
    Connection = DM.Conn
    Left = 544
    Top = 200
  end
  object rek2: TfrxDBDataset
    UserName = 'rek2'
    CloseDataSource = False
    DataSource = DSrek2
    BCDToCurrency = False
    Left = 632
    Top = 208
  end
  object DSrek2: TMyDataSource
    DataSet = Qrek2
    Left = 496
    Top = 240
  end
end
