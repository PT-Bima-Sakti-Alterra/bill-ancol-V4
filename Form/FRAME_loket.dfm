object FRloket: TFRloket
  Left = 0
  Top = 0
  Width = 1129
  Height = 599
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 0
    Top = 25
    Width = 1129
    Height = 574
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object RzPanel4: TRzPanel
      Left = 0
      Top = 0
      Width = 1129
      Height = 574
      Align = alClient
      BorderOuter = fsNone
      Color = clWhite
      TabOrder = 0
      object RzPanel7: TRzPanel
        Left = 0
        Top = 0
        Width = 1129
        Height = 574
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 40
          Width = 1129
          Height = 534
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
            OnCustomDrawCell = gridCustomDrawCell
            DataController.DataSource = DSloket
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = gridColumn1
              end>
            DataController.Summary.SummaryGroups = <>
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
            object gridid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 36
            end
            object gridColumn1: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kodeloket'
              HeaderAlignmentHorz = taCenter
              Width = 112
            end
            object gridkelainan: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'loket'
              HeaderAlignmentHorz = taCenter
              Width = 267
            end
            object gridColumn4: TcxGridDBColumn
              Caption = 'No.Telp'
              DataBinding.FieldName = 'notelp'
              Visible = False
              Width = 80
            end
            object gridColumn5: TcxGridDBColumn
              Caption = 'HP'
              DataBinding.FieldName = 'nohp'
              Visible = False
              Width = 71
            end
            object gridColumn8: TcxGridDBColumn
              Caption = 'KD.WIl'
              DataBinding.FieldName = 'kodewillokasi'
              Visible = False
              HeaderHint = 'Wilayah Lokasi'
              Width = 50
            end
            object gridColumn9: TcxGridDBColumn
              Caption = 'Wilayah'
              DataBinding.FieldName = 'wilayah'
              HeaderAlignmentHorz = taCenter
              HeaderHint = 'Wilayah Lokasi'
              Width = 136
            end
            object gridColumn6: TcxGridDBColumn
              Caption = 'Penanggung Jawab'
              DataBinding.FieldName = 'penanggungjawab'
              Visible = False
              Width = 111
            end
            object gridColumn2: TcxGridDBColumn
              Caption = 'Serial Gate'
              DataBinding.FieldName = 'serialgate'
              Visible = False
              Width = 101
            end
            object gridColumn3: TcxGridDBColumn
              Caption = 'Alamat'
              DataBinding.FieldName = 'alamat'
              HeaderAlignmentHorz = taCenter
              Width = 211
            end
            object gridaktif: TcxGridDBColumn
              DataBinding.FieldName = 'aktif'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = grid
          end
        end
        object RzPanel18: TRzPanel
          Left = 0
          Top = 0
          Width = 1129
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
          object koreksi: TcxButton
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
            TabOrder = 0
            TabStop = False
            OnClick = koreksiClick
            Align = alLeft
            OptionsImage.ImageIndex = 22
            OptionsImage.Images = DM.png24
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Transparent = True
          end
          object tambah: TcxButton
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
          object hapus: TcxButton
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
            OnClick = hapusClick
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
  object RzPanel10: TRzPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR LOKET'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Qloket: TMyQuery
    Connection = DM.Conn
    Left = 416
    Top = 40
  end
  object DSloket: TMyDataSource
    DataSet = Qloket
    Left = 112
    Top = 200
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
  object Qhost: TMyQuery
    Connection = Umain.host
    Left = 120
    Top = 112
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
