object urekapmemopemutusan: Turekapmemopemutusan
  Left = 361
  Top = 426
  BorderStyle = bsNone
  Caption = 'urekapmemopemutusan'
  ClientHeight = 607
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 607
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cxGrid2: TcxGrid
      Left = 24
      Top = 77
      Width = 953
      Height = 460
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object gtv1: TcxGridDBTableView
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
        DataController.DataSource = MyDataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
            Column = gtv1Column2
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = gtv1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        object gtv1RecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          Width = 71
        end
        object gtv1Column1: TcxGridDBColumn
          Caption = 'Surat'
          DataBinding.FieldName = 'nomor'
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object gtv1Column7: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object gtv1nosamb: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 61
        end
        object gtv1nama: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 163
        end
        object gtv1alamat: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 158
        end
        object gtv1Column4: TcxGridDBColumn
          Caption = 'Gol'
          DataBinding.FieldName = 'kodegol'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object gtv1Column11: TcxGridDBColumn
          Caption = 'Rek.Air'
          DataBinding.FieldName = 'rekair'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object gtv1Column5: TcxGridDBColumn
          Caption = 'Denda'
          DataBinding.FieldName = 'denda'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object gtv1Column6: TcxGridDBColumn
          Caption = 'OTS'
          DataBinding.FieldName = 'ots'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object gtv1Column8: TcxGridDBColumn
          Caption = 'Angsuran'
          DataBinding.FieldName = 'angsuran'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object gtv1Column9: TcxGridDBColumn
          Caption = 'Jaminan'
          DataBinding.FieldName = 'jaminan'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object gtv1Column10: TcxGridDBColumn
          Caption = 'Lainnya'
          DataBinding.FieldName = 'lainnya'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object gtv1Column2: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object gtv1Column3: TcxGridDBColumn
          Caption = 'Alasan'
          DataBinding.FieldName = 'alasan'
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gtv1
      end
    end
    object RzPanel2: TRzPanel
      Left = 5
      Top = 38
      Width = 991
      Height = 39
      Align = alTop
      BorderOuter = fsNone
      Color = 9103615
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 16
        Top = 8
        Caption = 'Tanggal'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object tanggal1: TcxDateEdit
        Left = 72
        Top = 8
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object tanggal2: TcxDateEdit
        Left = 224
        Top = 8
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 200
        Top = 8
        Caption = 's/d'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object ceknosamb: TcxCheckBox
        Left = 376
        Top = 8
        Caption = 'No.Samb'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Transparent = True
        OnClick = ceknosambClick
        Width = 73
      end
      object nomor: TcxTextEdit
        Left = 456
        Top = 8
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 121
      end
      object cxButton3: TcxButton
        Left = 594
        Top = 6
        Width = 160
        Height = 27
        Caption = 'Tampilkan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = False
        OnClick = cxButton3Click
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
      end
    end
    object RzPanel3: TRzPanel
      Left = 5
      Top = 545
      Width = 991
      Height = 57
      Align = alBottom
      BorderOuter = fsFlat
      Color = 9103615
      TabOrder = 2
      object RzLabel1: TRzLabel
        Left = 16
        Top = -1
        Width = 312
        Height = 45
        Caption = 
          '- Kode TTD : MEMOPEMUTUSAN'#13'- Percetakan Printer Dot Matrix'#13'- Con' +
          'tinous Form Ukuran Kertas (PxL) : 27,90 cm x 35,20 cm'
        Transparent = True
        BlinkIntervalOff = 700
        BlinkIntervalOn = 600
      end
      object cxButton2: TcxButton
        Left = 667
        Top = 3
        Width = 161
        Height = 41
        Caption = 'Cetak'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = cxButton2Click
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
      end
      object cxButton1: TcxButton
        Left = 835
        Top = 3
        Width = 137
        Height = 41
        Caption = 'Keluar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = cxButton1Click
        OptionsImage.ImageIndex = 21
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
      end
    end
    object RzPanel20: TRzPanel
      Left = 5
      Top = 5
      Width = 991
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'REKAP MEMO PEMUTUSAN'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    Left = 176
    Top = 265
  end
  object MyDataSource1: TMyDataSource
    DataSet = Qcek
    Left = 312
    Top = 257
  end
  object ActionList1: TActionList
    Left = 472
    Top = 273
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton3Click
    end
  end
  object report: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42860.523929652800000000
    ReportOptions.LastChange = 42860.565586678200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 193
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 87.094623970000000000
        Top = 306.141930000000000000
        Width = 1254.803960000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object reknosamb: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."norekening"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 53.913420000000000000
          Top = 1.000000000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 114.385900000000000000
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 5.779530000000000000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'nomor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."nomor"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 597.945270000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 435.732530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 489.645950000000000000
          Top = 0.779530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."rekair3"]')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 545.252320000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."nosamb"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 384.512060000000000000
          Top = 0.779530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kodegol"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'dendaots'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."dendaots"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 657.638220000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 713.669760000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."rekair2"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 659.417750000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."rekair1"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 770.803650000000000000
          Top = 0.779530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 865.732840000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 950.441560000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 1001.575450000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 1080.945580000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 1160.315710000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 1239.685840000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."rekairlain"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 714.331170000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."jumlahlain"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 124.102350000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo18: TfrxMemoView
          Left = 423.307360000000000000
          Top = 64.252010000000000000
          Width = 340.157700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR USULAN MEMO PEMUTUSAN SAMBUNGAN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 336.378170000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'PEMERINTAH KOTAMADIA DATI II YOGYAKARTA'
            'PERUSAHAAN DAERAH AIR MINUM "TIRTAMARTA"')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Top = 38.795300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'Y O G Y A K A R T A')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 445.984540000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL :')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          Left = 555.590910000000000000
          Top = 90.708720000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Memo.UTF8 = (
            'TANGGAL :')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 80.093081150000000000
        Top = 166.299320000000000000
        Width = 1254.803960000000000000
        object Memo5: TfrxMemoView
          Top = 19.322820000000000000
          Width = 54.910891810000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMOR MEMO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 19.771490000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 771.520100000000000000
          Top = 19.322820000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 384.393940000000000000
          Top = 19.322820000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 866.024120000000000000
          Top = 19.322820000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line118: TfrxLineView
          Left = 489.527830000000000000
          Top = 19.322820000000000000
          Height = 60.770261150000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 545.409710000000000000
          Top = 49.913420000000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Top = 19.000000000000000000
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line49: TfrxLineView
          Left = 114.385900000000000000
          Top = 20.031540000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 436.086890000000000000
          Top = 19.322820000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 54.133890000000000000
          Top = 20.322820000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 491.338900000000000000
          Top = 49.133890000000000000
          Width = 279.685220000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 492.882190000000000000
          Top = 52.133890000000000000
          Width = 50.240619660000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BULAN LAIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line34: TfrxLineView
          Left = 598.000310000000000000
          Top = 49.692950000000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          Left = 546.236550000000000000
          Top = 52.913420000000000000
          Width = 50.240619660000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN 3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line36: TfrxLineView
          Left = 657.575140000000000000
          Top = 50.692950000000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 712.724800000000000000
          Top = 49.913420000000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 58.690421810000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TM'
            'KNTRL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 114.929190000000000000
          Top = 22.677180000000000000
          Width = 266.564571810000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA'
            ''
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 387.055350000000000000
          Top = 22.677180000000000000
          Width = 47.351831810000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GOL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 439.968770000000000000
          Top = 21.897650000000000000
          Width = 47.351831810000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA'
            '&'
            'O T S')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 495.118430000000000000
          Top = 18.897650000000000000
          Width = 274.123631810000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REKENING BULAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 600.945270000000000000
          Top = 52.913420000000000000
          Width = 54.020149660000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN 2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 659.181510000000000000
          Top = 52.913420000000000000
          Width = 54.020149660000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BLN 1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 714.331170000000000000
          Top = 52.913420000000000000
          Width = 57.799679660000000000
          Height = 26.754491150000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAINNYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 88.926661810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 868.071430000000000000
          Top = 18.897650000000000000
          Width = 77.588071810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TGL.TUTUP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          Left = 950.205320000000000000
          Top = 18.897650000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Left = 952.441560000000000000
          Top = 18.897650000000000000
          Width = 47.351831810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STAN METER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line19: TfrxLineView
          Left = 1001.575450000000000000
          Top = 18.897650000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 1005.354980000000000000
          Top = 18.897650000000000000
          Width = 73.808541810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TGL BAYAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 1082.945580000000000000
          Top = 18.897650000000000000
          Width = 73.808541810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH (RP)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line29: TfrxLineView
          Left = 1080.945580000000000000
          Top = 18.897650000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 1164.095240000000000000
          Top = 18.897650000000000000
          Width = 73.808541810000000000
          Height = 60.472480000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line32: TfrxLineView
          Left = 1160.315710000000000000
          Top = 18.897650000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 1239.685840000000000000
          Top = 18.897650000000000000
          Height = 60.637913970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Date1: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          Left = 1005.354980000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal. [Page#] dari [TotalPages#]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 113.385900000000000000
        Top = 778.583180000000000000
        Width = 1254.803960000000000000
        PrintOnLastPage = False
        object Line30: TfrxLineView
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 597.945270000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line55: TfrxLineView
          Left = 435.732530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line56: TfrxLineView
          Left = 489.645950000000000000
          Top = 0.779530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair3">,MasterData1)]')
          ParentFont = False
        end
        object Line57: TfrxLineView
          Left = 545.252320000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendaots">,MasterData1)]')
          ParentFont = False
        end
        object Line59: TfrxLineView
          Left = 657.638220000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line60: TfrxLineView
          Left = 713.669760000000000000
          Height = 41.740263970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair2">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 659.417750000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair1">,MasterData1)]')
          ParentFont = False
        end
        object Line61: TfrxLineView
          Left = 770.803650000000000000
          Top = 0.779530000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line62: TfrxLineView
          Left = 865.732840000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line63: TfrxLineView
          Left = 950.441560000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 1001.575450000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 1080.945580000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line66: TfrxLineView
          Left = 1160.315710000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line67: TfrxLineView
          Left = 1239.685840000000000000
          Height = 37.960733970000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."jumlah">,MasterData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekairlain">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 714.331170000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."jumlahlain">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH HALAMAN INI')
          ParentFont = False
        end
        object Line68: TfrxLineView
          Top = 45.354360000000000000
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 302.362400000000000000
        Top = 453.543600000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Line26: TfrxLineView
          Top = 1.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 597.945270000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 435.732530000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 489.645950000000000000
          Top = 0.779530000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair3">,MasterData1)]')
          ParentFont = False
        end
        object Line40: TfrxLineView
          Left = 545.252320000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line42: TfrxLineView
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo38: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."dendaots">,MasterData1)]')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 657.638220000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 713.669760000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo40: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair2">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 659.417750000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekair1">,MasterData1)]')
          ParentFont = False
        end
        object Line46: TfrxLineView
          Left = 770.803650000000000000
          Top = 0.779530000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 865.732840000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 950.441560000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 1001.575450000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line52: TfrxLineView
          Left = 1080.945580000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 1160.315710000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 1239.685840000000000000
          Height = 41.740263970000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."jumlah">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."rekairlain">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 714.331170000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."jumlahlain">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Top = 41.574830000000000000
          Width = 1239.685840000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object jab1: TfrxMemoView
          Left = 90.708720000000000000
          Top = 86.929190000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 90.708720000000000000
          Top = 166.299320000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 90.708720000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 90.708720000000000000
          Top = 71.811070000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 347.716760000000000000
          Top = 90.708720000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 347.716760000000000000
          Top = 166.299320000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 347.716760000000000000
          Top = 185.196970000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 347.716760000000000000
          Top = 75.590600000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 631.181510000000000000
          Top = 90.708720000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 631.181510000000000000
          Top = 166.299320000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 631.181510000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 631.181510000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 910.866730000000000000
          Top = 90.708720000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'KEPALA BAGIAN DISTRIBUSI')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 910.866730000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = [fsUnderline]
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '                                                     ')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          Left = 910.866730000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Dilaksanakan :')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 90.708720000000000000
          Top = 211.653680000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. .................................')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 347.716760000000000000
          Top = 211.653680000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. .................................')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 631.181510000000000000
          Top = 211.653680000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. .................................')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 907.087200000000000000
          Top = 211.653680000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Tgl. .................................')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = MyDataSource1
    BCDToCurrency = False
    Left = 352
    Top = 201
  end
end