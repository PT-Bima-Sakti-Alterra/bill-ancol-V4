object FRlistupdate: TFRlistupdate
  Left = 0
  Top = 0
  Width = 1277
  Height = 780
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 780
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object info: TRzPanel
      Left = 0
      Top = 0
      Width = 1277
      Height = 25
      Align = alTop
      BorderOuter = fsNone
      Caption = 'DAFTAR TUNGGU PROSES VERIFIKASI DATA'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Progress: TRzProgressBar
        Left = 0
        Top = 0
        Width = 1277
        Height = 21
        Align = alTop
        BorderOuter = fsNone
        BorderWidth = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        InteriorOffset = 0
        ParentFont = False
        PartsComplete = 0
        Percent = 0
        TotalParts = 0
        Visible = False
      end
    end
    object RzPanel2: TRzPanel
      Left = 0
      Top = 25
      Width = 393
      Height = 755
      Align = alLeft
      BorderOuter = fsNone
      Color = 16316664
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 64
        Width = 393
        Height = 691
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2013White'
        object gtvlist: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = gtvlistCellDblClick
          OnCustomDrawCell = gtvlistCustomDrawCell
          OnFocusedRecordChanged = gtvlistFocusedRecordChanged
          DataController.DataSource = DSlist
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gtvlistColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'kategori'
            Visible = False
            GroupIndex = 0
            Width = 117
            IsCaptionAssigned = True
          end
          object gtvlistColumn1: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            HeaderAlignmentHorz = taCenter
            Width = 245
          end
          object gtvlistjumlah: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'jumlah'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gtvlist
        end
      end
      object refreshlist: TcxButton
        Left = 48
        Top = 304
        Width = 75
        Height = 17
        Caption = 'refreshlist'
        TabOrder = 1
        Visible = False
        OnClick = refreshlistClick
      end
      object RzPanel7: TRzPanel
        Left = 0
        Top = 0
        Width = 393
        Height = 25
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object RzLabel1: TRzLabel
          Left = 0
          Top = 0
          Width = 393
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = 'KLIK 2 KALI UNTUK MENAMPILKAN DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Open Sans Extrabold'
          Font.Style = []
          ParentFont = False
          Transparent = True
          BlinkColor = clMaroon
          BlinkIntervalOff = 700
          BlinkIntervalOn = 600
        end
      end
      object RzPanel9: TRzPanel
        Left = 0
        Top = 25
        Width = 393
        Height = 39
        Align = alTop
        BorderOuter = fsNone
        Color = 20966
        TabOrder = 3
        object txt_nama: TcxTextEdit
          Left = 231
          Top = 8
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyPress = txt_namaKeyPress
          Width = 156
        end
        object nama: TcxCheckBox
          Left = 173
          Top = 8
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = [fsBold]
          Style.TextColor = clWhite
          Style.IsFontAssigned = True
          TabOrder = 1
          OnClick = namaClick
          Width = 59
        end
        object nosamb: TcxCheckBox
          Left = -1
          Top = 8
          Caption = 'Nosamb'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = [fsBold]
          Style.TextColor = clWhite
          Style.IsFontAssigned = True
          TabOrder = 2
          OnClick = nosambClick
          Width = 70
        end
        object txt_nosamb: TcxTextEdit
          Left = 68
          Top = 9
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyPress = txt_nosambKeyPress
          Width = 94
        end
      end
    end
    object RzPanel3: TRzPanel
      Left = 1136
      Top = 25
      Width = 381
      Height = 734
      BorderOuter = fsNone
      TabOrder = 2
      object RzPanel18: TRzPanel
        Left = 0
        Top = 0
        Width = 381
        Height = 40
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object proses2: TcxButton
          Left = 97
          Top = 0
          Width = 152
          Height = 40
          Caption = 'Proses Data'
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
          OnClick = proses2Click
          Align = alLeft
          OptionsImage.ImageIndex = 31
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object refresh2: TcxButton
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
          TabOrder = 1
          TabStop = False
          OnClick = refresh2Click
          Align = alLeft
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 40
        Width = 381
        Height = 694
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.SkinName = 'iMaginary'
        object grid: TcxGridDBTableView
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
          OnCellDblClick = gridCellDblClick
          DataController.DataSource = DSloket
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Group = cxStyle1
          object gridjenis: TcxGridDBColumn
            DataBinding.FieldName = 'jenis'
            Visible = False
            GroupIndex = 0
            VisibleForCustomization = False
            Width = 142
            IsCaptionAssigned = True
          end
          object gridnomor: TcxGridDBColumn
            Caption = 'Nomor'
            DataBinding.FieldName = 'nomor'
            HeaderAlignmentHorz = taCenter
            Width = 204
          end
          object gridnosamb: TcxGridDBColumn
            Caption = 'No.Samb'
            DataBinding.FieldName = 'nosamb'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object gridnama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
            HeaderAlignmentHorz = taCenter
            Width = 188
          end
          object gridalamat: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'alamat'
            HeaderAlignmentHorz = taCenter
            Width = 171
          end
          object gridkodegol: TcxGridDBColumn
            Caption = 'Kd.Gol'
            DataBinding.FieldName = 'kodegol'
            HeaderAlignmentHorz = taCenter
            Width = 61
          end
          object gridkoderayon: TcxGridDBColumn
            Caption = 'Kd.Rayon'
            DataBinding.FieldName = 'koderayon'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object gridkodewil: TcxGridDBColumn
            Caption = 'Kd.Wil'
            DataBinding.FieldName = 'kodewil'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object gridtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'DD MMMM YYYY'
            Properties.EditFormat = 'DD MMMM YYYY'
            HeaderAlignmentHorz = taCenter
            Width = 118
          end
          object gridketerangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            HeaderAlignmentHorz = taCenter
            Width = 231
          end
          object gridlama: TcxGridDBColumn
            Caption = 'Lama'
            DataBinding.FieldName = 'lama'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 115
          end
          object gridbaru: TcxGridDBColumn
            Caption = 'Baru'
            DataBinding.FieldName = 'baru'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = grid
        end
      end
    end
    object RzPanel4: TRzPanel
      Left = 409
      Top = 25
      Width = 868
      Height = 755
      Align = alClient
      BorderOuter = fsNone
      Color = 16316664
      TabOrder = 3
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 868
        Height = 40
        Align = alTop
        BorderOuter = fsNone
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        object proses: TcxButton
          Left = 194
          Top = 0
          Width = 129
          Height = 40
          Caption = 'Proses'
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
          OnClick = prosesClick
          Align = alLeft
          OptionsImage.ImageIndex = 31
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object refresh_: TcxButton
          Left = 97
          Top = 0
          Width = 97
          Height = 40
          Caption = 'Refresh'
          Enabled = False
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
          OnClick = refresh_Click
          Align = alLeft
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object refresh: TcxButton
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
          TabOrder = 2
          TabStop = False
          OnClick = refreshClick
          Align = alLeft
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 40
        Width = 868
        Height = 715
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 713
        ClientRectLeft = 2
        ClientRectRight = 866
        ClientRectTop = 30
        object cxTabSheet1: TcxTabSheet
          Caption = 'cxTabSheet1'
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 860
            Height = 685
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtv: TcxGridDBTableView
              OnDblClick = prosesClick
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DSdaftar
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              object gtvColumn1: TcxGridDBColumn
                Caption = 'Nomor'
                DataBinding.FieldName = 'nomor'
                HeaderAlignmentHorz = taCenter
                Width = 283
              end
              object gtvColumn3: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                Width = 179
              end
              object gtvColumn2: TcxGridDBColumn
                Caption = 'No.Lang'
                DataBinding.FieldName = 'nosamb'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object gtvColumn4: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                Width = 144
              end
              object gtvColumn5: TcxGridDBColumn
                Caption = 'Gol'
                DataBinding.FieldName = 'kodegol'
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object gtvColumn6: TcxGridDBColumn
                Caption = 'Rayon'
                DataBinding.FieldName = 'koderayon'
                HeaderAlignmentHorz = taCenter
                Width = 49
              end
              object gtvColumn7: TcxGridDBColumn
                Caption = 'Wil'
                DataBinding.FieldName = 'kodewil'
                HeaderAlignmentHorz = taCenter
                Width = 46
              end
              object gtvColumn8: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'keterangan'
                HeaderAlignmentHorz = taCenter
                Width = 146
              end
              object gtvColumn9: TcxGridDBColumn
                Caption = 'Tanggal BA'
                DataBinding.FieldName = 'tanggal'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object gtvColumn10: TcxGridDBColumn
                Caption = 'Nomor BA'
                DataBinding.FieldName = 'nomorba'
                HeaderAlignmentHorz = taCenter
                Width = 276
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gtv
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'cxTabSheet2'
          ImageIndex = 1
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 864
            Height = 683
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtv2: TcxGridDBTableView
              PopupMenu = PopupMenu1
              OnDblClick = prosesClick
              Navigator.Buttons.CustomButtons = <>
              OnFocusedRecordChanged = gtv2FocusedRecordChanged
              DataController.DataSource = DSdaftar
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object gtv2Column1: TcxGridDBColumn
                Caption = 'P'
                DataBinding.FieldName = 'flagpublish'
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
                HeaderAlignmentHorz = taCenter
                Width = 31
              end
              object gtv2Column4: TcxGridDBColumn
                Caption = 'No.Samb'
                DataBinding.FieldName = 'nosamb'
                HeaderAlignmentHorz = taCenter
                Width = 83
              end
              object gtv2Column5: TcxGridDBColumn
                Caption = 'Bulan'
                DataBinding.FieldName = 'bulan'
                HeaderAlignmentHorz = taCenter
                Width = 91
              end
              object gtv2Column2: TcxGridDBColumn
                Caption = 'Periode'
                DataBinding.FieldName = 'periode'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 64
              end
              object gtv2Column3: TcxGridDBColumn
                Caption = 'L'
                DataBinding.FieldName = 'flaglunas'
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
                HeaderAlignmentHorz = taCenter
                Width = 26
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'No.Samb'
                DataBinding.FieldName = 'nosamb'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Width = 67
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                Width = 145
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                Width = 125
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Gol'
                DataBinding.FieldName = 'kodegol'
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Rayon'
                DataBinding.FieldName = 'koderayon'
                HeaderAlignmentHorz = taCenter
                Width = 49
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Wil'
                DataBinding.FieldName = 'kodewil'
                HeaderAlignmentHorz = taCenter
                Width = 46
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'keterangan'
                HeaderAlignmentHorz = taCenter
                Width = 146
              end
              object gtv2RecId: TcxGridDBColumn
                DataBinding.FieldName = 'RecId'
                Visible = False
              end
              object gtv2stanlalu_lama: TcxGridDBColumn
                Caption = 'S.Lalu Lama'
                DataBinding.FieldName = 'stanlalu_lama'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 48
              end
              object gtv2stankini_lama: TcxGridDBColumn
                Caption = 'S.Kini Lama'
                DataBinding.FieldName = 'stankini_lama'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 55
              end
              object gtv2pakai_lama: TcxGridDBColumn
                Caption = 'Pakai Lama'
                DataBinding.FieldName = 'pakai_lama'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object gtv2stanlalu_baru: TcxGridDBColumn
                Caption = 'S.Lalu Baru'
                DataBinding.FieldName = 'stanlalu_baru'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 54
              end
              object gtv2stankini_baru: TcxGridDBColumn
                Caption = 'S.Kini Baru'
                DataBinding.FieldName = 'stankini_baru'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 44
              end
              object gtv2pakai_baru: TcxGridDBColumn
                Caption = 'Pakai Baru'
                DataBinding.FieldName = 'pakai_baru'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 48
              end
              object gtv2selisih_pakai: TcxGridDBColumn
                Caption = 'Selisih Pakai'
                DataBinding.FieldName = 'selisih_pakai'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 49
              end
              object gtv2biayapemakaian_lama: TcxGridDBColumn
                Caption = 'By.Pakai Lama'
                DataBinding.FieldName = 'biayapemakaian_lama'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 93
              end
              object gtv2biayapemakaian_baru: TcxGridDBColumn
                Caption = 'By.Pakai Baru'
                DataBinding.FieldName = 'biayapemakaian_baru'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 87
              end
              object gtv2selisih_biayapemakaian: TcxGridDBColumn
                Caption = 'Selisih By.Pakai'
                DataBinding.FieldName = 'selisih_biayapemakaian'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.#0'
                HeaderAlignmentHorz = taCenter
                Width = 66
              end
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Nomor'
                DataBinding.FieldName = 'nomorba'
                HeaderAlignmentHorz = taCenter
                Width = 154
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = 'Tanggal Usulan'
                DataBinding.FieldName = 'tanggal'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = gtv2
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'cxTabSheet3'
          ImageIndex = 2
          object foto: TcxImage
            Left = 0
            Top = 41
            Cursor = crHandPoint
            Hint = 'Tekan Untuk Memilih Foto / Gambar Denah'
            Align = alClient
            TabOrder = 0
            Transparent = True
            Height = 642
            Width = 864
          end
          object RzPanel8: TRzPanel
            Left = 0
            Top = 0
            Width = 864
            Height = 41
            Align = alTop
            BorderOuter = fsFlat
            Color = 16316664
            TabOrder = 1
            object cxButton1: TcxButton
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Kembali'
              TabOrder = 0
              TabStop = False
              OnClick = cxButton1Click
              SpeedButtonOptions.CanBeFocused = False
            end
          end
        end
        object tabgantimeter: TcxTabSheet
          Caption = 'Ganti Meter'
          ImageIndex = 0
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 864
            Height = 683
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2013White'
            object gtv3: TcxGridDBTableView
              OnDblClick = gtv3DblClick
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = gtv3CustomDrawCell
              DataController.DataSource = DSdaftar
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn10: TcxGridDBColumn
                Caption = 'Nomor'
                DataBinding.FieldName = 'nomor'
                HeaderAlignmentHorz = taCenter
                Width = 283
              end
              object cxGridDBColumn11: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                Width = 179
              end
              object cxGridDBColumn12: TcxGridDBColumn
                Caption = 'No.Lang'
                DataBinding.FieldName = 'nosamb'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object cxGridDBColumn13: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                Width = 144
              end
              object cxGridDBColumn14: TcxGridDBColumn
                Caption = 'Gol'
                DataBinding.FieldName = 'kodegol'
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object cxGridDBColumn15: TcxGridDBColumn
                Caption = 'Rayon'
                DataBinding.FieldName = 'koderayon'
                HeaderAlignmentHorz = taCenter
                Width = 49
              end
              object cxGridDBColumn16: TcxGridDBColumn
                Caption = 'Wil'
                DataBinding.FieldName = 'kodewil'
                HeaderAlignmentHorz = taCenter
                Width = 46
              end
              object cxGridDBColumn17: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'keterangan'
                HeaderAlignmentHorz = taCenter
                Width = 146
              end
              object cxGridDBColumn18: TcxGridDBColumn
                Caption = 'Tanggal BA'
                DataBinding.FieldName = 'tanggal'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object cxGridDBColumn19: TcxGridDBColumn
                Caption = 'Nomor BA'
                DataBinding.FieldName = 'nomorba'
                HeaderAlignmentHorz = taCenter
                Width = 276
              end
              object gtv3Column1: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'flag'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = gtv3
            end
          end
        end
      end
    end
    object RzPanel6: TRzPanel
      Left = 393
      Top = 25
      Width = 16
      Height = 755
      Align = alLeft
      BorderOuter = fsNone
      Color = 16316664
      TabOrder = 4
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 160
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
  end
  object DSloket: TMyDataSource
    DataSet = Qhost
    Left = 80
    Top = 152
  end
  object Qhost: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "PTS SEMENTARA" AS jenis,c.nomorpermohonan AS nomor,p.nos' +
        'amb AS nosamb,p.nama, p.alamat, p.kodegol,p.koderayon,p.kodewil,' +
        'p.keterangan, c.tanggalba,"1" AS lama,"0" AS baru,c.nomorba FROM' +
        ' ba_pemutusan_sementara c'
      
        'LEFT JOIN spk_pemutusan_sementara s ON c.nomorspk=c.nomorspk LEF' +
        'T JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=p.n' +
        'omor '
      
        'LEFT JOIN nonair n ON p.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" WHERE c.flaghapus="0" AND (n.flaglunas="1" OR p.biaya=0)' +
        ' '
      'AND c.flagprosesdata="0"'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "KOREKSI REKENING" AS jenis,c.nomorpermohonan AS nomor,c.' +
        'nosamb AS nosamb,c.nama, c.alamat, c.kodegol,c.koderayon,r.kodew' +
        'il,c.alasan AS keterangan, c.tanggalba,pakai_lama AS lama,pakai_' +
        'baru AS baru,c.nomorba FROM `ba_usulan_koreksi_rekening` c'
      
        'LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.flaghapus="' +
        '0" AND c.flagprosesdata="0"')
    Connection = Umain.host
    Left = 80
    Top = 120
  end
  object Qcek: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL;')
    Connection = Umain.host
    Left = 840
    Top = 232
  end
  object Qinisial: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL;')
    Connection = Umain.host
    Left = 992
    Top = 224
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 264
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
    end
  end
  object QcekHost1: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "PTS SEMENTARA" AS jenis,c.nomorpermohonan AS nomor,p.nos' +
        'amb AS nosamb,p.nama, p.alamat, p.kodegol,p.koderayon,p.kodewil,' +
        'p.keterangan, c.tanggalba,"1" AS lama,"0" AS baru,c.nomorba FROM' +
        ' ba_pemutusan_sementara c'
      
        'LEFT JOIN spk_pemutusan_sementara s ON c.nomorspk=c.nomorspk LEF' +
        'T JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=p.n' +
        'omor '
      
        'LEFT JOIN nonair n ON p.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" WHERE c.flaghapus="0" AND (n.flaglunas="1" OR p.biaya=0)' +
        ' '
      'AND c.flagprosesdata="0"'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "KOREKSI REKENING" AS jenis,c.nomorpermohonan AS nomor,c.' +
        'nosamb AS nosamb,c.nama, c.alamat, c.kodegol,c.koderayon,r.kodew' +
        'il,c.alasan AS keterangan, c.tanggalba,pakai_lama AS lama,pakai_' +
        'baru AS baru,c.nomorba FROM `ba_usulan_koreksi_rekening` c'
      
        'LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.flaghapus="' +
        '0" AND c.flagprosesdata="0"')
    Connection = Umain.host
    Left = 456
    Top = 432
  end
  object Qcekhost2: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "PTS SEMENTARA" AS jenis,c.nomorpermohonan AS nomor,p.nos' +
        'amb AS nosamb,p.nama, p.alamat, p.kodegol,p.koderayon,p.kodewil,' +
        'p.keterangan, c.tanggalba,"1" AS lama,"0" AS baru,c.nomorba FROM' +
        ' ba_pemutusan_sementara c'
      
        'LEFT JOIN spk_pemutusan_sementara s ON c.nomorspk=c.nomorspk LEF' +
        'T JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=p.n' +
        'omor '
      
        'LEFT JOIN nonair n ON p.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" WHERE c.flaghapus="0" AND (n.flaglunas="1" OR p.biaya=0)' +
        ' '
      'AND c.flagprosesdata="0"'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "KOREKSI REKENING" AS jenis,c.nomorpermohonan AS nomor,c.' +
        'nosamb AS nosamb,c.nama, c.alamat, c.kodegol,c.koderayon,r.kodew' +
        'il,c.alasan AS keterangan, c.tanggalba,pakai_lama AS lama,pakai_' +
        'baru AS baru,c.nomorba FROM `ba_usulan_koreksi_rekening` c'
      
        'LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.flaghapus="' +
        '0" AND c.flagprosesdata="0"')
    Connection = Umain.host
    Left = 448
    Top = 488
  end
  object Qcekhost3: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "PTS SEMENTARA" AS jenis,c.nomorpermohonan AS nomor,p.nos' +
        'amb AS nosamb,p.nama, p.alamat, p.kodegol,p.koderayon,p.kodewil,' +
        'p.keterangan, c.tanggalba,"1" AS lama,"0" AS baru,c.nomorba FROM' +
        ' ba_pemutusan_sementara c'
      
        'LEFT JOIN spk_pemutusan_sementara s ON c.nomorspk=c.nomorspk LEF' +
        'T JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=p.n' +
        'omor '
      
        'LEFT JOIN nonair n ON p.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" WHERE c.flaghapus="0" AND (n.flaglunas="1" OR p.biaya=0)' +
        ' '
      'AND c.flagprosesdata="0"'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "KOREKSI REKENING" AS jenis,c.nomorpermohonan AS nomor,c.' +
        'nosamb AS nosamb,c.nama, c.alamat, c.kodegol,c.koderayon,r.kodew' +
        'il,c.alasan AS keterangan, c.tanggalba,pakai_lama AS lama,pakai_' +
        'baru AS baru,c.nomorba FROM `ba_usulan_koreksi_rekening` c'
      
        'LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.flaghapus="' +
        '0" AND c.flagprosesdata="0"')
    Connection = Umain.host
    Left = 440
    Top = 560
  end
  object Qlist: TMyQuery
    SQLDelete.Strings = (
      
        'SELECT "SEGEL" AS kategori,"AIR" AS pelanggan,"SEGEL KARENA TUNG' +
        'GAKAN ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="1" A' +
        'ND p.`pelanggan`="AIR" AND c.flag IN ("Disegel Dekat Meter","Dis' +
        'egel Tidak Dekat Meter")'
      ''
      'UNION'
      ''
      
        'SELECT "SEGEL" AS kategori,"LIMBAH" AS pelanggan,"SEGEL KARENA T' +
        'UNGGAKAN ( LIMBAH )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="1" A' +
        'ND p.`pelanggan`="LIMBAH" AND c.flag IN ("Disegel Dekat Meter","' +
        'Disegel Tidak Dekat Meter")'
      ''
      'UNION'
      ''
      
        'SELECT "SEGEL" AS kategori,"L2T2" AS pelanggan,"SEGEL KARENA TUN' +
        'GGAKAN ( L2T2 )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="1" A' +
        'ND p.`pelanggan`="L2T2" AND c.flag IN ("Disegel Dekat Meter","Di' +
        'segel Tidak Dekat Meter")'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "TUTUP SEMENTARA" AS kategori,"AIR" AS pelanggan,"TUTUP S' +
        'EMENTARA KARENA PERMOHONAN ( AIR )" AS jenis,COUNT(c.nomorba) AS' +
        ' jumlah  '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor '
      
        'WHERE c.flaghapus="0" AND p.segel="2" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="AIR"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP SEMENTARA" AS kategori,"LIMBAH" AS pelanggan,"TUTU' +
        'P SEMENTARA KARENA PERMOHONAN ( LIMBAH )" AS jenis,COUNT(c.nomor' +
        'ba) AS jumlah  '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor AND p.`pelanggan`="LIMBAH"'
      
        'WHERE c.flaghapus="0" AND p.segel="2" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="LIMBAH"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP SEMENTARA" AS kategori,"L2T2" AS pelanggan,"TUTUP ' +
        'SEMENTARA KARENA PERMOHONAN ( L2T2 )" AS jenis,COUNT(c.nomorba) ' +
        'AS jumlah  '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor '
      
        'WHERE c.flaghapus="0" AND p.segel="2" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="L2T2"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"AIR" AS pelanggan,"TUTUP TOTAL' +
        ' KARENA PERMOHONAN ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah ' +
        ' '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor '
      
        'WHERE c.flaghapus="0" AND p.segel="3" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="AIR"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"LIMBAH" AS pelanggan,"TUTUP TO' +
        'TAL KARENA PERMOHONAN ( LIMBAH )" AS jenis,COUNT(c.nomorba) AS j' +
        'umlah  '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor AND p.`pelanggan`="LIMBAH"'
      
        'WHERE c.flaghapus="0" AND p.segel="3" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="LIMBAH"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"L2T2" AS pelanggan,"TUTUP TOTA' +
        'L KARENA PERMOHONAN ( L2T2 )" AS jenis,COUNT(c.nomorba) AS jumla' +
        'h  '
      'FROM ba_pemutusan_sementara c'
      
        'LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=' +
        'p.nomor '
      
        'WHERE c.flaghapus="0" AND p.segel="3" AND c.flagprosesdata="0" A' +
        'ND p.`pelanggan`="L2T2"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"AIR" AS pelanggan,"TUTUP TOTAL' +
        ' KARENA TUNGGAKAN ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="0" A' +
        'ND p.`pelanggan`="AIR" AND c.flagstatus="Berhasil Ditutup Total"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"LIMBAH" AS pelanggan,"TUTUP TO' +
        'TAL KARENA TUNGGAKAN ( LIMBAH )" AS jenis,COUNT(c.nomorba) AS ju' +
        'mlah  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="0" A' +
        'ND p.`pelanggan`="LIMBAH" AND c.flagstatus="Berhasil Ditutup Tot' +
        'al"'
      ''
      'UNION'
      ''
      
        'SELECT "TUTUP TOTAL" AS kategori,"L2T2" AS pelanggan,"TUTUP TOTA' +
        'L KARENA TUNGGAKAN ( L2T2 )" AS jenis,COUNT(c.nomorba) AS jumlah' +
        '  '
      'FROM ba_pemutusan_tunggakan c'
      'LEFT JOIN spk_pemutusan_tunggakan p ON c.nomorspk=p.nomorspk '
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.segel="0" A' +
        'ND p.`pelanggan`="L2T2" AND c.flagstatus="Berhasil Ditutup Total' +
        '"'
      ''
      ''
      ''
      ''
      ''
      'UNION'
      ''
      
        'SELECT "BUKA SEGEL" AS kategori,"AIR" AS pelanggan,"BUKA SEGEL (' +
        ' AIR )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_bukasegel c'
      'LEFT JOIN permohonan_bukasegel p ON c.`nomorpermohonan`=p.nomor'
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.`pelanggan`' +
        '="AIR"'
      ''
      'UNION'
      ''
      
        'SELECT "BUKA SEGEL" AS kategori,"LIMBAH" AS pelanggan,"BUKA SEGE' +
        'L ( LIMBAH )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_bukasegel c'
      'LEFT JOIN permohonan_bukasegel p ON c.nomorpermohonan=p.nomor'
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.`pelanggan`' +
        '="LIMBAH"'
      ''
      'UNION'
      ''
      
        'SELECT "BUKA SEGEL" AS kategori,"L2T2" AS pelanggan,"BUKA SEGEL ' +
        '( L2T2 )" AS jenis,COUNT(c.nomorba) AS jumlah  '
      'FROM ba_bukasegel c'
      'LEFT JOIN permohonan_bukasegel p ON c.nomorpermohonan=p.nomor'
      
        'WHERE c.flaghapus="0" AND c.flagprosesdata="0" AND p.`pelanggan`' +
        '="L2T2"'
      ''
      ''
      ''
      'UNION'
      ''
      
        'SELECT "BALIK NAMA" AS kategori,"AIR" AS pelanggan,"BALIK NAMA (' +
        ' AIR )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_balik_nama c '
      
        'LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermohonan` AND' +
        ' b.flaghapus="0" '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="A' +
        'IR"'
      ''
      'UNION'
      ''
      
        'SELECT "BALIK NAMA" AS kategori,"LIMBAH" AS pelanggan,"BALIK NAM' +
        'A ( LIMBAH )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_balik_nama c '
      
        'LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermohonan` AND' +
        ' b.flaghapus="0" '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="L' +
        'IMBAH"'
      ''
      ''
      'UNION'
      ''
      
        'SELECT "BALIK NAMA" AS kategori,"L2T2" AS pelanggan,"BALIK NAMA ' +
        '( L2T2 )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_balik_nama c '
      
        'LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermohonan` AND' +
        ' b.flaghapus="0" '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="L' +
        '2T2"'
      ''
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOLONGAN" AS kategori,"AIR" AS pelanggan,"RUBAH GO' +
        'LONGAN ( AIR )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_rubah_gol c '
      
        'LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohonan` AND ' +
        'b.flaghapus="0"  '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="A' +
        'IR"'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOLONGAN" AS kategori,"LIMBAH" AS pelanggan,"RUBAH' +
        ' GOLONGAN ( LIMBAH )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_rubah_gol c '
      
        'LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohonan` AND ' +
        'b.flaghapus="0"  '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="L' +
        'IMBAH"'
      ''
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOLONGAN" AS kategori,"L2T2" AS pelanggan,"RUBAH G' +
        'OLONGAN ( L2T2 )" AS jenis,COUNT(c.nomor) AS jumlah '
      'FROM permohonan_rubah_gol c '
      
        'LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohonan` AND ' +
        'b.flaghapus="0"  '
      
        'WHERE c.`flaghapus`="0" AND b.nomorba IS NULL AND c.pelanggan="L' +
        '2T2"'
      ''
      ''
      'UNION'
      ''
      
        'SELECT "KOREKSI REKENING" AS kategori,"AIR" AS pelanggan,"KOREKS' +
        'I REKENING ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah  FROM ba' +
        '_usulan_koreksi_rekening_periode c'
      'WHERE c.flagprosesdata="0"'
      ''
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNGAN BARU" AS kategori,"AIR" AS pelanggan,"SAMBUNGA' +
        'N BARU ( AIR )" AS jenis,COUNT(c.norab) AS jumlah'
      
        'FROM `rab` c WHERE c.flaghapus="0" AND c.nomorba IS NOT NULL AND' +
        ' c.flagprosesdata="0"'
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNGAN BARU" AS kategori,"LIMBAH" AS pelanggan,"SAMBU' +
        'NGAN BARU ( LIMBAH )" AS jenis,COUNT(c.norab) AS jumlah'
      
        'FROM `rab_limbah` c WHERE c.flaghapus="0" AND c.nomorba IS NOT N' +
        'ULL AND c.flagprosesdata="0"'
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNGAN BARU" AS kategori,"L2T2" AS pelanggan,"SAMBUNG' +
        'AN BARU ( L2T2 )" AS jenis,COUNT(c.nomorreg) AS jumlah'
      
        'FROM `pendaftaran_lltt` c WHERE c.flaghapus="0" AND c.flagproses' +
        'data="0"'
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNG KEMBALI" AS kategori,"AIR" AS pelanggan,"SAMBUNG' +
        ' KEMBALI ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah'
      
        'FROM `ba_sambungkembali` c LEFT JOIN permohonan_sambung_kembali ' +
        'p ON c.nomorpermohonan=p.nomor WHERE c.flaghapus="0" AND c.flagp' +
        'rosesdata="0" AND p.pelanggan="AIR"'
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNG KEMBALI" AS kategori,"LIMBAH" AS pelanggan,"SAMB' +
        'UNG KEMBALI ( LIMBAH )" AS jenis,COUNT(c.nomorba) AS jumlah'
      
        'FROM `ba_sambungkembali` c LEFT JOIN permohonan_sambung_kembali ' +
        'p ON c.nomorpermohonan=p.nomor WHERE c.flaghapus="0" AND c.flagp' +
        'rosesdata="0" AND p.pelanggan="LIMBAH"'
      ''
      ''
      'UNION'
      ''
      
        'SELECT "SAMBUNG KEMBALI" AS kategori,"L2T2" AS pelanggan,"SAMBUN' +
        'G KEMBALI ( L2T2 )" AS jenis,COUNT(c.nomorba) AS jumlah'
      
        'FROM `ba_sambungkembali` c LEFT JOIN permohonan_sambung_kembali ' +
        'p ON c.nomorpermohonan=p.nomor WHERE c.flaghapus="0" AND c.flagp' +
        'rosesdata="0" AND p.pelanggan="L2T2"'
      ''
      'UNION'
      ''
      
        'SELECT "GANTI METER (ROTASI)" AS kategori,"AIR" AS pelanggan,"GA' +
        'NTI METER ROTASI ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah'
      
        'FROM `ba_ganti_meter` c  WHERE c.flaghapus="0" AND c.flagprosesd' +
        'ata="0" AND nomorba LIKE "%ROTASI MTR%"'
      ''
      'UNION'
      ''
      
        'SELECT "GANTI METER (PENGADUAN)" AS kategori,"AIR" AS pelanggan,' +
        '"GANTI METER PENGADUAN ( AIR )" AS jenis,COUNT(c.nomorba) AS jum' +
        'lah'
      
        'FROM `ba_ganti_meter` c  WHERE c.flaghapus="0" AND c.flagprosesd' +
        'ata="0" AND nomorba LIKE "%PENGADUAN%"'
      ''
      'UNION'
      ''
      
        'SELECT "GANTI METER (SAMB.KEMBALI)" AS kategori,"AIR" AS pelangg' +
        'an,"GANTI METER SAMB.KEMBALI ( AIR )" AS jenis,COUNT(c.nomorba) ' +
        'AS jumlah'
      'FROM `ba_ganti_meter` c '
      
        'LEFT JOIN `permohonan_sambung_kembali` e ON e.`nomor`=c.`nomorpe' +
        'rmohonan`'
      'WHERE c.flaghapus="0" AND c.flagprosesdata="0" '
      
        'AND  c.nomorba LIKE "%SAMBUNG KEMBALI%" AND e.`flaghapus`="0" AN' +
        'D e.`pelanggan`="AIR"')
    SQLLock.Strings = (
      
        'SELECT "KOREKSI REKENING" AS kategori,"AIR" AS pelanggan,"KOREKS' +
        'I REKENING ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah,c.tipeko' +
        'reksi  FROM ba_usulan_koreksi_rekening_periode c'
      'WHERE c.flagprosesdata="0" AND c.tipekoreksi="0"'
      'UNION'
      
        'SELECT "KOREKSI REKENING" AS kategori,"AIR" AS pelanggan,"KOREKS' +
        'I REKENING ABODEMEN ( AIR )" AS jenis,COUNT(c.nomorba) AS jumlah' +
        ',c.tipekoreksi  FROM ba_usulan_koreksi_rekening_periode c'
      'WHERE c.flagprosesdata="0" AND c.tipekoreksi="1"'
      'UNION'
      
        'SELECT "KOREKSI REKENING" AS kategori,"AIR" AS pelanggan,"KOREKS' +
        'I REKENING PEMAKAIAN ( AIR )" AS jenis,COUNT(c.nomorba) AS jumla' +
        'h,c.tipekoreksi  FROM ba_usulan_koreksi_rekening_periode c'
      'WHERE c.flagprosesdata="0" AND c.tipekoreksi="2"')
    Connection = Umain.host
    Left = 160
    Top = 400
  end
  object DSlist: TMyDataSource
    DataSet = list_
    Left = 144
    Top = 336
  end
  object Qdaftar: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,COUNT(c.nomor) AS jumlah FROM permo' +
        'honan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,COUNT(c.nomor) AS jumlah FROM permoh' +
        'onan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      ''
      'UNION'
      ''
      ''
      
        'SELECT "PTS SEMENTARA" AS jenis,COUNT(c.nomorba) AS jumlah  FROM' +
        ' ba_pemutusan_sementara c'
      
        'LEFT JOIN spk_pemutusan_sementara s ON c.nomorspk=c.nomorspk LEF' +
        'T JOIN permohonan_pemutusan_sementara p ON c.nomorpermohonan=p.n' +
        'omor '
      
        'LEFT JOIN nonair n ON p.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" WHERE c.flaghapus="0" AND (n.flaglunas="1" OR p.biaya=0)' +
        ' '
      'AND c.flagprosesdata="0"')
    Connection = Umain.host
    Left = 120
    Top = 480
  end
  object DSdaftar: TMyDataSource
    DataSet = data_
    Left = 208
    Top = 384
  end
  object Qbaliknama: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomor AS nomor,'
      '  c.nosamb AS nosamb,'
      '  c.nama AS nama,'
      '  c.alamat AS alamat,'
      '  c.kodegol AS kodegol,'
      '  c.koderayon AS koderayon,'
      '  c.kodewil AS kodewil,'
      '  c.keterangan AS keterangan,'
      '  c.tanggal AS tanggal,'
      '  b.`nomorba` AS nomorba,'
      '  c.lama,'
      '  c.baru,'
      '  "" AS norab '
      'FROM'
      '  permohonan_balik_nama c  '
      '  LEFT JOIN `ba_balik_nama` b '
      '    ON c.`nomor` = b.`nomorpermohonan` '
      '    AND b.flaghapus = "0" '
      'WHERE c.`flaghapus` = "0"  '
      '  AND b.nomorba IS NULL AND c.`pelanggan`=:pelanggan')
    Connection = Umain.host
    Left = 960
    Top = 640
  end
  object Qrubahgol: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomor AS nomor,'
      '  c.nosamb AS nosamb,'
      '  c.nama AS nama,'
      '  c.alamat AS alamat,'
      '  c.kodegol AS kodegol,'
      '  c.koderayon AS koderayon,'
      '  c.kodewil AS kodewil,'
      '  c.keterangan AS keterangan,'
      '  c.tanggal AS tanggal,'
      '  b.`nomorba` AS nomorba,'
      '  c.lama,'
      '  c.baru,'
      '  "" AS norab '
      'FROM'
      '  permohonan_rubah_gol c  '
      '  LEFT JOIN `ba_rubah_gol` b '
      '    ON c.`nomor` = b.`nomorpermohonan` '
      '    AND b.flaghapus = "0" '
      'WHERE c.`flaghapus` = "0" '
      'AND b.nomorba IS NULL AND c.`pelanggan`=:pelanggan')
    Connection = Umain.host
    Left = 728
    Top = 648
  end
  object Qptssementara: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorpermohonan AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  p.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba as tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "0" AS baru,'
      '  "" as norab '
      'FROM'
      '  ba_pemutusan_sementara c '
      
        '  LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohona' +
        'n = p.nomor  '
      'WHERE c.flaghapus = "0"   '
      '  AND c.flagprosesdata = "0" '
      '  AND p.segel = "2" '
      '  AND p.pelanggan=:pelanggan')
    Connection = Umain.host
    Left = 648
    Top = 496
  end
  object Qsambkembali: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorpermohonan AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  p.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba as tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "0" AS baru,'
      '  "" as norab '
      'FROM'
      '  `ba_sambungkembali` c '
      
        '  LEFT JOIN `permohonan_sambung_kembali` p ON c.nomorpermohonan ' +
        '= p.nomor  '
      'WHERE c.flaghapus = "0"   '
      '  AND c.flagprosesdata = "0" '
      '  AND p.pelanggan=:pelanggan')
    Connection = Umain.host
    Left = 264
    Top = 552
  end
  object Qsambbaru: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.norab,'
      '  c.nomorreg AS nomor,'
      '  c.nosambyangdiberikan AS nosamb,'
      '  "" AS nomorlimbah, '
      '  "" AS nomorlltt, '
      '  c.nama,'
      '  c.alamat,'
      '  c.kodegol,'
      '  c.koderayon,'
      '  r.kodewil,'
      '  c.kodekelurahan,'
      '  "SAMB.BARU" AS keterangan,'
      '  c.tglpasang AS tanggal,'
      '  c.nomorba,'
      '  "0" AS lama,'
      '  "1" AS baru '
      'FROM'
      '  `rab` c '
      '  LEFT JOIN rayon r '
      '    ON c.koderayon = r.koderayon '
      'WHERE c.flaghapus = "0" '
      '  AND c.nomorba IS NOT NULL '
      '  AND c.flagprosesdata = "0"')
    Connection = Umain.host
    Left = 584
    Top = 656
  end
  object Qcek2: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL;')
    Connection = Umain.host
    Left = 520
    Top = 384
  end
  object Qbukasegel: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorba AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama AS nama,'
      '  p.alamat AS alamat,'
      '  p.kodegol AS kodegol,'
      '  p.koderayon AS koderayon,'
      '  r.kodewil AS kodewil,'
      '  c.memo AS keterangan,'
      '  c.tanggalba AS tanggal,'
      '  c.`nomorba` AS nomorba,'
      '  "2" AS lama,'
      '  "1" AS baru,'
      '  "" AS norab '
      'FROM'
      '  ba_bukasegel c '
      '  LEFT JOIN permohonan_bukasegel p ON c.nomorpermohonan=p.nomor'
      '  LEFT JOIN rayon r ON p.koderayon = r.koderayon '
      
        'WHERE c.`flaghapus` = "0" AND c.flagprosesdata = "0" AND p.`pela' +
        'nggan`=:pelanggan')
    Connection = Umain.host
    Left = 984
    Top = 584
  end
  object Qptstunggakan: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorba AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  r.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba AS tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "0" AS baru,'
      '  "" AS norab '
      'FROM'
      '  ba_pemutusan_tunggakan c '
      '  LEFT JOIN spk_pemutusan_tunggakan p '
      '    ON c.nomorspk = p.nomorspk '
      '  LEFT JOIN rayon r '
      '    ON p.koderayon = r.`koderayon` '
      'WHERE c.flaghapus = "0" '
      
        '  AND c.flagprosesdata = "0" AND p.segel="0" AND p.`pelanggan`=:' +
        'pelanggan'
      ' AND c.flagstatus="Berhasil Ditutup Total"')
    Connection = Umain.host
    Left = 600
    Top = 584
  end
  object Qsegel: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorpermohonan AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  p.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba AS tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "2" AS baru,'
      '  "" AS norab '
      'FROM'
      '  ba_pemutusan_sementara c '
      
        '  LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohona' +
        'n = p.nomor '
      '  '
      'WHERE c.flaghapus = "0" '
      '  '
      '  AND c.flagprosesdata = "0" '
      '  AND p.segel = "1" '
      '  AND p.pelanggan=:pelanggan')
    Connection = Umain.host
    Left = 792
    Top = 600
  end
  object list_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 248
    Top = 232
    object list_jenis: TStringField
      FieldName = 'jenis'
      Size = 200
    end
    object list_jumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object list_pelanggan: TStringField
      FieldName = 'pelanggan'
      Size = 100
    end
    object list_kategori: TStringField
      FieldName = 'kategori'
      Size = 100
    end
    object list_tipekoreksi: TStringField
      FieldName = 'tipekoreksi'
      Size = 1
    end
  end
  object data_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 736
    Top = 312
    object data_nomor: TStringField
      FieldName = 'nomor'
      Size = 200
    end
    object data_nosamb: TStringField
      FieldName = 'nosamb'
      Size = 200
    end
    object data_nama: TStringField
      FieldName = 'nama'
      Size = 200
    end
    object data_alamat: TStringField
      FieldName = 'alamat'
      Size = 200
    end
    object data_kodegol: TStringField
      FieldName = 'kodegol'
      Size = 200
    end
    object data_koderayon: TStringField
      FieldName = 'koderayon'
      Size = 200
    end
    object data_kodewil: TStringField
      FieldName = 'kodewil'
      Size = 200
    end
    object data_keterangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
    object data_tanggal: TDateField
      FieldName = 'tanggal'
    end
    object data_nomorba: TStringField
      FieldName = 'nomorba'
      Size = 200
    end
    object data_baru: TStringField
      FieldName = 'baru'
      Size = 200
    end
    object data_lama: TStringField
      FieldName = 'lama'
      Size = 200
    end
    object data_norab: TStringField
      FieldName = 'norab'
      Size = 200
    end
    object data_stanlalu_lama: TCurrencyField
      FieldName = 'stanlalu_lama'
    end
    object data_stankini_lama: TCurrencyField
      FieldName = 'stankini_lama'
    end
    object data_pakai_lama: TCurrencyField
      FieldName = 'pakai_lama'
    end
    object data_stanlalu_baru: TCurrencyField
      FieldName = 'stanlalu_baru'
    end
    object data_stankini_baru: TCurrencyField
      FieldName = 'stankini_baru'
    end
    object data_pakai_baru: TCurrencyField
      FieldName = 'pakai_baru'
    end
    object data_selisih_pakai: TCurrencyField
      FieldName = 'selisih_pakai'
    end
    object data_biayapemakaian_lama: TCurrencyField
      FieldName = 'biayapemakaian_lama'
    end
    object data_biayapemakaian_baru: TCurrencyField
      FieldName = 'biayapemakaian_baru'
    end
    object data_selisih_biayapemakaian: TCurrencyField
      FieldName = 'selisih_biayapemakaian'
    end
    object data_flagpublish: TStringField
      FieldName = 'flagpublish'
    end
    object data_periode: TStringField
      FieldName = 'periode'
      Size = 50
    end
    object data_bulan: TStringField
      FieldName = 'bulan'
      Size = 50
    end
    object data_flag: TStringField
      FieldName = 'flag'
      Size = 10
    end
    object data_flaglunas: TStringField
      FieldName = 'flaglunas'
      Size = 1
    end
    object data_kodekelurahan: TStringField
      FieldName = 'kodekelurahan'
      Size = 50
    end
    object data_nosambyangdiberikan: TStringField
      FieldName = 'nosambyangdiberikan'
      Size = 100
    end
    object data_merkmeterlama: TStringField
      FieldName = 'merkmeterlama'
    end
    object data_serimeterlama: TStringField
      FieldName = 'serimeterlama'
    end
    object data_angkameterlama: TCurrencyField
      FieldName = 'angkameterlama'
    end
    object data_ukuranlama: TStringField
      FieldName = 'ukuranlama'
    end
    object data_merkmeterbaru: TStringField
      FieldName = 'merkmeterbaru'
    end
    object data_serimeterbaru: TStringField
      FieldName = 'serimeterbaru'
    end
    object data_ukuranbaru: TStringField
      FieldName = 'ukuranbaru'
    end
    object data_angkameterbaru: TCurrencyField
      FieldName = 'angkameterbaru'
    end
    object data_wilayah: TStringField
      FieldName = 'wilayah'
      Size = 50
    end
    object data_golongan: TStringField
      FieldName = 'golongan'
      Size = 100
    end
  end
  object Qkoreksirek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.nomorba AS norab,'
      '  c.nomorpermohonan AS nomor,'
      '  c.nosamb AS nosamb,'
      '  c.nama,'
      '  c.alamat,'
      '  c.kodegol,'
      '  c.koderayon,'
      '  r.kodewil,'
      '  c.alasan AS keterangan,'
      '  c.periode,'
      '  c.bulan,'
      '  c.tanggalba AS tanggal,'
      '  c.nomorba,'
      '  "0" AS lama,'
      '  "1" AS baru,'
      '  c.stanlalu_lama,'
      '  c.stankini_lama,'
      '  c.pakai_lama,'
      '  c.stanlalu_baru,'
      '  c.stankini_baru,'
      '  c.pakai_baru,'
      '  c.pakai_baru - c.pakai_lama AS selisih_pakai,'
      '  c.biayapemakaian_lama,'
      '  c.biayapemakaian_baru,'
      
        '  c.biayapemakaian_baru - c.biayapemakaian_lama AS selisih_biaya' +
        'pemakaian,'
      '  c.tipekoreksi,'
      '  w.wilayah,'
      '  g.golongan '
      'FROM'
      '  `ba_usulan_koreksi_rekening_periode` c '
      '  LEFT JOIN rayon r ON c.koderayon = r.koderayon '
      '  LEFT JOIN wilayah w ON r.kodewil=w.kodewil'
      '  LEFT JOIN golongan g ON c.kodegol=g.kodegol'
      
        'WHERE c.flagprosesdata = "0" AND c.tipekoreksi=:tipekoreksi AND ' +
        'g.aktif="1"')
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorba AS norab,'
      '  c.nomorpermohonan AS nomor,'
      '  c.nosamb AS nosamb,'
      '  c.nama,'
      '  c.alamat,'
      '  c.kodegol,'
      '  c.koderayon,'
      '  r.kodewil,'
      '  c.alasan AS keterangan,'
      '  c.periode,'
      '  c.bulan,'
      '  c.tanggalba AS tanggal,'
      '  c.nomorba,'
      '  "0" AS lama,'
      '  "1" AS baru,'
      '  c.stanlalu_lama,'
      '  c.stankini_lama,'
      '  c.pakai_lama,'
      '  c.stanlalu_baru,'
      '  c.stankini_baru,'
      '  c.pakai_baru,'
      '  c.pakai_baru - c.pakai_lama AS selisih_pakai,'
      '  c.biayapemakaian_lama,'
      '  c.biayapemakaian_baru,'
      
        '  c.biayapemakaian_baru - c.biayapemakaian_lama AS selisih_biaya' +
        'pemakaian,'
      '  c.tipekoreksi,'
      '  w.wilayah,'
      '  g.golongan '
      'FROM'
      '  `ba_usulan_koreksi_rekening_periode` c '
      '  LEFT JOIN rayon r ON c.koderayon = r.koderayon '
      '  LEFT JOIN wilayah w ON r.kodewil=w.kodewil'
      '  LEFT JOIN golongan g ON c.kodegol=g.kodegol'
      
        'WHERE c.flagprosesdata = "0" AND c.tipekoreksi="0" AND g.aktif="' +
        '1"')
    Connection = Umain.host
    Left = 1216
    Top = 440
  end
  object MyQuery1: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO piutang('
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
    Left = 288
    Top = 472
  end
  object PopupMenu1: TPopupMenu
    Images = DM.png16
    Left = 896
    Top = 384
    object Publish1: TMenuItem
      Caption = 'Publish && Upload'
      Enabled = False
      ImageIndex = 17
      OnClick = Publish1Click
    end
    object Unpublish1: TMenuItem
      Caption = 'Unpublish'
      Enabled = False
      ImageIndex = 15
      OnClick = Unpublish1Click
    end
    object ProsesAll: TMenuItem
      Caption = 'Proses All (Koreksi, Publish && Upload)'
      OnClick = ProsesAllClick
    end
    object N1: TMenuItem
      Caption = '----'
      Enabled = False
    end
    object LihatFoto1: TMenuItem
      Caption = 'Lihat Foto'
      OnClick = LihatFoto1Click
    end
    object Selesai1: TMenuItem
      Caption = 'Abaikan'
      Enabled = False
      ImageIndex = 0
      OnClick = Selesai1Click
    end
  end
  object Qcekhost: TMyQuery
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
    Left = 704
    Top = 488
  end
  object Qkoreksi: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      ''
      'c.`nosamb`,'
      'p.nama,'
      'p.alamat,'
      'c.`kodegol`,'
      'c.kodediameter,'
      'c.koderayon,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.stanangkat,'
      'c.pakai,'
      'c.`biayapemakaian`,'
      'c.`administrasi`+c.administrasilain AS administrasi,'
      'c.pemeliharaan+c.pemeliharaanlain AS pemeliharaan,'
      'c.`pelayanan`,'
      'c.retribusi+c.retribusilain AS retribusi,'
      'c.`meterai`,'
      'c.rekair,'
      'd.`kodegol` AS kodegol2,'
      'd.kodediameter AS kodediameter2,'
      'd.koderayon AS koderayon2,'
      'd.stanlalu AS stanlalu2,'
      'd.stanskrg AS stanskrg2,'
      'd.stanangkat AS stanangkat2,'
      'd.pakai AS pakai2,'
      'd.`biayapemakaian` AS biayapemakaian2,'
      'd.`administrasi`+c.administrasilain AS administrasi2,'
      'd.pemeliharaan+c.pemeliharaanlain AS pemeliharaan2,'
      'd.`pelayanan` AS pelayanan2,'
      'd.retribusi+c.retribusilain AS retribusi2,'
      'd.`meterai` AS meterai2,'
      'd.rekair AS rekair2,'
      'd.beritaacara,'
      'd.tglinput,'
      ':bulan as bulan,'
      ':user as user,'
      'b.alasan,'
      'b.flagdrdkoreksi')
    Connection = DM.Conn
    Left = 840
    Top = 192
  end
  object Qupload: TMyQuery
    SQLRefresh.Strings = (
      'SELECT c.*,p.nama,p.alamat,c.flag,:bulan,'
      'g.ppn AS persenppn,'
      'g.trf_denda_berdasarkan_persen'
      'FROM piutang c '
      'LEFT JOIN pelanggan p ON c.`nosamb`=p.`nosamb`'
      
        'LEFT JOIN golongan g ON c.kodegolyangberlaku=g.kodegolyangberlak' +
        'u'
      'WHERE c.kode=:kode')
    Connection = DM.Conn
    Left = 592
    Top = 248
  end
  object Qexec: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO piutang('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      'kodegol,'
      'kodegolyangberlaku,'
      '  `kodediameter`,'
      '  `kodediameteryangberlaku`,'
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
      'noangsuran,'
      'trf_denda_berdasarkan_persen'
      ')'
      'VALUES'
      '('
      '   :kode,'
      '  :periode,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      ':kodegol,'
      ':kodegolyangberlaku,'
      '  :kodediameter,'
      '  :kodediameteryangberlaku,'
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
      ':noangsuran,'
      ':trf_denda_berdasarkan_persen'
      ')')
    Connection = Umain.host
    Left = 856
    Top = 504
  end
  object Qsambbarulimbah: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.norab,'
      '  c.nomorreg AS nomor,'
      '  c.nosambyangdiberikan AS nosamb,  '
      '  c.nama,'
      '  c.alamat,'
      '  c.kodegol,'
      '  c.koderayon,'
      '  r.kodewil,'
      'c.kodekelurahan,'
      '  "SAMB.BARU" AS keterangan,'
      '  c.tglpasang AS tanggal,'
      '  c.nomorba,'
      '  "0" AS lama,'
      '  "1" AS baru '
      'FROM'
      '  `rab_limbah` c '
      '  LEFT JOIN rayon r '
      '    ON c.koderayon = r.koderayon '
      'WHERE c.flaghapus = "0" '
      '  AND c.nomorba IS NOT NULL '
      '  AND c.flagprosesdata = "0"')
    Connection = Umain.host
    Left = 456
    Top = 696
  end
  object Qsambbarulltt: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorreg AS norab,'
      '  c.nomorreg AS nomor,'
      '  c.nosamb AS nosamb,'
      '  c.nama,'
      '  c.alamat,'
      '  c.kodegol,'
      '  c.koderayon,'
      '  r.kodewil,'
      '  "SAMB.BARU" AS keterangan,'
      '  c.tgldaftar AS tanggal,'
      '  c.nomorreg AS nomorba,'
      '  "0" AS lama,'
      '  "1" AS baru '
      'FROM'
      '  `pendaftaran_lltt` c '
      '  LEFT JOIN rayon r '
      '    ON c.koderayon = r.koderayon '
      'WHERE c.flaghapus = "0"   '
      '  AND c.flagprosesdata = "0"')
    Connection = Umain.host
    Left = 496
    Top = 616
  end
  object Qsegeltunggakan: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorba AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  r.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba AS tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "0" AS baru,'
      '  "" AS norab '
      'FROM'
      '  ba_pemutusan_tunggakan c '
      '  LEFT JOIN spk_pemutusan_tunggakan p '
      '    ON c.nomorspk = p.nomorspk '
      '  LEFT JOIN rayon r '
      '    ON p.koderayon = r.`koderayon` '
      'WHERE c.flaghapus = "0" '
      'AND c.flagprosesdata = "0" '
      'AND p.segel="1" '
      'AND p.`pelanggan`=:pelanggan'
      
        'AND c.flag IN ("Disegel Dekat Meter","Disegel Tidak Dekat Meter"' +
        ')')
    Connection = Umain.host
    Left = 752
    Top = 592
  end
  object Qfoto: TMyQuery
    Connection = Umain.host
    Left = 1216
    Top = 504
  end
  object Qptstotal: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.nomorpermohonan AS nomor,'
      '  p.nosamb AS nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.kodegol,'
      '  p.koderayon,'
      '  p.kodewil,'
      '  p.keterangan,'
      '  c.tanggalba as tanggal,'
      '  c.nomorba,'
      '  "1" AS lama,'
      '  "0" AS baru,'
      '  "" as norab '
      'FROM'
      '  ba_pemutusan_sementara c '
      
        '  LEFT JOIN permohonan_pemutusan_sementara p ON c.nomorpermohona' +
        'n = p.nomor  '
      'WHERE c.flaghapus = "0"   '
      '  AND c.flagprosesdata = "0" '
      '  AND p.segel = "3" '
      '  AND p.pelanggan=:pelanggan')
    Connection = Umain.host
    Left = 688
    Top = 424
  end
  object MyDataSource1: TMyDataSource
    Left = 288
    Top = 352
  end
  object Qmirror: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      'c.nosamb,'
      'IF(c.flagaktif IN("1","2"),"1","0") AS flagaktif,'
      'c.flaglunas,'
      'c.flagpublish,'
      'c.flagkoreksi,'
      'c.flagkirim,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.stanangkat,'
      'c.kodegol,'
      'c.kodediameter,'
      'c.pakai,'
      'g.minpakai,'
      
        'COALESCE(g.administrasi,0)+COALESCE(d.administrasi,0) AS xadmini' +
        'strasi,'
      
        'COALESCE(g.pemeliharaan,0)+COALESCE(d.pemeliharaan,0) AS xpemeli' +
        'haraan,'
      'COALESCE(g.pelayanan,0)+COALESCE(d.pelayanan,0) AS xpelayanan,'
      'COALESCE(g.retribusi,0)+COALESCE(d.retribusi,0) AS xretribusi,'
      'COALESCE(g.airlimbah,0)+COALESCE(d.airlimbah,0) AS xairlimbah,'
      
        'COALESCE(g.dendapakai0,0)+COALESCE(d.dendapakai0,0) AS xdendapak' +
        'ai0,'
      'COALESCE(g.retribusi_pakai,0) AS xretribusipakai,'
      'COALESCE(g.ppn,0)as xppn,'
      'COALESCE(b1.`administrasilain`,0) AS trf_admlain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS trf_pemlain,'
      'COALESCE(b3.`retribusilain`,0) AS trf_retlain,'
      'c.biayapemakaian AS zbiayapemakaian,'
      'c.meterai AS zmeterai,'
      'c.pemeliharaan AS zpemeliharaan,'
      'c.retribusi AS zretribusi,'
      'c.administrasi AS zadministrasi,'
      'c.pelayanan AS zpelayanan,'
      'c.dendatunggakan AS zdendatunggakan,'
      'c.airlimbah as zairlimbah,'
      'c.dendapakai0 as zdendapakai0,'
      'c.administrasilain as zadministrasilain,'
      'c.pemeliharaanlain as zpemeliharaanlain,'
      'c.retribusilain as zretribusilain,'
      ''
      'COALESCE(g.bb1,0) as bb1,'
      'COALESCE(g.bb2,0) as bb2,'
      'COALESCE(g.bb3,0) as bb3,'
      'COALESCE(g.bb4,0) as bb4,'
      'COALESCE(g.bb5,0) as bb5,'
      'COALESCE(g.ba1,0) as ba1,'
      'COALESCE(g.ba2,0) as ba2,'
      'COALESCE(g.ba3,0) as ba3,'
      'COALESCE(g.ba4,0) as ba4,'
      'COALESCE(g.ba5,0) as ba5,'
      'COALESCE(g.t1,0) as t1,'
      'COALESCE(g.t2,0) as t2,'
      'COALESCE(g.t3,0) as t3,'
      'COALESCE(g.t4,0) as t4,'
      'COALESCE(g.t5,0) as t5,'
      'COALESCE(g.t1_tetap,0) as t1_tetap,'
      'COALESCE(g.t2_tetap,0) as t2_tetap,'
      'COALESCE(g.t3_tetap,0) as t3_tetap,'
      'COALESCE(g.t4_tetap,0) as t4_tetap,'
      'COALESCE(g.t5_tetap,0) as t5_tetap,'
      'm.*,'
      'c.tglmulaidenda,'
      'c.tglmulaidenda2,'
      'c.tglmulaidenda3,'
      'c.tglmulaidenda4,'
      'c.rekair,'
      'p.flag,'
      'c.trf_dendatunggakan,'
      'c.trf_dendatunggakan2,'
      'c.trf_dendatunggakan3,'
      'c.trf_dendatunggakan4,'
      'c.trf_dendatunggakanperbulan,'
      'c.tglmulaidendaperbulan')
    Connection = DM.Conn
    Left = 320
    Top = 144
    object Qmirrorflagaktif: TStringField
      FieldName = 'flagaktif'
      Origin = 'flagaktif'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflaglunas: TStringField
      FieldName = 'flaglunas'
      Origin = 'c.flaglunas'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflagpublish: TStringField
      FieldName = 'flagpublish'
      Origin = 'c.flagpublish'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflagkoreksi: TStringField
      FieldName = 'flagkoreksi'
      Origin = 'c.flagkoreksi'
      FixedChar = True
      Size = 1
    end
    object Qmirrorstanlalu: TFloatField
      FieldName = 'stanlalu'
      Origin = 'c.stanlalu'
    end
    object Qmirrorstanskrg: TFloatField
      FieldName = 'stanskrg'
      Origin = 'c.stanskrg'
    end
    object Qmirrorstanangkat: TFloatField
      FieldName = 'stanangkat'
      Origin = 'c.stanangkat'
    end
    object Qmirrorkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
    object Qmirrorkodediameter: TStringField
      FieldName = 'kodediameter'
      Origin = 'c.kodediameter'
      Size = 50
    end
    object Qmirrorminpakai: TFloatField
      FieldName = 'minpakai'
      Origin = 'g.minpakai'
    end
    object Qmirrorxadministrasi: TFloatField
      FieldName = 'xadministrasi'
      Origin = 'xadministrasi'
    end
    object Qmirrorxpemeliharaan: TFloatField
      FieldName = 'xpemeliharaan'
      Origin = 'xpemeliharaan'
    end
    object Qmirrorxpelayanan: TFloatField
      FieldName = 'xpelayanan'
      Origin = 'xpelayanan'
    end
    object Qmirrorxretribusi: TFloatField
      FieldName = 'xretribusi'
      Origin = 'xretribusi'
    end
    object Qmirrorxairlimbah: TFloatField
      FieldName = 'xairlimbah'
      Origin = 'xairlimbah'
    end
    object Qmirrorxdendapakai0: TFloatField
      FieldName = 'xdendapakai0'
      Origin = 'xdendapakai0'
    end
    object Qmirrorbb1: TFloatField
      FieldName = 'bb1'
      Origin = 'bb1'
    end
    object Qmirrorbb2: TFloatField
      FieldName = 'bb2'
      Origin = 'bb2'
    end
    object Qmirrorbb3: TFloatField
      FieldName = 'bb3'
      Origin = 'bb3'
    end
    object Qmirrorbb4: TFloatField
      FieldName = 'bb4'
      Origin = 'bb4'
    end
    object Qmirrorba1: TFloatField
      FieldName = 'ba1'
      Origin = 'ba1'
    end
    object Qmirrorba2: TFloatField
      FieldName = 'ba2'
      Origin = 'ba2'
    end
    object Qmirrorba3: TFloatField
      FieldName = 'ba3'
      Origin = 'ba3'
    end
    object Qmirrorba4: TFloatField
      FieldName = 'ba4'
      Origin = 'ba4'
    end
    object Qmirrort1: TFloatField
      FieldName = 't1'
      Origin = 't1'
    end
    object Qmirrort2: TFloatField
      FieldName = 't2'
      Origin = 't2'
    end
    object Qmirrort3: TFloatField
      FieldName = 't3'
      Origin = 't3'
    end
    object Qmirrort4: TFloatField
      FieldName = 't4'
      Origin = 't4'
    end
    object Qmirrort1_tetap: TStringField
      FieldName = 't1_tetap'
      Origin = 't1_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort2_tetap: TStringField
      FieldName = 't2_tetap'
      Origin = 't2_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort3_tetap: TStringField
      FieldName = 't3_tetap'
      Origin = 't3_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort4_tetap: TStringField
      FieldName = 't4_tetap'
      Origin = 't4_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirroridx: TStringField
      FieldName = 'idx'
      Origin = 'm.idx'
      FixedChar = True
      Size = 1
    end
    object Qmirrorbatas1: TFloatField
      FieldName = 'batas1'
      Origin = 'm.batas1'
    end
    object Qmirrorbatas2: TFloatField
      FieldName = 'batas2'
      Origin = 'm.batas2'
    end
    object Qmirrorbatas3: TFloatField
      FieldName = 'batas3'
      Origin = 'm.batas3'
    end
    object Qmirrormeterai1: TFloatField
      FieldName = 'meterai1'
      Origin = 'm.meterai1'
    end
    object Qmirrormeterai2: TFloatField
      FieldName = 'meterai2'
      Origin = 'm.meterai2'
    end
    object Qmirrormeterai3: TFloatField
      FieldName = 'meterai3'
      Origin = 'm.meterai3'
    end
    object Qmirrortglmulaidenda: TDateField
      FieldName = 'tglmulaidenda'
      Origin = 'c.tglmulaidenda'
    end
    object Qmirrorpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'c.pakai'
    end
    object Qmirrorflagkirim: TStringField
      FieldName = 'flagkirim'
      Origin = 'c.flagkirim'
      FixedChar = True
      Size = 1
    end
    object Qmirrorrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'c.rekair'
    end
    object Qmirrornosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'c.nosamb'
      Size = 50
    end
    object Qmirrorzbiayapemakaian: TFloatField
      FieldName = 'zbiayapemakaian'
      Origin = 'c.biayapemakaian'
    end
    object Qmirrorzmeterai: TFloatField
      FieldName = 'zmeterai'
      Origin = 'c.meterai'
    end
    object Qmirrorzpemeliharaan: TFloatField
      FieldName = 'zpemeliharaan'
      Origin = 'c.pemeliharaan'
    end
    object Qmirrorzretribusi: TFloatField
      FieldName = 'zretribusi'
      Origin = 'c.retribusi'
    end
    object Qmirrorzadministrasi: TFloatField
      FieldName = 'zadministrasi'
      Origin = 'c.administrasi'
    end
    object Qmirrorzpelayanan: TFloatField
      FieldName = 'zpelayanan'
      Origin = 'c.pelayanan'
    end
    object Qmirrorzdendatunggakan: TFloatField
      FieldName = 'zdendatunggakan'
      Origin = 'c.dendatunggakan'
    end
    object Qmirrorflag: TStringField
      FieldName = 'flag'
      Origin = 'p.flag'
      Size = 50
    end
    object Qmirrortrf_dendatunggakan: TFloatField
      FieldName = 'trf_dendatunggakan'
      Origin = 'c.trf_dendatunggakan'
    end
    object Qmirrortrf_dendatunggakan2: TFloatField
      FieldName = 'trf_dendatunggakan2'
      Origin = 'c.trf_dendatunggakan2'
    end
    object Qmirrorbb5: TFloatField
      FieldName = 'bb5'
      Origin = 'bb5'
    end
    object Qmirrorba5: TFloatField
      FieldName = 'ba5'
      Origin = 'ba5'
    end
    object Qmirrort5: TFloatField
      FieldName = 't5'
      Origin = 't5'
    end
    object Qmirrort5_tetap: TStringField
      FieldName = 't5_tetap'
      Origin = 't5_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrortrf_admlain: TFloatField
      FieldName = 'trf_admlain'
      Origin = 'trf_admlain'
    end
    object Qmirrortrf_pemlain: TFloatField
      FieldName = 'trf_pemlain'
      Origin = 'trf_pemlain'
    end
    object Qmirrortglmulaidenda2: TDateField
      FieldName = 'tglmulaidenda2'
      Origin = 'c.tglmulaidenda2'
    end
    object Qmirrorzairlimbah: TFloatField
      FieldName = 'zairlimbah'
      Origin = 'c.airlimbah'
    end
    object Qmirrorzdendapakai0: TFloatField
      FieldName = 'zdendapakai0'
      Origin = 'c.dendapakai0'
    end
    object Qmirrorzadministrasilain: TFloatField
      FieldName = 'zadministrasilain'
      Origin = 'c.administrasilain'
    end
    object Qmirrorzpemeliharaanlain: TFloatField
      FieldName = 'zpemeliharaanlain'
      Origin = 'c.pemeliharaanlain'
    end
    object Qmirrorzretribusilain: TFloatField
      FieldName = 'zretribusilain'
      Origin = 'c.retribusilain'
    end
    object Qmirrortrf_retlain: TFloatField
      FieldName = 'trf_retlain'
      Origin = 'trf_retlain'
    end
    object Qmirrorxppn: TFloatField
      FieldName = 'xppn'
      Origin = 'xppn'
    end
    object Qmirrortglmulaidenda3: TDateField
      FieldName = 'tglmulaidenda3'
      Origin = 'c.tglmulaidenda3'
    end
    object Qmirrortrf_dendatunggakan3: TFloatField
      FieldName = 'trf_dendatunggakan3'
      Origin = 'c.trf_dendatunggakan3'
    end
    object Qmirrortrf_dendatunggakanperbulan: TFloatField
      FieldName = 'trf_dendatunggakanperbulan'
      Origin = 'c.trf_dendatunggakanperbulan'
    end
    object Qmirrortglmulaidendaperbulan: TDateField
      FieldName = 'tglmulaidendaperbulan'
      Origin = 'c.tglmulaidendaperbulan'
    end
    object Qmirrorxretribusipakai: TFloatField
      FieldName = 'xretribusipakai'
      Origin = 'xretribusipakai'
    end
    object Qmirrortglmulaidenda4: TDateField
      FieldName = 'tglmulaidenda4'
      Origin = 'c.tglmulaidenda4'
    end
    object Qmirrortrf_dendatunggakan4: TFloatField
      FieldName = 'trf_dendatunggakan4'
      Origin = 'c.trf_dendatunggakan4'
    end
  end
  object Qgol: TMyQuery
    SQLLock.Strings = (
      
        'SELECT "BALIK NAMA" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb' +
        ',c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.kodera' +
        'yon AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru ,b.`nomorba` AS nomorba FROM ' +
        'permohonan_balik_nama c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_balik_nama` b ON c.`nomor`=b.`nomorpermoho' +
        'nan` AND b.flaghapus="0" WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL'
      ''
      'UNION'
      ''
      ''
      
        'SELECT "RUBAH GOL" AS jenis,c.nomor AS nomor,c.nosamb AS nosamb,' +
        'c.nama AS nama,c.alamat AS alamat,c.kodegol AS kodegol,c.koderay' +
        'on AS koderayon,'
      
        'c.kodewil AS kodewil,c.keterangan AS keterangan,c.tanggal AS tan' +
        'ggal,c.lama AS lama,c.baru AS baru,b.`nomorba` AS nomorba FROM p' +
        'ermohonan_rubah_gol c '
      
        'LEFT JOIN nonair n ON c.`urutannonair`=n.`urutan` AND n.`flaghap' +
        'us`="0" LEFT JOIN `ba_rubah_gol` b ON c.`nomor`=b.`nomorpermohon' +
        'an` AND b.flaghapus="0"  WHERE c.`flaghapus`="0" AND (n.flagluna' +
        's="1" OR c.biaya=0) AND b.nomorba IS NULL;')
    Connection = DM.Conn
    Left = 696
    Top = 376
  end
  object QGantiMeter: TMyQuery
    SQLUpdate.Strings = (
      
        'SELECT c.nomorba AS nomor,c.nosamb AS nosamb,p.nama,p.alamat,p.k' +
        'odegol,p.koderayon,r.kodewil,"Ganti Meter" AS keterangan,'
      
        'c.tanggalba AS tanggal, c.nomorba,c.merkmeterbaru AS baru,c.merk' +
        'meterlama AS lama,"" AS norab,c.flagtemporari AS flag,'
      
        'c.serimeterlama,c.angkameterlama,c.ukuranlama,c.serimeterbaru,c.' +
        'ukuranbaru,c.angkameterbaru'
      
        'FROM `ba_ganti_meter` c LEFT JOIN pelanggan p ON p.nosamb = c.no' +
        'samb'
      'LEFT JOIN rayon r ON r.koderayon = p.koderayon'
      
        'LEFT JOIN permohonan_sambung_kembali s ON s.`nomor` = c.`nomorpe' +
        'rmohonan`'
      
        'WHERE c.flagprosesdata="0" AND c.flaghapus="0" AND c.nomorba LIK' +
        'E "%SAMBUNG KEMBALI%" AND s.`pelanggan`="AIR"')
    SQLRefresh.Strings = (
      
        'SELECT c.nomorba AS nomor,c.nosamb AS nosamb,p.nama,p.alamat,p.k' +
        'odegol,p.koderayon,r.kodewil,"Ganti Meter" AS keterangan,'
      
        'c.tanggalba AS tanggal, c.nomorba,c.merkmeterbaru AS baru,c.merk' +
        'meterlama AS lama,"" AS norab,c.flagtemporari as flag,'
      
        'c.serimeterlama,c.angkameterlama,c.ukuranlama,c.serimeterbaru,c.' +
        'ukuranbaru,c.angkameterbaru'
      
        'FROM `ba_ganti_meter` c LEFT JOIN pelanggan p ON p.nosamb = c.no' +
        'samb'
      'LEFT JOIN rayon r ON r.koderayon = p.koderayon'
      'WHERE c.flagprosesdata="0" AND c.nomorba like "%PENGADUAN%"')
    SQLLock.Strings = (
      
        'SELECT c.nomorba AS nomor,c.nosamb AS nosamb,p.nama,p.alamat,p.k' +
        'odegol,p.koderayon,r.kodewil,"Ganti Meter" AS keterangan,'
      
        'c.tanggalba AS tanggal, c.nomorba,c.merkmeterbaru AS baru,c.merk' +
        'meterlama AS lama,"" AS norab,c.flagtemporari as flag,'
      
        'c.serimeterlama,c.angkameterlama,c.ukuranlama,c.serimeterbaru,c.' +
        'ukuranbaru,c.angkameterbaru'
      
        'FROM `ba_ganti_meter` c LEFT JOIN pelanggan p ON p.nosamb = c.no' +
        'samb'
      'LEFT JOIN rayon r ON r.koderayon = p.koderayon'
      'WHERE c.flagprosesdata="0" AND c.nomorba like "%ROTASI MTR%"')
    Connection = Umain.host
    Left = 784
    Top = 456
  end
  object PopupMenu2: TPopupMenu
    Left = 1128
    Top = 216
    object PerbaruiData1: TMenuItem
      Caption = 'Perbarui Data'
      OnClick = PerbaruiData1Click
    end
  end
  object Qpel: TMyQuery
    SQLLock.Strings = (
      
        'SELECT c.nomorba AS nomor,c.nosamb AS nosamb,p.nama,p.alamat,p.k' +
        'odegol,p.koderayon,r.kodewil,"Ganti Meter" AS keterangan,'
      
        'c.tanggalba AS tanggal, c.nomorba,c.merkmeterbaru AS baru,c.merk' +
        'meterlama AS lama,"" AS norab,c.flagtemporari as flag,'
      
        'c.serimeterlama,c.angkameterlama,c.ukuranlama,c.serimeterbaru,c.' +
        'ukuranbaru,c.angkameterbaru'
      
        'FROM `ba_ganti_meter` c LEFT JOIN pelanggan p ON p.nosamb = c.no' +
        'samb'
      'LEFT JOIN rayon r ON r.koderayon = p.koderayon'
      'WHERE c.flagprosesdata="0"')
    Connection = DM.Conn
    Left = 928
    Top = 448
  end
  object Qgol1: TMyQuery
    Connection = DM.Conn
    Left = 840
    Top = 328
  end
  object Qdiameter: TMyQuery
    Connection = DM.Conn
    Left = 944
    Top = 336
  end
  object Qperiodeterbaru: TMyQuery
    SQLLock.Strings = (
      
        'SELECT c.nomorba AS nomor,c.nosamb AS nosamb,p.nama,p.alamat,p.k' +
        'odegol,p.koderayon,r.kodewil,"Ganti Meter" AS keterangan,'
      
        'c.tanggalba AS tanggal, c.nomorba,c.merkmeterbaru AS baru,c.merk' +
        'meterlama AS lama,"" AS norab,c.flagtemporari as flag,'
      
        'c.serimeterlama,c.angkameterlama,c.ukuranlama,c.serimeterbaru,c.' +
        'ukuranbaru,c.angkameterbaru'
      
        'FROM `ba_ganti_meter` c LEFT JOIN pelanggan p ON p.nosamb = c.no' +
        'samb'
      'LEFT JOIN rayon r ON r.koderayon = p.koderayon'
      'WHERE c.flagprosesdata="0"')
    Connection = DM.Conn
    Left = 1040
    Top = 424
  end
end