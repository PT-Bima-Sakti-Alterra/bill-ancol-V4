object FRlogakses: TFRlogakses
  Left = 0
  Top = 0
  Width = 657
  Height = 490
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 8
      Top = 3
      Width = 155
      Height = 19
      Caption = 'Log Aktifitas Pusat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 400
      BlinkIntervalOn = 600
    end
  end
  object RzPanel1: TRzPanel
    Left = 454
    Top = 25
    Width = 203
    Height = 465
    Align = alRight
    BorderOuter = fsFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object cxLabel22: TcxLabel
      Left = 5
      Top = 8
      AutoSize = False
      Caption = 'Filter Pencarian'
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 104
    end
    object cxLabel2: TcxLabel
      Left = 6
      Top = 43
      Caption = 'Dari Tanggal :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object date1: TcxDateEdit
      Left = 94
      Top = 41
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 103
    end
    object cxLabel3: TcxLabel
      Left = 1
      Top = 67
      Caption = '   s/d Tanggal :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object date2: TcxDateEdit
      Left = 94
      Top = 65
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 103
    end
    object cekuser: TcxCheckBox
      Left = 9
      Top = 90
      Caption = 'User'
      TabOrder = 5
      Transparent = True
      OnClick = cekuserClick
      Width = 52
    end
    object user: TcxComboBox
      Left = 76
      Top = 89
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 121
    end
    object tampilkan: TcxButton
      Left = 106
      Top = 120
      Width = 89
      Height = 25
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = tampilkanClick
      OptionsImage.ImageIndex = 0
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 25
    Width = 454
    Height = 465
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object RzToolbar1: TRzToolbar
      Left = 0
      Top = 0
      Width = 454
      Height = 59
      AutoStyle = False
      Images = DM.small
      RowHeight = 55
      ButtonLayout = blGlyphTop
      ButtonWidth = 50
      ButtonHeight = 50
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      BorderInner = fsNone
      BorderOuter = fsFlat
      BorderSides = [sdTop]
      BorderWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsGradient
      ToolbarControls = (
        refresh
        RzSpacer1)
      object refresh: TRzToolButton
        Left = 4
        Top = 4
        ImageIndex = 2
        Layout = blGlyphTop
        Caption = 'Refresh'
        OnClick = tampilkanClick
      end
      object RzSpacer1: TRzSpacer
        Left = 54
        Top = 17
        Grooved = True
      end
    end
    object Gridhis: TcxGrid
      Left = 0
      Top = 59
      Width = 454
      Height = 406
      Align = alClient
      TabOrder = 1
      object GridhisDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = DSlog
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = GridhisDBTableView1waktu
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
        OptionsView.Footer = True
        OptionsView.GroupFooterMultiSummaries = True
        object GridhisDBTableView1waktu: TcxGridDBColumn
          Caption = 'Waktu'
          DataBinding.FieldName = 'waktu'
          Width = 144
        end
        object GridhisDBTableView1user: TcxGridDBColumn
          Caption = 'Pengguna'
          DataBinding.FieldName = 'user'
          Width = 114
        end
        object GridhisDBTableView1uraian: TcxGridDBColumn
          Caption = 'Uraian'
          DataBinding.FieldName = 'ket'
          Width = 521
        end
        object GridhisDBTableView1Column1: TcxGridDBColumn
          Caption = 'Target'
          DataBinding.FieldName = 'target'
          Visible = False
          Width = 94
        end
      end
      object GridhisLevel1: TcxGridLevel
        GridView = GridhisDBTableView1
      end
    end
  end
  object DSlog: TMyDataSource
    DataSet = Qlog
    Left = 104
    Top = 152
  end
  object Qlog: TMyQuery
    SQLRefresh.Strings = (
      'select * from logakses')
    Connection = DM.Conn
    Left = 192
    Top = 136
  end
end
