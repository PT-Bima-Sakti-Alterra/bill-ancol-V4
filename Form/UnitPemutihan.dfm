object UTpemutihan: TUTpemutihan
  Left = 772
  Top = 165
  BorderStyle = bsNone
  Caption = 'UTpemutihan'
  ClientHeight = 409
  ClientWidth = 588
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
    Width = 588
    Height = 409
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 576
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA PEMUTIHAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      GradientColorStart = 20966
      GradientColorStop = 19157
      ParentFont = False
      TabOrder = 0
    end
    object ok: TcxButton
      Left = 16
      Top = 360
      Width = 129
      Height = 33
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object no: TcxButton
      Left = 151
      Top = 360
      Width = 130
      Height = 33
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 56
      Width = 257
      Height = 81
      BorderOuter = fsFlatRounded
      Color = 16316664
      TabOrder = 3
      object cxButton1: TcxButton
        Left = 152
        Top = 35
        Width = 81
        Height = 25
        Caption = 'Cari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = cxButton1Click
        OptionsImage.ImageIndex = 20
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
      end
      object nosamb: TcxTextEdit
        Left = 16
        Top = 36
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 129
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 14
        Caption = 'No.Samb'
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
    end
    object Gridrek: TcxGrid
      Left = 286
      Top = 80
      Width = 283
      Height = 313
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      LookAndFeel.SkinName = 'Office2013White'
      object Gtvrek: TcxGridDBTableView
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
        OnCellDblClick = GtvrekCellDblClick
        DataController.DataSource = DSdata
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = ',0.;-,0.'
            Kind = skCount
            Column = Gtvrekbulan
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = Gtvrekrekair
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
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        object GtvrekRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object Gtvrekpilih: TcxGridDBColumn
          Caption = 'Pilih'
          DataBinding.FieldName = 'pilih'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 16
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
        object Gtvrekperiode: TcxGridDBColumn
          Caption = 'Periode'
          DataBinding.FieldName = 'periode'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 57
        end
        object Gtvrekbulan: TcxGridDBColumn
          Caption = 'Bulan'
          DataBinding.FieldName = 'bulan'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object Gtvreknosamb: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object Gtvrekrekair: TcxGridDBColumn
          Caption = 'Rek.Air'
          DataBinding.FieldName = 'rekair'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
      end
      object GridrekLevel1: TcxGridLevel
        GridView = Gtvrek
      end
    end
    object RzPanel3: TRzPanel
      Left = 16
      Top = 144
      Width = 257
      Height = 177
      BorderOuter = fsFlatRounded
      Color = 16316664
      TabOrder = 5
      object cxLabel1: TcxLabel
        Left = 16
        Top = 14
        Caption = 'Nama'
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
      object nama: TcxTextEdit
        Left = 16
        Top = 36
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 217
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 62
        Caption = 'Alamat'
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
      object alamat: TcxTextEdit
        Left = 16
        Top = 84
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 217
      end
      object cxLabel4: TcxLabel
        Left = 16
        Top = 110
        Caption = 'Status'
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
      object status: TcxTextEdit
        Left = 16
        Top = 132
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 217
      end
    end
    object cxLabel5: TcxLabel
      Left = 288
      Top = 51
      Caption = 'Piutang..'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.TextStyle = []
      Transparent = True
    end
  end
  object data_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 232
    object data_pilih: TStringField
      FieldName = 'pilih'
      Size = 1
    end
    object data_periode: TStringField
      FieldName = 'periode'
      Size = 6
    end
    object data_bulan: TStringField
      FieldName = 'bulan'
    end
    object data_nosamb: TStringField
      FieldName = 'nosamb'
      Size = 50
    end
    object data_rekair: TCurrencyField
      FieldName = 'rekair'
    end
    object data_kode: TStringField
      FieldName = 'kode'
      Size = 100
    end
    object data_stanlalu: TCurrencyField
      FieldName = 'stanlalu'
    end
    object data_stanskrg: TCurrencyField
      FieldName = 'stanskrg'
    end
    object data_stanangkat: TCurrencyField
      FieldName = 'stanangkat'
    end
    object data_pakai: TCurrencyField
      FieldName = 'pakai'
    end
    object data_biayapemakaian: TCurrencyField
      FieldName = 'biayapemakaian'
    end
    object data_administrasi: TCurrencyField
      FieldName = 'administrasi'
    end
    object data_pemeliharaan: TCurrencyField
      FieldName = 'pemeliharaan'
    end
    object data_retribusi: TCurrencyField
      FieldName = 'retribusi'
    end
    object data_pelayanan: TCurrencyField
      FieldName = 'pelayanan'
    end
    object data_kodegol: TStringField
      FieldName = 'kodegol'
      Size = 100
    end
    object data_koderayon: TStringField
      FieldName = 'koderayon'
      Size = 100
    end
    object data_kodekelurahan: TStringField
      FieldName = 'kodekelurahan'
      Size = 100
    end
  end
  object DSdata: TMyDataSource
    DataSet = data_
    Left = 464
    Top = 304
  end
  object MyDataSource1: TMyDataSource
    Left = 328
    Top = 288
  end
  object ActionList1: TActionList
    Left = 368
    Top = 176
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = okClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = noClick
    end
  end
end
