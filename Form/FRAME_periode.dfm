object FRperiode: TFRperiode
  Left = 0
  Top = 0
  Width = 1540
  Height = 664
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzToolButton1: TRzToolButton
    Left = 4
    Top = 4
    ImageIndex = 2
    Layout = blGlyphTop
    UseToolbarButtonLayout = False
    Caption = 'Refresh'
    OnClick = refreshClick
  end
  object RzSpacer2: TRzSpacer
    Left = 54
    Top = 17
    Grooved = True
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 30
    Width = 1540
    Height = 634
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object RzPanel5: TRzPanel
      Left = 0
      Top = 0
      Width = 9
      Height = 634
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
    end
    object RzPanel3: TRzPanel
      Left = 9
      Top = 0
      Width = 1345
      Height = 634
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      object RzPanel6: TRzPanel
        Left = 0
        Top = 0
        Width = 343
        Height = 634
        Align = alLeft
        BorderOuter = fsNone
        Color = 16316664
        GradientColorStyle = gcsCustom
        GradientColorStop = clWhite
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 8
          Top = 33
          Width = 329
          Height = 345
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.SkinName = 'Office2013White'
          object gtvchart: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'total'
            DataController.DataSource = DSgrid2
            DiagramArea.Legend.Alignment = cpaCenter
            DiagramArea.Legend.Border = lbNone
            DiagramArea.Legend.KeyBorder = lbNone
            DiagramArea.Legend.Orientation = cpoVertical
            DiagramArea.Legend.Position = cppNone
            DiagramArea.AxisCategory.TickMarkLabels = False
            DiagramBar.Legend.Alignment = cpaCenter
            DiagramBar.Legend.Border = lbNone
            DiagramBar.Legend.KeyBorder = lbNone
            DiagramBar.Legend.Orientation = cpoVertical
            DiagramBar.Legend.Position = cppBottom
            DiagramBar.AxisValue.GridLines = False
            DiagramBar.AxisValue.TickMarkKind = tmkInside
            DiagramColumn.Active = True
            DiagramColumn.Legend.Alignment = cpaStart
            DiagramColumn.Legend.Position = cppBottom
            DiagramColumn.AxisCategory.TickMarkKind = tmkInside
            DiagramColumn.AxisCategory.TickMarkLabels = False
            DiagramColumn.AxisValue.TickMarkKind = tmkCross
            DiagramColumn.AxisValue.Title.Alignment = cpaCenter
            DiagramColumn.AxisValue.MinMaxValues = mmvCustom
            DiagramColumn.AxisValue.TickMarkLabelFormat = ',0.;(,0.)'
            DiagramLine.Legend.Alignment = cpaCenter
            DiagramLine.Legend.Border = lbNone
            DiagramLine.Legend.KeyBorder = lbNone
            DiagramLine.Legend.Position = cppBottom
            DiagramLine.AxisValue.TickMarkKind = tmkCross
            DiagramLine.AxisValue.Title.Alignment = cpaCenter
            DiagramLine.Values.MarkerSize = 3
            DiagramPie.Legend.Border = lbNone
            DiagramPie.Legend.KeyBorder = lbNone
            DiagramPie.Legend.Position = cppNone
            DiagramPie.SeriesCaptions = False
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            Legend.Border = lbNone
            Legend.Position = cppRight
            Title.Position = cppTop
            ToolBox.Border = tbNone
            ToolBox.DataLevelsInfoVisible = dlivNever
            ToolBox.Position = tpBottom
            ToolBox.Visible = tvNever
            object gtvchartDataGroup1: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'periode'
            end
            object gtvchartSeries1: TcxGridDBChartSeries
              DataBinding.FieldName = 'total'
              DisplayText = 'Tagihan'
            end
            object gtvchartSeries2: TcxGridDBChartSeries
              DataBinding.FieldName = 'bayar'
              DisplayText = 'Terbayar'
            end
            object gtvchartSeries3: TcxGridDBChartSeries
              DataBinding.FieldName = 'piutang'
              DisplayText = 'Piutang'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gtvchart
          end
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 393
          Caption = 'Limit Chart ( Rp )'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object limit: TcxCurrencyEdit
          Left = 111
          Top = 393
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.EditFormat = ',0.;(,0.)'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 105
        end
        object simpan: TcxButton
          Left = 223
          Top = 392
          Width = 98
          Height = 25
          Caption = 'Simpan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = False
          OnClick = simpanClick
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = DM.png16
          SpeedButtonOptions.CanBeFocused = False
        end
        object RzPanel10: TRzPanel
          Left = 8
          Top = 8
          Width = 329
          Height = 25
          BorderOuter = fsNone
          BorderColor = clBlack
          Caption = 'GRAFIK PERBANDINGAN'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object RzPanel7: TRzPanel
        Left = 343
        Top = 0
        Width = 1002
        Height = 634
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 1
        object gridperiode: TcxGrid
          Left = 0
          Top = 78
          Width = 1002
          Height = 556
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.SkinName = 'Office2013White'
          object gtvperiode: TcxGridDBTableView
            PopupMenu = PopupMenu1
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
            OnCustomDrawCell = gtvperiodeCustomDrawCell
            OnFocusedRecordChanged = gtvperiodeFocusedRecordChanged
            DataController.DataSource = DSperiode
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.;(,0.)'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeaktif
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodenonaktif
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodepublish
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodebatal
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodelunas
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodebiayapemakaian
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeadministrasi
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodepemeliharaan
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperioderetribusi
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
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodemeterai
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodetotalrekening
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
                Format = '#,##0.#0'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skCount
                Column = gtvperiodenama
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodeColumn3
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeColumn5
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeColumn6
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeColumn7
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
                Column = gtvperiodeColumn8
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodeColumn10
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeColumn2
              end
              item
                Format = ',0.;(,0.)'
                Kind = skSum
                Column = gtvperiodeColumn11
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodeColumn14
              end
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvperiodeColumn15
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            Styles.Selection = cxStyle3
            object gtvperiodeperiode: TcxGridDBColumn
              DataBinding.FieldName = 'periode'
              Visible = False
              VisibleForCustomization = False
            end
            object gtvperiodeColumn9: TcxGridDBColumn
              Caption = 'P'
              DataBinding.FieldName = 'periodelancar'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DM.png16
              Properties.Items = <
                item
                  ImageIndex = 17
                  Value = '1'
                end
                item
                  ImageIndex = 15
                  Value = '0'
                end>
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderHint = 'Periode Lancar'
              Width = 29
            end
            object gtvperiodenama: TcxGridDBColumn
              Caption = 'BULAN'
              DataBinding.FieldName = 'nama'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gtvperiodebiayapemakaian: TcxGridDBColumn
              Caption = 'BY. PAKAI'
              DataBinding.FieldName = 'biayapemakaian'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Visible = False
              Width = 110
            end
            object gtvperiodeadministrasi: TcxGridDBColumn
              Caption = 'ADMINISTRASI'
              DataBinding.FieldName = 'administrasi'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 103
            end
            object gtvperiodepemeliharaan: TcxGridDBColumn
              Caption = 'PEMELIHARAAN'
              DataBinding.FieldName = 'pemeliharaan'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 106
            end
            object gtvperioderetribusi: TcxGridDBColumn
              Caption = 'RETRIBUSI'
              DataBinding.FieldName = 'retribusi'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 94
            end
            object gtvperiodeColumn5: TcxGridDBColumn
              Caption = 'PELAYANAN'
              DataBinding.FieldName = 'pelayanan'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 94
            end
            object gtvperiodeColumn6: TcxGridDBColumn
              Caption = 'AIR LIMBAH'
              DataBinding.FieldName = 'airlimbah'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 90
            end
            object gtvperiodemeterai: TcxGridDBColumn
              Caption = 'METERAI'
              DataBinding.FieldName = 'meterai'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 94
            end
            object gtvperiodeColumn7: TcxGridDBColumn
              Caption = 'DENDA PK 0'
              DataBinding.FieldName = 'dendapakai0'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 94
            end
            object gtvperiodeColumn10: TcxGridDBColumn
              Caption = 'PPN'
              DataBinding.FieldName = 'ppn'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Visible = False
              Width = 69
            end
            object gtvperiodelunas: TcxGridDBColumn
              Caption = 'TOTAL'
              DataBinding.FieldName = 'total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Visible = False
              Width = 108
            end
            object gtvperiodeColumn3: TcxGridDBColumn
              Caption = 'PIUTANG'
              DataBinding.FieldName = 'piutang'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Visible = False
              Width = 99
            end
            object gtvperiodeaktif: TcxGridDBColumn
              Caption = 'PEL. AIR'
              DataBinding.FieldName = 'pelanggan'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object gtvperiodenonaktif: TcxGridDBColumn
              Caption = 'NON AKTIF'
              DataBinding.FieldName = 'nonaktif'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              Width = 82
            end
            object gtvperiodeColumn2: TcxGridDBColumn
              Caption = 'PEL. LIMBAH'
              DataBinding.FieldName = 'pelanggan_limbah'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gtvperiodeColumn11: TcxGridDBColumn
              Caption = 'PEL. L2T2'
              DataBinding.FieldName = 'pelanggan_lltt'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gtvperiodepublish: TcxGridDBColumn
              Caption = 'SDH.PUBLISH'
              DataBinding.FieldName = 'sudahpublish'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              HeaderAlignmentHorz = taCenter
              HeaderHint = 'Sudah Publish'
              Width = 98
            end
            object gtvperiodetotalrekening: TcxGridDBColumn
              Caption = 'REK.AIR'
              DataBinding.FieldName = 'rekair'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
            object gtvperiodeColumn14: TcxGridDBColumn
              Caption = 'REK. LIMBAH'
              DataBinding.FieldName = 'jumlah_limbah'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object gtvperiodeColumn15: TcxGridDBColumn
              Caption = 'REK. L2T2'
              DataBinding.FieldName = 'jumlah_lltt'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object gtvperiodeColumn8: TcxGridDBColumn
              Caption = 'BLM.PUBLISH'
              DataBinding.FieldName = 'belumpublish'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderHint = 'Belum Publish'
              Width = 102
            end
            object gtvperiodebatal: TcxGridDBColumn
              Caption = 'LUNAS'
              DataBinding.FieldName = 'sudahlunas'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;(,0.)'
              Visible = False
              HeaderHint = 'Sudah Lunas'
              Width = 91
            end
            object gtvperiodeColumn1: TcxGridDBColumn
              Caption = 'TGL.DENDA I'
              DataBinding.FieldName = 'tglmulaidenda'
              Visible = False
              Width = 100
            end
            object gtvperiodeColumn4: TcxGridDBColumn
              Caption = 'TGL. DENDA II'
              DataBinding.FieldName = 'tglmulaidenda2'
              Visible = False
              Width = 106
            end
            object gtvperiodeColumn12: TcxGridDBColumn
              Caption = 'TGL. DENDA III'
              DataBinding.FieldName = 'tglmulaidenda3'
              Visible = False
              Width = 105
            end
            object gtvperiodeColumn13: TcxGridDBColumn
              Caption = 'TGL. DENDA PER BULAN'
              DataBinding.FieldName = 'tglmulaidendaperbulan'
              Visible = False
              Width = 144
            end
            object gtvperiodestatus: TcxGridDBColumn
              Caption = 'STATUS'
              DataBinding.FieldName = 'xstatus'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
          end
          object gridperiodeLevel1: TcxGridLevel
            GridView = gtvperiode
          end
        end
        object RzPanel14: TRzPanel
          Left = 0
          Top = 0
          Width = 1002
          Height = 38
          Align = alTop
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 1
          Visible = False
          object RzLabel3: TRzLabel
            Left = 6
            Top = 8
            Width = 72
            Height = 19
            Caption = 'Info Warna :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Open Sans'
            Font.Style = []
            ParentFont = False
            Transparent = True
            BlinkIntervalOff = 700
            BlinkIntervalOn = 600
          end
          object color1: TRzPanel
            Left = 89
            Top = 5
            Width = 48
            Height = 25
            BorderOuter = fsFlat
            Color = 11723007
            TabOrder = 0
            object RzLabel2: TRzLabel
              Left = 10
              Top = 3
              Width = 30
              Height = 17
              Caption = 'Buka'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Open Sans Semibold'
              Font.Style = []
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 700
              BlinkIntervalOn = 600
            end
          end
        end
        object RzPanel2: TRzPanel
          Left = 0
          Top = 38
          Width = 1002
          Height = 40
          Align = alTop
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 2
          object refresh: TcxButton
            Left = 0
            Top = 0
            Width = 89
            Height = 40
            Caption = 'Refresh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = refreshClick
            Align = alLeft
            OptionsImage.ImageIndex = 25
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object tambah: TcxButton
            Left = 89
            Top = 0
            Width = 97
            Height = 40
            Caption = 'Tambah'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = tambahClick
            Align = alLeft
            OptionsImage.ImageIndex = 24
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object hapus: TcxButton
            Left = 186
            Top = 0
            Width = 80
            Height = 40
            Caption = 'Hapus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = False
            OnClick = hapusClick
            Align = alLeft
            OptionsImage.ImageIndex = 23
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object hitung: TcxButton
            Left = 266
            Top = 0
            Width = 88
            Height = 40
            Caption = 'Hitung'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = False
            OnClick = hitungClick
            Align = alLeft
            OptionsImage.ImageIndex = 30
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object export: TcxButton
            Left = 354
            Top = 0
            Width = 80
            Height = 40
            Caption = 'Export'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TabStop = False
            OnClick = exportClick
            Align = alLeft
            OptionsImage.ImageIndex = 26
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object print: TcxButton
            Left = 434
            Top = 0
            Width = 79
            Height = 40
            Caption = 'Print'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            TabStop = False
            OnClick = printClick
            Align = alLeft
            OptionsImage.ImageIndex = 28
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
        end
      end
    end
    object RzPanel8: TRzPanel
      Left = 1354
      Top = 0
      Width = 186
      Height = 634
      Align = alRight
      BorderOuter = fsNone
      Color = 16316664
      TabOrder = 2
      object RzPanel9: TRzPanel
        Left = 17
        Top = 23
        Width = 153
        Height = 289
        BorderOuter = fsFlatRounded
        Color = clWhite
        TabOrder = 0
        object cxLabel2: TcxLabel
          Left = 16
          Top = 40
          Caption = 'Tgl. Denda I :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tgl1: TcxDateEdit
          Left = 16
          Top = 59
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = 'dd mmmm yyyy'
          Properties.EditFormat = 'dd mmmm yyyy'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 88
          Caption = 'Tgl. Denda II :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tgl2: TcxDateEdit
          Left = 16
          Top = 107
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = 'dd mmmm yyyy'
          Properties.EditFormat = 'dd mmmm yyyy'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 136
          Caption = 'Tgl. Denda III :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tgl3: TcxDateEdit
          Left = 16
          Top = 155
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = 'dd mmmm yyyy'
          Properties.EditFormat = 'dd mmmm yyyy'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 184
          Caption = 'Tgl. Denda IV :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tgl4: TcxDateEdit
          Left = 16
          Top = 203
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = 'dd mmmm yyyy'
          Properties.EditFormat = 'dd mmmm yyyy'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 232
          Caption = 'Tgl. Denda Bulanan :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tgl5: TcxDateEdit
          Left = 16
          Top = 251
          TabStop = False
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = 'dd mmmm yyyy'
          Properties.EditFormat = 'dd mmmm yyyy'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 121
        end
        object bulan: TcxLabel
          Left = 16
          Top = 14
          Caption = '-'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
      end
      object RzPanel11: TRzPanel
        Left = 17
        Top = 8
        Width = 152
        Height = 25
        BorderOuter = fsNone
        BorderColor = clBlack
        Caption = 'TANGGAL DENDA'
        Color = 20966
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object info: TRzPanel
    Left = 0
    Top = 0
    Width = 1540
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR PERIODE REKENING AIR'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Qperiode: TMyQuery
    Connection = DM.Conn
    Left = 104
    Top = 264
  end
  object DSperiode: TMyDataSource
    DataSet = Qperiode
    Left = 272
    Top = 256
  end
  object Qmirror: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      'COUNT(p.nosamb) AS pelanggan,'
      'SUM(p.status NOT IN ("0")) AS pelaktif,'
      'SUM(p.status IN ("0")) AS nonaktif,'
      'SUM(c.flagaktif IN ("1","2","3")) AS rekaktif,'
      'SUM(c.flagpublish="1") AS publish,'
      'SUM(c.flagpublish="0") AS belumpublish,'
      'SUM(c.flaglunas="1") AS lunas,'
      'SUM(IF(c.flagpublish="1",c.pakai,0)) AS pakai,'
      'SUM(IF(c.flagpublish="1",c.rekair,0)) AS rekair,'
      'SUM(IF(c.flagpublish="1",c.total,0)) AS total,'
      'SUM(IF(c.flagpublish="1",c.total,0)) AS biayapemakaian,'
      
        'SUM(IF(c.flagpublish="1",c.administrasi+c.administrasilain,0)) A' +
        'S administrasi,'
      
        'SUM(IF(c.flagpublish="1",c.pemeliharaan+c.pemeliharaanlain,0)) A' +
        'S pemeliharaan,'
      
        'SUM(IF(c.flagpublish="1",c.retribusi+c.retribusilain,0)) AS retr' +
        'ibusi,'
      'SUM(IF(c.flagpublish="1",c.dendatunggakan,0)) AS dendatunggakan,'
      'SUM(IF(c.flagpublish="1",c.meterai,0)) AS meterai,'
      'SUM(IF(c.flagpublish="1",c.pelayanan,0)) AS pelayanan,'
      'SUM(IF(c.flagpublish="1",c.airlimbah,0)) AS airlimbah,'
      'SUM(IF(c.flagpublish="1",c.dendapakai0,0)) AS dendapakai0,'
      'SUM(IF(c.flagpublish="1",c.ppn,0)) AS ppn')
    SQLLock.Strings = (
      'SELECT '
      'SUM(c.flagaktif IN ("1","2","3")) AS pelanggan,'
      'SUM(c.flagaktif IN ("0")) AS nonaktif,'
      'SUM(c.flagpublish="1") AS publish,'
      'SUM(c.flagpublish="0") AS belumpublish,'
      'SUM(c.flaglunas="1") AS lunas,'
      'SUM(c.pakai) AS pakai,'
      'SUM(c.rekair) AS rekair,'
      'SUM(c.total) AS total,'
      'SUM(c.biayapemakaian) AS biayapemakaian,'
      'SUM(c.administrasi)+SUM(c.administrasilain) AS administrasi,'
      'SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain)  AS pemeliharaan,'
      'SUM(c.retribusi)+SUM(c.retribusilain)  AS retribusi,'
      'SUM(c.dendatunggakan) AS dendatunggakan,'
      'SUM(c.meterai) AS meterai,'
      'SUm(c.pelayanan) as pelayanan,'
      'SUm(c.airlimbah) as airlimbah,'
      'SUM(c.dendapakai0) as dendapakai0,'
      'SUm(c.ppn) as ppn')
    Connection = DM.Conn
    Left = 192
    Top = 208
  end
  object Qtahun: TMyQuery
    Connection = DM.Conn
    Left = 248
    Top = 168
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 368
    Top = 320
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = gridperiode
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 147300
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210820
      PrinterPage.PageSize.Y = 297180
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42018.747600659720000000
      ShrinkToPageWidth = True
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
      StyleRepository = cxStyleRepository2
      Styles.BandHeader = cxStyle3
      Styles.Caption = cxStyle4
      Styles.FilterBar = cxStyle2
      Styles.Footer = cxStyle5
      Styles.Header = cxStyle6
      Styles.Selection = cxStyle7
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
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
  end
  object Qgrid: TMyQuery
    Connection = DM.Conn
    Left = 648
    Top = 128
  end
  object DSgrid: TMyDataSource
    DataSet = Qgrid
    Left = 592
    Top = 288
  end
  object Qgrid2: TMyQuery
    Connection = DM.Conn
    Left = 40
    Top = 152
  end
  object DSgrid2: TMyDataSource
    DataSet = Qgrid2
    Left = 40
    Top = 208
  end
  object Qcek2: TMyQuery
    Connection = DM.Conn
    Left = 488
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Images = DM.png16
    Left = 568
    Top = 288
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 7
      OnClick = refreshClick
    end
    object tambah1: TMenuItem
      Caption = 'Tambah'
      ImageIndex = 6
      OnClick = tambahClick
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      ImageIndex = 5
      OnClick = hapusClick
    end
    object SetTglDenda1: TMenuItem
      Caption = 'Koreksi Tanggal Denda'
      ImageIndex = 3
      OnClick = SetTglDenda1Click
    end
    object SetSebagaiPeriodeLancar1: TMenuItem
      Caption = 'Terapkan Sebagai Periode Lancar'
      ImageIndex = 1
      Visible = False
      OnClick = SetSebagaiPeriodeLancar1Click
    end
    object SetBuka1: TMenuItem
      Caption = 'Buka Periode'
      ImageIndex = 17
      OnClick = SetBuka1Click
    end
    object SetTutup1: TMenuItem
      Caption = 'Tutup Periode'
      ImageIndex = 15
      OnClick = SetTutup1Click
    end
  end
  object ActionList1: TActionList
    Left = 48
    Top = 65497
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
  end
end