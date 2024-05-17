object FRchart4: TFRchart4
  Left = 0
  Top = 0
  Width = 938
  Height = 474
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 45
    Width = 938
    Height = 429
    Align = alClient
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gtv2: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'total'
      DataController.DataSource = DScek
      DiagramBar.Active = True
      DiagramBar.AxisValue.TickMarkLabels = False
      DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
      DiagramColumn.Legend.Border = lbSingle
      DiagramColumn.Legend.KeyBorder = lbNone
      DiagramColumn.Legend.Position = cppNone
      DiagramColumn.AxisCategory.ValueAxisAtMaxCategory = True
      DiagramColumn.AxisValue.TickMarkLabels = False
      DiagramColumn.Values.VaryColorsByCategory = True
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      ToolBox.Border = tbNone
      ToolBox.Visible = tvNever
      object gtv2DataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'jenis'
      end
      object gtv2Series1: TcxGridDBChartSeries
        DataBinding.FieldName = 'total'
        VisibleForCustomization = False
        ValueCaptionFormat = '#,##0.###'
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = gtv2
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 45
    Align = alTop
    BorderOuter = fsFlat
    TabOrder = 1
    object periode: TRzDateTimePicker
      Left = 122
      Top = 10
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
      Left = 8
      Top = 11
      Caption = 'Bulan Penerimaan :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cekloket: TcxCheckBox
      Left = 536
      Top = 12
      Caption = 'Loket :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Transparent = True
      OnClick = cekloketClick
      Width = 65
    end
    object kodeloket: TcxComboBox
      Left = 656
      Top = 11
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 60
    end
    object loket: TcxComboBox
      Left = 600
      Top = 11
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 169
    end
    object cxButton2: TcxButton
      Left = 384
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
      TabOrder = 5
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 256
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
      TabOrder = 6
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = DM.png24
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    SQL.Strings = (
      'SELECT '
      '  j.jenis,'
      '  COALESCE(SUM(n.total), 0) AS total '
      'FROM'
      '  jenisnonair j '
      '  LEFT JOIN nonair n '
      '    ON j.jenis = n.jenis '
      '    AND n.flaglunas = "1" '
      'GROUP BY j.jenis ASC')
    Left = 176
    Top = 264
  end
  object DScek: TMyDataSource
    DataSet = Qcek
    Left = 216
    Top = 352
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 88
    Top = 216
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 400
    Top = 120
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
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
      ReportDocument.CreationDate = 44781.765717418980000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsCards.AutoWidth = True
      OptionsCards.Borders = False
      OptionsCharts.Transparent = True
      OptionsFormatting.UseNativeStyles = True
      OptionsSize.AutoWidth = True
      StyleRepository = cxStyleRepository1
      Styles.BandHeader = cxStyle6
      Styles.Caption = cxStyle5
      Styles.FilterBar = cxStyle1
      Styles.Footer = cxStyle2
      Styles.Header = cxStyle3
      Styles.Selection = cxStyle4
      BuiltInReportLink = True
    end
  end
  object ActionList1: TActionList
    Left = 368
    Top = 248
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
    end
  end
end
