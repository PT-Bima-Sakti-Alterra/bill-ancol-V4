object lapmemo: Tlapmemo
  Left = 450
  Top = 151
  BorderStyle = bsNone
  Caption = 'lapmemo'
  ClientHeight = 211
  ClientWidth = 323
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
    Width = 323
    Height = 211
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object periode: TRzDateTimePicker
      Left = 146
      Top = 58
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
      TabOrder = 0
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 56
      Top = 59
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
      Left = 43
      Top = 98
      Width = 238
      Height = 40
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 43
      Top = 141
      Width = 238
      Height = 40
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 311
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'LAPORAN MEMO'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Qpel: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT c.nosamb,p.nama,p.alamat,c.tanggal,c.uraian,c.`tipe` FROM' +
        ' memo c LEFT JOIN pelanggan p ON c.nosamb=p.`nosamb` '
      ''
      'WHERE DATE_FORMAT(c.tanggal,"%Y%m")=:periode'
      ''
      'ORDER BY c.`tipe`,c.tanggal ASC')
    Connection = DM.Conn
    Left = 184
    Top = 224
    object Qpelnosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'c.nosamb'
      Size = 50
    end
    object Qpelnama: TStringField
      FieldName = 'nama'
      Origin = 'p.nama'
      Size = 50
    end
    object Qpelalamat: TStringField
      FieldName = 'alamat'
      Origin = 'p.alamat'
      Size = 100
    end
    object Qpeltanggal: TDateTimeField
      FieldName = 'tanggal'
      Origin = 'c.tanggal'
    end
    object Qpeluraian: TMemoField
      FieldName = 'uraian'
      Origin = 'c.uraian'
      BlobType = ftMemo
    end
    object Qpeltipe: TStringField
      FieldName = 'tipe'
      Origin = 'c.tipe'
      Size = 50
    end
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42674.569376608800000000
    ReportOptions.LastChange = 42947.966057962960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 64
    Datasets = <
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end
      item
        DataSet = pel
        DataSetName = 'pel'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        Child = report.Child1
        DataSet = pel
        DataSetName = 'pel'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 107.506631110000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."nama"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 213.963392780000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."alamat"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 320.420154440000000000
          Top = 3.779530000000000000
          Width = 71.601096110000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'tanggal'
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."tanggal"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 395.542462160000000000
          Top = 3.779530000000000000
          Width = 318.788707840000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'uraian'
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."uraian"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 32.755926670000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 35.485587220000000000
          Top = 3.779530000000000000
          Width = 66.561722780000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."nosamb"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        Condition = 'pel."tipe"'
        object pejabatkode: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 672.756340000000000000
          Height = 22.333586360000000000
          DataSet = DM.pejabat
          DataSetName = 'pejabat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pel."tipe"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 107.506631110000000000
          Top = 34.359363640000000000
          Width = 105.826840000000000000
          Height = 22.333586360000000000
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 213.963392780000000000
          Top = 34.359363640000000000
          Width = 105.826840000000000000
          Height = 22.333586360000000000
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 320.420154440000000000
          Top = 34.359363640000000000
          Width = 71.601096110000000000
          Height = 22.333586360000000000
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 395.717801180000000000
          Top = 34.359363640000000000
          Width = 318.613368820000000000
          Height = 22.333586360000000000
          StretchMode = smMaxHeight
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uraian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.359363640000000000
          Width = 32.755926670000000000
          Height = 22.333586360000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 35.485587220000000000
          Top = 34.359363640000000000
          Width = 70.341252780000000000
          Height = 22.333586360000000000
          DataSet = pel
          DataSetName = 'pel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Samb')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.359363640000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo40: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'BULAN : ')
          ParentFont = False
        end
        object judul: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'LAPORAN MEMO AKTIFITAS KOREKSI PELANGGAN')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 317.480520000000000000
          Top = 22.677180000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '???')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 45.354360000000000000
          DataSet = usuratpiutang.rek
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
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Visible = False
        Width = 718.110700000000000000
        Stretched = True
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        object Memo62: TfrxMemoView
          Left = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 461.102660000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal. [Page#] dari [TotalPages#]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 275.905690000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object jab1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 79.370130000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
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
          Left = 11.338590000000000000
          Top = 158.740260000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 495.118430000000000000
          Top = 45.354360000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
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
        object Memo34: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
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
        object Memo35: TfrxMemoView
          Left = 249.448980000000000000
          Top = 79.370130000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
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
        object Memo36: TfrxMemoView
          Left = 249.448980000000000000
          Top = 158.740260000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 249.448980000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 249.448980000000000000
          Top = 64.252010000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
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
          Left = 495.118430000000000000
          Top = 79.370130000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
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
          Left = 495.118430000000000000
          Top = 158.740260000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 495.118430000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 495.118430000000000000
          Top = 64.252010000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
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
      end
    end
  end
  object pel: TfrxDBDataset
    UserName = 'pel'
    CloseDataSource = False
    DataSource = Drek
    BCDToCurrency = False
    Left = 352
    Top = 192
  end
  object Drek: TMyDataSource
    DataSet = Qpel
    Left = 464
    Top = 208
  end
  object ActionList1: TActionList
    Left = 432
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
    object F5: TAction
      Caption = 'F5'
      ShortCut = 116
      OnExecute = F5Execute
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 112
    Top = 56
  end
end
