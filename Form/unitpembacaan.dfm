object upembacaan: Tupembacaan
  Left = 353
  Top = 252
  BorderStyle = bsNone
  Caption = 'upembacaan'
  ClientHeight = 182
  ClientWidth = 360
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
    Width = 360
    Height = 182
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 48
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
      TabOrder = 0
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 192
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
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
      Text = 'Hanya yang belum dibayar'
      Width = 217
    end
    object RzPanel8: TRzPanel
      Left = 5
      Top = 5
      Width = 350
      Height = 33
      Align = alTop
      BorderOuter = fsFlat
      BorderColor = clBlack
      Caption = 'PEMBACAAN'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object periode: TRzDateTimePicker
      Left = 106
      Top = 49
      Width = 63
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 41655.788053020830000000
      Format = 'yyyy'
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
      TabOrder = 11
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 50
      Caption = 'Tahun'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object nosamb: TcxTextEdit
      Left = 104
      Top = 80
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 40
      Top = 82
      Caption = 'No.Samb'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'stanskrg=stanskrg'
      'pakai=pakai'
      'kelainan=kelainan'
      'bulan=bulan'
      'stanlalu=stanlalu'
      'keterangan=keterangan')
    DataSource = DSrek
    BCDToCurrency = False
    Left = 472
    Top = 160
  end
  object DSrek: TMyDataSource
    DataSet = mem
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
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."bulan"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanskrg'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanskrg"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'kelainan'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."kelainan"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanlalu'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."stanlalu"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'keterangan'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."keterangan"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 30.236240000000000000
          Top = 185.196970000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 185.196970000000000000
          Top = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KINI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 257.008040000000000000
          Top = 185.196970000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 317.480520000000000000
          Top = 185.196970000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KELAINAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PERUSAHAAN DAERAH AIR MINUM'
            'TIRTAMARTA YOGYAKARTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Pencatatan Water Meter')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'GOLONGAN')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONTROL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 90.708720000000000000
          Top = 124.724490000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object norekening: TfrxMemoView
          Left = 109.606370000000000000
          Top = 124.724490000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONTROL')
          ParentFont = False
        end
        object kodegol: TfrxMemoView
          Left = 109.606370000000000000
          Top = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONTROL')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 245.669450000000000000
          Top = 151.181200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 245.669450000000000000
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 328.819110000000000000
          Top = 151.181200000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 328.819110000000000000
          Top = 124.724490000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object nama: TfrxMemoView
          Left = 347.716760000000000000
          Top = 124.724490000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONTROL')
          ParentFont = False
        end
        object alamat: TfrxMemoView
          Left = 347.716760000000000000
          Top = 151.181200000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KONTROL')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 109.606370000000000000
          Top = 185.196970000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LALU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Top = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NOSAMB')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 90.708720000000000000
          Top = 98.267780000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object nosamb: TfrxMemoView
          Left = 109.606370000000000000
          Top = 98.267780000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'NOSAMB')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 245.669450000000000000
          Top = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 328.819110000000000000
          Top = 98.267780000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object status: TfrxMemoView
          Left = 347.716760000000000000
          Top = 98.267780000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 480.000310000000000000
          Top = 185.196970000000000000
          Width = 230.551330000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PETUGAS / WAKTU BACA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object Qcek: TMyQuery
    SQLInsert.Strings = (
      'START TRANSACTION;'
      ''
      'TRUNCATE TABLE `dumprekaplppakun_air`;'
      ''
      'REPLACE INTO `dumprekaplppakun_air` '
      ' '
      ' SELECT '
      '  CONCAT(c.periode, ".", c.loketbayar) AS kodebayar:tahun,'
      '  c.loketbayar,'
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
      '  0'
      '  '
      'FROM'
      '  bayar:tahun c '
      '  '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-1" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g1 ON  CONCAT(c.periode, ".", c.loketbayar)=g1.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-2" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g2 ON  CONCAT(c.periode, ".", c.loketbayar)=g2.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g3 ON  CONCAT(c.periode, ".", c.loketbayar)=g3.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      ' '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g4 ON  CONCAT(c.periode, ".", c.loketbayar)=g4.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-3" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g5 ON  CONCAT(c.periode, ".", c.loketbayar)=g5.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIB" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g6 ON  CONCAT(c.periode, ".", c.loketbayar)=g6.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIC" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g7 ON  CONCAT(c.periode, ".", c.loketbayar)=g7.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g8 ON  CONCAT(c.periode, ".", c.loketbayar)=g8.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g9 ON  CONCAT(c.periode, ".", c.loketbayar)=g9.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-1" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g10 ON  CONCAT(c.periode, ".", c.loketbayar)=g10.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-2" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g11 ON  CONCAT(c.periode, ".", c.loketbayar)=g11.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="V" AND flaglunas="1" AND flaga' +
        'ngsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g12 ON  CONCAT(c.periode, ".", c.loketbayar)=g12.kode'
      ' '
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang,'
      '  SUM(pemeliharaan) pemeliharaan'
      '  '
      
        '  FROM bayar:tahun WHERE flaglunas="1" AND flagangsur="0" AND DA' +
        'TE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) b1 ON  CONCAT(c.periode, ".", c.loketbayar)=b1.kode'
      ' '
      ' '
      ' '
      'WHERE c.flaglunas = "1" '
      '  AND DATE(c.tglbayar) = :tanggal AND c.flagangsur="0"'
      'GROUP BY CONCAT(c.periode, ".", c.loketbayar) '
      'ORDER BY CAST(c.loketbayar AS UNSIGNED),'
      '  c.periode ASC;'
      '  '
      '  '
      '  '
      'UPDATE `dumprekaplppakun_air` SET total=uangrekair+pemeliharaan;'
      '  '
      '  '
      ' COMMIT;')
    Connection = DM.Conn
    Left = 88
    Top = 176
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
  object mem: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 232
    Top = 168
    object memstanskrg: TCurrencyField
      FieldName = 'stanskrg'
    end
    object mempakai: TCurrencyField
      FieldName = 'pakai'
    end
    object memkelainan: TStringField
      FieldName = 'kelainan'
      Size = 100
    end
    object membulan: TStringField
      FieldName = 'bulan'
      Size = 30
    end
    object memstanlalu: TCurrencyField
      FieldName = 'stanlalu'
    end
    object memketerangan: TStringField
      FieldName = 'keterangan'
      Size = 100
    end
  end
  object Qcek2: TMyQuery
    SQLInsert.Strings = (
      'START TRANSACTION;'
      ''
      'TRUNCATE TABLE `dumprekaplppakun_air`;'
      ''
      'REPLACE INTO `dumprekaplppakun_air` '
      ' '
      ' SELECT '
      '  CONCAT(c.periode, ".", c.loketbayar) AS kodebayar:tahun,'
      '  c.loketbayar,'
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
      '  0'
      '  '
      'FROM'
      '  bayar:tahun c '
      '  '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-1" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g1 ON  CONCAT(c.periode, ".", c.loketbayar)=g1.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-2" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g2 ON  CONCAT(c.periode, ".", c.loketbayar)=g2.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g3 ON  CONCAT(c.periode, ".", c.loketbayar)=g3.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      ' '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g4 ON  CONCAT(c.periode, ".", c.loketbayar)=g4.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-3" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g5 ON  CONCAT(c.periode, ".", c.loketbayar)=g5.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIB" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g6 ON  CONCAT(c.periode, ".", c.loketbayar)=g6.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIC" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g7 ON  CONCAT(c.periode, ".", c.loketbayar)=g7.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g8 ON  CONCAT(c.periode, ".", c.loketbayar)=g8.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g9 ON  CONCAT(c.periode, ".", c.loketbayar)=g9.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-1" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g10 ON  CONCAT(c.periode, ".", c.loketbayar)=g10.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-2" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g11 ON  CONCAT(c.periode, ".", c.loketbayar)=g11.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="V" AND flaglunas="1" AND flaga' +
        'ngsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g12 ON  CONCAT(c.periode, ".", c.loketbayar)=g12.kode'
      ' '
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang,'
      '  SUM(pemeliharaan) pemeliharaan'
      '  '
      
        '  FROM bayar:tahun WHERE flaglunas="1" AND flagangsur="0" AND DA' +
        'TE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) b1 ON  CONCAT(c.periode, ".", c.loketbayar)=b1.kode'
      ' '
      ' '
      ' '
      'WHERE c.flaglunas = "1" '
      '  AND DATE(c.tglbayar) = :tanggal AND c.flagangsur="0"'
      'GROUP BY CONCAT(c.periode, ".", c.loketbayar) '
      'ORDER BY CAST(c.loketbayar AS UNSIGNED),'
      '  c.periode ASC;'
      '  '
      '  '
      '  '
      'UPDATE `dumprekaplppakun_air` SET total=uangrekair+pemeliharaan;'
      '  '
      '  '
      ' COMMIT;')
    Connection = DM.Conn
    Left = 88
    Top = 256
  end
  object Qtabel: TMyQuery
    SQLInsert.Strings = (
      'START TRANSACTION;'
      ''
      'TRUNCATE TABLE `dumprekaplppakun_air`;'
      ''
      'REPLACE INTO `dumprekaplppakun_air` '
      ' '
      ' SELECT '
      '  CONCAT(c.periode, ".", c.loketbayar) AS kodebayar:tahun,'
      '  c.loketbayar,'
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
      '  0'
      '  '
      'FROM'
      '  bayar:tahun c '
      '  '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-1" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g1 ON  CONCAT(c.periode, ".", c.loketbayar)=g1.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="I-2" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g2 ON  CONCAT(c.periode, ".", c.loketbayar)=g2.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g3 ON  CONCAT(c.periode, ".", c.loketbayar)=g3.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      ' '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g4 ON  CONCAT(c.periode, ".", c.loketbayar)=g4.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIA-3" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g5 ON  CONCAT(c.periode, ".", c.loketbayar)=g5.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIB" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g6 ON  CONCAT(c.periode, ".", c.loketbayar)=g6.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IIC" AND flaglunas="1" AND fla' +
        'gangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g7 ON  CONCAT(c.periode, ".", c.loketbayar)=g7.kode'
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-1" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g8 ON  CONCAT(c.periode, ".", c.loketbayar)=g8.kode'
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="III-2" AND flaglunas="1" AND f' +
        'lagangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g9 ON  CONCAT(c.periode, ".", c.loketbayar)=g9.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-1" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g10 ON  CONCAT(c.periode, ".", c.loketbayar)=g10.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="IV-2" AND flaglunas="1" AND fl' +
        'agangsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g11 ON  CONCAT(c.periode, ".", c.loketbayar)=g11.kode'
      ' '
      ' '
      '  LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang'
      '  '
      
        '  FROM bayar:tahun WHERE kodegol="V" AND flaglunas="1" AND flaga' +
        'ngsur="0" AND DATE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) g12 ON  CONCAT(c.periode, ".", c.loketbayar)=g12.kode'
      ' '
      ' '
      ' '
      '   LEFT JOIN '
      ' ('
      '  SELECT '
      '  CONCAT(periode, ".", loketbayar) AS kode,'
      '  COUNT(kode) AS lembar,'
      '  SUM(biayapemakaian) + SUM(administrasi) AS uang,'
      '  SUM(pemeliharaan) pemeliharaan'
      '  '
      
        '  FROM bayar:tahun WHERE flaglunas="1" AND flagangsur="0" AND DA' +
        'TE(tglbayar) = :tanggal '
      '  GROUP BY CONCAT(periode, ".", loketbayar)   '
      ' ) b1 ON  CONCAT(c.periode, ".", c.loketbayar)=b1.kode'
      ' '
      ' '
      ' '
      'WHERE c.flaglunas = "1" '
      '  AND DATE(c.tglbayar) = :tanggal AND c.flagangsur="0"'
      'GROUP BY CONCAT(c.periode, ".", c.loketbayar) '
      'ORDER BY CAST(c.loketbayar AS UNSIGNED),'
      '  c.periode ASC;'
      '  '
      '  '
      '  '
      'UPDATE `dumprekaplppakun_air` SET total=uangrekair+pemeliharaan;'
      '  '
      '  '
      ' COMMIT;')
    Connection = DM.Conn
    Left = 72
    Top = 320
  end
end
