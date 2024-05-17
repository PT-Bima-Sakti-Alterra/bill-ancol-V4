object ulapkoreksi: Tulapkoreksi
  Left = 721
  Top = 296
  BorderStyle = bsNone
  Caption = 'ulapkoreksi'
  ClientHeight = 162
  ClientWidth = 400
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
    Width = 400
    Height = 162
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 258
      Top = 109
      Width = 103
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 388
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'LAPORAN DAFTAR KOREKSI'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cxLabel1: TcxLabel
      Left = 48
      Top = 50
      Caption = 'Bulan Koreksi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object periode: TRzDateTimePicker
      Left = 154
      Top = 49
      Width = 135
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      Color = clBtnHighlight
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxButton2: TcxButton
      Left = 152
      Top = 109
      Width = 105
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cekalasan: TcxCheckBox
      Left = 30
      Top = 79
      Caption = 'Alasan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      OnClick = cekalasanClick
      Width = 97
    end
    object alasan: TcxComboBox
      Left = 152
      Top = 78
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'KESALAHAN PEMBACAAN/INPUT'
        'HASIL AKURASI METER')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 209
    end
  end
  object ActionList1: TActionList
    Left = 368
    Top = 168
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
    object F5: TAction
      Caption = 'F5'
      ShortCut = 116
      OnExecute = F5Execute
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 256
    Top = 272
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      '-- QUERY '
      ''
      ''
      'SELECT '
      'p.nama,'
      
        'CONCAT( p.alamat," NO. ",COALESCE(p.norumah,"")," RT. ",COALESCE' +
        '(p.rt,"")," RW. ",COALESCE(p.rt,"")) AS alamat,'
      'g.golongan,'
      'c.nosamb,'
      '  b.beritaacara,'
      'b.perhitungan,'
      '  DATE(b.`tglinput`) as tglinput,'
      '  b.alasan,'
      '  d.bulan,'
      'c.periode,'
      '  '
      '  '
      '  -- SEBELUM REVISI'
      '  d.kodegol,'
      '  d.`kodediameter`,'
      '  d.stanlalu,'
      '  d.`stanangkat`,'
      '  d.`stanskrg`,'
      '  d.`pakai`,'
      '  d.biayapemakaian,'
      '  d.`administrasi`,'
      '  d.`pemeliharaan`,'
      '  d.`retribusi`,'
      '  d.`meterai`,'
      '  d.rekair,'
      '  '
      '  '
      '  -- SETELAH REVISI'
      '  '
      '  c.kodegol AS kodegol2,'
      '  c.`kodediameter` AS kodediameter2,'
      '  c.stanlalu AS stanlalu2,'
      '  c.`stanangkat` AS stanangkat2,'
      '  c.`stanskrg` AS stanskrg2,'
      '  c.`pakai` AS pakai2,'
      '  c.biayapemakaian AS biayapemakaian2,'
      '  c.`administrasi` AS administrasi2,'
      '  c.`pemeliharaan` AS pemeliharaan2,'
      '  c.`retribusi` AS retribusi2,'
      '  c.`meterai` AS meterai2,'
      '  c.rekair AS rekair2'
      '  '
      'FROM'
      '  `drdkoreksidump` c'
      
        '  LEFT JOIN beritaacarakoreksi b ON c.`beritaacara`=b.`beritaaca' +
        'ra` '
      'LEFT JOIN drdkoreksi d ON b.`beritaacara`=d.`beritaacara`'
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb'
      'LEFT JOIN golongan g ON p.kodegol=g.kodegol'
      'WHERE c.nosamb IS NOT NULL')
    Connection = DM.Conn
    Left = 288
    Top = 235
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 504
    Top = 184
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 43331.837363738430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 111
    Datasets = <
      item
        DataSet = rek
        DataSetName = 'rek'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 980.410082000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object rekberitaacara: TfrxMemoView
          Left = 90.708720000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'pakai'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 86.929190000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 215.433210000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 517.795610000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 548.031850000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'biayapemakaian'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 604.724800000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'pakai2'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 634.961040000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'biayapemakaian2'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian2"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 695.433520000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[<rek."pakai2">-<rek."pakai">]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 740.787880000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[<rek."biayapemakaian2"> - <rek."biayapemakaian">]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 808.819420000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."alasan"] [rek."perhitungan"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 219.212740000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 278.813020770000000000
          Width = 236.075258460000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'alamat'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."alamat"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'tglinput'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."tglinput"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 26.456710000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 275.905690000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 548.031850000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 604.724800000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 634.961040000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 695.433520000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 740.787880000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 805.039890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 971.339210000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line: TfrxMemoView
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Line10: TfrxLineView
          Width = 971.339210000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 215.433210000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo51: TfrxMemoView
          Left = 128.504020000000000000
          Top = 102.047310000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN KOREKSI PEMAKAIAN AIR')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 406.793721230000000000
          Top = 94.488250000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 406.793721230000000000
          Top = 124.724490000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 124.840783230000000000
          Top = 56.692950000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Jln. MT. Haryono No. 87 Telp. (0771)-21574, Fax. (0771)-21366. T' +
              'anjungpinang')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 124.840783230000000000
          Top = 15.118120000000000000
          Width = 710.667933230000000000
          Height = 37.795300000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMERINTAN PROVINSI KEPULAUAN RIAU'
            'PERUSAHAAN DAERAH AIR MINUM TIRTA KEPRI')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 321.376343230000000000
          Top = 52.913420000000000000
          Width = 308.932967540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Picture3: TfrxPictureView
          Left = 143.738433230000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 75.590600000000000000
          KeepAspectRatio = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000012300
            0000B30806000000C2317ADA000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC400000EC401952B0E1B0000
            001974455874536F6674776172650041646F626520496D616765526561647971
            C9653C000026A1494441547801ED9D6DAC665575C7B71F8C6965A61F8C5532D7
            4454A85E5309C496315130CA8C095351615251E2CB8C1403069C261A9A087E90
            3129D5C40B4488146750838219D06AC7C481FA8226DCD1062BD68B0515138758
            6BFCD03BB48DF1033DBF47D775DD75F739679FF3BCEC7D9E6711D6DDEF7BAFB5
            F6DAFFBDF63EE73CF3B4A7AAFF82FFE71A700DB806326BE06915163D95998789
            0D7FF2B7FF131E5BFF69B4BF47ABFC277FFB64B44C679EBEFD0561DBD34FD159
            5BE2A7FED19F8653FFF8395BF2279DF18BFFFD65F8C5FFFD5763B7272B99EA64
            D60D4FA9643AA3924DE749FC77323F5392530B53E461F0877EFD304123E596A7
            C9D634E329B250FFEC67BD8C600BCDCAD6B60C9C2163706004A83CF6DF3F1D81
            0EF1272B0022CCA0BBD190673FEBCF03B467E9FCB1008A857AF4C4FDE1A15FFF
            6044A3CE33FC01B04E79FA3303212075FA9FBC6014EFC3CAED8FDE39920599FA
            B49F441B360D1634F23CB7DA40982BE25DFB4696C7D61F0FDFFCCF07BB369D58
            7D2B0B7220CFC406C8DC51F160C422C5981FF8E56A65D80F0776A4CC3A0BE73D
            F715E1DCE7EC0CE756E1B66AE14E9A1F647CA0327A64CE69FC221732B2732333
            C6CFA290B2D410399007B9902FB5DDB4EA318767551BC979D53C7695A7345998
            136CB18F2CD3D26F9F7E8B04238C15A3BDFBF17F0A39BD1EAD500CF6CDA7BD21
            E001B1387599C48FAFAE86B5B5B570727D3D3CB2F64858AF4229D3E1D2D252D8
            B1B4A3A2A540FC9C9D3B75F1A6B8E8E2F6C73E1B00E64D859912ECC8E8820550
            A78B26D68EFEFCFE50D2DC22CF05CF3B3FF459CCC8221E6D93CCB32A133BED23
            CBAC78AC1BA72830C203626299E03A86679D8FA1B2F0F654C66AC7BEEFD8B1F0
            9DD5E361B502A1472A10B2E55DD22F595E0E3B2B503A7FF7AE50074EECC89F7C
            F4B3C50034F2A117009ADD99741762BE39FE10766937CDBA784C172CBD76E4FD
            761907194A938539616E98A32EB2E4AA5B0418013E25ED944C063BCC65A7BF35
            D889C4FBB9F7C83D0120AAF37C683F0E6DDFBE3DECDABD3BBC73FFBE0048D9BE
            D057499E12FC358136E54DC4425EF9E16D45816CDDFC37C94119B294064AC832
            DA50AB7BCD3E9E2C72CD82B28251898B0AA55F76C65BC39B4F7B63F554ED0F4F
            98EE397224DC71E87075FC5AA3CACC082FE9A2BD17878BF7EEDD3426C7B7BB1F
            FF62B8BDF2943615644E60F831104F61EBAEEA58FEC9EAD21BD952EACFA20E8B
            97856CEDA16DEC7992A54DD649956701238E1B2B6BFF58CC1D8828938574C3CB
            AFDDF4F40810BA79E5C670E2C409A99625E46EE9868F7E64CB118E3BB583FFF6
            B1A2BC0A14842E0F2CFF4DE7E30EF762D7FCEBC122E5E90AB2C872FDF73F563D
            78F9012A298600D8779D7169B8A4BA032D86A98A919982110B07771C57B61ABB
            A8FF398E1D58BE7CC31BE20EE8E087AE0F1CCB52190530765497D3E7EC3C276C
            AB8E5ACBD53D50ACAD5C721FAFEE9B18A7CB710F4F0950622CE91B4F6265EDB6
            80A72979A584DC5B1C78E9E59B003E8537EC04EF22A5EE2CEB701C451EE44A1D
            97635B691E2CBCB3615C77E6DF8E5E4D219D9B6602462C96128F14A27C8C4BEF
            1237ADAC849B2A6F48CA9B42EE76E4D2590344531B5B86D7C51D1497E184B6DC
            A6B953BAEAC07BC3BEFDFB3715B17859C49B320B49C48EBE6DAC01AE802CF6D3
            5677D6E576F36A1B9FD3C0C1CA4B2A51162EEDAFAD40098FA94D8E69964F1D8C
            F08270557159A72948DFBED919302CDAE3A15C71F9BB5BBD2140073000880006
            DA4E8AE081A3E1A7AAFB2940AAA95FC6C74BD23CB080D17753BB5C657D7662BC
            E9F73CF87745BC5F66F5C6E26511B3986D592C5DBA2CB98F6E530523766976EB
            D8C4E4CEC3906E78F9751B2E2AC7A54B2F794BEDBB41F0CB93ADAB2B8F041020
            3D6D0294DAEEAB00C65B6FFBC4A6A76E251B3D3AC30BC51B259E42A5CB031801
            4AD8549B3CF3244B9BAC5DCBA702467841255E426AE5DCF28ABFDF002216FD87
            ABFB21BC125D47E2781E1FF8E0755B9E6849B90D4F3EF99BF0A3477F35CAFED1
            63BF0A274FFE6614DFB6ED19E1C5A73F7B14FF8BB3974661CA9FC3870E0540A9
            89BF3BEFFADC2640C223BDB2F22852FACF5187BB171E16E02DA58C5FFA22460E
            E441AE36794A970550D51B759B3C932A9F3818957C3616A5E9A3194074CDFBDE
            2F455B421EA9034400D296C2DF673CF18BF5F0DD874E84AF3FF09300F890FE7D
            5163B0E3D4ED01507AF9594BE1B5E7BD306C3BE519B5F50122F8ACBB53823FF8
            845FE9A4E4231B3C62F478147816A4DBA8F4450CFFDAB648D7D11064C17BC58B
            AD9361D2F91305238E641CCD26CDE424FBD30A6E02221637F7314D47B22F1E5D
            1B01D0BF542034091E5F7BEE0BC3857B9603615D7F4D3CD3E6CB5F39BAC9431A
            DA9C204313950EB0F0CE1D24A044BC894AF75EE13D5516EA8E4B1303232E4D31
            9471199A667B76605C69C6E08EE8F517EC21BA8562F730BA122074EB275743AA
            07A4DBA6C4F198AE78D7CEF0C60A9862F5E1BDEE7E0B10B547368ECC78ACB1BE
            4AC9EB62F46C78806C29BCC7F8E0D13F471DBCBF58B9E42107F248BAC490A3E7
            C7AB6B8D3659C6E57D6C30E251258F5F4B0722CEF49F7ED5CDA3F788784A7561
            05441C7DAC02B9A46631B3A86D1947B11B56BE393A8AD9B269A439C25D73E0BC
            8D7B263D0632F0E40F60D2F9C4E1FD1BDFFE562024CD1CBDFD5B5715F79229BC
            690290F4BB5EBACCC6DFFEC055C5BD1869794C5DC4DCEDE125D9F625A5536519
            87E7B1C00823E7B12BE7DF719898455BB9B00680F02A628BB8098800A1CFDCFD
            BD59B0BA658C2B2B2FE9CACBB67ED9DF240B2F4702AAD219C68ED14BBAD430D5
            E8794802C06283A5CA025F29F220C3455FDB57E4EB0BC82094228BD4ED13F606
            2314381420E2128EBB2214C453339E4E11D75407443C19DB77E5919979439A27
            1DC74BBAE986D76FB9E406905EFDCA57455F49E03584AB0F1CD8E886E300C782
            8D8C4223A9468F2CC854A8181B6CA5C8C3C982AB8E8D4685465264E9CB7A6F30
            427128B0EFC0B36AC739F7DED71C1E1DCFF8B403AFC88ECD71E64BD5C52F7745
            BA8C2763001180A4F373C5792DE0C60A90B853D23CE0E52117C0A4F389EB0B6D
            369021ECC0F0CD912DE5127808C735E44959C478AE78B0D42F995264E9C37F2F
            301A0A10A1100C1AC366A1724FC45D0BF99A38CE70ACD179A50191F0C6E3FFC3
            B7ECDD728FC4237FEE90A49E84787C0092A4D940983F49971C326FCC5F138F2C
            5E1671539D52CAF40394184F5C7700AEB1B2D2F200A44F9F7BF344D9EA0C4643
            32662EADBFF09A432385D57D6F668F3254E629D9DEB7DF194AF188E049131E12
            800430E9FCBA2328AF28E8F78FDEF4B5FDC55F668B5C8011A024E9580818014A
            B1B2D2F2F495418C37360AD658ACACB43CE685F999145F9DC06848C88D825014
            0AC32B8ADDAB58AF8136001047333C23D2A5128074E4D3976E620F3963DE1FC7
            50FD740D63C7E837352E38C10ECC4E5CC722400420D59597962F7619E38B8B79
            368B585989794DB274E537198CB86FE0E905CAEA3A488EFA295E51EC7876EDC1
            6381F78872F0DC75CCB7BDF9ACC0A37FDDAEEEB8663D400C7E487329AF656859
            751C300294745EA971EE3191071B8DF1382459E0BF6DB3A04E0A2583114F2D78
            7A91D2690975F8C98ACBAA1F90C25B8879451C5B38BE685E7993FABDD77C5967
            151F3FFCF1BDA34F4A34A35C667359AFF3B89CC73B92BC527F6347F8B361DB7D
            CBD0BC3D5E8AE475132B27695E50E54555E24320BC5600695C5E93C0881D07B4
            1E77B059B6E7AE889D87C7F8DCA5D8B159982C50C9E778B6FB4D878ABD27123E
            6DC893358E6BFAFE082002906C5DC01710261FAF08EF88F85088C5CB22AEE377
            D757FFBAF8777534EFBC6EC21D92CE933873C31C49BAF45036FF71F84C02A3A1
            290683C570510C5E917D82C6826461522E74CBEDABE196EA130F490F298CBD14
            0918014A5A0E9E187234953C765F766149971EB2B9B0C9D4F1C93D181E525D79
            69F91CD7E4B513CBDBD04E22C8D274F4B4F2C5D2AD60C4E432C9B1C6A5E6C98E
            C3FB37B1EFCF78D4CDE5B5F0CFD3B3D75DF4BBA76E9237A410AFE8D817F66F7A
            21B2EEEE487B84439CDBA60B538015801DD2DCD57914437B5884CE7958C4FC10
            EF43AD603434AF0825B07BB28B723CE398469E10200418499A70C85E11FC435C
            6473A14D5C28E615F23323F273B51C03985FA93F849079657EEB781DDA510D8F
            A2CE3B1A9A2CCC0973C31C11EF4A8D6034C49D1345A0101481578477445C482F
            46C97BC5AE5B07775724BC4BC8DDD157EFDDFC9BD83130B64735C00850927E86
            10B2FBB20BC778C533C2438A95959A57E71D7122610D96CA778C2FE685F98995
            B5E53582116F83E22EB6755252B92883A76867BFECCC2DACE9630A85437C8206
            DF31E2229BF78FA40C200690252DE18F7FF6B844C3100DBEE9E9CDD09E123211
            7A03252DC4D36BEE8E243D84B0C9D36BE3BF168CD82DD935DB3A28AD5CEE8B62
            77263C3D038C34CF437AAF48F31D8B734CE3B8A6CB00648059E771898D87441E
            3B2F80447C4884F7CB22B63C0FF1C92F32F03B5BBCBE405C0847008740D24309
            F18C700ABAF25B0B4643446584E7291A4FD3629F7FC49EA2CDC3110DB921BC22
            BC23E2427CAF06304B9A501F5587BA7865D3411E4DBC9CCB5D8BCE1B429CC5CB
            22B6BCEEFCE7F80F00DA7A25A50155C0B52B4FB560C47B45186AD70E73D75FFD
            ABA32316628FB6F522A4129F7CF00D1AF179A107EFBB62D353B514501EA2C1B3
            E1B0F1C4E60D3002946265A5E6E1E5E1ED59FEF08CF0906C7EC9698E6AF7BDEE
            F39D59AC05A3211A28D20B187157C29D097942FA78421E9F7D704C233E2F64DF
            C8C62BC23BD2F2714443179237F4B91639241CEA460A18014A2207E15065E18D
            6CEEF6902195A26034D4FB22BD5BBEE8F9A76DD1C1430F7F7FE3A758299C8747
            FAC8A1C9BE00C98B8F7889BA8EBD3B1BAAC1C7162F720E551E3C3D6C181984B8
            CFE35E4FD2430939A6715CEBC26F148C389E31A15D3A2AA12E13C984C24B0C8C
            F45324EAE015E11D119F17B260845C6DBA60AE9973EA0E89986BE6DCF2CC1328
            EE3C6D7EE9E9D83DD8109F0EA2E7BAD71528ABA38506A37DEF3932FAF7CEEA94
            33C47CFE99237E0D52F33EAF6054B7FBCED3029E2759B44DC6E251301AAA02D8
            25D92DB92BE2CE480B1C7BF37A1EC188DFCAE6DE48CB3EAF6054B7FB0ED57E63
            F2CC932CDA2663F1B904A3D83D89BDB445190E46682184A11ED3628B1789E669
            01CF932CCC4D1345C188FB030CB4A9618965E219F1953EDF65691EEDA52D650E
            466861B860E4C7B4DFCD5F897FEB368A265EE7128C10B8ED68429D7904A3D85B
            D86DBA60E36103422743228EE46C4096E7217E9F860CB105EC9ED1AF7F3072DD
            51D09008C3C440E1B96D015227E73FCCC8F8D320FB348D4F41F824C48EA59F2C
            CE1B180D551E07A3A79E7ACA1A2ABB24136AF34B4F6B306201B21035CFFC7408
            17D992378FEF191DBC767778E39E651131A4DC9F31D7CCF946A38144D8789873
            CBEE50E571309A5330E2453F16A23654DE3AE6225BF2BEFBD089C0514DD2F310
            F2248D276A22CB3D478E846BDEF77E498E4274802E4689EACF5017AF83513579
            85FE1F03D63656E7F6CE8805C842D40AB0FF4206BF7BCD87B2BACED0E3FFFEE0
            1FFE396B6489FDA691D58383119ACA4FB105EC7746737067C42F3CB210B58959
            8F80323E94E58359E243273C223C232D07EF5BF1DE95CEE3F7BFF90503C97330
            124DE40D1D8CE6F498C6118DA39A362FFE3143BE4FD379F37489CD6F19F1344D
            E4E3CE8CBB33494BC86F3AF1AA83A41D8C4413794307A3390523CC2AF644EDD6
            DB3E1176EDDE4DF188F08AF08E468981FFE16767F9F9591183632AC755491302
            42801171210723D144DED0C1688EC1889FCEE02734B489713CE198A2F3002340
            49E70D2D1EFB262D557E07A33266DBC1688EC128E619C48E6A7CB9CF17FC6598
            643F2EB82BE2CE485AD71DD1AC67487D0723B4909F1C8CE6188CEA16249E111E
            92363FFEDD34FEFD349D379438200418697E63BFF0180362DA3818A185FCE460
            34C7608479C58E2AB17B9321FF2B2100118084BC427C9BC7377A922604800162
            E29A1C8CB436F2C51D8CE61C8C624FD5303716258B93B8102F40F222A4A48710
            C6EE8A62C75364B16FA093073918A185FCE46034E7608489C5BC849877C4318D
            CB6C5E86A45DE914FB67AD399A222FA1E63FF68E95943B188926F2860E460B00
            46759E827D1319531CD26536BFE8886704DF42B1BB22CAF8FC0340226EC9C1C8
            6A244FDAC16801C008D38ABD89CC85EE97BE7234E025514768082F42DAAFF3E1
            9D37AD9193B826400830D2793AEE60A4B5912FEE60B42060547777C457FCDCA5
            5813E4513F5E92CD2F21CD57F97C9DAF79E158C61BE70092CE278E7CC8493C46
            0E4631ADCC3ECFC16841C008D38A3D59237FDFFEFD817FE091B8A61201290644
            F0CC9BD61C47896BAA934DD77130D2DAC81777305A2030C27B885DEE627EB1A7
            6BE49704487C77C6F767F0A529F65130E51C3F3986721C255D470E46759A996D
            BE83D1028111A6C5E7217848C42DD501D267EEFE5EE01EC9D69F559AA7668010
            5E911D136F08AFC8E693E69E88FB22E24DE460D4A49DD99539182D1818615AFC
            B408DE04714B7580C4B76BD75E7F2C10DA36D34CF33223F743FA035819AF0988
            624F0AA59D0D1D8CAC46F2A41D8C16108C30352E7BB9D4266EA90E90A8C74FD5
            E2294DFB5DA4266F083E9A8088973991817A29E46094A2A5E9D771305A5030E2
            FE08408A3D7DC2EC9A3C0B80E833777D2F4C0394F080DE70C17278DB25670500
            095E2C712C038C6C3E699E9A713C6BBB27A2AE90839168226FE860B4A06084D9
            B50112F72D7CE5DEB4B079FCFFF5077E12F8B68D3EFB10A0F397672F850BAB1F
            D2B72F31EAFEF8D68CFBAE3A00ED0344F4EF608416F29383D1028311E6D70648
            00118FFD39FA50BF89F8AE0DFA8FC77E15D69FFC4D201EABCF3DD0F6539E11FE
            ECF46707E250AC9ECEE38EEBE6951B03FCEA7C89F70522DA3B18A185FCE460B4
            E0608409B2C09B8E6CD4C14BE2E846487A56C4BDD6C10F5D1FEABC21F8E0972B
            B923023849772507A3AE1A9B4E7D072307A30DCB6ABA8B914A80D12C400910BA
            A9F2840865EC5898F25263AC9DCE7330D2DAC81777307230DA647D5C0CF3E81F
            6F69538149702CBA68EFC5A3DFD3E6E54253DC2BC99D10EF417DEAD0E140BCA9
            13BC20BC21BCA2A67A29650E46295A9A7E1D072307A32D560610E025B57925D2
            1060DAB57B57C06B220E5048595308E031C677568F87D5D5D5C6A398EE8771DA
            2ED675FDB6B883519B866653EE60E460546B69A95E92ED00300294C8C76BDAB1
            B4836878E2C4131B1E0F2034CAECF087BEB84C9F8437A4877530D2DAC8177730
            72306AB43EBC973B0E1D0A77544727E28D95A7540808BD63FFBEC0FDD0348670
            309A8656BBF7E960E4609464350011F7393C5EE71897D468CC4A7857EFAC4028
            E5B582718672301A477B936BEB60E460D4D99A78CC7EEF917B02E0346960C20B
            E218C6E53860D499B91E0D1C8C7A286D0A4D1C8C1C8CC6322B8089CB672EA101
            26D25D3A0470969797C38B975F32D127735D787030EAA2ADE9D5753072309AB8
            7501481CEBE8786D6D2D9C5C5F271A762C2D6DFCC4AD8E8F0A33FE7130CAA87C
            35B4839183913287C58C3A189531EF0E460E46655862462E1C8C322A5F0DED60
            E460A4CC6131A30E4665CCBB83918351199698910B07A38CCA57433B18391829
            7358CCA8835119F3EE60E46054862566E4C2C128A3F2D5D00E460E46CA1C1633
            EA6054C6BC3B18391895618919B97030CAA87C35B4839183913287C58C3A1895
            31EF0E460E46655862462E1C8C322A5F0DED60E460A4CC6131A30E4665CCBB83
            918351199698910B07A38CCA57433B183918297358CCA8835119F3EE60E46054
            862566E4C2C128A3F2D5D00E460E46CA1C1633EA6054C6BC3B18391895618919
            B97030CAA87C35B4839183913287C58C3A189531EF0E460E46655862462E1C8C
            322A5F0DED60E460A4CC6131A30E4665CCBB83918351199698910B07A38CCA57
            433B183918297358CCA8835119F3EE60E46054862566E4C2C128A3F2D5D00E46
            0E46CA1C1633EA6054C6BC3B18391895618919B97030CAA87C35B48391839132
            87C58C3A189531EF0E460E46655862462E1C8C322A5F0DED60E460A4CC6131A3
            0E4665CCBB83918351199698910B07A38CCA57433B183918297358CCA8835119
            F3EE60E46054862566E4C2C128A3F2D5D00E460E46CA1C1633EA6054C6BC3B18
            391895618919B97030CAA87C35B4839183913287C58C3A189531EF0E460E4665
            5862462E1C8C322A5F0DED60E460A4CC6131A30E4665CCBB8391835119969891
            0B07A38CCA57433B183918297358CCA8835119F3EE60E46054862566E4C2C128
            A3F2D5D00E460E46CA1C1633EA6054C6BC3B18391895618919B97030CAA87C35
            B4839183913287C58C3A189531EF0E460E46655862462E1C8C322A5F0DED60E4
            60A4CC6131A30E4665CCBB83918351199698910B07A38CCA57433B1839182973
            58CCA8835119F3EE60E46054862566E4C2C128A3F2D5D00E460E46CA1C1633EA
            6054C6BC3B18391895618919B97030CAA87C35B4839183913287C58C3A189531
            EF0E460E46655862462E1C8C322A5F0DED601401A347D77F1A567E789B52D330
            A2676C7F4138F0D2CB87C16C415C32D7CC79412C25B1C25C33E7B6F250E5D9B3
            747ED8F3BCF3378973F4E7F787A327EEDF943784444C9636BE9F5661D1536D95
            BCDC35E01A700D4C5B030E46D3D6B0F7EF1A700D2469C0C128494D5EC935E01A
            98B6061C8CA6AD61EFDF35E01A48D2808351929ABC926BC035306D0D38184D5B
            C3DEBF6BC03590A40107A324357925D7806B60DA1A70309AB686BD7FD7806B20
            49030E46496AF24AAE01D7C0B435900446C7575703342966AE3E7060D4D58913
            27C2BD478E8CE2F267C7D252B878EF5E498EC258BD5181F9B36DFBF6B0BCBC1C
            E863A9EAC7148F92A97D8D2A27FCB9A8E2B5EB582FA978DCB57B7742EFDDABA4
            CA77CECE9DA3CE251C253AFC898D83DEEDDCC5BA1CA7ADEE2FD60FE57DF47B4F
            65874F54F648FB26A2EFED959DA5EAAD8E4719039BDDB77FBF245BC347D6D6C2
            7DC78ED5D64B9D03DD411D8FC83A2D3BD5E34B3C098C6E5A590937ADDC286DC6
            0E7FFCB3C7477D0070975EF296515CFE30C977DEF539498EC258BD5141C31F00
            E21DFBF7053BD17DFA6A1826C02B3CC7EA7CF843D787C3870E6D29C2981F7AF8
            FB5BF22791D1473E8CEEA2BD17070C0FBDA5F0111B073DA08FB6F6E3B4D57D4F
            52BFD8217CE9FEDBE200EF3B2B1B437F7575E993BEEBCAC9C716B009E26D5427
            B3B44B9D03A94F58D7273CC11B756641730B46A23C0C85058262C94B310EEAA5
            127D6300B1FAAF7EE5AB02BB4EACEC868F7E648B0718ABD7356F5CF900EFAB0E
            BC3788BEEAC68F8D831ED0475D1BC91FA7ADF4413849FD0218F045BF5DA9692E
            E993BE9BFA6C6A6FDB35C94CDDD439A0AE50539F5D7893FEFA86730F46280640
            FAF2578E121D1D37DB8C635431F10F8B0F03B0D571A5AFB8FCDD367B238D1772
            EB6D9FD8484F2A9262FC6D63E11DC11B7AABAB1B1B073DA08FBA36923F4E5BE9
            63D2FAC526E04BFAEF1AA22FE6D4B6A34FFAB6F93A4D3BDAEBBC589C23DAEB2F
            D8132BDAC84B9D036930693D4ABF7DC2243042A1506C80274E3C11386FEB328C
            19B75FE7E9B8DC19D1A79DA8983263F5EC18F0B1569DA799303D96C4996C261D
            4FC5DE53491DC2D871F4EACA53A02C467577460011131D6B2379DFF8F6B70272
            487A12618AAE18E7F8EAF11130138F119ED1972A00AFE32F364E6CEE627D8FD3
            56FA9BB47EB143F892FE093986ED58DA417444E80CFB5A5F5F1FA5F51F805B36
            3C9D4F9FF4ADF3D0ADED83E310F9BA9E8DDBE314F56D3FA973207D4F5A8FD26F
            9F30098C9A3A8E293B5521A96D53EBC1277551B09D248E1F1FF8E0755469A417
            3DFFB42DE572C7B5A5A02683B1CF7ED9999B4A59D400A1CE04E4049875FE3871
            E4B7C65F371FF0794775A715036078A86B47599771A8AF699CB6F403DF93D62F
            3A832FFA17C2CB43079226646C40C16EC094C500853EE99B722140CEB697CD52
            EAC442BC22C050CA62FDC02F7C4B9DA6105926ADC7A6F1DACAE60E8C103876E1
            9E3A499300232EAD31587811C240AC510250784752671261CCF8DB64C7C0E10D
            E3B43CD4DD19F41947FA1EA72D7D4C43BFC80F5FF42FC49CA13B494B889EB867
            21943CC2587DFAA46FCA85D884EE3B765F40EF9207B0A06B49DB908D8C31753E
            00C6C6ABF3E0173E745E5D7C1A7AAC1B2B257F2EC1286600A993340930C26830
            1E9900011D0CC71EDD30288E8F5277DCB0AFEC2C0C168D5D60C2BBE5ABEF38F4
            334E5BDA4F43BFC80E5FF42FC4A2C66E24ADC3D4FAF4495DDD1630E291BEDEB0
            3872E159E97A3A6E8143EA5B7B855FF8D66DEBE2D3D063DD5829F97309462C78
            16BE56000B9E85AFF362713BB9D4E9724C8B199F1C11C7E10B3E5228367EAA81
            5A8397F1B80BE14E44D284E38C33E9B693D02F80015FC826C4A2467792D6A13D
            325196AA27C088BB46C0807642D827762A691DDAF1C493B2F60ABFF0ADDBC6E2
            C88ACCBA6C127AD4FD758DCF251801442C7CAD0C5C602650E7C5E27672A9D305
            8CAE79DFFBB75CE86B23E58C6EBD0F7644763AC61A976246966AA08C1DE38FBB
            360C9572A171C619A7EDB4F4CBC2842F918F90458DEE886BC28B041C745E170F
            1230E2AE1030D21E343A46D7BA5FE2D80BF3425C48ECD9DA2BFCC2B7D4AB0BA7
            A5C7BAF152F2E70A8C98585C5F0B4475861253909D5CEAA4821146838111D20E
            B263C78C0003C410A93F2EB1A05858BA9F5403A50DFAC343222E046FF02869C2
            D838784FD7263C24E0A927E3D08F500A8FE8755AFA4567C824FC10B2A8E18BB8
            1017CFF00E2F924728E0405C137DD2B7CE1330A21FAD6B6B2BD28631B11B4913
            CA0666ED157EE19B3A7504EFD3D263DD9829F98305233C098C5F84E4557EC048
            D212528FC9D175A52C16DAC9A54E2A18C58C8645CC62A61F08A0C473232E5467
            8452DE258C197F8A81CA18311962ED63E3481F7DC2D818B69F186F93D22F8081
            4C7A4C6C06FB913C5B2EF978DC8091A475481BFAD6790246310F4B7BD1D2067B
            C16E24CD518E231D696BAFB9F5084F7D69B06094223046C2DBC42CF694FAD4B1
            934B5E2A18E1BA6360B411E269991D1F979BDD49EA1002981812F1712866FCF4
            4BFF29FDA6B68FD54BE9BFAE4E0A8FD3D42F80814C75FCC5F29957EC0B3B8B95
            93479FF44D5C48C088341E8ADE44D9B80058CA20EC047B212E04F0C998D65E73
            EB5178EC13CE2D18E909EFA2183BB9B44D01234088C5427D217656763A494B88
            CBCD2E2F69428C0B23233E0EC58C3FC54065CCD4F6B17AD2479FB08DC769EB17
            C040A654DE99DB7FF8E8470261531BFAA46F5D47DBA63DAAD19FB6193C223C23
            DD5E8E68E4597BCDAD4778EA4B730B4628444F3AE914B2934B9B1430B246453B
            7638763AE29A62064AB93632D27D28D6779B81EA7162C61F6B1F1B87230D8B49
            F7178BB3DB032EBA2C36862E9FB67E010C64D263B6C59117CF97B0AE2E7DD2B7
            2ED776891EEC26469F785DB4B11B973EA2516EED35B71EE1A92F0D168C307AB9
            2CC5CDBDE3D0E14D2F918942F4C44A5E53682797BA2960842BCD22A3BE50D3D8
            D63DA70D9E111E12F1BE1433FE3603D563C55E18852778D3F5C619A74FDB69EB
            17C0802F2D239B093F4943DEFDD54B8AFAB2993C28A61BF285E893BE254DA8C1
            88B4958D7165136B2AA3ADB5D7B6B9B6FDD1470E3B655C4B830523AB7480E0C2
            0BF66CF94A9E496572ADE075693BB9D46B03238E5CEC60D41D870058EDA2F7E9
            2B66FC56574DFDC640D22E1EDA8F334ED7B6B3D02F80015FC826C43D1BBA9334
            6084872669099B3C5AFAA46FA94B68F589ED20236590D841CC4BB5C061ED157E
            E19B7E2C310663D9FCAE69E1AF6BBBB6FA730346081A53362E34C642790AD9C9
            A54D1B1871A6C770A83B2E01464C76DF7E62C6DF64A07A9C585BCA316EFA202E
            14AB4B1DEA4A9DBAB06BDB59E817C0802FCD33B22093CE8B81359B1D9B9EAE27
            71FAA46F49135A30C276909132216CF6E6951B37FD1E1676817D481D426BAFF0
            0BDF9459620CC6B2F97DD2F0013F7DDAD6B5992B30C23BC25808B5C01C3170A7
            755E5DDC4E2EF59AC088232263526F12049FF0DBB7AF98F13719A88C83CE629E
            651D98F71D87F1BAB49D957E010CF8823F211635BA933461EC18CBFD0E1E0BE5
            96E893BE75BE0523CAECF1091B008C909F7228067AD65EE117BEA9AF897E4AB2
            53CD9BC4E70A8C100A37140F89B850DD0449B90EEDE452D6044631E3A44D5FAA
            5BFCA9FDC58CBF4D7E808805C365AA1D27B670A8D3671CDA415DDACE4ABFC80F
            5FF027C4A246779226AC5BD4B1BAD4A74FFA262E14D3A9B55B008EB1A40D2180
            473E71216BAFF00B2F522EE1ACF428E3F509E70E8C62938F62621349BE253BB9
            94378111BB8D351A5E48E3A9076D9B8876B4B775D815F1906C7E4A3A267F9D81
            D21FF55908F0425A1386CF6F1A01903A9F38EDEC226B1A8736425DDAA21FCBDB
            34F48B2CF0253C12B2A89189B8A6585DE68B79D3F588D327F5890BC5C088E313
            C728A963438E441C8D6CBEB557F8856F5B6F567AB4E37649CF1D18217C4CF19C
            E97173296F223BB9D4AD03A39801B180013EDAA510868AC1EABA7506A5EBD4C5
            E98B3E7539862C4F1E259F7AF6672CA44C428C1A5E24AD43DADB71A84B1B5D2F
            164F6D3B4BFD220B7C697E910599741E713C6F009CB826EE792C70D3277DEB7A
            3130C23BE5A8A6EBE9789DFD5A7B855FF8D66D67A9473D6ED7F85C8251CC25C5
            4830963605D9C9A57E1D18619018267584EA8C46CA6D487BFAB1F9001AC066F3
            DBD231E36F6B132B679767B78F9591171B27B610A86B29B52D7A413FBAFDB4F4
            0B60C0971E8B458D4C3A8F38C0C18647485A88CD0EFE244D489FF44D5C280646
            94E119011CC42DE115B1A9D87C6BAFF00BDFBADE2CF5A8C7ED1A9F4B30C2ADC7
            58AC32DA1618F5EDE4921703230C31B693750511FA815742C612C2A8316E49A7
            8631E34F6D4B3D0CBEEF9BC5B185409F96623CDAB6E86396FA0530E04BF3CAA2
            862F9D27F1D80267F360FEA50E217DD23771A13A300278E957EA4918EB57CAAC
            BDC22F7C4BF9ACF528E3F609E7128C50040680211017B21325F93AB4934B590C
            8C62EF9CB090D9C168D38530400C51B749F5E4741BE2C88CECC4BB10775CE7EF
            DE95FC2F96C4C649D12F3CA5B49DB57ED1197CC19F108B1A9924AD43EAD246E7
            11B76D62F5EAC0A80E389A36266BAFF00B0FF002CD5A8F8CD997C606239EC01C
            ACFE7D30CD006FADA6ECEAA96D53EB691E7077792B5BE711E7F293854E3C4675
            0666EB022078603A9F7F438B45ADF352E2186CEC77A8315A8C2BA50FA913D395
            94E9F09C9DE78C92F40F8836E96454D1FC898D33C9799FB57E7999919F36D162
            72CF866E749E8E73AC0240741E800E78485E4C4FFC63157547E0AE7C587BB573
            306B3D8ADC7DC2B1C1A8CFA0DEC635E01A700D580D3818598D78DA35E01AC8A2
            0107A32C6AF7415D03AE01AB010723AB114FBB065C035934E0609445ED3EA86B
            C0356035E0606435E269D7806B208B061C8CB2A8DD07750DB806AC061C8CAC46
            3CED1A700D64D180835116B5FBA0AE01D780D5808391D588A75D03AE812C1A70
            30CAA2761FD435E01AB01A7030B21AF1B46BC0359045030E4659D4EE83BA065C
            0356030E4656239E760DB806B268C0C1288BDA7D50D7806BC06AC0C1C86AC4D3
            AE01D740160DFC3F5320BDB9908F159B0000000049454E44AE426082}
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 86.929190000000000000
          Top = 166.299320000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 517.795610000000000000
          Top = 181.417440000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 517.795610000000000000
          Top = 166.299320000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Semula')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 548.031850000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Top = 181.417440000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 604.724800000000000000
          Top = 166.299320000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Menjadi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 634.961040000000000000
          Top = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 695.433520000000000000
          Top = 181.417440000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 695.433520000000000000
          Top = 166.299320000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Selisih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 740.787880000000000000
          Top = 181.417440000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 805.039890000000000000
          Top = 166.299320000000000000
          Width = 166.299320000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Alasan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 215.433210000000000000
          Top = 166.299320000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Samb')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 275.905690000000000000
          Top = 166.299320000000000000
          Width = 241.889920000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 26.456710000000000000
          Top = 166.299320000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl.'
            'Input')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 166.299320000000000000
          Width = 26.456710000000000000
          Height = 34.015770000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object bulan: TfrxMemoView
          Left = 128.504020000000000000
          Top = 136.063080000000000000
          Width = 710.667933230000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN KOREKSI PEMAKAIAN AIR')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 555.590910000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo30: TfrxMemoView
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 740.787880000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian2">-<rek."biayapemakaian">)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 695.433520000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai2">-<rek."pakai">)]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 740.787880000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 805.039890000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 695.433520000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo32: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 597.165740000000000000
          Top = 34.015770000000000000
          Width = 249.448980000000000000
          Height = 173.858380000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanjungpinang , [Date]'
            'Seksi Penerbitan Rekening'
            ''
            ''
            ''
            ''
            '<u>_____________________</u>'
            '')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.015770000000000000
          Width = 249.448980000000000000
          Height = 173.858380000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Mengetahui'
            'Kabag. Umum & Keuangan'
            ''
            ''
            ''
            ''
            '<u>SABHAS BUDIYADI, SE.</u>'
            'NIK. 02079')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 980.410082000000000000
        Child = report.Child2
        Condition = 'rek."periode"'
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          DataField = 'bulan'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."bulan"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 971.339210000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 461.102660000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo9: TfrxMemoView
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 740.787880000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian2">-<rek."biayapemakaian">)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 695.433520000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rek."pakai2">-<rek."pakai">)]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 740.787880000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 805.039890000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 695.433520000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 340.157700000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Line21: TfrxLineView
          Width = 971.339210000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 240
    Top = 352
  end
  object Qdrd: TMyQuery
    Connection = DM.Conn
    Left = 120
    Top = 251
  end
end