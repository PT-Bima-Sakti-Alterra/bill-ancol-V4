object uhispakai: Tuhispakai
  Left = 519
  Top = 181
  BorderStyle = bsNone
  Caption = 'Histori Pemakaian'
  ClientHeight = 603
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 603
    Align = alClient
    BorderOuter = fsFlatRounded
    BorderColor = clWhite
    BorderWidth = 5
    Caption = '`'
    Color = 16316664
    TabOrder = 0
    object info: TRzPanel
      Left = 7
      Top = 7
      Width = 503
      Height = 33
      Align = alTop
      BorderOuter = fsFlat
      BorderColor = clBlack
      Caption = 'DATA PELANGGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 48
      Width = 481
      Height = 537
      BorderOuter = fsFlat
      Color = 16316664
      TabOrder = 1
      object RzToolbar2: TRzToolbar
        Left = 1
        Top = 1
        Width = 479
        Height = 59
        AutoStyle = False
        Images = DM.icon32
        RowHeight = 55
        ButtonLayout = blGlyphTop
        ButtonWidth = 50
        ButtonHeight = 50
        ShowButtonCaptions = True
        TextOptions = ttoCustom
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdTop]
        BorderWidth = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Open Sans'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStop = clWhite
        ParentFont = False
        TabOrder = 0
        Visible = False
        VisualStyle = vsGradient
        ToolbarControls = (
          refresh2
          RzSpacer4
          RzToolButton2
          RzSpacer1
          RzToolButton3
          RzSpacer3)
        object refresh2: TRzToolButton
          Left = 4
          Top = 4
          Width = 51
          Height = 50
          ImageIndex = 41
          Layout = blGlyphTop
          Caption = 'Refresh'
          OnClick = refresh2Click
        end
        object RzToolButton2: TRzToolButton
          Left = 63
          Top = 4
          ImageIndex = 38
          Layout = blGlyphTop
          Caption = 'Print'
          OnClick = RzToolButton2Click
        end
        object RzSpacer1: TRzSpacer
          Left = 113
          Top = 17
          Grooved = True
        end
        object RzToolButton3: TRzToolButton
          Left = 121
          Top = 4
          Width = 76
          Height = 50
          ImageIndex = 31
          Layout = blGlyphTop
          Caption = 'Export Excel'
          OnClick = RzToolButton3Click
        end
        object RzSpacer3: TRzSpacer
          Left = 197
          Top = 17
          Grooved = True
        end
        object RzSpacer4: TRzSpacer
          Left = 55
          Top = 17
          Grooved = True
        end
      end
      object RzPanel3: TRzPanel
        Left = 1
        Top = 86
        Width = 479
        Height = 46
        Align = alTop
        BorderOuter = fsFlat
        Color = 16316664
        TabOrder = 1
        object periode: TRzDateTimePicker
          Left = 74
          Top = 10
          Width = 71
          Height = 27
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
          Font.Height = -13
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = periodeChange
          FlatButtonColor = 6316128
          FlatButtons = True
          DisabledColor = 6316128
          FrameColor = clAppWorkSpace
          FrameHotColor = clBlack
          FrameHotStyle = fsFlat
          FrameVisible = True
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 11
          Caption = 'Tahun :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object gridna: TcxGrid
        Left = 1
        Top = 132
        Width = 479
        Height = 404
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        LookAndFeel.SkinName = 'Office2013White'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = DSna
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.#0'
              Kind = skSum
            end
            item
              Format = ',0.;(,0.)'
              Kind = skCount
            end
            item
              Format = ',0.;(,0.)'
              Kind = skSum
            end
            item
              Format = ',0.;(,0.)'
              Kind = skSum
            end
            item
              Format = ',0.;(,0.)'
              Kind = skSum
            end
            item
              Format = '#,##0.##'
              Kind = skSum
            end
            item
              Format = '#,##0.#0'
              Kind = skSum
            end
            item
              Format = '#,##0.#0'
              Kind = skSum
            end
            item
              Format = '#,##0.#0'
              Kind = skSum
            end
            item
              Format = '#,##0.###;(#,##0.###)'
              Kind = skSum
              Column = cxGridDBTableView1Column4
            end
            item
              Format = ',0.;(,0.)'
              Kind = skCount
              Column = cxGridDBTableView1Column1
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.FocusRect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'BULAN'
            DataBinding.FieldName = 'bulan'
            HeaderAlignmentHorz = taCenter
            Width = 149
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'STAN LALU'
            DataBinding.FieldName = 'stanlalu'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'STAN SKRG'
            DataBinding.FieldName = 'stanskrg'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            HeaderAlignmentHorz = taCenter
            Width = 135
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'STAN ANGKAT'
            DataBinding.FieldName = 'stanangkat'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = 'PAKAI'
            DataBinding.FieldName = 'pakai'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object nama: TcxLabel
        Left = 1
        Top = 60
        Align = alTop
        Caption = 'NAMA'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Open Sans Extrabold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object ActionList1: TActionList
    Left = 561
    Top = 57
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 264
    Top = 224
    object dxComponentPrinter1Link1: TdxGridReportLink
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
      ReportDocument.CreationDate = 42355.692188854170000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository3
      Styles.BandHeader = cxStyle13
      Styles.Caption = cxStyle14
      Styles.FilterBar = cxStyle15
      Styles.Header = cxStyle16
      Styles.Selection = cxStyle17
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
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
      ReportDocument.CreationDate = 42474.529599930550000000
      ShrinkToPageWidth = True
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository4
      Styles.BandHeader = cxStyle18
      Styles.Caption = cxStyle19
      Styles.CardCaptionRow = cxStyle20
      Styles.FilterBar = cxStyle21
      Styles.Footer = cxStyle22
      Styles.Header = cxStyle23
      Styles.Selection = cxStyle24
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 24
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
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
      TextColor = clWindow
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
      Color = 15790320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object Qna: TMyQuery
    SQLRefresh.Strings = (
      '(SELECT '
      'periode,'
      'bulan,'
      'stanlalu,'
      'stanskrg,'
      'stanangkat,'
      'pakai,'
      'flaglunas'
      ''
      'FROm bayar WHERE nosamb=:nosamb AND LEFT(periode,4)=:tahun)'
      ''
      ''
      'UNION'
      ''
      '(SELECT '
      'periode,'
      'bulan,'
      'stanlalu,'
      'stanskrg,'
      'stanangkat,'
      'pakai,'
      'flaglunas'
      ''
      'FROm piutang WHERE nosamb=:nosamb AND LEFT(periode,4)=:tahun)'
      ''
      'ORDER BY periode ASC')
    Connection = Umain.host
    Left = 448
    Top = 216
  end
  object DSna: TMyDataSource
    DataSet = Qna
    Left = 593
    Top = 169
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
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
  object cxStyleRepository3: TcxStyleRepository
    Left = 488
    Top = 56
    PixelsPerInch = 96
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
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
  object cxStyleRepository4: TcxStyleRepository
    Left = 448
    Top = 48
    PixelsPerInch = 96
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
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
end