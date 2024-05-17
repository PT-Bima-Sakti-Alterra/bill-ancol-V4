object udaftarjabatan: Tudaftarjabatan
  Left = 493
  Top = 117
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Hak Akses Jabatan'
  ClientHeight = 454
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = refreshClick
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 454
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 18
      Top = 82
      Width = 427
      Height = 351
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
        DataController.DataSource = DSjab
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBTableView1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Visible = False
          Width = 36
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Hak Akses'
          DataBinding.FieldName = 'hak_akses'
          HeaderAlignmentHorz = taCenter
          Width = 386
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object RzPanel16: TRzPanel
      Left = 6
      Top = 39
      Width = 452
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
        OnClick = koreksiClick
        Align = alLeft
        OptionsImage.ImageIndex = 22
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object tambah: TcxButton
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
        OnClick = refreshClick
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object hapus: TcxButton
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
        OnClick = hapusClick
        Align = alLeft
        OptionsImage.ImageIndex = 23
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 452
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DAFTAR HAK AKSES'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Qjab: TMyQuery
    Connection = DM.Conn
    Left = 40
    Top = 216
  end
  object DSjab: TMyDataSource
    DataSet = Qjab
    Left = 112
    Top = 200
  end
  object ActionList1: TActionList
    Left = 192
    Top = 160
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = refreshClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
  end
end
