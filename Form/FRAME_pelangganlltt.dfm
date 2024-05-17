object FRpelangganlltt: TFRpelangganlltt
  Left = 0
  Top = 0
  Width = 1478
  Height = 689
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzSizePanel1: TRzSizePanel
    Left = 0
    Top = 30
    Width = 11
    Height = 659
    HotSpotVisible = True
    Side = sdTop
    LockBar = True
    Locked = True
    ParentShowHint = False
    ShowHint = False
    SizeBarStyle = ssGroove
    SizeBarWidth = 10
    TabOrder = 0
    Visible = False
    HotSpotClosed = True
    HotSpotPosition = 209
    object cxScrollBox1: TcxScrollBox
      Left = 0
      Top = 0
      Width = 0
      Height = 659
      Align = alClient
      BorderStyle = cxcbsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 0
        Height = 569
        HelpContext = 1600
        Align = alTop
        BorderOuter = fsNone
        BorderShadow = clWhite
        Color = clWhite
        FlatColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans'
        Font.Style = []
        GradientColorStop = clWhite
        GridColor = clWhite
        ParentFont = False
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 8
          Top = 32
          Width = 185
          Height = 217
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          object gtvpiutang: TcxGridDBTableView
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
            OnCustomDrawCell = gtvpiutangCustomDrawCell
            DataController.DataSource = DStgkrek
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvpiutangColumn2
              end
              item
                Format = ',0.;(,0.)'
                Kind = skCount
                Column = gtvpiutangColumn1
              end
              item
                Format = '#,##0.###;(#,##0.###)'
                Kind = skSum
                Column = gtvpiutangColumn3
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
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object gtvpiutangColumn1: TcxGridDBColumn
              Caption = 'Bln'
              DataBinding.FieldName = 'bulan'
              Width = 51
            end
            object gtvpiutangColumn3: TcxGridDBColumn
              Caption = 'M3'
              DataBinding.FieldName = 'pakai'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
              Width = 39
            end
            object gtvpiutangColumn2: TcxGridDBColumn
              Caption = 'Rekair'
              DataBinding.FieldName = 'rekair'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Width = 81
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gtvpiutang
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 7
          Top = 279
          ParentColor = False
          Style.Color = clWhite
          TabOrder = 1
          Visible = False
          Height = 282
          Width = 186
          object Sta: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Status'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xstatus: TcxTextEdit
            Left = 79
            Top = 8
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 102
          end
          object xnosamb: TcxTextEdit
            Left = 79
            Top = 32
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 102
          end
          object cxLabel8: TcxLabel
            Left = 8
            Top = 32
            Caption = 'No.Samb'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel10: TcxLabel
            Left = 8
            Top = 54
            Caption = 'Nama'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xnama: TcxTextEdit
            Left = 8
            Top = 72
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 173
          end
          object xkodegol: TcxTextEdit
            Left = 79
            Top = 96
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 102
          end
          object cxLabel28: TcxLabel
            Left = 8
            Top = 96
            Caption = 'Golongan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodedia: TcxTextEdit
            Left = 79
            Top = 120
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 102
          end
          object sasa: TcxLabel
            Left = 8
            Top = 120
            Caption = 'Diameter'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkoderayon: TcxTextEdit
            Left = 79
            Top = 144
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 102
          end
          object cxLabel29: TcxLabel
            Left = 8
            Top = 144
            Caption = 'Rayon'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xalamat: TcxMemo
            Left = 8
            Top = 186
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Height = 57
            Width = 173
          end
          object cxLabel14: TcxLabel
            Left = 8
            Top = 166
            Caption = 'Alamat'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 243
            Caption = 'Wilayah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodewil: TcxTextEdit
            Left = 79
            Top = 245
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 15
            Width = 102
          end
        end
        object RzPanel16: TRzPanel
          Left = 8
          Top = 7
          Width = 185
          Height = 25
          BorderOuter = fsNone
          Caption = 'Piutang Rekening'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RzPanel17: TRzPanel
          Left = 5
          Top = 255
          Width = 188
          Height = 25
          BorderOuter = fsNone
          Caption = 'Informasi'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 569
        Width = 0
        Height = 90
        Align = alClient
        BorderOuter = fsNone
        Color = clWhite
        TabOrder = 1
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 11
    Top = 30
    Width = 1220
    Height = 659
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object GridPel: TcxGrid
      Left = 0
      Top = 40
      Width = 1220
      Height = 575
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      object GTVpel: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = GTVpelCellDblClick
        OnCustomDrawCell = GTVpelCustomDrawCell
        DataController.DataSource = DSpel
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
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
            Kind = skCount
          end
          item
            Kind = skCount
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = GTVpelColumn31
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
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.HeaderAutoHeight = True
        Styles.Selection = cxStyle9
        object GTVpelColumn4: TcxGridDBColumn
          Caption = 'No.Rek'
          DataBinding.FieldName = 'norekening'
          Visible = False
          VisibleForCustomization = False
          Width = 45
        end
        object GTVpelColumn37: TcxGridDBColumn
          Caption = 'No.'
          DataBinding.FieldName = 'id'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          VisibleForCustomization = False
          Width = 47
        end
        object GTVpelColumn46: TcxGridDBColumn
          Caption = 'Nomor L2T2'
          DataBinding.FieldName = 'nomorlltt'
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object GTVpelColumn31: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object GTVpelColumn2: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 187
        end
        object GTVpelColumn44: TcxGridDBColumn
          Caption = 'No.Rek'
          DataBinding.FieldName = 'norekening'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object GTVpelColumn3: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 169
        end
        object GTVpelColumn23: TcxGridDBColumn
          Caption = 'Kd.L2T2'
          DataBinding.FieldName = 'kodelltt'
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object GTVpelColumn16: TcxGridDBColumn
          Caption = 'Nm. L2T2'
          DataBinding.FieldName = 'golonganlltt'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 178
        end
        object GTVpelColumn11: TcxGridDBColumn
          Caption = 'Nm. Rayon'
          DataBinding.FieldName = 'namarayon'
          Visible = False
          Width = 175
        end
        object GTVpelColumn9: TcxGridDBColumn
          Caption = 'Cab'
          DataBinding.FieldName = 'kodecabang'
          Visible = False
          Width = 51
        end
        object GTVpelColumn8: TcxGridDBColumn
          Caption = 'Nm. Cabang'
          DataBinding.FieldName = 'cabang'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object GTVpelColumn19: TcxGridDBColumn
          Caption = 'Kel'
          DataBinding.FieldName = 'kodekelurahan'
          Visible = False
          Width = 44
        end
        object GTVpelColumn20: TcxGridDBColumn
          Caption = 'Nm. Kelurahan'
          DataBinding.FieldName = 'kelurahan'
          HeaderAlignmentHorz = taCenter
          Width = 146
        end
        object GTVpelColumn21: TcxGridDBColumn
          Caption = 'Wil'
          DataBinding.FieldName = 'kodewil'
          Visible = False
          Width = 58
        end
        object GTVpelColumn1: TcxGridDBColumn
          Caption = 'Kd.Kec'
          DataBinding.FieldName = 'kodekecamatan'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object GTVpelColumn5: TcxGridDBColumn
          Caption = 'Kecamatan'
          DataBinding.FieldName = 'kecamatan'
          HeaderAlignmentHorz = taCenter
          Width = 182
        end
        object GTVpelColumn22: TcxGridDBColumn
          Caption = 'Nm. Wilayah'
          DataBinding.FieldName = 'wilayah'
          HeaderAlignmentHorz = taCenter
          Width = 198
        end
        object GTVpelColumn14: TcxGridDBColumn
          Caption = 'Kol'
          DataBinding.FieldName = 'kodekolektif'
          Visible = False
          Width = 62
        end
        object GTVpelColumn18: TcxGridDBColumn
          Caption = 'Nm. Kolektif'
          DataBinding.FieldName = 'kolektif'
          Visible = False
          Width = 102
        end
        object GTVpelColumn27: TcxGridDBColumn
          Caption = 'Penghuni'
          DataBinding.FieldName = 'penghuni'
          Visible = False
          Width = 70
        end
        object GTVpelColumn32: TcxGridDBColumn
          Caption = 'Kode Blok'
          DataBinding.FieldName = 'kodeblok'
          Visible = False
          Width = 77
        end
        object GTVpelColumn42: TcxGridDBColumn
          Caption = 'Nm. Blok'
          DataBinding.FieldName = 'namablok'
          Visible = False
          Width = 189
        end
        object GTVpelColumn39: TcxGridDBColumn
          Caption = 'Luas Rmh.'
          DataBinding.FieldName = 'luasrumah'
          Visible = False
          Width = 69
        end
        object GTVpelColumn43: TcxGridDBColumn
          Caption = 'Email'
          DataBinding.FieldName = 'email'
          Visible = False
          Width = 219
        end
        object GTVpelColumn10: TcxGridDBColumn
          Caption = 'Area'
          DataBinding.FieldName = 'kodearea'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object GTVpelColumn12: TcxGridDBColumn
          Caption = 'NM. Area'
          DataBinding.FieldName = 'area'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object GTVpelColumn38: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 185
        end
        object GTVpelColumn33: TcxGridDBColumn
          Caption = 'Flag'
          DataBinding.FieldName = 'flagpel'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object GTVpelColumn7: TcxGridDBColumn
          Caption = 'Rayon'
          DataBinding.FieldName = 'koderayon'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object GTVaktif: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'aktif'
          HeaderAlignmentHorz = taCenter
          Width = 161
        end
      end
      object GridPelLevel1: TcxGridLevel
        GridView = GTVpel
      end
    end
    object RzPanel4: TRzPanel
      Left = 0
      Top = 0
      Width = 1220
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      Color = 16316664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = []
      GradientColorStyle = gcsCustom
      GradientColorStart = 9103615
      GradientColorStop = 3003903
      ParentFont = False
      TabOrder = 1
      object print: TcxButton
        Left = 450
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Print'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = printClick
        Align = alLeft
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object koreksi: TcxButton
        Left = 180
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Koreksi'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        Visible = False
        OnClick = koreksiClick
        Align = alLeft
        OptionsImage.ImageIndex = 22
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object tambah: TcxButton
        Left = 90
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Tambah'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        Visible = False
        OnClick = tambahClick
        Align = alLeft
        OptionsImage.ImageIndex = 24
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object refresh: TcxButton
        Left = 0
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Refresh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = tampilkanClick
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object export: TcxButton
        Left = 360
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Export'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
      object hapus: TcxButton
        Left = 270
        Top = 0
        Width = 90
        Height = 40
        Caption = 'Hapus'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        Visible = False
        OnClick = hapusClick
        Align = alLeft
        OptionsImage.ImageIndex = 23
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
    object RzPanel9: TRzPanel
      Left = 344
      Top = 464
      Width = 73
      Height = 73
      TabOrder = 2
      Visible = False
      object cekadmlain: TcxCheckBox
        Left = 48
        Top = 21
        Caption = 'KD.ADM Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        OnClick = cekadmlainClick
        Width = 97
      end
      object kodeadm_lain: TcxComboBox
        Left = 144
        Top = 21
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kodeadm_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 23
        Width = 48
      end
      object adm_lain: TcxComboBox
        Left = 192
        Top = 21
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = adm_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 23
        Width = 57
      end
      object pem_lain: TcxComboBox
        Left = 192
        Top = 43
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = pem_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 23
        Width = 57
      end
      object kodepem_lain: TcxComboBox
        Left = 144
        Top = 43
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kodepem_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Height = 23
        Width = 48
      end
      object koderet_lain: TcxComboBox
        Left = 144
        Top = 65
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = koderet_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Height = 23
        Width = 48
      end
      object ret_lain: TcxComboBox
        Left = 192
        Top = 65
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = ret_lainPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Height = 23
        Width = 57
      end
      object cekretlain: TcxCheckBox
        Left = 48
        Top = 65
        Caption = 'KD.RET Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Transparent = True
        OnClick = cekretlainClick
        Width = 97
      end
      object cekpemlain: TcxCheckBox
        Left = 48
        Top = 43
        Caption = 'KD.PEM Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Transparent = True
        OnClick = cekpemlainClick
        Width = 97
      end
      object cekblok: TcxCheckBox
        Left = 64
        Top = 88
        Caption = 'Blok'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        Transparent = True
        OnClick = cekblokClick
        Width = 73
      end
      object kodeblok: TcxComboBox
        Left = 144
        Top = 88
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kodeblokPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Height = 23
        Width = 57
      end
      object namablok: TcxComboBox
        Left = 200
        Top = 88
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = namablokPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Height = 23
        Width = 65
      end
      object cekdiameter: TcxCheckBox
        Left = 64
        Top = 114
        Caption = 'Diameter'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Transparent = True
        OnClick = cekdiameterClick
        Width = 81
      end
      object kodediameter: TcxComboBox
        Left = 144
        Top = 114
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kodediameterPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Height = 23
        Width = 57
      end
      object ukuran: TcxComboBox
        Left = 200
        Top = 114
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = ukuranPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Height = 23
        Width = 65
      end
      object cekserimeter: TcxCheckBox
        Left = 8
        Top = 210
        Caption = 'Seri Meter'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 15
        Transparent = True
        OnClick = cekserimeterClick
        Width = 81
      end
      object cekwm: TcxCheckBox
        Left = 8
        Top = 232
        Caption = 'Merk WM.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 16
        Transparent = True
        OnClick = cekwmClick
        Width = 81
      end
      object merkwm: TcxComboBox
        Left = 104
        Top = 232
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 17
        Height = 23
        Width = 105
      end
      object serimeter: TcxTextEdit
        Left = 104
        Top = 210
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 18
        Width = 105
      end
      object ceksumberair: TcxCheckBox
        Left = 8
        Top = 299
        Caption = 'Sumber Air'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 19
        Transparent = True
        OnClick = ceksumberairClick
        Width = 89
      end
      object sumberair: TcxComboBox
        Left = 104
        Top = 298
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 20
        Height = 23
        Width = 105
      end
      object cekkondisimeter: TcxCheckBox
        Left = 8
        Top = 385
        Caption = 'Kond.Mtr'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 21
        Transparent = True
        OnClick = cekkondisimeterClick
        Width = 81
      end
      object kodekondisi: TcxComboBox
        Left = 88
        Top = 385
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kodekondisiPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 22
        Height = 23
        Width = 57
      end
      object kondisimeter: TcxComboBox
        Left = 144
        Top = 385
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = kondisimeterPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 23
        Height = 23
        Width = 65
      end
      object ceklainnya: TcxCheckBox
        Left = 16
        Top = 412
        Caption = 'Lainnya'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 24
        Transparent = True
        OnClick = ceklainnyaClick
        Width = 89
      end
      object lainnya: TcxComboBox
        Left = 96
        Top = 411
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.Items.Strings = (
          'Warning Segel !!'
          'Warning Pemutusan !!')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 25
        Height = 23
        Width = 121
      end
    end
    object RzPanel11: TRzPanel
      Left = 0
      Top = 615
      Width = 1220
      Height = 44
      Align = alBottom
      BorderOuter = fsFlat
      Color = 16316664
      TabOrder = 3
      object cxLabel1: TcxLabel
        Left = 16
        Top = 11
        Caption = 'Aktif'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object belumspk: TRzPanel
        Left = 56
        Top = 9
        Width = 33
        Height = 25
        BorderOuter = fsFlat
        Color = 16773087
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cxLabel2: TcxLabel
        Left = 192
        Top = 11
        Caption = 'Tutup Sementara'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object selesai: TRzPanel
        Left = 290
        Top = 9
        Width = 31
        Height = 25
        BorderOuter = fsFlat
        Color = 15219200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cxLabel4: TcxLabel
        Left = 104
        Top = 11
        Caption = 'Segel'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object sudahspk: TRzPanel
        Left = 144
        Top = 9
        Width = 33
        Height = 25
        BorderOuter = fsFlat
        Color = 9174837
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cxLabel6: TcxLabel
        Left = 336
        Top = 11
        Caption = 'Tutup Total / Non Aktif'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object RzPanel12: TRzPanel
        Left = 464
        Top = 9
        Width = 33
        Height = 25
        BorderOuter = fsFlat
        Color = 5197823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object RzPanel10: TRzPanel
    Left = 0
    Top = 0
    Width = 1478
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR PELANGGAN L2T2'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object RzSizePanel2: TRzSizePanel
    Left = 1231
    Top = 30
    Width = 247
    Height = 659
    Align = alRight
    HotSpotVisible = True
    SizeBarStyle = ssGroove
    SizeBarWidth = 10
    TabOrder = 3
    object RzPanel6: TRzPanel
      Left = 11
      Top = 593
      Width = 236
      Height = 66
      Align = alBottom
      BorderOuter = fsFlatRounded
      Color = 16316664
      TabOrder = 0
      object tampilkan: TcxButton
        Left = 104
        Top = 31
        Width = 105
        Height = 23
        Caption = 'Refresh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = tampilkanClick
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
      end
      object limit: TcxCurrencyEdit
        Left = 46
        Top = 31
        EditValue = 1000.000000000000000000
        ParentFont = False
        Properties.DisplayFormat = ',0.;(,0.)'
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
        Width = 57
      end
      object cxLabel3: TcxLabel
        Left = 8
        Top = 33
        Caption = 'Batas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextStyle = []
        Transparent = True
      end
      object cekstatus: TcxCheckBox
        Left = 8
        Top = 9
        Caption = 'Status'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Transparent = True
        OnClick = cekstatusClick
        Width = 57
      end
      object status: TcxComboBox
        Left = 104
        Top = 5
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Tutup Total / Non Aktif'
          'Aktif'
          'Segel'
          'Tutup Sementara')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Text = 'Aktif'
        Width = 105
      end
    end
    object cxScrollBox4: TcxScrollBox
      Left = 11
      Top = 0
      Width = 236
      Height = 593
      Align = alClient
      BorderStyle = cxcbsNone
      Color = 14676991
      ParentColor = False
      TabOrder = 1
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 236
        Height = 321
        Align = alTop
        BorderOuter = fsNone
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Open Sans'
        Font.Style = []
        GradientColorStop = clWhite
        ParentFont = False
        TabOrder = 0
        object cekgolongan: TcxCheckBox
          Left = 8
          Top = 78
          Caption = 'L2T2'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          OnClick = cekgolonganClick
          Width = 81
        end
        object cekcabang: TcxCheckBox
          Left = 8
          Top = 231
          Caption = 'Cabang'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Transparent = True
          OnClick = cekcabangClick
          Width = 65
        end
        object cekrayon: TcxCheckBox
          Left = 8
          Top = 34
          Caption = 'Rayon'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          OnClick = cekrayonClick
          Width = 65
        end
        object ceknosamb: TcxCheckBox
          Left = 8
          Top = 100
          Caption = 'No.Samb'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Transparent = True
          OnClick = ceknosambClick
          Width = 81
        end
        object ceknama: TcxCheckBox
          Left = 8
          Top = 144
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          OnClick = ceknamaClick
          Width = 65
        end
        object cekalamat: TcxCheckBox
          Left = 8
          Top = 166
          Caption = 'Alamat'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          OnClick = cekalamatClick
          Width = 65
        end
        object cekkolektif: TcxCheckBox
          Left = 8
          Top = 188
          Caption = 'Kolektif'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Transparent = True
          OnClick = cekkolektifClick
          Width = 97
        end
        object kolektif: TcxComboBox
          Left = 104
          Top = 188
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kolektifPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 57
        end
        object alamat: TcxTextEdit
          Left = 104
          Top = 166
          Enabled = False
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 105
        end
        object nama: TcxTextEdit
          Left = 104
          Top = 144
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 105
        end
        object nosamb: TcxTextEdit
          Left = 96
          Top = 100
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 113
        end
        object cabang: TcxComboBox
          Left = 88
          Top = 231
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = cabangPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Height = 23
          Width = 65
        end
        object kodecabang: TcxComboBox
          Left = 152
          Top = 231
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodecabangPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Height = 23
          Width = 57
        end
        object kodelltt: TcxComboBox
          Left = 152
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodellttPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Height = 23
          Width = 57
        end
        object golonganlltt: TcxComboBox
          Left = 88
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = golonganllttPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Height = 23
          Width = 65
        end
        object namarayon: TcxComboBox
          Left = 88
          Top = 34
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = namarayonPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Height = 23
          Width = 65
        end
        object koderayon: TcxComboBox
          Left = 152
          Top = 34
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = koderayonPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 16
          Height = 23
          Width = 57
        end
        object cekkelurahan: TcxCheckBox
          Left = 8
          Top = 253
          Caption = 'Kelurahan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 17
          Transparent = True
          OnClick = cekkelurahanClick
          Width = 81
        end
        object kodekelurahan: TcxComboBox
          Left = 152
          Top = 253
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodekelurahanPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 18
          Height = 23
          Width = 57
        end
        object kelurahan: TcxComboBox
          Left = 88
          Top = 253
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kelurahanPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 19
          Height = 23
          Width = 65
        end
        object cekwilayah: TcxCheckBox
          Left = 8
          Top = 56
          Caption = 'Wilayah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 20
          Transparent = True
          OnClick = cekwilayahClick
          Width = 73
        end
        object kodewil: TcxComboBox
          Left = 152
          Top = 56
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodewilPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 21
          Height = 23
          Width = 57
        end
        object wilayah: TcxComboBox
          Left = 88
          Top = 56
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = wilayahPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Height = 23
          Width = 65
        end
        object cekflag: TcxCheckBox
          Left = 8
          Top = 210
          Caption = 'Flag'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 23
          Transparent = True
          OnClick = cekflagClick
          Width = 89
        end
        object flag: TcxComboBox
          Left = 104
          Top = 210
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = flagPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 24
          Height = 22
          Width = 57
        end
        object kodeflag: TcxComboBox
          Left = 160
          Top = 210
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodeflagPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 25
          Height = 22
          Width = 49
        end
        object asas: TcxCheckBox
          Left = 8
          Top = 533
          Caption = 'Blok'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 26
          Transparent = True
          Visible = False
          OnClick = asasClick
          Width = 81
        end
        object blok: TcxTextEdit
          Left = 104
          Top = 533
          Enabled = False
          TabOrder = 27
          Visible = False
          Width = 82
        end
        object cekket: TcxCheckBox
          Left = 8
          Top = 560
          Caption = 'Ket'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 28
          Transparent = True
          Visible = False
          OnClick = cekketClick
          Width = 89
        end
        object kodekolektif: TcxComboBox
          Left = 160
          Top = 188
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodekolektifPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 29
          Width = 49
        end
        object keterangan: TcxComboBox
          Left = 104
          Top = 559
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          TabOrder = 30
          Visible = False
          Height = 23
          Width = 129
        end
        object RzPanel8: TRzPanel
          Left = 8
          Top = 7
          Width = 201
          Height = 25
          BorderOuter = fsNone
          Caption = 'Filter Pencarian'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 31
        end
        object ceknolltt: TcxCheckBox
          Left = 8
          Top = 122
          Caption = 'No.L2T2'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 32
          Transparent = True
          OnClick = ceknollttClick
          Width = 89
        end
        object nomorlltt: TcxTextEdit
          Left = 96
          Top = 122
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 33
          Width = 113
        end
        object cekkecamatan: TcxCheckBox
          Left = 8
          Top = 276
          Caption = 'Kecamatan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 34
          Transparent = True
          OnClick = cekkecamatanClick
          Width = 81
        end
        object kecamatan: TcxComboBox
          Left = 88
          Top = 275
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kecamatanPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 35
          Height = 23
          Width = 65
        end
        object kodekecamatan: TcxComboBox
          Left = 152
          Top = 275
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodekecamatanPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 36
          Height = 23
          Width = 57
        end
      end
      object RzPanel7: TRzPanel
        Left = 0
        Top = 321
        Width = 236
        Height = 272
        Align = alClient
        BorderOuter = fsNone
        Color = 16316664
        TabOrder = 1
      end
    end
  end
  object Qpel: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodearea,'
      'r.area,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'g.nama AS golonganlltt,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kodekecamatan,'
      'x.kecamatan'
      ''
      'FROM pelanggan_lltt p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      
        'LEFT JOIn (select kodelltt,nama FROM golongan_lltt GROUP BY kode' +
        'lltt) g ON p.kodelltt=g.kodelltt'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      ''
      'WHERE p.id=:id')
    SQLLock.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodearea,'
      'r.area,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'g.nama AS golonganlltt,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kodekecamatan,'
      'x.kecamatan'
      ''
      'FROM pelanggan_lltt p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      
        'LEFT JOIn (select kodelltt,nama FROM golongan_lltt GROUP BY kode' +
        'lltt) g ON p.kodelltt=g.kodelltt'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`')
    Connection = DM.Conn
    Left = 552
    Top = 328
    object Qpelid: TIntegerField
      FieldName = 'id'
    end
    object Qpelnomorlltt: TStringField
      FieldName = 'nomorlltt'
      Size = 50
    end
    object Qpelnosamb: TStringField
      FieldName = 'nosamb'
      Size = 50
    end
    object Qpelnama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object Qpelalamat: TStringField
      FieldName = 'alamat'
      Size = 200
    end
    object Qpelkodelltt: TStringField
      FieldName = 'kodelltt'
      Size = 50
    end
    object Qpelkoderayon: TStringField
      FieldName = 'koderayon'
      Size = 10
    end
    object Qpelkodekelurahan: TStringField
      FieldName = 'kodekelurahan'
      Size = 10
    end
    object Qpelkodekolektif: TStringField
      FieldName = 'kodekolektif'
      Size = 50
    end
    object Qpelnohp: TStringField
      FieldName = 'nohp'
    end
    object Qpelnotelp: TStringField
      FieldName = 'notelp'
    end
    object Qpelstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 5
    end
    object Qpelkepemilikanbangunan: TStringField
      FieldName = 'kepemilikanbangunan'
      Size = 100
    end
    object Qpelnamapemilik: TStringField
      FieldName = 'namapemilik'
      Size = 100
    end
    object Qpelnoktp: TStringField
      FieldName = 'noktp'
    end
    object Qpelpenghuni: TStringField
      FieldName = 'penghuni'
    end
    object Qpelflag: TStringField
      FieldName = 'flag'
      Size = 50
    end
    object Qpelnopendaftaran: TStringField
      FieldName = 'nopendaftaran'
      Size = 100
    end
    object Qpelnorab: TStringField
      FieldName = 'norab'
      Size = 100
    end
    object Qpelketerangan: TStringField
      FieldName = 'keterangan'
      Size = 100
    end
    object Qpelkodeblok: TStringField
      FieldName = 'kodeblok'
      Size = 30
    end
    object Qpelluasrumah: TFloatField
      FieldName = 'luasrumah'
    end
    object Qpelemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object Qpelnorumah: TStringField
      FieldName = 'norumah'
      Size = 50
    end
    object Qpelrt: TStringField
      FieldName = 'rt'
      Size = 50
    end
    object Qpelrw: TStringField
      FieldName = 'rw'
      Size = 50
    end
    object Qpeltgldaftar: TDateField
      FieldName = 'tgldaftar'
    end
    object Qpelflagpel: TStringField
      FieldName = 'flagpel'
      Size = 50
    end
    object Qpelnamarayon: TStringField
      FieldName = 'namarayon'
      Size = 50
    end
    object Qpelnamablok: TStringField
      FieldName = 'namablok'
      Size = 100
    end
    object Qpelkodeloket: TStringField
      FieldName = 'kodeloket'
      Size = 50
    end
    object Qpelkodearea: TStringField
      FieldName = 'kodearea'
      Size = 30
    end
    object Qpelarea: TStringField
      FieldName = 'area'
      Size = 50
    end
    object Qpelkodewil: TStringField
      FieldName = 'kodewil'
      Size = 30
    end
    object Qpelwilayah: TStringField
      FieldName = 'wilayah'
      Size = 50
    end
    object Qpelkelurahan: TStringField
      FieldName = 'kelurahan'
      Size = 50
    end
    object Qpelkodecabang: TStringField
      FieldName = 'kodecabang'
      Size = 30
    end
    object Qpelcabang: TStringField
      FieldName = 'cabang'
      Size = 50
    end
    object Qpelkolektif: TStringField
      FieldName = 'kolektif'
      Size = 50
    end
    object Qpelaktif: TStringField
      FieldName = 'aktif'
      Size = 16
    end
    object Qpelgolonganlltt: TStringField
      FieldName = 'golonganlltt'
      Size = 100
    end
    object Qpelkodekecamatan: TStringField
      FieldName = 'kodekecamatan'
      Size = 50
    end
    object Qpelkecamatan: TStringField
      FieldName = 'kecamatan'
      Size = 100
    end
  end
  object DSpel: TMyDataSource
    DataSet = Qpel
    Left = 544
    Top = 256
  end
  object Qtunggakan: TMyQuery
    Connection = DM.Conn
    Left = 400
    Top = 312
  end
  object DStgkrek: TMyDataSource
    DataSet = Qtunggakan
    Left = 489
    Top = 297
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 160
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clMenuText
    end
    object cxStyle8: TcxStyle
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12016384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object Qmirror: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodearea,'
      'r.area,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'g.nama AS golonganlltt'
      ''
      'FROM pelanggan_lltt p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      
        'LEFT JOIn (select kodelltt,nama FROM golongan_lltt GROUP BY kode' +
        'lltt) g ON p.kodelltt=g.kodelltt'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      ''
      'WHERE p.id=:id')
    Connection = DM.Conn
    Left = 640
    Top = 288
  end
  object Qpelmain: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodearea,'
      'r.area,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'g.nama AS golonganlltt,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kodekecamatan,'
      'x.kecamatan'
      ''
      'FROM pelanggan_lltt p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      
        'LEFT JOIn (select kodelltt,nama FROM golongan_lltt GROUP BY kode' +
        'lltt) g ON p.kodelltt=g.kodelltt'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`')
    SQLLock.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodearea,'
      'r.area,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'g.nama AS golonganlltt,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kodekecamatan,'
      'x.kecamatan'
      ''
      'FROM pelanggan_lltt p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      
        'LEFT JOIn (select kodelltt,nama FROM golongan_lltt GROUP BY kode' +
        'lltt) g ON p.kodelltt=g.kodelltt'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`')
    Connection = DM.Conn
    Left = 608
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Images = DM.png16
    Left = 808
    Top = 280
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 7
      OnClick = tampilkanClick
    end
    object Tambah1: TMenuItem
      Caption = 'Tambah'
      Enabled = False
      ImageIndex = 6
      Visible = False
      OnClick = tambahClick
    end
    object Koreksi1: TMenuItem
      Caption = 'Koreksi'
      Enabled = False
      ImageIndex = 3
      Visible = False
      OnClick = koreksiClick
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      Enabled = False
      ImageIndex = 5
      Visible = False
      OnClick = hapusClick
    end
    object UpdateDataRekening1: TMenuItem
      Caption = 'Update Data Rekening'
      ImageIndex = 11
      OnClick = UpdateDataRekening1Click
    end
    object LihatPiutang1: TMenuItem
      Caption = 'Lihat Piutang ( F5 )'
      ImageIndex = 9
      OnClick = LihatPiutang1Click
    end
    object HistoriPembayaran1: TMenuItem
      Caption = 'Lihat Riwayat Pembayaran'
      ImageIndex = 9
      OnClick = HistoriPembayaran1Click
    end
    object BalikNama1: TMenuItem
      Caption = 'Balik Nama'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = BalikNama1Click
    end
    object RubahGOlongan1: TMenuItem
      Caption = 'Rubah Golongan L2T2'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = RubahGOlongan1Click
    end
    object RubahAlamat1: TMenuItem
      Caption = 'Rubah Alamat'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = RubahAlamat1Click
    end
    object GantiStatusPelanggan1: TMenuItem
      Caption = 'Ganti Status Pelanggan'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = GantiStatusPelanggan1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtSeparator, gvhtGroupSummary]
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 608
    Top = 488
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 48
    Top = 160
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
      Font.Name = 'Open Sans Extrabold'
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
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 496
    Top = 536
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = GridPel
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
      ReportDocument.CreationDate = 42354.089743969900000000
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
  object Qexec: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO drd('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      'kodegol,'
      '  `kodediameter`,'
      '  `koderayon`,  '
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
      '`retribusilain`,'
      '  `meterai`,'
      '  `dendatunggakan`,'
      '  `rekair`,'
      '  `total`,  '
      '  `tglupload`,'
      '  `tglmulaidenda`,'
      '  `tglmulaidenda2`,'
      '`tglmulaidenda3`,'
      '`tglmulaidenda4`,'
      '`tglmulaidendaperbulan`,'
      '  `bulan`,  '
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `nolpp`, '
      '  `flag`, '
      '  `trf_dendatunggakan`,'
      '  `trf_dendatunggakan2`,'
      ' `trf_dendatunggakan3`,'
      ' `trf_dendatunggakan4`,'
      ' `trf_dendatunggakanperbulan`,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      'koderetribusilain,'
      'ppn,'
      'persenppn,'
      'blok1,'
      'blok2,'
      'blok3,'
      'blok4,'
      'blok5,'
      'kelainan,'
      'flagangsur,'
      'noangsuran'
      ')'
      'VALUES'
      '('
      '   :kode,'
      '  :periode,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      ':kodegol,'
      '  :kodediameter,'
      '  :koderayon,'
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
      '  NOW(),'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      ':tglmulaidenda3,'
      ':tglmulaidenda4,'
      ':tglmulaidendaperbulan,'
      '  :bulan,  '
      '  :prog1,'
      '  :prog2,'
      '  :prog3,'
      '  :prog4,'
      '  :prog5,'
      '  :nolpp, '
      '  :flag, '
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      ':trf_dendatunggakan3,'
      ':trf_dendatunggakan4,'
      ':trf_dendatunggakanperbulan,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      ':koderetribusilain,'
      ':ppn,'
      ':persenppn,'
      ':blok1,'
      ':blok2,'
      ':blok3,'
      ':blok4,'
      ':blok5,'
      ':kelainan,'
      ':flagangsur,'
      ':noangsuran'
      ')')
    Connection = Umain.host
    Left = 240
    Top = 408
  end
end
