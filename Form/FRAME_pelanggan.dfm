object FRpelanggan: TFRpelanggan
  Left = 0
  Top = 0
  Width = 1215
  Height = 681
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
    Height = 651
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
      Height = 651
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
        Height = 82
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
    Width = 957
    Height = 651
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object GridPel: TcxGrid
      Left = 0
      Top = 40
      Width = 957
      Height = 567
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
        OnFocusedRecordChanged = GTVpelFocusedRecordChanged
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
        object GTVpelColumn31: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          SortIndex = 1
          SortOrder = soAscending
          Width = 88
        end
        object GTVpelColumn50: TcxGridDBColumn
          Caption = 'Nosamb Baru'
          DataBinding.FieldName = 'nosamb_baru'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object GTVpelColumn2: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 196
        end
        object GTVpelColumn44: TcxGridDBColumn
          Caption = 'No.Rek'
          DataBinding.FieldName = 'norekening'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object GTVpelColumn23: TcxGridDBColumn
          Caption = 'Gol'
          DataBinding.FieldName = 'kodegol'
          HeaderAlignmentHorz = taCenter
          Width = 48
        end
        object GTVpelColumn16: TcxGridDBColumn
          Caption = 'Nm. Golongan'
          DataBinding.FieldName = 'golongan'
          Visible = False
          Width = 139
        end
        object GTVpelColumn24: TcxGridDBColumn
          Caption = 'Dia'
          DataBinding.FieldName = 'kodediameter'
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object GTVpelColumn17: TcxGridDBColumn
          Caption = 'Nm. Diameter'
          DataBinding.FieldName = 'ukuran'
          Visible = False
          Width = 106
        end
        object GTVpelColumn3: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 195
        end
        object GTVpelColumn7: TcxGridDBColumn
          Caption = 'Rayon'
          DataBinding.FieldName = 'koderayon'
          HeaderAlignmentHorz = taCenter
          Width = 65
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
          Width = 129
        end
        object GTVpelColumn51: TcxGridDBColumn
          Caption = 'Bjr'
          DataBinding.FieldName = 'kodebanjar'
          Visible = False
          Width = 44
        end
        object GTVpelColumn52: TcxGridDBColumn
          Caption = 'Nm. Banjar'
          DataBinding.FieldName = 'namabanjar'
          HeaderAlignmentHorz = taCenter
          Width = 126
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
          Width = 126
        end
        object GTVpelColumn21: TcxGridDBColumn
          Caption = 'Wil'
          DataBinding.FieldName = 'kodewil'
          Visible = False
          Width = 58
        end
        object GTVpelColumn46: TcxGridDBColumn
          Caption = 'Kecamatan'
          DataBinding.FieldName = 'kecamatan'
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object GTVpelColumn22: TcxGridDBColumn
          Caption = 'Nm. Wilayah'
          DataBinding.FieldName = 'wilayah'
          HeaderAlignmentHorz = taCenter
          Width = 153
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
        object GTVpelColumn15: TcxGridDBColumn
          Caption = 'Seri Meter'
          DataBinding.FieldName = 'serimeter'
          Visible = False
          Width = 87
        end
        object GTVpelColumn13: TcxGridDBColumn
          Caption = 'Merk Meter'
          DataBinding.FieldName = 'merkmeter'
          Visible = False
          Width = 92
        end
        object GTVpelColumn5: TcxGridDBColumn
          Caption = 'Bangunan'
          DataBinding.FieldName = 'kepemilikanbangunan'
          Visible = False
          Width = 89
        end
        object GTVpelColumn6: TcxGridDBColumn
          Caption = 'Pemilik'
          DataBinding.FieldName = 'namapemilik'
          Visible = False
          Width = 79
        end
        object GTVpelColumn25: TcxGridDBColumn
          Caption = 'Pekerjaan'
          DataBinding.FieldName = 'pekerjaan'
          Visible = False
          Width = 89
        end
        object GTVpelColumn26: TcxGridDBColumn
          Caption = 'No. KTP'
          DataBinding.FieldName = 'noktp'
          Visible = False
          Width = 81
        end
        object GTVpelColumn27: TcxGridDBColumn
          Caption = 'Penghuni'
          DataBinding.FieldName = 'penghuni'
          Visible = False
          Width = 70
        end
        object GTVpelColumn30: TcxGridDBColumn
          Caption = 'Kode Sumber Air'
          DataBinding.FieldName = 'kodesumberair'
          Visible = False
          Width = 83
        end
        object GTVpelColumn1: TcxGridDBColumn
          Caption = 'Loket Penagih'
          DataBinding.FieldName = 'kodeloket'
          Visible = False
          Width = 88
        end
        object GTVpelColumn34: TcxGridDBColumn
          Caption = 'Adm. Lain'
          DataBinding.FieldName = 'kodeadministrasilain'
          Visible = False
          Width = 80
        end
        object GTVpelColumn35: TcxGridDBColumn
          Caption = 'Pem. Lain'
          DataBinding.FieldName = 'kodepemeliharaanlain'
          Visible = False
          Width = 79
        end
        object GTVpelColumn36: TcxGridDBColumn
          Caption = 'Kode IPL'
          DataBinding.FieldName = 'koderetribusilain'
          Width = 79
        end
        object GTVpelColumn28: TcxGridDBColumn
          Caption = 'No. Pendaftaran'
          DataBinding.FieldName = 'nopendaftaran'
          Visible = False
          Width = 112
        end
        object GTVpelColumn29: TcxGridDBColumn
          Caption = 'No. RAB'
          DataBinding.FieldName = 'norab'
          Visible = False
          Width = 127
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
          Caption = 'L. Tanah (M2)'
          DataBinding.FieldName = 'luasrumah'
          Width = 77
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
        object GTVaktif: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'aktif'
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object GTVpelColumn33: TcxGridDBColumn
          Caption = 'Flag'
          DataBinding.FieldName = 'flagpel'
          HeaderAlignmentHorz = taCenter
          Width = 164
        end
        object GTVpelColumn40: TcxGridDBColumn
          Caption = 'Kd.Kon'
          DataBinding.FieldName = 'kodekondisimeter'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object GTVpelColumn41: TcxGridDBColumn
          Caption = 'Kondisi Meter'
          DataBinding.FieldName = 'kondisi'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object GTVpelColumn53: TcxGridDBColumn
          Caption = 'Kwh'
          DataBinding.FieldName = 'dayalistrik'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object GTVpelColumn54: TcxGridDBColumn
          Caption = 'Daya Listrik'
          DataBinding.FieldName = 'daya'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object GTVpelColumn38: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          HeaderAlignmentHorz = taCenter
          Width = 118
        end
        object GTVpelColumn45: TcxGridDBColumn
          Caption = 'Tgl.Jadi Pel.'
          DataBinding.FieldName = 'tgldaftar'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD MMM YYYY'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object GTVpelColumn47: TcxGridDBColumn
          Caption = 'Tgl.Meter'
          DataBinding.FieldName = 'tglmeter'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD MMM YYYY'
          Properties.EditFormat = 'DD MMM YYYY'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object GTVpelColumn48: TcxGridDBColumn
          Caption = 'Urutan Baca'
          DataBinding.FieldName = 'urutanbaca'
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object GTVpelColumn49: TcxGridDBColumn
          Caption = 'Hapus'
          DataBinding.FieldName = 'flaghapus'
          Visible = False
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          VisibleForCustomization = False
          Width = 50
        end
      end
      object GridPelLevel1: TcxGridLevel
        GridView = GTVpel
      end
    end
    object RzPanel4: TRzPanel
      Left = 0
      Top = 0
      Width = 957
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
      Left = 784
      Top = 376
      Width = 49
      Height = 41
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
    end
    object RzPanel11: TRzPanel
      Left = 0
      Top = 607
      Width = 957
      Height = 44
      Align = alBottom
      BorderOuter = fsFlat
      Color = 16316664
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = []
      ParentFont = False
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
      object cxLabel7: TcxLabel
        Left = 520
        Top = 11
        Caption = 'Flag Terhapus'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object RzPanel14: TRzPanel
        Left = 600
        Top = 9
        Width = 33
        Height = 25
        BorderOuter = fsFlat
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = [fsBold, fsStrikeOut]
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  object RzSizePanel2: TRzSizePanel
    Left = 968
    Top = 30
    Width = 247
    Height = 651
    Align = alRight
    HotSpotVisible = True
    SizeBarStyle = ssGroove
    SizeBarWidth = 10
    TabOrder = 2
    object RzPanel6: TRzPanel
      Left = 11
      Top = 585
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
      Height = 585
      Align = alClient
      BorderStyle = cxcbsNone
      Color = 14676991
      ParentColor = False
      TabOrder = 1
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 219
        Height = 735
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
          Top = 132
          Caption = 'Golongan'
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
          Top = 538
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
        object cekdiameter: TcxCheckBox
          Left = 8
          Top = 154
          Caption = 'Diameter'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          OnClick = cekdiameterClick
          Width = 81
        end
        object cekrayon: TcxCheckBox
          Left = 8
          Top = 66
          Caption = 'Rayon'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Transparent = True
          OnClick = cekrayonClick
          Width = 65
        end
        object ceknosamb: TcxCheckBox
          Left = 8
          Top = 176
          Caption = 'No.Samb'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          OnClick = ceknosambClick
          Width = 81
        end
        object ceknama: TcxCheckBox
          Left = 8
          Top = 226
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          OnClick = ceknamaClick
          Width = 65
        end
        object cekserimeter: TcxCheckBox
          Left = 8
          Top = 251
          Caption = 'Seri Meter'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Transparent = True
          OnClick = cekserimeterClick
          Width = 81
        end
        object cekalamat: TcxCheckBox
          Left = 8
          Top = 323
          Caption = 'Alamat'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Transparent = True
          OnClick = cekalamatClick
          Width = 65
        end
        object cekkolektif: TcxCheckBox
          Left = 8
          Top = 348
          Caption = 'Kolektif'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Transparent = True
          OnClick = cekkolektifClick
          Width = 97
        end
        object kolektif: TcxComboBox
          Left = 88
          Top = 348
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
          TabOrder = 9
          Width = 65
        end
        object alamat: TcxTextEdit
          Left = 88
          Top = 323
          Enabled = False
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 124
        end
        object serimeter: TcxTextEdit
          Left = 88
          Top = 251
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 124
        end
        object nama: TcxTextEdit
          Left = 88
          Top = 226
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 124
        end
        object nosamb: TcxTextEdit
          Left = 88
          Top = 176
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Width = 124
        end
        object kodediameter: TcxComboBox
          Left = 155
          Top = 154
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
          TabOrder = 14
          Height = 20
          Width = 57
        end
        object ukuran: TcxComboBox
          Left = 88
          Top = 154
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
          TabOrder = 15
          Height = 20
          Width = 65
        end
        object cabang: TcxComboBox
          Left = 88
          Top = 538
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
          TabOrder = 16
          Height = 20
          Width = 65
        end
        object kodecabang: TcxComboBox
          Left = 155
          Top = 538
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
          TabOrder = 17
          Height = 20
          Width = 57
        end
        object kodegol: TcxComboBox
          Left = 155
          Top = 132
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodegolPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 18
          Height = 20
          Width = 57
        end
        object golongan: TcxComboBox
          Left = 88
          Top = 132
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = golonganPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 19
          Height = 20
          Width = 65
        end
        object namarayon: TcxComboBox
          Left = 88
          Top = 66
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
          TabOrder = 20
          Height = 20
          Width = 65
        end
        object koderayon: TcxComboBox
          Left = 155
          Top = 66
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
          TabOrder = 21
          Height = 20
          Width = 57
        end
        object cekwm: TcxCheckBox
          Left = 8
          Top = 301
          Caption = 'Merk WM.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Transparent = True
          OnClick = cekwmClick
          Width = 81
        end
        object merkwm: TcxComboBox
          Left = 88
          Top = 301
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
          TabOrder = 23
          Height = 20
          Width = 124
        end
        object cekkelurahan: TcxCheckBox
          Left = 8
          Top = 582
          Caption = 'Kelurahan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 24
          Transparent = True
          OnClick = cekkelurahanClick
          Width = 81
        end
        object kodekelurahan: TcxComboBox
          Left = 155
          Top = 582
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
          TabOrder = 25
          Height = 20
          Width = 57
        end
        object kelurahan: TcxComboBox
          Left = 88
          Top = 582
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
          TabOrder = 26
          Height = 20
          Width = 65
        end
        object cekwilayah: TcxCheckBox
          Left = 8
          Top = 110
          Caption = 'Wilayah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 27
          Transparent = True
          OnClick = cekwilayahClick
          Width = 73
        end
        object kodewil: TcxComboBox
          Left = 155
          Top = 110
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
          TabOrder = 28
          Height = 20
          Width = 57
        end
        object wilayah: TcxComboBox
          Left = 88
          Top = 110
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
          TabOrder = 29
          Height = 20
          Width = 65
        end
        object ceksumberair: TcxCheckBox
          Left = 8
          Top = 474
          Caption = 'Sumber Air'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 30
          Transparent = True
          OnClick = ceksumberairClick
          Width = 89
        end
        object ceklainnya: TcxCheckBox
          Left = 8
          Top = 701
          Caption = 'Lainnya'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 31
          Transparent = True
          Visible = False
          OnClick = ceklainnyaClick
          Width = 89
        end
        object cekflag: TcxCheckBox
          Left = 8
          Top = 517
          Caption = 'Flag'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 32
          Transparent = True
          OnClick = cekflagClick
          Width = 89
        end
        object flag: TcxComboBox
          Left = 88
          Top = 517
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
          TabOrder = 33
          Height = 19
          Width = 65
        end
        object kodeflag: TcxComboBox
          Left = 155
          Top = 517
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
          TabOrder = 34
          Height = 19
          Width = 57
        end
        object asas: TcxCheckBox
          Left = 8
          Top = 957
          Caption = 'Blok'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 35
          Transparent = True
          Visible = False
          OnClick = asasClick
          Width = 81
        end
        object blok: TcxTextEdit
          Left = 104
          Top = 957
          Enabled = False
          TabOrder = 36
          Visible = False
          Width = 82
        end
        object cekket: TcxCheckBox
          Left = 8
          Top = 952
          Caption = 'Ket'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 37
          Transparent = True
          Visible = False
          OnClick = cekketClick
          Width = 89
        end
        object kodekolektif: TcxComboBox
          Left = 155
          Top = 348
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
          TabOrder = 38
          Width = 57
        end
        object lainnya: TcxComboBox
          Left = 88
          Top = 700
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
          TabOrder = 39
          Visible = False
          Height = 20
          Width = 124
        end
        object keterangan: TcxComboBox
          Left = 104
          Top = 951
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          TabOrder = 40
          Visible = False
          Height = 23
          Width = 129
        end
        object sumberair: TcxComboBox
          Left = 104
          Top = 473
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
          TabOrder = 41
          Height = 20
          Width = 108
        end
        object RzPanel8: TRzPanel
          Left = 8
          Top = 7
          Width = 206
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
          TabOrder = 42
        end
        object kodeblok: TcxComboBox
          Left = 155
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
          TabOrder = 43
          Height = 20
          Width = 57
        end
        object namablok: TcxComboBox
          Left = 88
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
          TabOrder = 44
          Height = 20
          Width = 65
        end
        object cekblok: TcxCheckBox
          Left = 8
          Top = 88
          Caption = 'Blok'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 45
          Transparent = True
          OnClick = cekblokClick
          Width = 73
        end
        object ceknorek: TcxCheckBox
          Left = 8
          Top = 201
          Caption = 'No.Rek'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 46
          Transparent = True
          OnClick = ceknorekClick
          Width = 81
        end
        object norekening: TcxTextEdit
          Left = 88
          Top = 201
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 47
          Width = 124
        end
        object kodekondisi: TcxComboBox
          Left = 155
          Top = 628
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
          TabOrder = 48
          Height = 20
          Width = 57
        end
        object kondisimeter: TcxComboBox
          Left = 88
          Top = 628
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
          TabOrder = 49
          Height = 20
          Width = 65
        end
        object cekkondisimeter: TcxCheckBox
          Left = 8
          Top = 628
          Caption = 'Kond.Mtr'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 50
          Transparent = True
          OnClick = cekkondisimeterClick
          Width = 81
        end
        object cekkecamatan: TcxCheckBox
          Left = 8
          Top = 605
          Caption = 'Kecamatan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 51
          Transparent = True
          OnClick = cekkecamatanClick
          Width = 81
        end
        object kodekecamatan: TcxComboBox
          Left = 155
          Top = 605
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
          TabOrder = 52
          Height = 20
          Width = 57
        end
        object kecamatan: TcxComboBox
          Left = 88
          Top = 605
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
          TabOrder = 53
          Height = 20
          Width = 65
        end
        object cflaghapus: TcxCheckBox
          Left = 8
          Top = 40
          Caption = 'Sertakan pelanggan flag terhapus'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 54
          Transparent = True
          OnClick = ceklainnyaClick
          Width = 201
        end
        object ceknosegel: TcxCheckBox
          Left = 8
          Top = 276
          Caption = 'No. Segel'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 55
          Transparent = True
          OnClick = ceknosegelClick
          Width = 81
        end
        object nosegelmeter: TcxTextEdit
          Left = 88
          Top = 276
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 56
          Width = 124
        end
        object cektgldaftar: TcxCheckBox
          Left = 8
          Top = 375
          Caption = 'Tgl.Daftar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 57
          Transparent = True
          OnClick = cektgldaftarClick
          Width = 79
        end
        object tgldaftar1: TcxDateEdit
          Left = 88
          Top = 373
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 58
          Width = 124
        end
        object tgldaftar2: TcxDateEdit
          Left = 88
          Top = 398
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 59
          Width = 124
        end
        object cxLabel15: TcxLabel
          Left = 61
          Top = 400
          AutoSize = False
          Caption = 's/d'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 28
        end
        object cektglputus: TcxCheckBox
          Left = 8
          Top = 425
          Caption = 'Tgl.N.Aktif'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 61
          Transparent = True
          OnClick = cektglputusClick
          Width = 81
        end
        object tglputus1: TcxDateEdit
          Left = 88
          Top = 423
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 62
          Width = 124
        end
        object cxLabel16: TcxLabel
          Left = 61
          Top = 450
          AutoSize = False
          Caption = 's/d'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 23
        end
        object tglputus2: TcxDateEdit
          Left = 88
          Top = 448
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 64
          Width = 124
        end
        object cekbanjar: TcxCheckBox
          Left = 8
          Top = 560
          Caption = 'Banjar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 65
          Transparent = True
          OnClick = cekbanjarClick
          Width = 81
        end
        object kodebanjar: TcxComboBox
          Left = 155
          Top = 560
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodebanjarPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 66
          Height = 20
          Width = 57
        end
        object banjar: TcxComboBox
          Left = 88
          Top = 560
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = banjarPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 67
          Height = 20
          Width = 65
        end
        object cekkwh: TcxCheckBox
          Left = 8
          Top = 495
          Caption = 'Kwh'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 68
          Transparent = True
          OnClick = cekkwhClick
          Width = 65
        end
        object daya: TcxComboBox
          Left = 88
          Top = 495
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = dayaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 69
          Height = 20
          Width = 65
        end
        object dayalistrik: TcxComboBox
          Left = 155
          Top = 495
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = dayalistrikPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 70
          Height = 20
          Width = 57
        end
        object cekKodeIPL: TcxCheckBox
          Left = 8
          Top = 651
          Caption = 'Kode IPL'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 71
          Transparent = True
          OnClick = cekKodeIPLClick
          Width = 81
        end
        object namaIPL: TcxComboBox
          Left = 88
          Top = 651
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = namaIPLPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 72
          Height = 20
          Width = 65
        end
        object kodeIPL: TcxComboBox
          Left = 155
          Top = 651
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodeIPLPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 73
          Height = 20
          Width = 57
        end
        object cekLuasTanah: TcxCheckBox
          Left = 8
          Top = 676
          Caption = 'L. Tanah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 74
          Transparent = True
          OnClick = cekLuasTanahClick
          Width = 81
        end
        object luastanah: TcxCurrencyEdit
          Left = 88
          Top = 674
          Enabled = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.##;(#,##0.##)'
          Properties.EditFormat = '#,##0.##;(#,##0.##)'
          Properties.Nullable = False
          Properties.Nullstring = '0'
          Properties.ReadOnly = False
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
          TabOrder = 75
          Width = 124
        end
      end
      object RzPanel7: TRzPanel
        Left = 0
        Top = 735
        Width = 219
        Height = 0
        Align = alClient
        BorderOuter = fsNone
        Color = 16316664
        TabOrder = 1
      end
    end
  end
  object RzPanel10: TRzPanel
    Left = 0
    Top = 0
    Width = 1215
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR PELANGGAN AIR'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Qpel: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'p.*,'
      'f.uraian AS flagpel,'
      'r.namarayon,'
      'b.namablok,'
      'r.kodeloket,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif'
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN golongan g ON p.kodegol=g.kodegol AND g.aktif="1"'
      
        'LEFT JOIN diameter d ON p.kodediameter=d.kodediameter AND d.akti' +
        'f="1"'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN (SELECT nosamb,MAX(tanggal) AS tgldaftar FROM memo WHE' +
        'RE tipe="Daftar" GROUP BY nosamb) td ON p.nosamb=td.nosamb'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`'
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
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'td.tgldaftar'
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN golongan g ON p.kodegol=g.kodegol AND g.aktif="1"'
      
        'LEFT JOIN diameter d ON p.kodediameter=d.kodediameter AND d.akti' +
        'f="1"'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`'
      
        'LEFT JOIN (SELECT nosamb,MAX(tanggal) AS tgldaftar FROM memo WHE' +
        'RE tipe="Daftar" GROUP BY nosamb) td ON p.nosamb=td.nosamb'
      'LIMIT 1')
    Connection = DM.Conn
    SQL.Strings = (
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
      'x.kecamatan,'
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'km.kondisi'
      ''
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      
        'LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodego' +
        'l) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select kodediameter,ukuran FROm diameter GROUP BY kod' +
        'ediameter) d ON p.kodediameter=d.kodediameter'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN kondisimeter km ON p.kodekondisimeter=km.kodekondisi'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`'
      'limit 1')
    Left = 552
    Top = 328
    object Qpelnosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'p.nosamb'
      Size = 50
    end
    object Qpelnorekening: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
      Size = 50
    end
    object Qpelnama: TStringField
      FieldName = 'nama'
      Origin = 'p.nama'
      Size = 100
    end
    object Qpelalamat: TStringField
      FieldName = 'alamat'
      Origin = 'p.alamat'
      Size = 200
    end
    object Qpelkoderayon: TStringField
      FieldName = 'koderayon'
      Origin = 'p.koderayon'
      Size = 10
    end
    object Qpelkodekelurahan: TStringField
      FieldName = 'kodekelurahan'
      Origin = 'p.kodekelurahan'
      Size = 10
    end
    object Qpelkodediameter: TStringField
      FieldName = 'kodediameter'
      Origin = 'p.kodediameter'
      Size = 50
    end
    object Qpelkodekolektif: TStringField
      FieldName = 'kodekolektif'
      Origin = 'p.kodekolektif'
      Size = 50
    end
    object Qpelmerkmeter: TStringField
      FieldName = 'merkmeter'
      Origin = 'p.merkmeter'
      Size = 30
    end
    object Qpelkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'p.kodegol'
      Size = 50
    end
    object Qpelnohp: TStringField
      FieldName = 'nohp'
      Origin = 'p.nohp'
    end
    object Qpelnotelp: TStringField
      FieldName = 'notelp'
      Origin = 'p.notelp'
    end
    object Qpelserimeter: TStringField
      FieldName = 'serimeter'
      Origin = 'p.serimeter'
    end
    object Qpelperiodeterbitrekening: TStringField
      FieldName = 'periodeterbitrekening'
      Origin = 'p.periodeterbitrekening'
      Size = 6
    end
    object Qpelstatus: TStringField
      FieldName = 'status'
      Origin = 'p.status'
      FixedChar = True
      Size = 5
    end
    object Qpelkepemilikanbangunan: TStringField
      FieldName = 'kepemilikanbangunan'
      Origin = 'p.kepemilikanbangunan'
    end
    object Qpelnamapemilik: TStringField
      FieldName = 'namapemilik'
      Origin = 'p.namapemilik'
      Size = 100
    end
    object Qpelpekerjaan: TStringField
      FieldName = 'pekerjaan'
      Origin = 'p.pekerjaan'
      Size = 100
    end
    object Qpelnoktp: TStringField
      FieldName = 'noktp'
      Origin = 'p.noktp'
      Size = 100
    end
    object Qpelpenghuni: TStringField
      FieldName = 'penghuni'
      Origin = 'p.penghuni'
    end
    object Qpelkodesumberair: TStringField
      FieldName = 'kodesumberair'
      Origin = 'p.kodesumberair'
      Size = 50
    end
    object Qpelflag: TStringField
      FieldName = 'flag'
      Origin = 'p.flag'
      Size = 50
    end
    object Qpelkodeadministrasilain: TStringField
      FieldName = 'kodeadministrasilain'
      Origin = 'p.kodeadministrasilain'
      Size = 30
    end
    object Qpelkodepemeliharaanlain: TStringField
      FieldName = 'kodepemeliharaanlain'
      Origin = 'p.kodepemeliharaanlain'
      Size = 30
    end
    object Qpelkoderetribusilain: TStringField
      FieldName = 'koderetribusilain'
      Origin = 'p.koderetribusilain'
      Size = 30
    end
    object Qpelnopendaftaran: TStringField
      FieldName = 'nopendaftaran'
      Origin = 'p.nopendaftaran'
      Size = 100
    end
    object Qpelnorab: TStringField
      FieldName = 'norab'
      Origin = 'p.norab'
      Size = 100
    end
    object Qpelketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'p.keterangan'
      Size = 100
    end
    object Qpeladaangsuran: TStringField
      FieldName = 'adaangsuran'
      Origin = 'p.adaangsuran'
      FixedChar = True
      Size = 1
    end
    object Qpelkodeblok: TStringField
      FieldName = 'kodeblok'
      Origin = 'p.kodeblok'
      Size = 30
    end
    object Qpelluasrumah: TFloatField
      FieldName = 'luasrumah'
      Origin = 'p.luasrumah'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object Qpelflagpel: TStringField
      FieldName = 'flagpel'
      Origin = 'f.uraian'
      Size = 50
    end
    object Qpelnamarayon: TStringField
      FieldName = 'namarayon'
      Origin = 'r.namarayon'
      Size = 50
    end
    object Qpelkodewil: TStringField
      FieldName = 'kodewil'
      Origin = 'r.kodewil'
      Size = 30
    end
    object Qpelwilayah: TStringField
      FieldName = 'wilayah'
      Origin = 'r.wilayah'
      Size = 50
    end
    object Qpelkelurahan: TStringField
      FieldName = 'kelurahan'
      Origin = 'X.kelurahan'
      Size = 100
    end
    object Qpelkodecabang: TStringField
      FieldName = 'kodecabang'
      Origin = 'X.kodecabang'
      Size = 30
    end
    object Qpelcabang: TStringField
      FieldName = 'cabang'
      Origin = 'X.cabang'
      Size = 100
    end
    object Qpelgolongan: TStringField
      FieldName = 'golongan'
      Origin = 'g.golongan'
      Size = 100
    end
    object Qpelukuran: TStringField
      FieldName = 'ukuran'
      Origin = 'd.ukuran'
      Size = 30
    end
    object Qpelkolektif: TStringField
      FieldName = 'kolektif'
      Origin = 'k.kolektif'
      Size = 50
    end
    object Qpelaktif: TStringField
      FieldName = 'aktif'
      Origin = 'aktif'
      Size = 23
    end
    object Qpelnamablok: TStringField
      FieldName = 'namablok'
      Origin = 'b.namablok'
      Size = 100
    end
    object Qpelkodeloket: TStringField
      FieldName = 'kodeloket'
      Origin = 'r.kodeloket'
      Size = 50
    end
    object Qpelemail: TStringField
      FieldName = 'email'
      Origin = 'p.email'
      Size = 100
    end
    object Qpelrt: TStringField
      FieldName = 'rt'
      Origin = 'p.rt'
      Size = 50
    end
    object Qpelrw: TStringField
      FieldName = 'rw'
      Origin = 'p.rw'
      Size = 50
    end
    object Qpelkodearea: TStringField
      FieldName = 'kodearea'
      Origin = 'r.kodearea'
      Size = 30
    end
    object Qpelarea: TStringField
      FieldName = 'area'
      Origin = 'r.area'
      Size = 50
    end
    object Qpelkodekondisimeter: TStringField
      FieldName = 'kodekondisimeter'
      Origin = 'p.kodekondisimeter'
      Size = 50
    end
    object Qpelkondisi: TStringField
      FieldName = 'kondisi'
      Origin = 'km.kondisi'
      Size = 100
    end
    object Qpeltgldaftar: TDateField
      FieldName = 'tgldaftar'
      Origin = 'p.tgldaftar'
    end
    object Qpeltglmeter: TDateField
      FieldName = 'tglmeter'
      Origin = 'p.tglmeter'
    end
    object Qpelurutanbaca: TIntegerField
      FieldName = 'urutanbaca'
      Origin = 'p.urutanbaca'
    end
    object Qpelkecamatan: TStringField
      FieldName = 'kecamatan'
      Origin = 'X.kecamatan'
      Size = 100
    end
    object Qpelflaghapus: TStringField
      FieldName = 'flaghapus'
      Origin = 'p.flaghapus'
      Visible = False
      Size = 1
    end
    object Qpelstan_awal_pasang: TFloatField
      FieldName = 'stan_awal_pasang'
      Origin = 'p.stan_awal_pasang'
    end
    object Qpelnosamb_baru: TStringField
      FieldName = 'nosamb_baru'
      Origin = 'p.nosamb_baru'
      Size = 50
    end
    object Qpelketerangan_hapus: TStringField
      FieldName = 'keterangan_hapus'
      Origin = 'p.keterangan_hapus'
      Size = 100
    end
    object Qpeltanggal_hapus: TDateTimeField
      FieldName = 'tanggal_hapus'
      Origin = 'p.tanggal_hapus'
    end
    object Qpeltglputus: TDateField
      FieldName = 'tglputus'
      Origin = 'p.tglputus'
    end
    object Qpelkodebanjar: TStringField
      FieldName = 'kodebanjar'
    end
    object Qpelnamabanjar: TStringField
      FieldName = 'namabanjar'
      Size = 50
    end
    object Qpeldayalistrik: TIntegerField
      FieldName = 'dayalistrik'
    end
    object Qpeldaya: TCurrencyField
      FieldName = 'daya'
      DisplayFormat = '#,##0'
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
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'km.kondisi'
      ''
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan`  '
      
        'LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodego' +
        'l) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select kodediameter,ukuran FROm diameter GROUP BY kod' +
        'ediameter) d ON p.kodediameter=d.kodediameter'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN kondisimeter km ON p.kodekondisimeter=km.kodekondisi'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`'
      'WHERE p.nosamb=:nosamb')
    Connection = DM.Conn
    Left = 640
    Top = 288
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'p.id'
    end
    object StringField1: TStringField
      FieldName = 'nosamb'
      Origin = 'p.nosamb'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'nama'
      Origin = 'p.nama'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'alamat'
      Origin = 'p.alamat'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'koderayon'
      Origin = 'p.koderayon'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'kodegol'
      Origin = 'p.kodegol'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'kodediameter'
      Origin = 'p.kodediameter'
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'kodekolektif'
      Origin = 'p.kodekolektif'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'merk'
      Origin = 'p.merk'
      Size = 30
    end
    object StringField10: TStringField
      FieldName = 'nohp'
      Origin = 'p.nohp'
    end
    object StringField11: TStringField
      FieldName = 'serimeter'
      Origin = 'p.serimeter'
    end
    object StringField12: TStringField
      FieldName = 'notelp'
      Origin = 'p.notelp'
    end
    object DateField1: TDateField
      FieldName = 'tgldaftar'
      Origin = 'p.tgldaftar'
    end
    object DateField2: TDateField
      FieldName = 'tglnonaktif'
      Origin = 'p.tglnonaktif'
    end
    object StringField13: TStringField
      FieldName = 'status'
      Origin = 'p.status'
      FixedChar = True
      Size = 1
    end
    object StringField14: TStringField
      FieldName = 'kodecabang'
      Origin = 'r.kodecabang'
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'namarayon'
      Origin = 'r.namarayon'
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'cabang'
      Origin = 'r.cabang'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'aktif'
      Origin = 'aktif'
      Size = 9
    end
    object StringField18: TStringField
      FieldName = 'golongan'
      Origin = 'g.golongan'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'ukuran'
      Origin = 'd.ukuran'
      Size = 30
    end
    object StringField20: TStringField
      FieldName = 'kolektif'
      Origin = 'k.kolektif'
      Size = 50
    end
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
      'bj.namabanjar,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kecamatan,'
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'km.kondisi,'
      'kw.daya'
      ''
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan x ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN banjar bj ON p.`kodebanjar`=bj.`kodebanjar`  '
      
        'LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodego' +
        'l) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select kodediameter,ukuran FROm diameter GROUP BY kod' +
        'ediameter) d ON p.kodediameter=d.kodediameter'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN kondisimeter km ON p.kodekondisimeter=km.kodekondisi'
      'LEFT JOIN sumberair sa ON p.kodesumberair=sa.kodesumberair'
      'LEFT JOIN kwhlistrik kw ON p.dayalistrik=kw.idkwh'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`'
      'WHERE p.nosamb=:nosamb')
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
      'bj.namabanjar,'
      'x.kodecabang,'
      'x.cabang,'
      'x.kecamatan,'
      'g.golongan,'
      'd.ukuran,'
      'k.kolektif,'
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS aktif,'
      'km.kondisi,'
      'kw.daya'
      ''
      'FROM pelanggan p '
      'LEFT JOIN rayon r ON p.koderayon=r.koderayon '
      'LEFT JOIN blok b ON p.kodeblok=b.kodeblok'
      'LEFT JOIN kelurahan x ON p.`kodekelurahan`=x.`kodekelurahan`  '
      'LEFT JOIN banjar bj ON p.`kodebanjar`=bj.`kodebanjar`  '
      
        'LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodego' +
        'l) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select kodediameter,ukuran FROm diameter GROUP BY kod' +
        'ediameter) d ON p.kodediameter=d.kodediameter'
      'LEFT JOIN kolektif k ON p.kodekolektif=k.kodekolektif'
      'LEFT JOIN kondisimeter km ON p.kodekondisimeter=km.kodekondisi'
      'LEFT JOIN sumberair sa ON p.kodesumberair=sa.kodesumberair'
      'LEFT JOIN kwhlistrik kw ON p.dayalistrik=kw.idkwh'
      'LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.`kodeadministrasilain`=b1.' +
        '`kode`'
      
        'LEFT JOIN bypemeliharaan_lain b2 ON p.`kodepemeliharaanlain`=b2.' +
        '`kode`'
      'LEFT JOIN byretribusi_lain b3 ON p.`koderetribusilain`=b3.`kode`')
    Connection = DM.Conn
    Left = 616
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Images = DM.png16
    Left = 808
    Top = 256
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
    object UpdateKeRekening1: TMenuItem
      Caption = 'Perbarui Data Rekening'
      ImageIndex = 11
      OnClick = UpdateKeRekening1Click
    end
    object LihatPiutang1: TMenuItem
      Caption = 'Lihat Piutang ( F5 )'
      ImageIndex = 9
      OnClick = LihatPiutang1Click
    end
    object HistoriPemakaian1: TMenuItem
      Caption = 'Lihat Riwayat Pemakaian'
      ImageIndex = 9
      OnClick = HistoriPemakaian1Click
    end
    object HistoriPembayaran1: TMenuItem
      Caption = 'Lihat Riwayat Pembayaran'
      ImageIndex = 9
      OnClick = HistoriPembayaran1Click
    end
    object HistoriLog1: TMenuItem
      Caption = 'Lihat Riwayat Memo'
      ImageIndex = 9
      OnClick = HistoriLog1Click
    end
    object SetFlag1: TMenuItem
      Caption = 'Atur Flag'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = SetFlag1Click
    end
    object BalikNama1: TMenuItem
      Caption = 'Balik Nama'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = BalikNama1Click
    end
    object RubahGOlongan1: TMenuItem
      Caption = 'Rubah Golongan'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = RubahGOlongan1Click
    end
    object GantiMeter1: TMenuItem
      Caption = 'Ganti Meter'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = GantiMeter1Click
    end
    object RubahAlamat1: TMenuItem
      Caption = 'Rubah Alamat'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = RubahAlamat1Click
    end
    object GantiNomorSambungan1: TMenuItem
      Caption = 'Ganti Nomor Sambungan'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = GantiNomorSambungan1Click
    end
    object GantiStatusPelanggan1: TMenuItem
      Caption = 'Ganti Status Pelanggan'
      Enabled = False
      ImageIndex = 19
      Visible = False
      OnClick = GantiStatusPelanggan1Click
    end
    object PasswordHapusDenda1: TMenuItem
      Caption = 'Password Koreksi Denda'
      ImageIndex = 20
      Visible = False
      OnClick = PasswordHapusDenda1Click
    end
    object PasswordBukaLockBulan1: TMenuItem
      Caption = 'Password Buka Lock Bulan'
      ImageIndex = 20
      Visible = False
      OnClick = PasswordBukaLockBulan1Click
    end
    object PasswordHapusOTS1: TMenuItem
      Caption = 'Password Hapus OTS'
      ImageIndex = 20
      Visible = False
      OnClick = PasswordHapusOTS1Click
    end
    object SetHanyaAbodemen1: TMenuItem
      Caption = 'Set Hanya Abodemen'
      ImageIndex = 19
      Visible = False
      OnClick = SetHanyaAbodemen1Click
    end
    object SetHapusSecaraAkuntansi1: TMenuItem
      Caption = 'Set Hapus Secara Akuntansi'
      ImageIndex = 19
      OnClick = SetHapusSecaraAkuntansi1Click
    end
    object SetPembebanan1: TMenuItem
      Caption = 'Set Pembebanan'
      ImageIndex = 19
      OnClick = SetPembebanan1Click
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
    Left = 40
    Top = 80
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
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 2540
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
      ReportDocument.CreationDate = 42354.089743969900000000
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
