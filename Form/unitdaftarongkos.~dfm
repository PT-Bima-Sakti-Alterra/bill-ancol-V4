object udaftarongkos: Tudaftarongkos
  Left = 360
  Top = 109
  BorderStyle = bsNone
  Caption = 'udaftarongkos'
  ClientHeight = 642
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = cariClick
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel24: TRzPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 642
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 567
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DAFTAR ONGKOS'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid7: TcxGrid
      Left = 16
      Top = 80
      Width = 545
      Height = 542
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGridDBTableView5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGridDBTableView5CellDblClick
        DataController.DataSource = DScek
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = cxGridDBColumn21
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
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
        object cxGridDBColumn21: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kodeongkos'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object cxGridDBTableView5Column3: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'namaongkos'
          HeaderAlignmentHorz = taCenter
          Width = 184
        end
        object cxGridDBColumn23: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object cxGridDBColumn24: TcxGridDBColumn
          Caption = 'Harga @'
          DataBinding.FieldName = 'harga'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.#0'
          HeaderAlignmentHorz = taCenter
          Width = 108
        end
      end
      object cxGridLevel6: TcxGridLevel
        GridView = cxGridDBTableView5
      end
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 48
      Caption = 'Nama Ongkos'
      Transparent = True
    end
    object nama: TcxTextEdit
      Left = 104
      Top = 48
      Properties.MaxLength = 30
      Properties.OnChange = cariClick
      Properties.OnEditValueChanged = cariClick
      TabOrder = 3
      Width = 241
    end
    object cari: TcxButton
      Left = 352
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 4
      OnClick = cariClick
    end
    object panelqty: TRzPanel
      Left = 168
      Top = 240
      Width = 265
      Height = 249
      BorderOuter = fsFlat
      BorderColor = clWhite
      BorderWidth = 5
      TabOrder = 5
      Visible = False
      object cxLabel1: TcxLabel
        Left = 32
        Top = 32
        Caption = 'QTY :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -13
        Style.Font.Name = 'Open Sans Extrabold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object qty: TcxCurrencyEdit
        Left = 32
        Top = 56
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '#,##0.##0'
        Properties.EditFormat = '#,##0.##0'
        Properties.Nullable = False
        Properties.Nullstring = '0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseNullString = True
        Properties.UseThousandSeparator = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -40
        Style.Font.Name = 'Open Sans Extrabold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 201
      end
      object ok: TcxButton
        Left = 32
        Top = 188
        Width = 97
        Height = 30
        Caption = 'Simpan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = okClick
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
      end
      object no: TcxButton
        Left = 136
        Top = 188
        Width = 97
        Height = 30
        Caption = 'Batal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = False
        OnClick = noClick
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
      end
      object cxLabel3: TcxLabel
        Left = 32
        Top = 128
        Caption = 'KETERANGAN :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -13
        Style.Font.Name = 'Open Sans Extrabold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object keterangan: TcxComboBox
        Left = 32
        Top = 152
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.Items.Strings = (
          'STANDART'
          'LIMBAH')
        TabOrder = 5
        Width = 201
      end
    end
  end
  object Qcek: TMyQuery
    Connection = Umain.host
    Left = 256
    Top = 152
  end
  object DScek: TMyDataSource
    DataSet = Qcek
    Left = 320
    Top = 208
  end
  object ActionList1: TActionList
    Left = 392
    Top = 233
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = okClick
    end
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
      Color = 155
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Open Sans Extrabold'
      Font.Style = [fsBold]
      TextColor = clYellow
    end
  end
end
