object Fpiutang2: TFpiutang2
  Left = 999
  Top = 300
  BorderStyle = bsNone
  Caption = 'Rekap Piutang'
  ClientHeight = 421
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 421
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object wilayah: TcxComboBox
      Left = 255
      Top = 169
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = wilayahPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 226
    end
    object kodewil: TcxComboBox
      Left = 192
      Top = 169
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = kodewilPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 64
    end
    object btnOke: TcxButton
      Left = 192
      Top = 364
      Width = 121
      Height = 29
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnOkeClick
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object btnBatal: TcxButton
      Left = 320
      Top = 364
      Width = 113
      Height = 29
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnBatalClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cekwil: TcxCheckBox
      Left = 40
      Top = 170
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      OnClick = cekwilClick
      Width = 113
    end
    object cekstatus: TcxCheckBox
      Left = 40
      Top = 274
      Caption = 'Status Langganan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      OnClick = cekstatusClick
      Width = 137
    end
    object status: TcxComboBox
      Left = 192
      Top = 273
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        'Non Aktif'
        'Aktif'
        'Segel'
        'Cabut Smtr'
        'Calon Pelanggan')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = 'Aktif'
      Width = 129
    end
    object cek4: TcxCheckBox
      Left = 40
      Top = 52
      Caption = 'Jangan Tampilkan Pelanggan "Hapus Secara Akutansi "'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      Width = 441
    end
    object cekFlag: TcxCheckBox
      Left = 40
      Top = 248
      Caption = 'Flag'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      OnClick = cekFlagClick
      Width = 97
    end
    object kodeflag: TcxComboBox
      Left = 192
      Top = 247
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = kodeflagPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 63
    end
    object flag: TcxComboBox
      Left = 255
      Top = 247
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = flagPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 226
    end
    object RzPanel2: TRzPanel
      Left = 6
      Top = 6
      Width = 501
      Height = 36
      Align = alTop
      BorderOuter = fsNone
      Caption = 'RINCIAN PIUTANG'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object periode1: TRzDateTimePicker
      Left = 192
      Top = 114
      Width = 129
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 39829.788053020830000000
      Format = 'MMMM yyyy'
      Time = 39829.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object periode2: TRzDateTimePicker
      Left = 192
      Top = 142
      Width = 129
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object tanggal: TcxDateEdit
      Left = 192
      Top = 87
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      TabOrder = 14
      Width = 161
    end
    object cxLabel2: TcxLabel
      Left = 56
      Top = 88
      Caption = 'Per Tanggal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cekrayon: TcxCheckBox
      Left = 40
      Top = 196
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Transparent = True
      OnClick = cekrayonClick
      Width = 113
    end
    object koderayon: TcxComboBox
      Left = 192
      Top = 195
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = koderayonPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 64
    end
    object namarayon: TcxComboBox
      Left = 255
      Top = 195
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = namarayonPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 226
    end
    object cekgolongan: TcxCheckBox
      Left = 40
      Top = 222
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Transparent = True
      OnClick = cekgolonganClick
      Width = 113
    end
    object kodegol: TcxComboBox
      Left = 192
      Top = 221
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 64
    end
    object golongan: TcxComboBox
      Left = 255
      Top = 221
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 226
    end
    object ceklembar: TcxCheckBox
      Left = 40
      Top = 300
      Caption = 'Lembar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Transparent = True
      OnClick = ceklembarClick
      Width = 97
    end
    object lembar1: TcxCurrencyEdit
      Left = 191
      Top = 299
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.EditFormat = ',0.;-,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      TabOrder = 23
      Width = 66
    end
    object lembar2: TcxCurrencyEdit
      Left = 191
      Top = 325
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.EditFormat = ',0.;-,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      TabOrder = 24
      Width = 66
    end
    object cxLabel3: TcxLabel
      Left = 61
      Top = 326
      Caption = 's/d'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 56
      Top = 116
      Caption = 'Mulai DRD'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 56
      Top = 144
      Caption = 'S/d DRD'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Qgol: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'c.nosamb,'
      'c.bulan,'
      'p.nama,'
      'p.alamat,'
      'c.kodegol,'
      'g.golongan,'
      'c.pakai,'
      'c.biayapemakaian,'
      'c.administrasi,'
      'c.pemeliharaan,'
      'c.retribusi,'
      'c.meterai,'
      'c.rekair,'
      'c.denda,'
      'c.total'
      ''
      ''
      'FROM dumplaporanpiutang c '
      'LEFT JOIN golongan g ON c.kodegol=g.kodegol'
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb')
    Connection = DM.Conn
    Left = 408
    Top = 48
  end
  object DSgol: TMyDataSource
    DataSet = Qgol
    Left = 392
    Top = 96
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSgol
    BCDToCurrency = False
    Left = 592
    Top = 208
  end
  object ActionList1: TActionList
    Left = 496
    Top = 264
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnOkeClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = btnBatalClick
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 116
      OnExecute = Action3Execute
    end
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 43171.471378877320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 322
    Datasets = <
      item
        DataSet = DM.pejabat
        DataSetName = 'pejabat'
      end
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
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 139.842610000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 45.354360000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO.SAMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 253.228510000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 340.157700000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REK.AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          Left = 517.795610000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal: [Page#] dari [TotalPages#]')
          ParentFont = False
        end
        object Date1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Cetak : [Date] [Time]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 204.094620000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 404.409710000000000000
          Top = 22.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 702.992580000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Height = -26.456710000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 706.772110000000000000
          Top = 45.354360000000000000
          Height = -26.456710000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo32: TfrxMemoView
          Left = 457.323130000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 638.740570000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object rekstanlalu: TfrxMemoView
          Left = 253.228510000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 340.157700000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 143.622140000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[rek."bulan"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 204.094620000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 404.409710000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
        end
        object Line7: TfrxMemoView
          Left = 109.606370000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Line5: TfrxMemoView
          Left = 56.692950000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 453.543600000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."meterai"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 589.606680000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."denda"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 638.740570000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rek."total"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 222.992270000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.997457540000000000
          Width = 71.811070000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 340.157700000000000000
          Top = 7.997457540000000000
          Width = 64.252010000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 253.228510000000000000
          Top = 7.997457540000000000
          Width = 86.929190000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 204.094620000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 404.409710000000000000
          Top = 7.997457540000000000
          Width = 49.133890000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Height = -45.354360000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 706.772110000000000000
          Top = 49.133890000000000000
          Height = -45.354360000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object ket2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 483.779840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 71.811070000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
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
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object jab1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 102.047310000000000000
          Width = 133.228432500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 487.559370000000000000
          Top = 68.031540000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 26.456710000000000000
          Top = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 253.228510000000000000
          Top = 102.047310000000000000
          Width = 140.787492500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 253.228510000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 253.228510000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 253.228510000000000000
          Top = 86.929190000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 487.559370000000000000
          Top = 102.047310000000000000
          Width = 137.007962500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 487.559370000000000000
          Top = 181.417440000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 487.559370000000000000
          Top = 196.535560000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 487.559370000000000000
          Top = 86.929190000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 457.323130000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."meterai">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 589.606680000000000000
          Top = 7.997457540000000000
          Width = 49.133890000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."denda">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 638.740570000000000000
          Top = 7.997457540000000000
          Width = 64.252010000000000000
          Height = 37.577372460000000000
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
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        Condition = 'rek."nosamb"'
        KeepTogether = True
        object Memo4: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[rek."nama"] | [rek."alamat"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object reknosamb: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 517.795610000000000000
          Top = 4.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'SUB')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 139.842610000000000000
          Width = 566.929500000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 139.842610000000000000
          Top = 26.456710000000000000
          Width = 566.929500000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 139.842610000000000000
          Top = 26.456710000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 706.772110000000000000
          Top = 26.456710000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 340.157700000000000000
          Top = 4.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 404.409710000000000000
          Top = 4.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."meterai">,MasterData1)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 589.606680000000000000
          Top = 4.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."denda">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 638.740570000000000000
          Top = 4.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rek."total">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 94.488250000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR SALDO REKENING AIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object keterangan: TfrxMemoView
          Left = 3.779530000000000000
          Top = 124.724490000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
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
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
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
          Left = 200.315090000000000000
          Top = 52.913420000000000000
          Width = 308.932967540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
    end
  end
  object Qexec1: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO dumplaporanpiutang '
      'SELECT c.kode,'
      'c.periode,'
      'c.nosamb,'
      'c.bulan,'
      'c.kodegol,'
      'c.koderayon,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.pakai,'
      'c.biayapemakaian,'
      'c.administrasi,'
      'c.pemeliharaan,'
      'c.retribusi,'
      'c.meterai,'
      'c.rekair,'
      ''
      ''
      'IF(p.flag="2",0,'
      'CAST('
      
        'IF( c.trf_dendatunggakan4>0 AND CURRENT_DATE>=c.tglmulaidenda4, ' +
        'c.trf_dendatunggakan4 , '
      
        #9'IF( c.trf_dendatunggakan3>0 AND CURRENT_DATE>=c.tglmulaidenda3,' +
        ' c.trf_dendatunggakan3 , '
      
        #9#9'IF( c.trf_dendatunggakan2>0 AND CURRENT_DATE>=c.tglmulaidenda2' +
        ', c.trf_dendatunggakan2, '
      
        #9#9#9'IF( c.trf_dendatunggakan>0 AND CURRENT_DATE>=c.tglmulaidenda,' +
        ' c.trf_dendatunggakan , 0)))) AS UNSIGNED)'
      #9#9#9
      #9#9#9
      #9#9#9#9
      '   ) AS denda,'
      '   '
      '   '
      '   '
      ' c.rekair +'
      ''
      'IF(p.flag="2",0,'
      'CAST('
      
        'IF( c.trf_dendatunggakan4>0 AND CURRENT_DATE>=c.tglmulaidenda4, ' +
        'c.trf_dendatunggakan4 , '
      
        #9'IF( c.trf_dendatunggakan3>0 AND CURRENT_DATE>=c.tglmulaidenda3,' +
        ' c.trf_dendatunggakan3 , '
      
        #9#9'IF( c.trf_dendatunggakan2>0 AND CURRENT_DATE>=c.tglmulaidenda2' +
        ', c.trf_dendatunggakan2, '
      
        #9#9#9'IF( c.trf_dendatunggakan>0 AND CURRENT_DATE>=c.tglmulaidenda,' +
        ' c.trf_dendatunggakan , 0)))) AS UNSIGNED)'
      #9#9#9
      #9#9#9
      #9#9#9#9
      '   ) AS total'
      '   '
      '   '
      '   '
      '    '
      '    '
      '  '
      ''
      ''
      'FROM piutang  c '
      'LEFT JOIN golongan g ON c.kodegol=g.kodegol '
      'LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb '
      'WHERE c.flaglunas="0"')
    Connection = DM.Conn
    Left = 16
    Top = 208
  end
  object Qexec2: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO dumplaporanpiutang '
      'SELECT c.kode,'
      'c.periode,'
      'c.nosamb,'
      'c.bulan,'
      'c.kodegol,'
      'c.koderayon,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.pakai,'
      'c.biayapemakaian,'
      'c.administrasi,'
      'c.pemeliharaan,'
      'c.retribusi,'
      'c.meterai,'
      'c.rekair,'
      ''
      ''
      'IF(p.flag="2",0,'
      'CAST('
      
        'IF( c.trf_dendatunggakan4>0 AND CURRENT_DATE>=c.tglmulaidenda4, ' +
        'c.trf_dendatunggakan4 , '
      
        #9'IF( c.trf_dendatunggakan3>0 AND CURRENT_DATE>=c.tglmulaidenda3,' +
        ' c.trf_dendatunggakan3 , '
      
        #9#9'IF( c.trf_dendatunggakan2>0 AND CURRENT_DATE>=c.tglmulaidenda2' +
        ', c.trf_dendatunggakan2, '
      
        #9#9#9'IF( c.trf_dendatunggakan>0 AND CURRENT_DATE>=c.tglmulaidenda,' +
        ' c.trf_dendatunggakan , 0)))) AS UNSIGNED)'
      #9#9#9
      #9#9#9
      #9#9#9#9
      '   ) AS denda,'
      '   '
      '   '
      '   '
      ' c.rekair +'
      ''
      'IF(p.flag="2",0,'
      'CAST('
      
        'IF( c.trf_dendatunggakan4>0 AND CURRENT_DATE>=c.tglmulaidenda4, ' +
        'c.trf_dendatunggakan4 , '
      
        #9'IF( c.trf_dendatunggakan3>0 AND CURRENT_DATE>=c.tglmulaidenda3,' +
        ' c.trf_dendatunggakan3 , '
      
        #9#9'IF( c.trf_dendatunggakan2>0 AND CURRENT_DATE>=c.tglmulaidenda2' +
        ', c.trf_dendatunggakan2, '
      
        #9#9#9'IF( c.trf_dendatunggakan>0 AND CURRENT_DATE>=c.tglmulaidenda,' +
        ' c.trf_dendatunggakan , 0)))) AS UNSIGNED)'
      #9#9#9
      #9#9#9
      #9#9#9#9
      '   ) AS total'
      '   '
      '   '
      '   '
      '    '
      '    '
      '  '
      ''
      ''
      'FROM bayar:tahun c '
      'LEFT JOIN golongan g ON c.kodegol=g.kodegol '
      'LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb '
      
        'WHERE c.flaglunas="1" AND DATE(c.tglbayar)>:tanggal  AND ( c.fla' +
        'gangsur="0" OR c.noangsuran IN (SELECT noangsuran FROM daftarang' +
        'suran WHERE flaglunas="1" AND DATE(waktulunas)>:tanggal ))')
    Connection = DM.Conn
    Left = 56
    Top = 360
  end
  object Qcek: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO dumplaporanpiutang '
      
        'SELECT c.kode,c.nosamb,c.bulan,c.kodegol,c.koderayon,c.stanlalu,' +
        'c.stanskrg,c.pakai,c.biayapemakaian,c.administrasi,c.pemeliharaa' +
        'n,c.retribusi,c.meterai,c.rekair '
      'FROM piutang  c '
      'LEFT JOIN golongan g ON c.kodegol=g.kodegol '
      'LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb '
      'WHERE c.flaglunas="0"')
    Connection = DM.Conn
    Left = 24
    Top = 32
  end
end
