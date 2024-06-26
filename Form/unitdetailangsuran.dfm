object udetailangsuran: Tudetailangsuran
  Left = 174
  Top = 84
  BorderStyle = bsNone
  Caption = 'Detail Angsuran'
  ClientHeight = 569
  ClientWidth = 989
  Color = 9103615
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
    Width = 989
    Height = 569
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 3
    Color = 9103615
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 12
      Top = 48
      Width = 965
      Height = 505
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DScek
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Count : ,0.;(,0.)'
            Kind = skCount
            Column = cxGrid1DBTableView1Column1
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
            Column = cxGrid1DBTableView1Column5
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.Selection = cxStyle1
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Nomor'
          DataBinding.FieldName = 'nomor'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 138
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'No.Angsuran'
          DataBinding.FieldName = 'noangsuran'
          HeaderAlignmentHorz = taCenter
          Width = 172
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Termin'
          DataBinding.FieldName = 'termin'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 61
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Ket.Jenis'
          DataBinding.FieldName = 'ketjenis'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 146
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.EditFormat = ',0.;(,0.)'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'Lunas'
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
          Options.Editing = False
          Width = 49
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Kasir'
          DataBinding.FieldName = 'kasir'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 115
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Waktu Bayar'
          DataBinding.FieldName = 'waktubayar'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 162
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object RzPanel8: TRzPanel
      Left = 4
      Top = 4
      Width = 981
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'KOREKSI DETAIL ANGSURAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    SQL.Strings = (
      
        'select * FROm detailangsuran WHERE noangsuran=:noangsuran ORDER ' +
        'BY termin ASC')
    Left = 144
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'noangsuran'
      end>
  end
  object DScek: TMyDataSource
    DataSet = Qcek
    Left = 136
    Top = 256
  end
  object ActionList1: TActionList
    Left = 304
    Top = 104
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
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
