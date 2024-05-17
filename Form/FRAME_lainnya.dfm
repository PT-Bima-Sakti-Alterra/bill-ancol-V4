object FRlainnya: TFRlainnya
  Left = 0
  Top = 0
  Width = 1136
  Height = 630
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1136
    Height = 630
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 1136
      Height = 630
      Align = alClient
      Color = clBtnFace
      Focusable = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 626
      ClientRectLeft = 4
      ClientRectRight = 1132
      ClientRectTop = 30
      object cxTabSheet1: TcxTabSheet
        Caption = 'Merk Meteran'
        ImageIndex = 0
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 1128
          Height = 596
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 70
            Width = 1128
            Height = 526
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'iMaginary'
            object cxGrid1DBTableView1: TcxGridDBTableView
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
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              DataController.DataSource = Dmerk
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGrid1DBTableView1merk
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
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Selection = cxStyle1
              object cxGrid1DBTableView1id: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 42
              end
              object cxGrid1DBTableView1merk: TcxGridDBColumn
                Caption = 'Merk Water Meter'
                DataBinding.FieldName = 'merk'
                HeaderAlignmentHorz = taCenter
                Width = 313
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object RzPanel16: TRzPanel
            Left = 0
            Top = 30
            Width = 1128
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object koreksi_merk: TcxButton
              Left = 160
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = koreksi_merkClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambah_merk: TcxButton
              Left = 80
              Top = 0
              Width = 80
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
              OnClick = tambah_merkClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refresh_merk: TcxButton
              Left = 0
              Top = 0
              Width = 80
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
              OnClick = refresh_merkClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapus_merk: TcxButton
              Left = 240
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
              TabOrder = 3
              TabStop = False
              OnClick = hapus_merkClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
          object RzPanel10: TRzPanel
            Left = 0
            Top = 0
            Width = 1128
            Height = 30
            Align = alTop
            BorderOuter = fsNone
            Caption = 'DAFTAR MERK METERAN'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Sumber Air'
        ImageIndex = 1
        object RzPanel6: TRzPanel
          Left = 0
          Top = 0
          Width = 1128
          Height = 597
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxGrid2: TcxGrid
            Left = 0
            Top = 70
            Width = 1128
            Height = 527
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
              OnCellDblClick = cxGridDBTableView1CellDblClick
              DataController.DataSource = DSsumberair
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGridDBColumn2
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
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Selection = cxStyle1
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 42
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Sumber Air'
                DataBinding.FieldName = 'sumberair'
                HeaderAlignmentHorz = taCenter
                Width = 343
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object RzPanel3: TRzPanel
            Left = 0
            Top = 30
            Width = 1128
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object koreksi_sumber: TcxButton
              Left = 160
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = koreksi_sumberClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambah_sumber: TcxButton
              Left = 80
              Top = 0
              Width = 80
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
              OnClick = tambah_sumberClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refresh_sumber: TcxButton
              Left = 0
              Top = 0
              Width = 80
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
              OnClick = refresh_sumberClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapus_sumber: TcxButton
              Left = 240
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
              TabOrder = 3
              TabStop = False
              OnClick = hapus_sumberClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
          object RzPanel5: TRzPanel
            Left = 0
            Top = 0
            Width = 1128
            Height = 30
            Align = alTop
            BorderOuter = fsNone
            Caption = 'SUMBER AIR'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Kolektif Penagihan'
        ImageIndex = 2
        object RzPanel11: TRzPanel
          Left = 0
          Top = 0
          Width = 1128
          Height = 597
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzPanel4: TRzPanel
            Left = 0
            Top = 30
            Width = 1128
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
            object koreksi_kol: TcxButton
              Left = 160
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = koreksi_kolClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambah_kol: TcxButton
              Left = 80
              Top = 0
              Width = 80
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
              OnClick = tambah_kolClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refresh_kol: TcxButton
              Left = 0
              Top = 0
              Width = 80
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
              OnClick = refresh_kolClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapus_kol: TcxButton
              Left = 240
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
              TabOrder = 3
              TabStop = False
              OnClick = hapus_kolClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
          object cxGrid3: TcxGrid
            Left = 0
            Top = 70
            Width = 1128
            Height = 527
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView2: TcxGridDBTableView
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
              OnCellDblClick = cxGridDBTableView2CellDblClick
              DataController.DataSource = DSkolektif
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGrid1DBTableView1kelainan
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
              Styles.Selection = cxStyle1
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 36
              end
              object cxGrid1DBTableView1kelainan: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kodekolektif'
                HeaderAlignmentHorz = taCenter
                Width = 107
              end
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                Caption = 'Kolektif'
                DataBinding.FieldName = 'kolektif'
                HeaderAlignmentHorz = taCenter
                Width = 260
              end
              object cxGrid1DBTableView1Column2: TcxGridDBColumn
                Caption = 'Keterangan'
                DataBinding.FieldName = 'ket'
                HeaderAlignmentHorz = taCenter
                Width = 276
              end
              object cxGridDBTableView2Column1: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                Width = 317
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object RzPanel7: TRzPanel
            Left = 0
            Top = 0
            Width = 1128
            Height = 30
            Align = alTop
            BorderOuter = fsNone
            Caption = 'KOLEKTIF PENAGIHAN'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Kepemilikan Bangunan'
        ImageIndex = 3
        object RzPanel15: TRzPanel
          Left = 0
          Top = 0
          Width = 1132
          Height = 595
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxGrid4: TcxGrid
            Left = 0
            Top = 70
            Width = 1132
            Height = 525
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView3: TcxGridDBTableView
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
              OnCellDblClick = cxGridDBTableView3CellDblClick
              DataController.DataSource = DSkepemilikan
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGridDBColumn5
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Selection = cxStyle1
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 42
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Kepemilkan'
                DataBinding.FieldName = 'kepemilikanbangunan'
                HeaderAlignmentHorz = taCenter
                Width = 292
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
          object RzPanel8: TRzPanel
            Left = 0
            Top = 30
            Width = 1132
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object koreksi_kep: TcxButton
              Left = 160
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              OnClick = koreksi_kepClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambah_kep: TcxButton
              Left = 80
              Top = 0
              Width = 80
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
              OnClick = tambah_kepClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refresh_kep: TcxButton
              Left = 0
              Top = 0
              Width = 80
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
              OnClick = refresh_kepClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapus_kep: TcxButton
              Left = 240
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
              TabOrder = 3
              TabStop = False
              OnClick = hapus_kepClick
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
          object RzPanel12: TRzPanel
            Left = 0
            Top = 0
            Width = 1132
            Height = 30
            Align = alTop
            BorderOuter = fsNone
            Caption = 'KEPEMILIKAN BANGUNAN'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Paraf Laporan'
        ImageIndex = 4
        object RzPanel26: TRzPanel
          Left = 0
          Top = 0
          Width = 1132
          Height = 595
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxGrid5: TcxGrid
            Left = 0
            Top = 70
            Width = 1132
            Height = 525
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.SkinName = 'iMaginary'
            object cxGridDBTableView4: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = False
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = True
              Navigator.Buttons.Filter.Visible = False
              Navigator.Visible = True
              DataController.DataSource = Dpejabat
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGridDBColumn6
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              Styles.Selection = cxStyle1
              object cxGrid1DBTableView1kode: TcxGridDBColumn
                DataBinding.FieldName = 'kode'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Kode'
                DataBinding.FieldName = 'kode'
                HeaderAlignmentHorz = taCenter
                Width = 70
              end
              object cxGridDBTableView4Column1: TcxGridDBColumn
                Caption = 'Ket1'
                DataBinding.FieldName = 'ket1'
                HeaderAlignmentHorz = taCenter
                Width = 99
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Jabatan 1'
                DataBinding.FieldName = 'jab1'
                HeaderAlignmentHorz = taCenter
                Width = 83
              end
              object cxGrid1DBTableView1nik1: TcxGridDBColumn
                Caption = 'Nik 1'
                DataBinding.FieldName = 'nik1'
                HeaderAlignmentHorz = taCenter
                Width = 85
              end
              object cxGrid1DBTableView1nama1: TcxGridDBColumn
                Caption = 'Nama 1'
                DataBinding.FieldName = 'nama1'
                HeaderAlignmentHorz = taCenter
                Width = 96
              end
              object cxGridDBTableView4Column2: TcxGridDBColumn
                Caption = 'Ket2'
                DataBinding.FieldName = 'ket2'
                HeaderAlignmentHorz = taCenter
                Width = 86
              end
              object cxGrid1DBTableView1Column3: TcxGridDBColumn
                Caption = 'Jabatan 2'
                DataBinding.FieldName = 'jab2'
                HeaderAlignmentHorz = taCenter
                Width = 97
              end
              object cxGrid1DBTableView1nik2: TcxGridDBColumn
                Caption = 'Nik 2'
                DataBinding.FieldName = 'nik2'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxGrid1DBTableView1nama2: TcxGridDBColumn
                Caption = 'Nama 2'
                DataBinding.FieldName = 'nama2'
                HeaderAlignmentHorz = taCenter
                Width = 110
              end
              object cxGridDBTableView4Column3: TcxGridDBColumn
                Caption = 'Ket3'
                DataBinding.FieldName = 'ket3'
                HeaderAlignmentHorz = taCenter
                Width = 84
              end
              object cxGrid1DBTableView1Column4: TcxGridDBColumn
                Caption = 'Jabatan 3'
                DataBinding.FieldName = 'jab3'
                HeaderAlignmentHorz = taCenter
                Width = 105
              end
              object cxGrid1DBTableView1nik3: TcxGridDBColumn
                Caption = 'Nik 3'
                DataBinding.FieldName = 'nik3'
                HeaderAlignmentHorz = taCenter
                Width = 91
              end
              object cxGrid1DBTableView1nama3: TcxGridDBColumn
                Caption = 'Nama 3'
                DataBinding.FieldName = 'nama3'
                HeaderAlignmentHorz = taCenter
                Width = 107
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView4
            end
          end
          object RzPanel9: TRzPanel
            Left = 0
            Top = 30
            Width = 1132
            Height = 40
            Align = alTop
            BorderOuter = fsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object koreksi_lap: TcxButton
              Left = 160
              Top = 0
              Width = 80
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
              TabOrder = 0
              TabStop = False
              Visible = False
              OnClick = koreksi_lapClick
              Align = alLeft
              OptionsImage.ImageIndex = 22
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object tambah_lap: TcxButton
              Left = 80
              Top = 0
              Width = 80
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
              Visible = False
              OnClick = tambah_lapClick
              Align = alLeft
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object refresh_lap: TcxButton
              Left = 0
              Top = 0
              Width = 80
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
              OnClick = refresh_lapClick
              Align = alLeft
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
            object hapus_lap: TcxButton
              Left = 240
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
              TabOrder = 3
              TabStop = False
              Visible = False
              Align = alLeft
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = DM.png24
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Transparent = True
            end
          end
          object RzPanel13: TRzPanel
            Left = 0
            Top = 0
            Width = 1132
            Height = 30
            Align = alTop
            BorderOuter = fsNone
            Caption = 'PARAF LAPORAN'
            Color = 20966
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Kelainan Bacameter'
        ImageIndex = 5
        object RzPanel22: TRzPanel
          Left = 0
          Top = 0
          Width = 1128
          Height = 596
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object RzToolbar6: TRzToolbar
            Left = 0
            Top = 0
            Width = 1128
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
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            GradientColorStyle = gcsCustom
            GradientColorStop = clWhite
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            ToolbarControls = (
              refresh_baca
              RzSpacer21
              tambah_baca
              RzSpacer22
              koreksi_baca
              RzSpacer23
              hapus_baca
              RzSpacer24)
            object refresh_baca: TRzToolButton
              Left = 4
              Top = 4
              ImageIndex = 41
              Layout = blGlyphTop
              Caption = 'Refresh'
              OnClick = refresh_bacaClick
            end
            object tambah_baca: TRzToolButton
              Left = 62
              Top = 4
              ImageIndex = 36
              Layout = blGlyphTop
              Caption = 'Tambah'
            end
            object koreksi_baca: TRzToolButton
              Left = 120
              Top = 4
              ImageIndex = 5
              Layout = blGlyphTop
              Caption = 'Koreksi'
            end
            object hapus_baca: TRzToolButton
              Left = 178
              Top = 4
              ImageIndex = 49
              Layout = blGlyphTop
              Caption = 'Hapus'
              OnClick = hapus_bacaClick
            end
            object RzSpacer21: TRzSpacer
              Left = 54
              Top = 17
              Grooved = True
            end
            object RzSpacer22: TRzSpacer
              Left = 112
              Top = 17
              Grooved = True
            end
            object RzSpacer23: TRzSpacer
              Left = 170
              Top = 17
              Grooved = True
            end
            object RzSpacer24: TRzSpacer
              Left = 228
              Top = 17
              Grooved = True
            end
          end
          object cxGrid6: TcxGrid
            Left = 0
            Top = 59
            Width = 1128
            Height = 537
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Open Sans Semibold'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object cxGridDBTableView5: TcxGridDBTableView
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
              OnCellDblClick = cxGridDBTableView5CellDblClick
              DataController.DataSource = Dkelainan
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGridDBColumn9
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
              Styles.Selection = cxStyle1
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 36
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = 'Kelainan Pembacaan Meter'
                DataBinding.FieldName = 'kelainan'
                Width = 236
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView5
            end
          end
        end
      end
      object tabkhusus: TcxTabSheet
        Caption = 'Pengaturan Khusus'
        ImageIndex = 6
        TabVisible = False
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1227
          Height = 566
          Align = alClient
          BorderStyle = cxcbsNone
          TabOrder = 0
          object cxGrid7DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DSset
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            object cxGrid7DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'selisihbcmeter'
              Width = 126
            end
            object cxGrid7DBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'ppndaritotal'
              Width = 106
            end
            object cxGrid7DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'auto_cek_samb_dan_lpp'
              Width = 171
            end
            object cxGrid7DBTableView1Column4: TcxGridDBColumn
              DataBinding.FieldName = 'timer_auto_cek_samb_dan_lpp'
              Width = 224
            end
            object cxGrid7DBTableView1Column5: TcxGridDBColumn
              DataBinding.FieldName = 'headerreport1'
              Width = 182
            end
            object cxGrid7DBTableView1Column6: TcxGridDBColumn
              DataBinding.FieldName = 'headerreport2'
              Width = 154
            end
            object cxGrid7DBTableView1Column7: TcxGridDBColumn
              DataBinding.FieldName = 'footerkota'
              Width = 144
            end
            object cxGrid7DBTableView1Column8: TcxGridDBColumn
              DataBinding.FieldName = 'hostloket'
              Width = 117
            end
            object cxGrid7DBTableView1Column9: TcxGridDBColumn
              DataBinding.FieldName = 'userloket'
              Width = 101
            end
            object cxGrid7DBTableView1Column10: TcxGridDBColumn
              DataBinding.FieldName = 'portloket'
            end
            object cxGrid7DBTableView1Column11: TcxGridDBColumn
              DataBinding.FieldName = 'dbloket'
              Width = 126
            end
          end
          object cxGrid7Level1: TcxGridLevel
            GridView = cxGrid7DBTableView1
          end
        end
      end
    end
  end
  object Dmerk: TMyDataSource
    DataSet = Qmerk
    Left = 104
    Top = 224
  end
  object Qmerk: TMyQuery
    Connection = DM.Conn
    Left = 56
    Top = 232
  end
  object ActionList1: TActionList
    Left = 344
    Top = 304
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16473
      OnExecute = Action3Execute
    end
  end
  object DSsumberair: TMyDataSource
    DataSet = Qsumberair
    Left = 152
    Top = 408
  end
  object Qsumberair: TMyQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from sumberair')
    Left = 80
    Top = 360
  end
  object Qkolektif: TMyQuery
    Connection = DM.Conn
    Left = 272
    Top = 256
  end
  object DSkolektif: TMyDataSource
    DataSet = Qkolektif
    Left = 336
    Top = 224
  end
  object DSkepemilikan: TMyDataSource
    DataSet = Qkepemilikan
    Left = 136
    Top = 504
  end
  object Qkepemilikan: TMyQuery
    Connection = DM.Conn
    Left = 72
    Top = 520
  end
  object Qkelainan: TMyQuery
    Connection = DM.Conn
    SQL.Strings = (
      'Select * from kelainan')
    Left = 640
    Top = 224
    object Qkelainanid: TIntegerField
      FieldName = 'id'
    end
    object Qkelainankelainan: TStringField
      FieldName = 'kelainan'
      Size = 50
    end
  end
  object Dkelainan: TMyDataSource
    DataSet = Qkelainan
    Left = 640
    Top = 296
  end
  object Qpejabat: TMyQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from paraflaporan')
    Left = 360
    Top = 120
  end
  object Dpejabat: TMyDataSource
    DataSet = Qpejabat
    Left = 560
    Top = 208
  end
  object Qset: TMyQuery
    Connection = DM.Conn
    Left = 176
    Top = 152
  end
  object DSset: TMyDataSource
    DataSet = Qset
    Left = 216
    Top = 136
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
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
end
