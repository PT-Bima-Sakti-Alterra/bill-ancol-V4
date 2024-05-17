object uhisbayar: Tuhisbayar
  Left = 263
  Top = 53
  BorderStyle = bsNone
  Caption = 'Histori Pembayaran'
  ClientHeight = 688
  ClientWidth = 818
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
    Width = 818
    Height = 688
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 16
      Top = 80
      Width = 786
      Height = 593
      Focusable = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 589
      ClientRectLeft = 4
      ClientRectRight = 782
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Rekening Air'
        ImageIndex = 0
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 778
          Height = 563
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolbar1: TRzToolbar
            Left = 0
            Top = 0
            Width = 778
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
            Font.Height = -11
            Font.Name = 'Open Sans'
            Font.Style = []
            GradientColorStyle = gcsCustom
            GradientColorStop = clWhite
            ParentFont = False
            TabOrder = 0
            Visible = False
            VisualStyle = vsGradient
            ToolbarControls = (
              refresh
              RzSpacer14
              print
              RzSpacer15
              export
              RzSpacer2)
            object refresh: TRzToolButton
              Left = 4
              Top = 4
              ImageIndex = 41
              Layout = blGlyphTop
              Caption = 'Refresh'
              OnClick = refreshClick
            end
            object print: TRzToolButton
              Left = 62
              Top = 4
              ImageIndex = 38
              Layout = blGlyphTop
              Caption = 'Print'
              OnClick = printClick
            end
            object RzSpacer15: TRzSpacer
              Left = 112
              Top = 17
              Grooved = True
            end
            object export: TRzToolButton
              Left = 120
              Top = 4
              Width = 71
              Height = 50
              ImageIndex = 31
              Layout = blGlyphTop
              Caption = 'Export Excel'
              OnClick = exportClick
            end
            object RzSpacer14: TRzSpacer
              Left = 54
              Top = 17
              Grooved = True
            end
            object RzSpacer2: TRzSpacer
              Left = 191
              Top = 17
              Grooved = True
            end
          end
          object gridbayar: TcxGrid
            Left = 0
            Top = 59
            Width = 778
            Height = 504
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = False
            LookAndFeel.SkinName = 'iMaginary'
            object gtvbayar: TcxGridDBTableView
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
              OnCustomDrawCell = gtvbayarCustomDrawCell
              DataController.DataSource = DSbayar
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.#0'
                  Kind = skSum
                  Column = gtvtotal
                end
                item
                  Format = ',0.;(,0.)'
                  Kind = skCount
                  Column = cxGridDBColumn1
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
                  Column = gtvbayarColumn3
                end
                item
                  Format = '#,##0.#0'
                  Kind = skSum
                end
                item
                  Format = '#,##0.#0'
                  Kind = skSum
                  Column = gtvbayarColumn6
                end
                item
                  Format = '#,##0.#0'
                  Kind = skSum
                  Column = gtvbayardenda
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
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              Styles.Selection = cxStyle1
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'BULAN'
                DataBinding.FieldName = 'bulan'
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object gtvbayarColumn1: TcxGridDBColumn
                Caption = 'TGL. BAYAR'
                DataBinding.FieldName = 'tglbayar'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'dd MMM YYYY hh:mm:ss'
                HeaderAlignmentHorz = taCenter
                Width = 166
              end
              object gtvbayarColumn5: TcxGridDBColumn
                Caption = 'LOKET'
                DataBinding.FieldName = 'loketbayar'
                HeaderAlignmentHorz = taCenter
                Width = 98
              end
              object gtvbayarColumn4: TcxGridDBColumn
                Caption = 'KASIR'
                DataBinding.FieldName = 'kasir'
                HeaderAlignmentHorz = taCenter
                Width = 98
              end
              object gtvbayarColumn3: TcxGridDBColumn
                Caption = 'REK.AIR'
                DataBinding.FieldName = 'rekair'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 101
              end
              object gtvbayarColumn6: TcxGridDBColumn
                Caption = 'DISKON'
                DataBinding.FieldName = 'ppn'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 75
              end
              object gtvtotal: TcxGridDBColumn
                Caption = 'TOTAL'
                DataBinding.FieldName = 'total'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object gtvbayardenda: TcxGridDBColumn
                Caption = 'DENDA'
                DataBinding.FieldName = 'denda'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 62
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = gtvbayar
            end
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Rekening Non Air'
        ImageIndex = 1
        object RzToolbar2: TRzToolbar
          Left = 0
          Top = 0
          Width = 778
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
          Font.Height = -11
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
            ImageIndex = 41
            Layout = blGlyphTop
            Caption = 'Refresh'
            OnClick = refresh2Click
          end
          object RzToolButton2: TRzToolButton
            Left = 62
            Top = 4
            ImageIndex = 38
            Layout = blGlyphTop
            Caption = 'Print'
            OnClick = RzToolButton2Click
          end
          object RzSpacer1: TRzSpacer
            Left = 112
            Top = 17
            Grooved = True
          end
          object RzToolButton3: TRzToolButton
            Left = 120
            Top = 4
            Width = 71
            Height = 50
            ImageIndex = 31
            Layout = blGlyphTop
            Caption = 'Export Excel'
            OnClick = RzToolButton3Click
          end
          object RzSpacer3: TRzSpacer
            Left = 191
            Top = 17
            Grooved = True
          end
          object RzSpacer4: TRzSpacer
            Left = 54
            Top = 17
            Grooved = True
          end
        end
        object gridna: TcxGrid
          Left = 0
          Top = 59
          Width = 778
          Height = 504
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          LookAndFeel.SkinName = 'iMaginary'
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
                Column = cxGridDBColumn2
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
                Column = cxGridDBColumn6
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
                Column = cxGridDBTableView1Column2
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = cxGridDBTableView1Column3
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
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            Styles.Selection = cxStyle1
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'JENIS'
              DataBinding.FieldName = 'jenis'
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'KETERANGAN'
              DataBinding.FieldName = 'keterangan'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'TGL.BAYAR'
              DataBinding.FieldName = 'waktubayar'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.DisplayFormat = 'dd MMM YYYY hh:mm:ss'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'LOKET'
              DataBinding.FieldName = 'loketbayar'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'KASIR'
              DataBinding.FieldName = 'kasir'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = 'NONAIR'
              DataBinding.FieldName = 'nonair'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = 'DISKON'
              DataBinding.FieldName = 'ppn'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'TOTAL'
              DataBinding.FieldName = 'total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
    object RzPanel14: TRzPanel
      Left = 496
      Top = 49
      Width = 305
      Height = 32
      BorderOuter = fsNone
      GradientColorStyle = gcsCustom
      TabOrder = 1
      object RzLabel3: TRzLabel
        Left = 22
        Top = 4
        Width = 63
        Height = 15
        Caption = 'Info Warna :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Open Sans'
        Font.Style = []
        ParentFont = False
        Transparent = True
        BlinkIntervalOff = 400
        BlinkIntervalOn = 600
      end
      object color1: TRzPanel
        Left = 88
        Top = 1
        Width = 97
        Height = 22
        BorderOuter = fsFlat
        Color = 11723007
        TabOrder = 0
        object RzLabel1: TRzLabel
          Left = 36
          Top = 3
          Width = 31
          Height = 15
          Caption = 'Lunas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          Transparent = True
          BlinkIntervalOff = 400
          BlinkIntervalOn = 600
        end
      end
      object color3: TRzPanel
        Left = 184
        Top = 1
        Width = 121
        Height = 22
        BorderOuter = fsFlat
        Color = 8442367
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object RzLabel4: TRzLabel
          Left = 22
          Top = 2
          Width = 74
          Height = 15
          Caption = 'Lunas (Denda)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          Transparent = True
          BlinkIntervalOff = 400
          BlinkIntervalOn = 600
        end
      end
    end
    object cxButton1: TcxButton
      Left = 368
      Top = 48
      Width = 97
      Height = 25
      Caption = 'Tampilkan'
      TabOrder = 2
      Visible = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = DM.png16
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 50
      Caption = 'Tahun Pembayaran :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object periode: TRzDateTimePicker
      Left = 154
      Top = 49
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
      TabOrder = 4
      OnChange = cxButton1Click
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 806
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA PELANGGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Qbayar: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      'nosamb,'
      'periode,'
      'bulan,'
      'tglbayar,'
      'loketbayar,'
      'kasir,'
      'COALESCE(rekair,0) AS rekair,'
      'COALESCE(ppn,0) AS ppn,'
      'COALESCE(rekair,0)-COALESCE(ppn,0) AS total,'
      'COALESCE(dendatunggakan,0) AS denda'
      'FROm bayar:tahun '
      'WHERE flaglunas="1" '
      'AND flagangsur="0"'
      'AND nosamb=:nosamb '
      'ORDER By periode DESC')
    Connection = DM.Conn
    Left = 216
    Top = 32
  end
  object DSbayar: TMyDataSource
    DataSet = Qbayar
    Left = 649
    Top = 73
  end
  object ActionList1: TActionList
    Left = 697
    Top = 81
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16473
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 264
    Top = 224
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = gridna
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
      Active = True
      Component = gridbayar
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
      ReportDocument.CreationDate = 44781.816567002320000000
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
    Left = 368
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12016384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
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
      
        'SELECT j.jenis_keterangan AS jenis,n.waktubayar,n.kasir,n.loketb' +
        'ayar,n.total as nonair,(n.persenppn/100)*n.total AS ppn,n.total-' +
        '((n.persenppn/100)*n.total) as total,n.keterangan FROM nonair n,' +
        'jenisnonair j '
      'WHERE n.jenis=j.jenis AND n.flaglunas="1" '
      'AND n.dibebankankepada=:dibebankankepada '
      'AND YEAR(n.waktubayar)=:tahun ORDER BY n.waktubayar DESC')
    Connection = DM.Conn
    Left = 448
    Top = 216
  end
  object DSna: TMyDataSource
    DataSet = Qna
    Left = 585
    Top = 201
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
    Left = 160
    Top = 32
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
  object Qexec: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO drd ('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      '   kodegol,'
      '  `kodediameter`,'
      '  `koderayon`,'
      '  `kodekelurahan`,'
      '  `kodekolektif`,'
      '  `stanlalu`,'
      '  `stanskrg`,'
      '  `stanangkat`,'
      '  `pakai`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `retribusi`,'
      '  `pelayanan`,'
      '  `airlimbah`,'
      '  `dendapakai0`,'
      '  `administrasilain`,'
      '  `pemeliharaanlain`,'
      '  `retribusilain`,'
      '  `meterai`,'
      '  `dendatunggakan`,'
      '  `rekair`,'
      '  `total`,  '
      '  `tglupload`,'
      '  `tglmulaidenda`,'
      '  `tglmulaidenda2`,'
      '`tglmulaidenda3`,'
      '`tglmulaidendaperbulan`,'
      '  `bulan`,  '
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `nolpp`, '
      '  `flag`,'
      '  `trf_dendatunggakan`,'
      '  `trf_dendatunggakan2`,'
      'trf_dendatunggakan3,'
      'trf_dendatunggakanperbulan,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      '   koderetribusilain,'
      'angsuran,'
      'persenppn,'
      'ppn,'
      'angsuranke,'
      'jenisangsuran,'
      'blok1,'
      'blok2,'
      'blok3,'
      'blok4,'
      'blok5,'
      'kelainan'
      ')'
      'VALUES'
      '('
      '   :kode,'
      '  :periode,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      '  :kodegol,'
      '  :kodediameter,'
      '  :koderayon,'
      '  :kodekelurahan,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
      '  :biayapemakaian,'
      '  :administrasi,'
      '  :pemeliharaan,'
      '  :retribusi,'
      '  :pelayanan,'
      '  :airlimbah,'
      '  :dendapakai0,'
      '  :administrasilain,'
      '  :pemeliharaanlain,'
      ':retribusilain,'
      '  :meterai,'
      '  :dendatunggakan,'
      '  :rekair,'
      '  :total,  '
      '  :tglupload,'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      ':tglmulaidenda3,'
      ':tglmulaidendaperbulan,'
      '  :bulan,  '
      '  :prog1,'
      '  :prog2,'
      '  :prog3,'
      '  :prog4,'
      '  :prog5,'
      '  :nolpp, '
      '  :flag,'
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      ':trf_dendatunggakan3,'
      ':trf_dendatunggakanperbulan,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      ':koderetribusilain,'
      ':angsuran,'
      ':persenppn,'
      ':ppn,'
      ':angsuranke,'
      ':jenisangsuran,'
      ':blok1,'
      ':blok2,'
      ':blok3,'
      ':blok4,'
      ':blok5,'
      ':kelainan'
      ')')
    Connection = Umain.host
    Left = 272
    Top = 432
  end
  object Qupload: TMyQuery
    SQLRefresh.Strings = (
      'SELECT c.*,p.nama,p.alamat,c.flag,:bulan,g.ppn as persenppn'
      'FROM piutang c '
      'LEFT JOIN pelanggan p ON c.`nosamb`=p.`nosamb`'
      'LEFT JOIn golongan g On c.kodegol=g.kodegol and g.aktif="1"'
      'WHERE c.kode=:kode')
    Connection = DM.Conn
    Left = 592
    Top = 248
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42861.534199722200000000
    ReportOptions.LastChange = 42861.552391863400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 464
    Top = 408
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      PaperWidth = 217.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 744.567410000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1tglbayar: TfrxMemoView
          Left = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'tglbayar'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."tglbayar"]')
          ParentFont = False
        end
        object frxDBDataset1bulan: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bulan"]')
          ParentFont = False
        end
        object frxDBDataset1kasir: TfrxMemoView
          Left = 166.299320000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kasir"]')
          ParentFont = False
        end
        object frxDBDataset1loketbayar: TfrxMemoView
          Left = 136.063080000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."loketbayar"]')
          ParentFont = False
        end
        object frxDBDataset1biayapemakaian: TfrxMemoView
          Left = 336.378170000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."biayapemakaian"]')
          ParentFont = False
        end
        object frxDBDataset1administrasi: TfrxMemoView
          Left = 487.559370000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."administrasi"]')
          ParentFont = False
        end
        object frxDBDataset1pemeliharaan: TfrxMemoView
          Left = 411.968770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."pemeliharaan"]')
          ParentFont = False
        end
        object frxDBDataset1dendatunggakan: TfrxMemoView
          Left = 563.149970000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'dendatunggakan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."dendatunggakan"]')
          ParentFont = False
        end
        object frxDBDataset1rekair: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'rekair'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."rekair"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 744.567410000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 268.346630000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAH KOTAMADIA DATI II YOGYAKARTA'
            'PERUSAHAAN DAERAH AIR MINUM "TIRTAMARTA"')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Y O G Y A K A R T A')
          ParentFont = False
          WordWrap = False
        end
        object Line12: TfrxLineView
          Left = 63.590600000000000000
          Top = 60.472480000000000000
          Width = 185.196970000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 309.921460000000000000
          Top = 49.133890000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'RIWAYAT PEMBAYARAN PELANGGAN')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'TM')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'CONTROL ')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 170.078850000000000000
          Top = 102.047310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 170.078850000000000000
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1nosamb: TfrxMemoView
          Left = 71.811070000000000000
          Top = 102.047310000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':  [frxDBDataset1."nosamb"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 120.944960000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':  [frxDBDataset1."norekeningpel"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 230.551330000000000000
          Top = 102.047310000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':  [frxDBDataset1."namapel"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 230.551330000000000000
          Top = 120.944960000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':  [frxDBDataset1."alamatpel"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 139.842610000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 71.811070000000000000
          Top = 139.842610000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            ':  [frxDBDataset1."kodegolpel"]')
          ParentFont = False
          WordWrap = False
        end
        object keterangan: TfrxMemoView
          Left = 309.921460000000000000
          Top = 68.031540000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 222.992270000000000000
        Width = 744.567410000000000000
        object Shape1: TfrxShapeView
          Top = 26.456710000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Top = 26.456710000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Denda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 487.559370000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adm.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 411.968770000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pem.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 336.378170000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uang Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 166.299320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kasir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 136.063080000000000000
          Top = 26.456710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Loket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 260.787570000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bulan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 3.779530000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            '- - PEMBAYARAN AIR & DENDA TUNGGAKAN')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 419.527830000000000000
        Width = 744.567410000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Width = 725.669760000000000000
          Height = 18.897650000000000000
        end
        object Memo27: TfrxMemoView
          Left = 336.378170000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 487.559370000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 411.968770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 563.149970000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendatunggakan">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Draft 20cpi'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2waktubayar: TfrxMemoView
          Left = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'waktubayar'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."waktubayar"]')
          ParentFont = False
        end
        object Line1: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object frxDBDataset2loketbayar: TfrxMemoView
          Left = 136.063080000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'loketbayar'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."loketbayar"]')
          ParentFont = False
        end
        object frxDBDataset2kasir: TfrxMemoView
          Left = 166.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'kasir'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."kasir"]')
          ParentFont = False
        end
        object frxDBDataset2jenis: TfrxMemoView
          Left = 264.567100000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'jenis'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."jenis"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 415.748300000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ketjenis'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."ketjenis"]')
          ParentFont = False
        end
        object frxDBDataset2total: TfrxMemoView
          Left = 638.740570000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'total'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."total"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Top = 64.252010000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 638.740570000000000000
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 166.299320000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kasir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 136.063080000000000000
          Top = 64.252010000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Loket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 260.787570000000000000
          Top = 64.252010000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 26.456710000000000000
          Top = 64.252010000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 41.574830000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Memo.UTF8 = (
            '- - PEMBAYARAN NON AIR')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 408.189240000000000000
          Top = 64.252010000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary2: TfrxReportSummary
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Shape4: TfrxShapeView
          Width = 725.669760000000000000
          Height = 18.897650000000000000
        end
        object Memo43: TfrxMemoView
          Left = 638.740570000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset2."total">,MasterData2)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 20cpi'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Qcek: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT c.*,p.nama as namapel,p.alamat as alamatpel,p.norekening ' +
        'as norekeningpel,p.kodegol as kodegolpel FROM bayar c LEFT JOIN ' +
        'pelanggan p ON c.nosamb=p.nosamb WHERE c.nosamb=:nosamb AND DATE' +
        '(c.`tglbayar`)>=:tanggal1 AND DATE(c.`tglbayar`)<=:tanggal2 ORDE' +
        'R BY c.tglbayar ASC')
    Connection = DM.Conn
    Left = 512
    Top = 368
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = MyDataSource1
    BCDToCurrency = False
    Left = 720
    Top = 536
  end
  object Qcek2: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT c.waktubayar,c.jenis,c.ketjenis,c.termin,c.total,c.loketb' +
        'ayar,c.kasir FROM nonair c  '
      
        'WHERE c.flaglunas="1" AND c.nomor=:nosamb AND DATE(c.`waktubayar' +
        '`)>=:tanggal1 AND DATE(c.`waktubayar`)<=:tanggal2 ORDER BY c.wak' +
        'tubayar ASC')
    Connection = DM.Conn
    Left = 568
    Top = 376
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = MyDataSource2
    BCDToCurrency = False
    Left = 808
    Top = 560
  end
  object MyDataSource2: TMyDataSource
    DataSet = Qcek2
    Left = 1000
    Top = 592
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qcek
    Left = 856
    Top = 472
  end
end
