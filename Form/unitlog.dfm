object ulog: Tulog
  Left = 367
  Top = 66
  BorderStyle = bsNone
  Caption = 'Histori Log'
  ClientHeight = 645
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'open sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 645
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object RzPanel7: TRzPanel
      Left = 6
      Top = 39
      Width = 757
      Height = 54
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      object cari: TcxTextEdit
        Left = 84
        Top = 13
        ParentFont = False
        Properties.OnChange = cariPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 653
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 13
        Caption = 'Pencarian :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object cxGrid2: TcxGrid
      Left = 24
      Top = 91
      Width = 721
      Height = 526
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
        DataController.DataSource = DSlog
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = cxGridDBColumn1
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
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        Styles.Selection = cxStyle1
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'TANGGAL'
          DataBinding.FieldName = 'tanggal'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd MMM YYYY hh:mm:ss'
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'TIPE'
          DataBinding.FieldName = 'tipe'
          HeaderAlignmentHorz = taCenter
          Width = 131
        end
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'URAIAN'
          DataBinding.FieldName = 'uraian'
          HeaderAlignmentHorz = taCenter
          Width = 441
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'passworduser'
          Visible = False
          VisibleForCustomization = False
          Width = 202
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Hak Akses'
          DataBinding.FieldName = 'hak_akses'
          Visible = False
          Width = 133
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Nomor ID'
          DataBinding.FieldName = 'noidentitas'
          Visible = False
          Width = 145
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 757
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
      TabOrder = 2
    end
  end
  object Qlog: TMyQuery
    Connection = DM.Conn
    Left = 248
    Top = 152
  end
  object DSlog: TMyDataSource
    DataSet = Qlog
    Left = 336
    Top = 216
  end
  object ActionList1: TActionList
    Left = 440
    Top = 144
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
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
  end
end
