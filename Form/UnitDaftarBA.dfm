object UdaftarBA: TUdaftarBA
  Left = 705
  Top = 232
  BorderStyle = bsNone
  Caption = 'UdaftarBA'
  ClientHeight = 578
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 578
    Align = alClient
    BorderOuter = fsFlat
    TabOrder = 0
    object RzPanel8: TRzPanel
      Left = 1
      Top = 1
      Width = 721
      Height = 33
      Align = alTop
      BorderOuter = fsFlat
      BorderColor = clBlack
      Caption = 'DAFTAR BERITA ACARA'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 40
      Width = 705
      Height = 521
      TabOrder = 1
      LookAndFeel.SkinName = 'iMaginary'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = MyDataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Nomor'
          DataBinding.FieldName = 'nomor'
          HeaderAlignmentHorz = taCenter
          Width = 187
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 212
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 186
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qcek
    Left = 128
    Top = 200
  end
  object Qcek: TMyQuery
    Connection = Umain.host
    Left = 152
    Top = 120
  end
  object ActionList1: TActionList
    Left = 72
    Top = 104
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
