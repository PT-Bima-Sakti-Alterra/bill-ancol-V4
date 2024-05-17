object FRchart1: TFRchart1
  Left = 0
  Top = 0
  Width = 732
  Height = 429
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 45
    Align = alTop
    BorderOuter = fsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 208
      Top = 7
      Width = 121
      Height = 30
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object periode: TRzDateTimePicker
      Left = 74
      Top = 11
      Width = 127
      Height = 23
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
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = 'Periode :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton2: TcxButton
      Left = 336
      Top = 8
      Width = 121
      Height = 30
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 45
    Width = 732
    Height = 384
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object gtv: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'total'
      DataController.DataSource = DSrek
      DiagramColumn.Active = True
      DiagramColumn.Legend.Border = lbNone
      DiagramColumn.Legend.KeyBorder = lbNone
      DiagramColumn.Legend.Orientation = cpoVertical
      DiagramColumn.Legend.Position = cppRight
      DiagramColumn.AxisCategory.ValueAxisAtMaxCategory = True
      DiagramColumn.AxisValue.TickMarkKind = tmkInside
      DiagramColumn.AxisValue.TickMarkLabels = False
      DiagramColumn.Values.VaryColorsByCategory = True
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      Styles.Title = cxStyle1
      ToolBox.Border = tbNone
      ToolBox.Visible = tvNever
      object gtvDataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'wilayah'
        VisibleForCustomization = False
      end
      object gtvSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'bayar'
        DisplayText = 'Penerimaan (Rp)'
        ValueCaptionFormat = '#,##0.###'
      end
      object gtvSeries2: TcxGridDBChartSeries
        DataBinding.FieldName = 'tagihan'
        DisplayText = 'Pendapatan (Rp)'
        ValueCaptionFormat = '#,##0.###'
      end
      object gtvSeries3: TcxGridDBChartSeries
        DataBinding.FieldName = 'piutang'
        DisplayText = 'Piutang (Rp)'
        ValueCaptionFormat = '#,##0.###'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gtv
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT r.kodewil,'
      'r.wilayah,'
      'COALESCE(p.piutang,0) AS piutang,'
      'COALESCE(b.bayar,0) AS bayar,'
      'COALESCE(z.tagihan,0) AS tagihan'
      ''
      
        'FROM (SELECT kodewil,wilayah FROM wilayah WHERE kodewil<>"-" ORD' +
        'ER BY kodewil ASC )r'
      ''
      
        'LEFT JOIN (SELECT r.kodewil,SUM(c.rekair) AS piutang FROM drd:pe' +
        'riode c LEFT JOIN rayon r ON c.koderayon=r.koderayon   WHERE c.f' +
        'laglunas="0" AND c.flagpublish="1" GROUP BY r.kodewil ASC) p ON ' +
        'r.`kodewil`=p.kodewil'
      
        'LEFT JOIN (SELECT r.kodewil,SUM(c.rekair) AS bayar FROM drd:peri' +
        'ode c LEFT JOIN rayon r ON c.koderayon=r.koderayon   WHERE c.fla' +
        'glunas="1" GROUP BY r.kodewil ASC) b ON r.`kodewil`=b.kodewil'
      
        'LEFT JOIN (SELECT r.kodewil,SUM(c.rekair) AS tagihan FROM drd:pe' +
        'riode c LEFT JOIN rayon r ON c.koderayon=r.koderayon  WHERE c.fl' +
        'agpublish="1" GROUP BY r.kodewil ASC) z ON r.`kodewil`=z.kodewil'
      'ORDER BY r.kodewil ASC;')
    Connection = DM.Conn
    Left = 352
    Top = 144
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 448
    Top = 136
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 408
    Top = 312
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid2
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42168.540026921300000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsCards.AutoWidth = True
      OptionsCards.Borders = False
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.Visible = False
      OptionsRefinements.TransparentGraphics = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 120
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clDefault
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clDefault
    end
  end
end
