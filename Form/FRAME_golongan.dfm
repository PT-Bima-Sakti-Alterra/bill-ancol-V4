object FRgol: TFRgol
  Left = 0
  Top = 0
  Width = 1376
  Height = 740
  Color = 16316664
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 81
    Top = 25
    Width = 1295
    Height = 715
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = 9103615
    GradientColorStop = 9103615
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 1295
      Height = 715
      Align = alClient
      Focusable = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet9
      Properties.CustomButtons.Buttons = <>
      Properties.TabCaptionAlignment = taLeftJustify
      ClientRectBottom = 713
      ClientRectLeft = 2
      ClientRectRight = 1293
      ClientRectTop = 30
      object cxTabSheet1: TcxTabSheet
        Caption = 'Golongan '
        ImageIndex = 89
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 1016
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object gridgol: TcxGrid
            Left = 0
            Top = 40
            Width = 1016
            Height = 643
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtvgol: TcxGridDBTableView
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
              OnCellDblClick = gtvgolCellDblClick
              OnCustomDrawCell = gtvgolCustomDrawCell
              OnFocusedRecordChanged = gtvgolFocusedRecordChanged
              DataController.DataSource = DSgol
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.;(,0.)'
                  Kind = skCount
                  Column = gtvgolColumn3
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
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.HeaderAutoHeight = True
              Styles.Selection = cxStyle32
              object gtvgolColumn10: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kodegolyangberlaku'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 202
              end
              object gtvgolColumn11: TcxGridDBColumn
                Caption = 'Periode'
                DataBinding.FieldName = 'periodemulaiberlaku'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object gtvgolColumn3: TcxGridDBColumn
                Caption = 'Kode Gol'
                DataBinding.FieldName = 'kodegol'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Width = 89
              end
              object gtvgolnomorba: TcxGridDBColumn
                Caption = 'Nomor SK'
                DataBinding.FieldName = 'nomorba'
                Visible = False
                Width = 116
              end
              object gtvgolgolongan: TcxGridDBColumn
                Caption = 'Golongan'
                DataBinding.FieldName = 'golongan'
                HeaderAlignmentHorz = taCenter
                Width = 276
              end
              object gtvgolminpakai: TcxGridDBColumn
                Caption = 'Min.Pakai'
                DataBinding.FieldName = 'minpakai'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 3
                Properties.DisplayFormat = '#,##0.###;(#,##0.###);0'
                HeaderAlignmentHorz = taCenter
                Width = 72
              end
              object gtvgoladministrasi: TcxGridDBColumn
                Caption = 'Administrasi'
                DataBinding.FieldName = 'administrasi'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 107
              end
              object gtvgolpemeliharaan: TcxGridDBColumn
                Caption = 'Pemeliharaan'
                DataBinding.FieldName = 'pemeliharaan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 94
              end
              object gtvgolpelayanan: TcxGridDBColumn
                Caption = 'Beban Tetap'
                DataBinding.FieldName = 'pelayanan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 89
              end
              object gtvgolretribusi: TcxGridDBColumn
                Caption = 'Retribusi'
                DataBinding.FieldName = 'retribusi'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 92
              end
              object gtvgolairlimbah: TcxGridDBColumn
                Caption = 'Air Limbah'
                DataBinding.FieldName = 'airlimbah'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 74
              end
              object gtvgolColumn2: TcxGridDBColumn
                Caption = 'Ppn (%)'
                DataBinding.FieldName = 'ppn'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.##;(,0.##)'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object gtvgolColumn7: TcxGridDBColumn
                Caption = 'Ret. Per M3'
                DataBinding.FieldName = 'retribusi_pakai'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 81
              end
              object gtvgoldendapakai0: TcxGridDBColumn
                Caption = 'Denda Pakai 0'
                DataBinding.FieldName = 'dendapakai0'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 90
              end
              object gtvgoldendatunggakan: TcxGridDBColumn
                Caption = 'Denda TG I'
                DataBinding.FieldName = 'dendatunggakan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 67
              end
              object gtvgolColumn4: TcxGridDBColumn
                Caption = 'Denda TG II'
                DataBinding.FieldName = 'dendatunggakan2'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 73
              end
              object gtvgolColumn5: TcxGridDBColumn
                Caption = 'Denda TG III'
                DataBinding.FieldName = 'dendatunggakan3'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 75
              end
              object gtvgolColumn8: TcxGridDBColumn
                Caption = 'Denda TG IV'
                DataBinding.FieldName = 'dendatunggakan4'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 78
              end
              object gtvgolColumn6: TcxGridDBColumn
                Caption = 'Denda TG per Bulan'
                DataBinding.FieldName = 'dendatunggakanperbulan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                Visible = False
                Width = 83
              end
              object gtvgolstatus: TcxGridDBColumn
                Caption = 'status'
                DataBinding.FieldName = 'aktif'
                Visible = False
                VisibleForCustomization = False
                Width = 41
              end
              object gtvgolColumn1: TcxGridDBColumn
                Caption = 'Kategori'
                DataBinding.FieldName = 'kategori'
                Visible = False
                Width = 118
              end
              object gtvgolColumn9: TcxGridDBColumn
                Caption = 'Uraian Kategori'
                DataBinding.FieldName = 'uraian'
                Visible = False
                Width = 131
              end
            end
            object gridgolLevel1: TcxGridLevel
              GridView = gtvgol
            end
          end
          object RzPanel6: TRzPanel
            Left = 0
            Top = 0
            Width = 1016
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Color = 16316664
            TabOrder = 1
            object printgol: TcxButton
              Left = 457
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = printgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 28
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object koreksigol: TcxButton
              Left = 185
              Top = 0
              Width = 88
              Height = 40
              Caption = 'Koreksi'
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
              OnClick = koreksigolClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambahgol: TcxButton
              Left = 97
              Top = 0
              Width = 88
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
              TabOrder = 2
              TabStop = False
              OnClick = tambahgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refreshgol: TcxButton
              Left = 0
              Top = 0
              Width = 97
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
              TabOrder = 3
              TabStop = False
              OnClick = refreshgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object exportgol: TcxButton
              Left = 369
              Top = 0
              Width = 88
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
              OnClick = exportgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 26
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapusgol: TcxButton
              Left = 273
              Top = 0
              Width = 96
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
              TabOrder = 5
              TabStop = False
              OnClick = hapusgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
        end
        object RzPanel3: TRzPanel
          Left = 1016
          Top = 0
          Width = 275
          Height = 683
          Align = alRight
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 1
          object cxGroupBox1: TcxGroupBox
            Left = 9
            Top = 224
            Alignment = alTopCenter
            Caption = 'BB'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Height = 153
            Width = 256
            object d1: TcxCurrencyEdit
              Left = 141
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 108
            end
            object d2: TcxCurrencyEdit
              Left = 141
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 108
            end
            object d3: TcxCurrencyEdit
              Left = 141
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 108
            end
            object d4: TcxCurrencyEdit
              Left = 141
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 108
            end
            object d5: TcxCurrencyEdit
              Left = 140
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 109
            end
            object cxLabel1: TcxLabel
              Left = 16
              Top = 16
              Caption = 'Denda TG 1'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 16
              Top = 40
              Caption = 'Denda TG 2'
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 16
              Top = 64
              Caption = 'Denda TG 3'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 16
              Top = 88
              Caption = 'Denda TG 4'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 16
              Top = 112
              Caption = 'Denda TG Per Bulan'
              Transparent = True
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 63
            Top = 31
            Alignment = alTopCenter
            Caption = 'BA'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 146
            Width = 54
            object ba1: TcxCurrencyEdit
              Left = 5
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 44
            end
            object ba2: TcxCurrencyEdit
              Left = 5
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 44
            end
            object ba3: TcxCurrencyEdit
              Left = 5
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 44
            end
            object ba4: TcxCurrencyEdit
              Left = 5
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 44
            end
            object ba5: TcxCurrencyEdit
              Left = 5
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 44
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 9
            Top = 31
            Alignment = alTopCenter
            Caption = 'BB'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 146
            Width = 56
            object bb1: TcxCurrencyEdit
              Left = 5
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 44
            end
            object bb2: TcxCurrencyEdit
              Left = 5
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 44
            end
            object bb3: TcxCurrencyEdit
              Left = 5
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 44
            end
            object bb4: TcxCurrencyEdit
              Left = 5
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 44
            end
            object bb5: TcxCurrencyEdit
              Left = 4
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 44
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 116
            Top = 31
            Alignment = alTopCenter
            Caption = 'Tarif'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 146
            Width = 74
            object tr1: TcxCurrencyEdit
              Left = 6
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 60
            end
            object tr2: TcxCurrencyEdit
              Left = 6
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 60
            end
            object tr3: TcxCurrencyEdit
              Left = 6
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 60
            end
            object tr4: TcxCurrencyEdit
              Left = 6
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 60
            end
            object tr5: TcxCurrencyEdit
              Left = 5
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 61
            end
          end
          object cxGroupBox10: TcxGroupBox
            Left = 188
            Top = 31
            Alignment = alTopCenter
            Caption = 'Tetap'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 145
            Width = 74
            object tetap1: TcxTextEdit
              Left = 8
              Top = 14
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 54
            end
            object tetap2: TcxTextEdit
              Left = 8
              Top = 38
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 54
            end
            object tetap3: TcxTextEdit
              Left = 8
              Top = 62
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 54
            end
            object tetap4: TcxTextEdit
              Left = 8
              Top = 86
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 54
            end
            object tetap5: TcxTextEdit
              Left = 8
              Top = 110
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 54
            end
          end
          object RzPanel16: TRzPanel
            Left = 8
            Top = 7
            Width = 257
            Height = 25
            BorderOuter = fsNone
            Caption = 'Progresif'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object RzPanel21: TRzPanel
            Left = 8
            Top = 215
            Width = 257
            Height = 25
            BorderOuter = fsNone
            Caption = 'Denda Tunggakan'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Diameter    '
        ImageIndex = 89
        object RzPanel4: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolButton1: TRzToolButton
            Left = 236
            Top = 4
            Width = 68
            Height = 50
            ImageIndex = 16
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Export Excel'
          end
          object RzSpacer9: TRzSpacer
            Left = 304
            Top = 17
            Grooved = True
          end
          object RzToolButton5: TRzToolButton
            Left = 312
            Top = 4
            ImageIndex = 14
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Print'
            OnClick = printgolClick
          end
          object RzSpacer10: TRzSpacer
            Left = 362
            Top = 17
            Grooved = True
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 40
            Width = 1291
            Height = 643
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtvdia: TcxGridDBTableView
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
              OnCellDblClick = gtvdiaCellDblClick
              OnCustomDrawCell = gtvdiaCustomDrawCell
              DataController.DataSource = DSdia
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.HeaderAutoHeight = True
              Styles.Selection = cxStyle32
              object gtvdiaColumn2: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kodediameteryangberlaku'
                HeaderAlignmentHorz = taCenter
                Width = 176
              end
              object gtvdiaColumn3: TcxGridDBColumn
                Caption = 'Periode'
                DataBinding.FieldName = 'periodemulaiberlaku'
                HeaderAlignmentHorz = taCenter
                Width = 69
              end
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Kode Dia'
                DataBinding.FieldName = 'kodediameter'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Width = 81
              end
              object gtvdiaColumn1: TcxGridDBColumn
                Caption = 'Ukuran'
                DataBinding.FieldName = 'ukuran'
                HeaderAlignmentHorz = taCenter
                Width = 108
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Administrasi'
                DataBinding.FieldName = 'administrasi'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 110
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Pemeliharaan'
                DataBinding.FieldName = 'pemeliharaan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 147
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Beban Tetap'
                DataBinding.FieldName = 'pelayanan'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 125
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Retribusi'
                DataBinding.FieldName = 'retribusi'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Denda Pakai 0'
                DataBinding.FieldName = 'dendapakai0'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 140
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'Air Limbah'
                DataBinding.FieldName = 'airlimbah'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;(,0.)'
                HeaderAlignmentHorz = taCenter
                Width = 145
              end
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                Caption = 'Nomor SK'
                DataBinding.FieldName = 'nomorba'
                Visible = False
                Width = 108
              end
              object cxGrid1DBTableView1Column2: TcxGridDBColumn
                Caption = 'Aktif'
                DataBinding.FieldName = 'aktif'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = DM.Grid
                Properties.Items = <
                  item
                    ImageIndex = 3
                    Value = '1'
                  end
                  item
                    ImageIndex = 1
                    Value = '0'
                  end>
                Visible = False
                Width = 40
              end
              object gtvdiastatus: TcxGridDBColumn
                Caption = 'status'
                DataBinding.FieldName = 'aktif'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gtvdia
            end
          end
          object RzPanel8: TRzPanel
            Left = 0
            Top = 0
            Width = 1291
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Color = 16316664
            TabOrder = 1
            object printdia: TcxButton
              Left = 457
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = printdiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 28
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object koreksidia: TcxButton
              Left = 185
              Top = 0
              Width = 88
              Height = 40
              Caption = 'Koreksi'
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
              OnClick = koreksidiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambahdia: TcxButton
              Left = 97
              Top = 0
              Width = 88
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
              TabOrder = 2
              TabStop = False
              OnClick = tambahdiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refreshdia: TcxButton
              Left = 0
              Top = 0
              Width = 97
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
              TabOrder = 3
              TabStop = False
              OnClick = refreshdiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object exportdia: TcxButton
              Left = 369
              Top = 0
              Width = 88
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
              OnClick = exportdiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 26
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapusdia: TcxButton
              Left = 273
              Top = 0
              Width = 96
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
              TabOrder = 5
              TabStop = False
              OnClick = hapusdiaClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Administrasi Lain'
        ImageIndex = 2
        object RzPanel10: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolButton2: TRzToolButton
            Left = 236
            Top = 4
            Width = 68
            Height = 50
            ImageIndex = 16
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Export Excel'
          end
          object RzSpacer13: TRzSpacer
            Left = 304
            Top = 17
            Grooved = True
          end
          object RzToolButton3: TRzToolButton
            Left = 312
            Top = 4
            ImageIndex = 14
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Print'
            OnClick = printgolClick
          end
          object RzSpacer16: TRzSpacer
            Left = 362
            Top = 17
            Grooved = True
          end
          object RzPanel11: TRzPanel
            Left = 0
            Top = 0
            Width = 1291
            Height = 683
            Align = alClient
            BorderOuter = fsNone
            Color = clWhite
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 40
              Width = 1291
              Height = 643
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Open Sans Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.SkinName = 'Office2013White'
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGrid1DBTableView1CellDblClick
                DataController.DataSource = DSadmlain
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.IncSearch = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                Styles.Selection = cxStyle32
                object cxGrid1DBTableView1kode: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'kode'
                  HeaderAlignmentHorz = taCenter
                  Width = 97
                end
                object cxGrid1DBTableView1keterangan: TcxGridDBColumn
                  Caption = 'Keterangan'
                  DataBinding.FieldName = 'keterangan'
                  HeaderAlignmentHorz = taCenter
                  Width = 235
                end
                object cxGrid1DBTableView1administrasilain: TcxGridDBColumn
                  Caption = 'Biaya'
                  DataBinding.FieldName = 'administrasilain'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.;(,0.)'
                  HeaderAlignmentHorz = taCenter
                  Width = 107
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object RzPanel9: TRzPanel
              Left = 0
              Top = 0
              Width = 1291
              Height = 40
              Align = alTop
              BorderOuter = fsNone
              Color = 16316664
              TabOrder = 1
              object printadmlain: TcxButton
                Left = 457
                Top = 0
                Width = 80
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
                TabOrder = 0
                TabStop = False
                OnClick = printadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 28
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object koreksiadmlain: TcxButton
                Left = 185
                Top = 0
                Width = 88
                Height = 40
                Caption = 'Koreksi'
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
                OnClick = koreksiadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 22
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object tambahadmlain: TcxButton
                Left = 97
                Top = 0
                Width = 88
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
                TabOrder = 2
                TabStop = False
                OnClick = tambahadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 24
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object refreshadmlain: TcxButton
                Left = 0
                Top = 0
                Width = 97
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
                TabOrder = 3
                TabStop = False
                OnClick = refreshadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 25
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object exportadmlain: TcxButton
                Left = 369
                Top = 0
                Width = 88
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
                OnClick = exportadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 26
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object hapusadmlain: TcxButton
                Left = 273
                Top = 0
                Width = 96
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
                TabOrder = 5
                TabStop = False
                OnClick = hapusadmlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 23
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Pemeliharaan Lain    '
        ImageIndex = 3
        object RzPanel12: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolButton13: TRzToolButton
            Left = 236
            Top = 4
            Width = 68
            Height = 50
            ImageIndex = 16
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Export Excel'
          end
          object RzSpacer23: TRzSpacer
            Left = 304
            Top = 17
            Grooved = True
          end
          object RzToolButton14: TRzToolButton
            Left = 312
            Top = 4
            ImageIndex = 14
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Print'
            OnClick = printgolClick
          end
          object RzSpacer24: TRzSpacer
            Left = 362
            Top = 17
            Grooved = True
          end
          object RzPanel13: TRzPanel
            Left = 0
            Top = 0
            Width = 1291
            Height = 683
            Align = alClient
            BorderOuter = fsNone
            Color = clWhite
            TabOrder = 0
            object cxGrid3: TcxGrid
              Left = 0
              Top = 40
              Width = 1291
              Height = 643
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Open Sans Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.SkinName = 'Office2013White'
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGridDBTableView1CellDblClick
                DataController.DataSource = DSpemlain
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.IncSearch = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                Styles.Selection = cxStyle32
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'kode'
                  HeaderAlignmentHorz = taCenter
                  Width = 116
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Caption = 'Keterangan'
                  DataBinding.FieldName = 'keterangan'
                  HeaderAlignmentHorz = taCenter
                  Width = 224
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  Caption = 'Biaya'
                  DataBinding.FieldName = 'pemeliharaanlain'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.;(,0.)'
                  HeaderAlignmentHorz = taCenter
                  Width = 138
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object RzPanel17: TRzPanel
              Left = 0
              Top = 0
              Width = 1291
              Height = 40
              Align = alTop
              BorderOuter = fsNone
              Color = 16316664
              TabOrder = 1
              object printpemlain: TcxButton
                Left = 457
                Top = 0
                Width = 80
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
                TabOrder = 0
                TabStop = False
                OnClick = RzToolButton20Click
                Align = alLeft
                OptionsImage.ImageIndex = 28
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object koreksipemlain: TcxButton
                Left = 185
                Top = 0
                Width = 88
                Height = 40
                Caption = 'Koreksi'
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
                OnClick = koreksipemlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 22
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object tambahpemlain: TcxButton
                Left = 97
                Top = 0
                Width = 88
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
                TabOrder = 2
                TabStop = False
                OnClick = tambahpemlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 24
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object refreshpemlain: TcxButton
                Left = 0
                Top = 0
                Width = 97
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
                TabOrder = 3
                TabStop = False
                OnClick = refreshpemlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 25
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object RzToolButton19: TcxButton
                Left = 369
                Top = 0
                Width = 88
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
                OnClick = RzToolButton19Click
                Align = alLeft
                OptionsImage.ImageIndex = 26
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object hapuspemlain: TcxButton
                Left = 273
                Top = 0
                Width = 96
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
                TabOrder = 5
                TabStop = False
                OnClick = hapuspemlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 23
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
            end
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Retribusi Lain    '
        ImageIndex = 4
        object RzPanel14: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolButton21: TRzToolButton
            Left = 236
            Top = 4
            Width = 68
            Height = 50
            ImageIndex = 16
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Export Excel'
          end
          object RzSpacer31: TRzSpacer
            Left = 304
            Top = 17
            Grooved = True
          end
          object RzToolButton22: TRzToolButton
            Left = 312
            Top = 4
            ImageIndex = 14
            Layout = blGlyphTop
            UseToolbarButtonLayout = False
            Caption = 'Print'
            OnClick = printgolClick
          end
          object RzSpacer32: TRzSpacer
            Left = 362
            Top = 17
            Grooved = True
          end
          object RzPanel15: TRzPanel
            Left = 0
            Top = 0
            Width = 1291
            Height = 683
            Align = alClient
            BorderOuter = fsNone
            Color = clWhite
            TabOrder = 0
            object cxGrid4: TcxGrid
              Left = 0
              Top = 40
              Width = 1291
              Height = 643
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Open Sans Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.SkinName = 'Office2013White'
              object cxGridDBTableView2: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxGridDBTableView2CellDblClick
                DataController.DataSource = DSretlain
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                Styles.Selection = cxStyle32
                object cxGridDBColumn11: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'kode'
                  HeaderAlignmentHorz = taCenter
                  Width = 85
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  Caption = 'Keterangan'
                  DataBinding.FieldName = 'keterangan'
                  HeaderAlignmentHorz = taCenter
                  Width = 210
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  Caption = 'Biaya'
                  DataBinding.FieldName = 'retribusilain'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.;(,0.)'
                  HeaderAlignmentHorz = taCenter
                  Width = 130
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxGridDBTableView2
              end
            end
            object RzPanel18: TRzPanel
              Left = 0
              Top = 0
              Width = 1291
              Height = 40
              Align = alTop
              BorderOuter = fsNone
              Color = 16316664
              TabOrder = 1
              object printretlain: TcxButton
                Left = 457
                Top = 0
                Width = 80
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
                TabOrder = 0
                TabStop = False
                OnClick = printretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 28
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object koreksiretlain: TcxButton
                Left = 185
                Top = 0
                Width = 88
                Height = 40
                Caption = 'Koreksi'
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
                OnClick = koreksiretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 22
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object tambahretlain: TcxButton
                Left = 97
                Top = 0
                Width = 88
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
                TabOrder = 2
                TabStop = False
                OnClick = tambahretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 24
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object refreshretlain: TcxButton
                Left = 0
                Top = 0
                Width = 97
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
                TabOrder = 3
                TabStop = False
                OnClick = refreshretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 25
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object exportretlain: TcxButton
                Left = 369
                Top = 0
                Width = 88
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
                OnClick = exportretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 26
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
              object hapusretlain: TcxButton
                Left = 273
                Top = 0
                Width = 96
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
                TabOrder = 5
                TabStop = False
                OnClick = hapusretlainClick
                Align = alLeft
                OptionsImage.ImageIndex = 23
                OptionsImage.Images = DM.png24
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Transparent = True
              end
            end
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Materai    '
        Color = 9103615
        ImageIndex = 5
        ParentColor = False
        object RzPanel20: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 0
          object simpanmaterai: TcxButton
            Left = 272
            Top = 30
            Width = 75
            Height = 169
            Caption = 'Simpan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = simpanmateraiClick
            OptionsImage.ImageIndex = 23
            OptionsImage.Images = DM.png16
            OptionsImage.Layout = blGlyphTop
            SpeedButtonOptions.CanBeFocused = False
          end
          object meterai1: TcxCurrencyEdit
            Left = 144
            Top = 80
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object meterai2: TcxCurrencyEdit
            Left = 144
            Top = 104
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 121
          end
          object meterai3: TcxCurrencyEdit
            Left = 144
            Top = 128
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 121
          end
          object batas2: TcxCurrencyEdit
            Left = 16
            Top = 104
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object batas3: TcxCurrencyEdit
            Left = 16
            Top = 128
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
          object batas1: TcxCurrencyEdit
            Left = 16
            Top = 80
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;(,0.)'
            Properties.EditFormat = ',0.;(,0.)'
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Properties.UseThousandSeparator = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 121
          end
          object cxLabel2: TcxLabel
            Left = 16
            Top = 62
            Caption = 'Batas Nominal ( Rp. ) '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 144
            Top = 62
            Caption = 'Materai ( Rp. )'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object refreshmeterai: TcxButton
            Left = 432
            Top = 30
            Width = 97
            Height = 168
            Caption = 'refreshmeterai'
            TabOrder = 9
            TabStop = False
            Visible = False
            OnClick = refreshmeteraiClick
          end
          object cxLabel9: TcxLabel
            Left = 16
            Top = 158
            Caption = 'P.Awal (YYYYMM)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
            OnClick = printadmlainClick
          end
          object periodeawal: TcxCurrencyEdit
            Left = 16
            Top = 176
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            Properties.MaxLength = 6
            Properties.Nullable = False
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 121
          end
          object cxLabel10: TcxLabel
            Left = 144
            Top = 158
            Caption = 'P.Akhir (YYYYMM)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object periodeakhir: TcxCurrencyEdit
            Left = 144
            Top = 176
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            Properties.AssignedValues.EditFormat = True
            Properties.MaxLength = 6
            Properties.Nullable = False
            Properties.Nullstring = '0'
            Properties.UseDisplayFormatWhenEditing = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseNullString = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 121
          end
          object idmeterai: TcxComboBox
            Left = 16
            Top = 31
            AutoSize = False
            ParentFont = False
            Properties.DropDownRows = 10
            Properties.MaxLength = 1
            Properties.OnChange = idmeteraiPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 14
            Height = 25
            Width = 249
          end
          object cxLabel11: TcxLabel
            Left = 16
            Top = 14
            Caption = 'Id Meterai'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object hapusMeterai: TcxButton
            Left = 352
            Top = 30
            Width = 75
            Height = 169
            Caption = 'Hapus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            TabStop = False
            OnClick = hapusMeteraiClick
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = DM.png16
            OptionsImage.Layout = blGlyphTop
            SpeedButtonOptions.CanBeFocused = False
          end
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'RAB'
        ImageIndex = 6
        object RzPanel19: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 0
          object RzPanel24: TRzPanel
            Left = 0
            Top = 0
            Width = 1291
            Height = 41
            Align = alTop
            BorderOuter = fsNone
            Color = 16316664
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object jenis: TcxComboBox
              Left = 80
              Top = 8
              Properties.Items.Strings = (
                'STANDART'
                'LIMBAH')
              Properties.OnChange = jenisPropertiesChange
              TabOrder = 0
              Text = 'STANDART'
              Width = 201
            end
            object cxLabel8: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Jenis RAB'
              Transparent = True
            end
          end
          object cxPageControl2: TcxPageControl
            Left = 0
            Top = 41
            Width = 1291
            Height = 642
            Align = alClient
            Color = 9103615
            Focusable = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            Properties.ActivePage = cxTabSheet10
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 640
            ClientRectLeft = 2
            ClientRectRight = 1289
            ClientRectTop = 30
            object cxTabSheet10: TcxTabSheet
              Caption = 'Paket Material'
              ImageIndex = 2
              object RzPanel25: TRzPanel
                Left = 0
                Top = 0
                Width = 385
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                TabOrder = 0
                object RzPanel29: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 385
                  Height = 40
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 16316664
                  TabOrder = 0
                  object cxButton26: TcxButton
                    Left = 0
                    Top = 0
                    Width = 97
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
                    OnClick = cxButton26Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 25
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton27: TcxButton
                    Left = 97
                    Top = 0
                    Width = 88
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
                    OnClick = cxButton27Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 24
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton28: TcxButton
                    Left = 185
                    Top = 0
                    Width = 88
                    Height = 40
                    Caption = 'Koreksi'
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
                    OnClick = cxButton28Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 22
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton29: TcxButton
                    Left = 273
                    Top = 0
                    Width = 96
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
                    TabOrder = 3
                    TabStop = False
                    OnClick = cxButton29Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 23
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                end
                object cxGrid10: TcxGrid
                  Left = 0
                  Top = 40
                  Width = 385
                  Height = 570
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  LookAndFeel.SkinName = 'Office2013White'
                  object cxGridDBTableView8: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    OnCellDblClick = cxGridDBTableView8CellDblClick
                    OnFocusedRecordChanged = cxGridDBTableView8FocusedRecordChanged
                    DataController.DataSource = DSpmat
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = ',0.;(,0.)'
                        Kind = skCount
                      end
                      item
                        Format = ',0.;(,0.)'
                        Kind = skSum
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.IncSearch = True
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    Styles.Selection = cxStyle32
                    object cxGridDBColumn36: TcxGridDBColumn
                      Caption = 'Nama Paket'
                      DataBinding.FieldName = 'namapaket'
                      HeaderAlignmentHorz = taCenter
                      Width = 200
                    end
                  end
                  object cxGridLevel9: TcxGridLevel
                    GridView = cxGridDBTableView8
                  end
                end
              end
              object RzPanel26: TRzPanel
                Left = 417
                Top = 0
                Width = 1000
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                TabOrder = 1
                object cxGrid7: TcxGrid
                  Left = 0
                  Top = 65
                  Width = 1000
                  Height = 545
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  LookAndFeel.SkinName = 'Office2013White'
                  object cxGridDBTableView5: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    DataController.DataSource = DSpmaterial
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = ',0.;(,0.)'
                        Kind = skCount
                        Column = cxGridDBColumn21
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBTableView5Column2
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBTableView5Column4
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBTableView5Column5
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.IncSearch = True
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    Styles.Selection = cxStyle32
                    object cxGridDBColumn22: TcxGridDBColumn
                      Caption = 'Nama Paket'
                      DataBinding.FieldName = 'namapaket'
                      Visible = False
                      HeaderAlignmentHorz = taCenter
                      Width = 200
                    end
                    object cxGridDBColumn21: TcxGridDBColumn
                      Caption = 'Kode'
                      DataBinding.FieldName = 'kodebarang'
                      HeaderAlignmentHorz = taCenter
                      Width = 92
                    end
                    object cxGridDBTableView5Column3: TcxGridDBColumn
                      Caption = 'Nama Barang'
                      DataBinding.FieldName = 'namabarang'
                      HeaderAlignmentHorz = taCenter
                      Width = 208
                    end
                    object cxGridDBColumn23: TcxGridDBColumn
                      Caption = 'Satuan'
                      DataBinding.FieldName = 'satuan'
                      HeaderAlignmentHorz = taCenter
                      Width = 78
                    end
                    object cxGridDBColumn24: TcxGridDBColumn
                      Caption = 'Harga Net @'
                      DataBinding.FieldName = 'harganet'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 87
                    end
                    object cxGridDBTableView5Column1: TcxGridDBColumn
                      Caption = 'QTY'
                      DataBinding.FieldName = 'qty'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 54
                    end
                    object cxGridDBTableView5Column4: TcxGridDBColumn
                      Caption = 'Seblm. PPN'
                      DataBinding.FieldName = 'sebelumppn'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      Properties.EditFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 84
                    end
                    object cxGridDBTableView5Column5: TcxGridDBColumn
                      Caption = 'PPN'
                      DataBinding.FieldName = 'ppn'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      Properties.EditFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 70
                    end
                    object cxGridDBTableView5Column2: TcxGridDBColumn
                      Caption = 'Jumlah'
                      DataBinding.FieldName = 'total'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      Properties.EditFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 89
                    end
                    object cxGridDBTableView5Column6: TcxGridDBColumn
                      Caption = 'Keterangan'
                      DataBinding.FieldName = 'keterangan'
                      HeaderAlignmentHorz = taCenter
                      Width = 184
                    end
                  end
                  object cxGridLevel6: TcxGridLevel
                    GridView = cxGridDBTableView5
                  end
                end
                object RzPanel28: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 1000
                  Height = 40
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 16316664
                  TabOrder = 1
                  object cxButton15: TcxButton
                    Left = 0
                    Top = 0
                    Width = 88
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
                    TabOrder = 0
                    TabStop = False
                    OnClick = cxButton15Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 24
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton17: TcxButton
                    Left = 88
                    Top = 0
                    Width = 96
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
                    TabOrder = 1
                    TabStop = False
                    OnClick = cxButton17Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 23
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object load: TcxButton
                    Left = 184
                    Top = 0
                    Width = 96
                    Height = 40
                    Caption = 'Load'
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
                    Visible = False
                    OnClick = loadClick
                    Align = alLeft
                    OptionsImage.ImageIndex = 23
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                end
                object info1: TRzPanel
                  Left = 0
                  Top = 40
                  Width = 1000
                  Height = 25
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 25047
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object RzPanel27: TRzPanel
                Left = 1417
                Top = 0
                Width = 94
                Height = 610
                Align = alClient
                BorderOuter = fsNone
                TabOrder = 2
              end
              object RzPanel30: TRzPanel
                Left = 385
                Top = 0
                Width = 32
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                Color = 16316664
                TabOrder = 3
              end
            end
            object cxTabSheet11: TcxTabSheet
              Caption = 'Paket Ongkos'
              ImageIndex = 3
              object RzPanel31: TRzPanel
                Left = 0
                Top = 0
                Width = 385
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                TabOrder = 0
                object RzPanel35: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 385
                  Height = 40
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 16316664
                  TabOrder = 0
                  object cxButton13: TcxButton
                    Left = 0
                    Top = 0
                    Width = 97
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
                    OnClick = cxButton13Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 25
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton30: TcxButton
                    Left = 97
                    Top = 0
                    Width = 88
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
                    OnClick = cxButton30Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 24
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton31: TcxButton
                    Left = 185
                    Top = 0
                    Width = 88
                    Height = 40
                    Caption = 'Koreksi'
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
                    OnClick = cxButton31Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 22
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton32: TcxButton
                    Left = 273
                    Top = 0
                    Width = 96
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
                    TabOrder = 3
                    TabStop = False
                    OnClick = cxButton32Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 23
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                end
                object cxGrid11: TcxGrid
                  Left = 0
                  Top = 40
                  Width = 385
                  Height = 570
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  LookAndFeel.SkinName = 'Office2013White'
                  object cxGridDBTableView9: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    OnCellDblClick = cxGridDBTableView9CellDblClick
                    OnFocusedRecordChanged = cxGridDBTableView9FocusedRecordChanged
                    DataController.DataSource = DSpong
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = ',0.;(,0.)'
                        Kind = skCount
                      end
                      item
                        Format = ',0.;(,0.)'
                        Kind = skSum
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.IncSearch = True
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    Styles.Selection = cxStyle32
                    object cxGridDBColumn37: TcxGridDBColumn
                      Caption = 'Nama Paket'
                      DataBinding.FieldName = 'namapaket'
                      HeaderAlignmentHorz = taCenter
                      Width = 200
                    end
                  end
                  object cxGridLevel10: TcxGridLevel
                    GridView = cxGridDBTableView9
                  end
                end
              end
              object RzPanel32: TRzPanel
                Left = 385
                Top = 0
                Width = 32
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                Color = 16316664
                TabOrder = 1
              end
              object RzPanel33: TRzPanel
                Left = 417
                Top = 0
                Width = 840
                Height = 610
                Align = alLeft
                BorderOuter = fsNone
                TabOrder = 2
                object RzPanel34: TRzPanel
                  Left = 0
                  Top = 0
                  Width = 840
                  Height = 40
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 16316664
                  TabOrder = 0
                  object cxButton19: TcxButton
                    Left = 0
                    Top = 0
                    Width = 88
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
                    TabOrder = 0
                    TabStop = False
                    OnClick = cxButton19Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 24
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                  object cxButton21: TcxButton
                    Left = 88
                    Top = 0
                    Width = 96
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
                    TabOrder = 1
                    TabStop = False
                    OnClick = cxButton21Click
                    Align = alLeft
                    OptionsImage.ImageIndex = 23
                    OptionsImage.Images = DM.png24
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.Transparent = True
                  end
                end
                object cxGrid8: TcxGrid
                  Left = 0
                  Top = 65
                  Width = 840
                  Height = 545
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  LookAndFeel.SkinName = 'Office2013White'
                  object cxGridDBTableView6: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    DataController.DataSource = DSpongkos
                    DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = ',0.;(,0.)'
                        Kind = skCount
                        Column = cxGridDBColumn25
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBColumn30
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBTableView6Column2
                      end
                      item
                        Format = '#,##0.#0'
                        Kind = skSum
                        Column = cxGridDBTableView6Column3
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.IncSearch = True
                    OptionsCustomize.ColumnsQuickCustomization = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.CellAutoHeight = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    Styles.Selection = cxStyle32
                    object cxGridDBColumn25: TcxGridDBColumn
                      Caption = 'Kode'
                      DataBinding.FieldName = 'kodeongkos'
                      HeaderAlignmentHorz = taCenter
                      Width = 100
                    end
                    object cxGridDBTableView6Column1: TcxGridDBColumn
                      Caption = 'Nama Ongkos'
                      DataBinding.FieldName = 'namaongkos'
                      HeaderAlignmentHorz = taCenter
                      Width = 260
                    end
                    object cxGridDBColumn27: TcxGridDBColumn
                      Caption = 'Satuan'
                      DataBinding.FieldName = 'satuan'
                      HeaderAlignmentHorz = taCenter
                      Width = 67
                    end
                    object cxGridDBColumn28: TcxGridDBColumn
                      Caption = 'Harga @'
                      DataBinding.FieldName = 'harga'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 79
                    end
                    object cxGridDBColumn29: TcxGridDBColumn
                      Caption = 'QTY'
                      DataBinding.FieldName = 'qty'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 54
                    end
                    object cxGridDBTableView6Column2: TcxGridDBColumn
                      Caption = 'Sblm. PPN'
                      DataBinding.FieldName = 'sebelumppn'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 85
                    end
                    object cxGridDBTableView6Column3: TcxGridDBColumn
                      Caption = 'PPN'
                      DataBinding.FieldName = 'ppn'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 70
                    end
                    object cxGridDBColumn30: TcxGridDBColumn
                      Caption = 'Jumlah'
                      DataBinding.FieldName = 'total'
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 2
                      Properties.DisplayFormat = '#,##0.#0'
                      HeaderAlignmentHorz = taCenter
                      Width = 92
                    end
                  end
                  object cxGridLevel7: TcxGridLevel
                    GridView = cxGridDBTableView6
                  end
                end
                object info2: TRzPanel
                  Left = 0
                  Top = 40
                  Width = 840
                  Height = 25
                  Align = alTop
                  BorderOuter = fsNone
                  Color = 25047
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Open Sans Semibold'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object RzPanel36: TRzPanel
                Left = 1257
                Top = 0
                Width = 30
                Height = 610
                Align = alClient
                BorderOuter = fsNone
                TabOrder = 3
              end
            end
            object cxTabSheet12: TcxTabSheet
              Caption = 'Paket RAB'
              ImageIndex = 4
              object cxGrid9: TcxGrid
                Left = 0
                Top = 40
                Width = 1287
                Height = 570
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Open Sans Semibold'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.SkinName = 'Office2013White'
                object cxGridDBTableView7: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  OnCellDblClick = cxGridDBTableView7CellDblClick
                  DataController.DataSource = DSprab
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.;(,0.)'
                      Kind = skCount
                      Column = cxGridDBColumn31
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.IncSearch = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Styles.Selection = cxStyle32
                  object cxGridDBColumn31: TcxGridDBColumn
                    Caption = 'Nama Paket'
                    DataBinding.FieldName = 'namapaket'
                    HeaderAlignmentHorz = taCenter
                    Width = 226
                  end
                  object cxGridDBColumn32: TcxGridDBColumn
                    Caption = 'Paket Material'
                    DataBinding.FieldName = 'paketmat'
                    HeaderAlignmentHorz = taCenter
                    Width = 200
                  end
                  object cxGridDBColumn33: TcxGridDBColumn
                    Caption = 'Paket Ongkos'
                    DataBinding.FieldName = 'paketongkos'
                    HeaderAlignmentHorz = taCenter
                    Width = 215
                  end
                  object cxGridDBTableView7Column1: TcxGridDBColumn
                    Caption = 'Persen  Jasa dari Material'
                    DataBinding.FieldName = 'persenjasadaribahan'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.;-,0. %'
                    Properties.EditFormat = ',0.;-,0. %'
                    HeaderAlignmentHorz = taCenter
                    Width = 187
                  end
                end
                object cxGridLevel8: TcxGridLevel
                  GridView = cxGridDBTableView7
                end
              end
              object RzPanel37: TRzPanel
                Left = 0
                Top = 0
                Width = 1287
                Height = 40
                Align = alTop
                BorderOuter = fsNone
                Color = 16316664
                TabOrder = 1
                object cxButton22: TcxButton
                  Left = 0
                  Top = 0
                  Width = 97
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
                  OnClick = cxButton22Click
                  Align = alLeft
                  OptionsImage.ImageIndex = 25
                  OptionsImage.Images = DM.png24
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Transparent = True
                end
                object cxButton23: TcxButton
                  Left = 97
                  Top = 0
                  Width = 88
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
                  OnClick = cxButton23Click
                  Align = alLeft
                  OptionsImage.ImageIndex = 24
                  OptionsImage.Images = DM.png24
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Transparent = True
                end
                object cxButton24: TcxButton
                  Left = 185
                  Top = 0
                  Width = 88
                  Height = 40
                  Caption = 'Koreksi'
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
                  OnClick = cxButton24Click
                  Align = alLeft
                  OptionsImage.ImageIndex = 22
                  OptionsImage.Images = DM.png24
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Transparent = True
                end
                object cxButton25: TcxButton
                  Left = 273
                  Top = 0
                  Width = 96
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
                  TabOrder = 3
                  TabStop = False
                  OnClick = cxButton25Click
                  Align = alLeft
                  OptionsImage.ImageIndex = 23
                  OptionsImage.Images = DM.png24
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Transparent = True
                end
              end
            end
          end
        end
      end
      object cxTabSheet8: TcxTabSheet
        Caption = 'Sub Golongan'
        ImageIndex = 7
        object RzPanel22: TRzPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 40
          Align = alTop
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 0
          object cxButton9: TcxButton
            Left = 457
            Top = 0
            Width = 80
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
            TabOrder = 0
            TabStop = False
            OnClick = printadmlainClick
            Align = alLeft
            OptionsImage.ImageIndex = 28
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object cxButton10: TcxButton
            Left = 185
            Top = 0
            Width = 88
            Height = 40
            Caption = 'Koreksi'
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
            OnClick = koreksiadmlainClick
            Align = alLeft
            OptionsImage.ImageIndex = 22
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object cxButton11: TcxButton
            Left = 97
            Top = 0
            Width = 88
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
            TabOrder = 2
            TabStop = False
            OnClick = tambahadmlainClick
            Align = alLeft
            OptionsImage.ImageIndex = 24
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object cxButton12: TcxButton
            Left = 0
            Top = 0
            Width = 97
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
            TabOrder = 3
            TabStop = False
            OnClick = cxButton12Click
            Align = alLeft
            OptionsImage.ImageIndex = 25
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object cxButton14: TcxButton
            Left = 369
            Top = 0
            Width = 88
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
            OnClick = exportadmlainClick
            Align = alLeft
            OptionsImage.ImageIndex = 26
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object cxButton16: TcxButton
            Left = 273
            Top = 0
            Width = 96
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
            TabOrder = 5
            TabStop = False
            OnClick = hapusadmlainClick
            Align = alLeft
            OptionsImage.ImageIndex = 23
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
        end
        object gridSubGol: TcxGrid
          Left = 0
          Top = 40
          Width = 1291
          Height = 643
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.SkinName = 'Office2013White'
          object gtvSubGol: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = DSadmlain
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Selection = cxStyle32
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = 'Sub Golongan'
              DataBinding.FieldName = 'kode'
              HeaderAlignmentHorz = taCenter
              Width = 170
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Kode Golongan'
              DataBinding.FieldName = 'keterangan'
              HeaderAlignmentHorz = taCenter
              Width = 235
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = gtvSubGol
          end
        end
      end
      object cxTabSheet9: TcxTabSheet
        Caption = 'Golongan IPL'
        ImageIndex = 8
        object RzPanel38: TRzPanel
          Left = 1016
          Top = 0
          Width = 275
          Height = 683
          Align = alRight
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 0
          object cxGroupBox3: TcxGroupBox
            Left = 63
            Top = 31
            Alignment = alTopCenter
            Caption = 'BA'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 196
            Width = 54
            object ba1ipl: TcxCurrencyEdit
              Left = 5
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 44
            end
            object ba2ipl: TcxCurrencyEdit
              Left = 5
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 44
            end
            object ba3ipl: TcxCurrencyEdit
              Left = 5
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 44
            end
            object ba4ipl: TcxCurrencyEdit
              Left = 5
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 44
            end
            object ba5ipl: TcxCurrencyEdit
              Left = 5
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 44
            end
            object ba7ipl: TcxCurrencyEdit
              Left = 5
              Top = 160
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 44
            end
            object ba6ipl: TcxCurrencyEdit
              Left = 5
              Top = 136
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.MaxLength = 5
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 44
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 9
            Top = 31
            Alignment = alTopCenter
            Caption = 'BB'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 196
            Width = 56
            object bb1ipl: TcxCurrencyEdit
              Left = 5
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 44
            end
            object bb2ipl: TcxCurrencyEdit
              Left = 5
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 44
            end
            object bb3ipl: TcxCurrencyEdit
              Left = 5
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 44
            end
            object bb4ipl: TcxCurrencyEdit
              Left = 5
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 44
            end
            object bb5ipl: TcxCurrencyEdit
              Left = 4
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 44
            end
            object bb6ipl: TcxCurrencyEdit
              Left = 5
              Top = 136
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 44
            end
            object bb7ipl: TcxCurrencyEdit
              Left = 5
              Top = 160
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 44
            end
          end
          object cxGroupBox5: TcxGroupBox
            Left = 116
            Top = 31
            Alignment = alTopCenter
            Caption = 'Tarif'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 196
            Width = 74
            object tr1ipl: TcxCurrencyEdit
              Left = 6
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 60
            end
            object tr2ipl: TcxCurrencyEdit
              Left = 6
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 60
            end
            object tr3ipl: TcxCurrencyEdit
              Left = 6
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 60
            end
            object tr4ipl: TcxCurrencyEdit
              Left = 6
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 60
            end
            object tr5ipl: TcxCurrencyEdit
              Left = 6
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 60
            end
            object tr6ipl: TcxCurrencyEdit
              Left = 6
              Top = 136
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 60
            end
            object tr7ipl: TcxCurrencyEdit
              Left = 6
              Top = 160
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.EditFormat = ',0.;(,0.)'
              Properties.Nullable = False
              Properties.Nullstring = '0'
              Properties.ReadOnly = True
              Properties.UseDisplayFormatWhenEditing = True
              Properties.UseLeftAlignmentOnEditing = False
              Properties.UseNullString = True
              Properties.UseThousandSeparator = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 60
            end
          end
          object cxGroupBox6: TcxGroupBox
            Left = 188
            Top = 31
            Alignment = alTopCenter
            Caption = 'Tetap'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 196
            Width = 74
            object tetap1ipl: TcxTextEdit
              Left = 8
              Top = 16
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 54
            end
            object tetap2ipl: TcxTextEdit
              Left = 8
              Top = 40
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 54
            end
            object tetap3ipl: TcxTextEdit
              Left = 8
              Top = 64
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 54
            end
            object tetap4ipl: TcxTextEdit
              Left = 8
              Top = 88
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 54
            end
            object tetap5ipl: TcxTextEdit
              Left = 8
              Top = 112
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 54
            end
            object tetap6ipl: TcxTextEdit
              Left = 8
              Top = 136
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 54
            end
            object tetap7ipl: TcxTextEdit
              Left = 8
              Top = 160
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Open Sans Semibold'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 54
            end
          end
          object RzPanel39: TRzPanel
            Left = 8
            Top = 7
            Width = 257
            Height = 25
            BorderOuter = fsNone
            Caption = 'Progresif'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object RzPanel23: TRzPanel
          Left = 0
          Top = 0
          Width = 1016
          Height = 683
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          object gridgolIPL: TcxGrid
            Left = 0
            Top = 40
            Width = 1016
            Height = 643
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtvgolIPL: TcxGridDBTableView
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
              OnCellDblClick = gtvgolIPLCellDblClick
              OnCustomDrawCell = gtvgolIPLCustomDrawCell
              OnFocusedRecordChanged = gtvgolIPLFocusedRecordChanged
              DataController.DataSource = DSgolipl
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.;(,0.)'
                  Kind = skCount
                  Column = gtvgolIPLkodegol
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
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.HeaderAutoHeight = True
              Styles.Selection = cxStyle32
              object gtvgolIPLkode: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kodegolyangberlaku'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 202
              end
              object gtvgolIPLperiode: TcxGridDBColumn
                Caption = 'Periode'
                DataBinding.FieldName = 'periodemulaiberlaku'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object gtvgolIPLkodegol: TcxGridDBColumn
                Caption = 'Kode Gol'
                DataBinding.FieldName = 'kodegol'
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Width = 89
              end
              object gtvgolIPLnomor: TcxGridDBColumn
                Caption = 'Nomor SK'
                DataBinding.FieldName = 'nomorba'
                Visible = False
                Width = 116
              end
              object gtvgolIPLgolongan: TcxGridDBColumn
                Caption = 'Golongan'
                DataBinding.FieldName = 'golongan'
                HeaderAlignmentHorz = taCenter
                Width = 276
              end
              object gtvgolIPLstatus: TcxGridDBColumn
                Caption = 'status'
                DataBinding.FieldName = 'aktif'
                Visible = False
                VisibleForCustomization = False
                Width = 41
              end
              object gtvgolIPLkategori: TcxGridDBColumn
                Caption = 'Kategori'
                DataBinding.FieldName = 'kategori'
                Width = 118
              end
              object gtvgolIPLuraian: TcxGridDBColumn
                Caption = 'Uraian Kategori'
                DataBinding.FieldName = 'uraian'
                Width = 131
              end
              object gtvgolIPLtax: TcxGridDBColumn
                Caption = 'Tax (%)'
                DataBinding.FieldName = 'ppn'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.##;(,0.##)'
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
              end
            end
            object gridgolIPLLevel1: TcxGridLevel
              GridView = gtvgolIPL
            end
          end
          object RzPanel41: TRzPanel
            Left = 0
            Top = 0
            Width = 1016
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Color = 16316664
            TabOrder = 1
            object printgolipl: TcxButton
              Left = 457
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = printgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 28
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object koreksigolipl: TcxButton
              Left = 185
              Top = 0
              Width = 88
              Height = 40
              Caption = 'Koreksi'
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
              OnClick = koreksigoliplClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambahgolipl: TcxButton
              Left = 97
              Top = 0
              Width = 88
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
              TabOrder = 2
              TabStop = False
              OnClick = tambahgoliplClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refreshgolipl: TcxButton
              Left = 0
              Top = 0
              Width = 97
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
              TabOrder = 3
              TabStop = False
              OnClick = refreshgoliplClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object exportgolipl: TcxButton
              Left = 369
              Top = 0
              Width = 88
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
              OnClick = exportgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 26
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapusgolipl: TcxButton
              Left = 273
              Top = 0
              Width = 96
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
              TabOrder = 5
              TabStop = False
              OnClick = hapusgolClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
        end
      end
    end
  end
  object RzPanel5: TRzPanel
    Left = 0
    Top = 25
    Width = 81
    Height = 715
    Align = alLeft
    BorderOuter = fsFlat
    Color = 16316664
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 1
      Top = 26
      Width = 79
      Height = 65
      Caption = 'Golongan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton1Click
      Align = alTop
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton2: TcxButton
      Left = 1
      Top = 221
      Width = 79
      Height = 65
      Caption = 'Diameter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton2Click
      Align = alTop
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton3: TcxButton
      Left = 1
      Top = 286
      Width = 79
      Height = 65
      Caption = 'ADM Lain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton3Click
      Align = alTop
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton4: TcxButton
      Left = 1
      Top = 351
      Width = 79
      Height = 65
      Caption = 'PEM Lain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = cxButton4Click
      Align = alTop
      OptionsImage.ImageIndex = 45
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton5: TcxButton
      Left = 1
      Top = 156
      Width = 79
      Height = 65
      Caption = 'Golongan IPL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = cxButton5Click
      Align = alTop
      OptionsImage.ImageIndex = 45
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton6: TcxButton
      Left = 1
      Top = 416
      Width = 79
      Height = 65
      Caption = 'Materai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = cxButton6Click
      Align = alTop
      OptionsImage.ImageIndex = 48
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object RzPanel7: TRzPanel
      Left = 1
      Top = 1
      Width = 79
      Height = 25
      Align = alTop
      BorderOuter = fsNone
      Caption = 'Menu'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object cxButton7: TcxButton
      Left = 1
      Top = 481
      Width = 79
      Height = 65
      Caption = 'RAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      Visible = False
      OnClick = cxButton7Click
      Align = alTop
      OptionsImage.ImageIndex = 51
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
    object cxButton8: TcxButton
      Left = 1
      Top = 91
      Width = 79
      Height = 65
      Caption = 'Sub Golongan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      Visible = False
      OnClick = cxButton8Click
      Align = alTop
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = DM.icon32
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
    end
  end
  object info: TRzPanel
    Left = 0
    Top = 0
    Width = 1376
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR TARIF'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Qgolongan: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 176
    Top = 368
  end
  object DSgol: TMyDataSource
    DataSet = Qgolongan
    Left = 128
    Top = 520
  end
  object Qdia: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * FROM diameter')
    Connection = DM.Conn
    Left = 136
    Top = 312
  end
  object DSdia: TMyDataSource
    DataSet = Qdia
    Left = 144
    Top = 440
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link5
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 176
    Top = 544
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
      ReportDocument.CreationDate = 42018.066869837960000000
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
      StyleRepository = cxStyleRepository2
      Styles.BandHeader = cxStyle3
      Styles.Caption = cxStyle4
      Styles.FilterBar = cxStyle2
      Styles.Footer = cxStyle5
      Styles.Header = cxStyle6
      Styles.Selection = cxStyle7
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42018.066869837960000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository1
      Styles.BandHeader = cxStyle8
      Styles.Caption = cxStyle9
      Styles.CardCaptionRow = cxStyle10
      Styles.FilterBar = cxStyle1
      Styles.Header = cxStyle11
      Styles.Preview = cxStyle12
      Styles.Selection = cxStyle13
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42730.632034351850000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository3
      Styles.BandHeader = cxStyle14
      Styles.Caption = cxStyle15
      Styles.FilterBar = cxStyle16
      Styles.Footer = cxStyle17
      Styles.Header = cxStyle18
      Styles.Selection = cxStyle19
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TdxGridReportLink
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42730.632034351850000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository4
      Styles.BandHeader = cxStyle21
      Styles.Caption = cxStyle20
      Styles.FilterBar = cxStyle22
      Styles.Footer = cxStyle23
      Styles.Header = cxStyle24
      Styles.Selection = cxStyle25
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TdxGridReportLink
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42730.632034351850000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository5
      Styles.BandHeader = cxStyle26
      Styles.Caption = cxStyle27
      Styles.FilterBar = cxStyle28
      Styles.Footer = cxStyle29
      Styles.Header = cxStyle30
      Styles.Selection = cxStyle31
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 328
    Top = 504
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 376
    Top = 352
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
      TextColor = clBlack
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
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12016384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object Qadmlain: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 48
    Top = 328
  end
  object DSadmlain: TMyDataSource
    DataSet = Qadmlain
    Left = 88
    Top = 368
  end
  object DSpemlain: TMyDataSource
    DataSet = Qpemlain
    Left = 256
    Top = 504
  end
  object Qpemlain: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 224
    Top = 440
  end
  object DSretlain: TMyDataSource
    DataSet = Qretlain
    Left = 504
    Top = 392
  end
  object Qretlain: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 488
    Top = 448
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 256
    Top = 336
    PixelsPerInch = 96
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
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
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
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 88
    Top = 312
    PixelsPerInch = 96
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
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
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
    object cxStyle25: TcxStyle
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
  object cxStyleRepository5: TcxStyleRepository
    Left = 216
    Top = 312
    PixelsPerInch = 96
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
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
  object Qmeterai: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 352
    Top = 448
  end
  object Qmaterial: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabe' +
        'li as harga,hargajual as harganet FROM barang WHERE kodebarang=:' +
        'kodebarang')
    SQLLock.Strings = (
      
        'SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabe' +
        'li as harga,hargajual as harganet FROM barang')
    Connection = Umain.wh
    Left = 800
    Top = 192
  end
  object Qongkos: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * FROM ongkos WHERE id=:id')
    SQLLock.Strings = (
      'SELECT * FROM ongkos')
    Connection = Umain.host
    Left = 832
    Top = 240
  end
  object DSongkos: TMyDataSource
    DataSet = Qongkos
    Left = 896
    Top = 240
  end
  object DSmaterial: TMyDataSource
    DataSet = Qmaterial
    Left = 896
    Top = 200
  end
  object Qpmaterial: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'm.harganet,'
      'p.qty*m.harganet as sebelumppn,'
      'm.namabarang,'
      'm.satuan ,'
      '(p.qty*m.harganet) * (z.ppnmaterial/100) as ppn,'
      
        '(p.qty*m.harganet) + ((p.qty*m.harganet) * (z.ppnmaterial/100)) ' +
        'as total'
      ' FROM paketmaterial p '
      
        'LEFT JOIN material m ON p.kodebarang=m.kodebarang LEFT JOIN ppnr' +
        'ab z ON idx="1" WHERE p.id=:id')
    SQLLock.Strings = (
      'SELECT '
      'p.*,'
      'm.harganet,'
      ''
      'm.namabarang,'
      'm.satuan ,'
      'p.qty*m.harganet as sebelumppn,'
      '(p.qty*m.harganet) * (z.ppnmaterial/100) as ppn,'
      
        '(p.qty*m.harganet) + ((p.qty*m.harganet) * (z.ppnmaterial/100)) ' +
        'as total'
      ' FROM paketmaterial p '
      
        'LEFT JOIN material m ON p.kodebarang=m.kodebarang LEFT JOIN ppnr' +
        'ab z ON idx="1" WHERE p.namapaket=:namapaket'
      'ORDER BY p.id ASC')
    Connection = Umain.host
    Left = 832
    Top = 304
  end
  object DSpmaterial: TMyDataSource
    DataSet = data_
    Left = 896
    Top = 304
  end
  object Qpmat: TMyQuery
    SQLRefresh.Strings = (
      
        'select * FROm paket_limbah WHERE jenis="Material" ORDER BY namap' +
        'aket ASC')
    SQLLock.Strings = (
      
        'select * FROm paket WHERE jenis="Material" ORDER BY namapaket AS' +
        'C')
    Connection = Umain.host
    Left = 976
    Top = 312
  end
  object DSpmat: TMyDataSource
    DataSet = Qpmat
    Left = 1040
    Top = 304
  end
  object DSpong: TMyDataSource
    DataSet = Qpong
    Left = 1032
    Top = 360
  end
  object Qpong: TMyQuery
    SQLRefresh.Strings = (
      
        'select * FROm paket_limbah WHERE jenis="Ongkos" ORDER BY namapak' +
        'et ASC')
    SQLLock.Strings = (
      'select * FROm paket WHERE jenis="Ongkos" ORDER BY namapaket ASC')
    Connection = Umain.host
    Left = 968
    Top = 360
  end
  object DSpongkos: TMyDataSource
    DataSet = Qpongkos
    Left = 896
    Top = 360
  end
  object DSprab: TMyDataSource
    DataSet = Qprab
    Left = 896
    Top = 424
  end
  object Qprab: TMyQuery
    SQLRefresh.Strings = (
      'SELECT p.* FROM paketrab_limbah p;')
    SQLLock.Strings = (
      'SELECT p.* FROM paketrab p;')
    Connection = Umain.host
    Left = 832
    Top = 424
  end
  object Qpongkos: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'm.harga,'
      'm.namaongkos,'
      'm.satuan,'
      'p.qty*m.harga as sebelumppn,'
      '(p.qty*m.harga) * (z.ppnongkos/100) as ppn,'
      
        '(p.qty*m.harga) + ((p.qty*m.harga) * (z.ppnongkos/100)) as total' +
        ' FROM paketongkos_limbah p '
      
        'LEFT JOIN ongkos_limbah m ON p.kodeongkos=m.kodeongkos LEFT JOIN' +
        ' ppnrab z ON idx="1"  WHERE p.namapaket=:namapaket'
      'ORDER BY p.id ASC')
    SQLLock.Strings = (
      'SELECT '
      'p.*,'
      'm.harga,'
      'm.namaongkos,'
      'm.satuan,'
      'p.qty*m.harga as sebelumppn,'
      '(p.qty*m.harga) * (z.ppnongkos/100) as ppn,'
      
        '(p.qty*m.harga) + ((p.qty*m.harga) * (z.ppnongkos/100)) as total' +
        ' FROM paketongkos p '
      
        'LEFT JOIN ongkos m ON p.kodeongkos=m.kodeongkos LEFT JOIN ppnrab' +
        ' z ON idx="1"  WHERE p.namapaket=:namapaket'
      'ORDER BY p.id ASC')
    Connection = Umain.host
    Left = 832
    Top = 360
  end
  object data_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 544
    object data_kodebarang: TStringField
      FieldName = 'kodebarang'
      Size = 100
    end
    object data_namabarang: TStringField
      FieldName = 'namabarang'
      Size = 100
    end
    object data_satuan: TStringField
      FieldName = 'satuan'
      Size = 50
    end
    object data_harganet: TCurrencyField
      FieldName = 'harganet'
    end
    object data_qty: TCurrencyField
      FieldName = 'qty'
    end
    object data_sebelumppn: TCurrencyField
      FieldName = 'sebelumppn'
    end
    object data_ppn: TCurrencyField
      FieldName = 'ppn'
    end
    object data_total: TCurrencyField
      FieldName = 'total'
    end
    object data_id: TIntegerField
      FieldName = 'id'
    end
    object data_keterangan: TStringField
      FieldName = 'keterangan'
      Size = 100
    end
  end
  object Qcekwh: TMyQuery
    Connection = Umain.wh
    Left = 560
    Top = 600
  end
  object Qcek: TMyQuery
    Connection = Umain.host
    Left = 560
    Top = 648
  end
  object Qgolonganipl: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT id,kodegol,kode,tglberlaku,golongan,administrasi,pemeliha' +
        'raan,pelayanan,retribusi,dendapakai0,dendatunggakan,airlimbah,mi' +
        'npakai,nomorba,aktif'
      'FROM golongan where id=:id')
    Connection = DM.Conn
    Left = 216
    Top = 136
  end
  object DSgolipl: TMyDataSource
    DataSet = Qgolonganipl
    Left = 288
    Top = 176
  end
end
