object Fpiutanggolongan: TFpiutanggolongan
  Left = 672
  Top = 250
  BorderStyle = bsNone
  Caption = 'Rekap Piutang'
  ClientHeight = 411
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 411
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 64
    end
    object btnOke: TcxButton
      Left = 192
      Top = 356
      Width = 121
      Height = 29
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      Top = 356
      Width = 113
      Height = 29
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 226
    end
    object RzPanel2: TRzPanel
      Left = 6
      Top = 6
      Width = 502
      Height = 36
      Align = alTop
      BorderOuter = fsNone
      Caption = 'REKAPITULASI PIUTANG GOLONGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object tanggal: TcxDateEdit
      Left = 192
      Top = 87
      ParentFont = False
      Properties.DisplayFormat = 'DD MMMM YYYY'
      Properties.EditFormat = 'DD MMMM YYYY'
      Properties.OnChange = tanggalPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 193
    end
    object cxLabel2: TcxLabel
      Left = 56
      Top = 88
      Caption = 'Per Tanggal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 226
    end
    object cekgolongan: TcxCheckBox
      Left = 40
      Top = 222
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 226
    end
    object ceklembar: TcxCheckBox
      Left = 40
      Top = 300
      Caption = 'Lembar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Transparent = True
      OnClick = ceklembarClick
      Width = 97
    end
    object lembar1: TcxCurrencyEdit
      Left = 191
      Top = 299
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.EditFormat = ',0.;-,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 66
    end
    object lembar2: TcxCurrencyEdit
      Left = 191
      Top = 325
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.EditFormat = ',0.;-,0.'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 66
    end
    object cxLabel3: TcxLabel
      Left = 61
      Top = 326
      Caption = 's/d'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object periode2: TRzDateTimePicker
      Left = 192
      Top = 142
      Width = 137
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 42751.788053020830000000
      Format = 'MMMM yyyy'
      Time = 42751.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object periode1: TRzDateTimePicker
      Left = 192
      Top = 114
      Width = 137
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 42751.788053020830000000
      Format = 'MMMM yyyy'
      Time = 42751.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 56
      Top = 116
      Caption = 'Mulai DRD'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
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
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
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
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 43167.910861597220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 80
    Datasets = <
      item
        DataSet = gol
        DataSetName = 'gol'
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
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo41: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 30.126511450000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 37.685571450000000000
          Top = 3.779530000000000000
          Width = 47.458151160000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Gol')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 85.143722610000000000
          Top = 3.779530000000000000
          Width = 135.109694330000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama'
            'Golongan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 220.253416950000000000
          Top = 3.779530000000000000
          Width = 49.711709100000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lembar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 269.965126050000000000
          Top = 3.779530000000000000
          Width = 49.761129240000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pakai'
            '(m3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 319.726255290000000000
          Top = 3.779530000000000000
          Width = 86.959661340000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga '
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 476.967131190000000000
          Top = 3.779530000000000000
          Width = 76.527354230000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Pemelihara'
            '- an')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 619.797379480000000000
          Top = 3.779530000000000000
          Width = 94.533790520000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 404.941386030000000000
          Top = 3.779530000000000000
          Width = 72.025745160000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 554.091339390000000000
          Top = 3.779530000000000000
          Width = 65.081652040000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Meterai')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        DataSet = gol
        DataSetName = 'gol'
        RowCount = 0
        Stretched = True
        object Memo65: TfrxMemoView
          Left = 37.685571451295550000
          Top = 0.629800360000000000
          Width = 46.553762775384610000
          Height = 15.267849640000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[gol."kodegol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          Left = 85.143722614372470000
          Top = 0.629800360000000000
          Width = 135.109694327651800000
          Height = 15.267849640000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[gol."golongan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          Left = 270.810210283400800000
          Width = 48.644234291497970000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."pakai"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 319.454444574898800000
          Width = 82.981340850202430000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."biayapemakaian"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 479.217935730040500000
          Top = 0.629800360000000000
          Width = 74.276549698421050000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."pemeliharaan"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 619.797379482307700000
          Top = 0.629800360000000000
          Width = 93.974702081659920000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."rekair"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 7.559060000000000000
          Top = 0.629800360000000000
          Width = 26.360697524615380000
          Height = 15.267849640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 404.941386031619400000
          Width = 74.276549698421050000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."administrasi"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 219.304550445344100000
          Width = 49.761129236923080000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."lembar"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 556.342143929028300000
          Top = 0.629800360000000000
          Width = 62.830847512186230000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[gol."meterai"]')
          ParentFont = False
        end
      end
      object ReportSummary2: TfrxReportSummary
        FillType = ftBrush
        Height = 215.433210000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 706.772110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 619.313956477732800000
          Top = 7.559060000000000000
          Width = 93.974702081659920000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."rekair">,MasterData2)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 480.451360202429100000
          Top = 7.559060000000000000
          Width = 72.025745162105260000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."pemeliharaan">,MasterData2)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 405.297210971659900000
          Top = 7.559060000000000000
          Width = 74.887170708663970000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."administrasi">,MasterData2)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 318.107189068825900000
          Top = 7.559060000000000000
          Width = 86.332872894898780000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."biayapemakaian">,MasterData2)]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 267.948784736842100000
          Top = 7.559060000000000000
          Width = 51.995766336194330000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."pakai">,MasterData2)]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 216.443124898785400000
          Top = 7.559060000000000000
          Width = 51.995766336194330000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."lembar">,MasterData2)]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 16.143336639676110000
          Top = 6.559060000000000000
          Width = 28.614255465587040000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Total : ')
          ParentFont = False
        end
        object ket2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 480.719491820000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsItalic]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Diketahui : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 557.575568401417000000
          Top = 7.559060000000000000
          Width = 60.580042975870440000
          Height = 15.267849640000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<gol."meterai">,MasterData2)]')
          ParentFont = False
        end
        object jab1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 94.488250000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 487.559370000000000000
          Top = 60.472480000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 26.456710000000000000
          Top = 79.370130000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 253.228510000000000000
          Top = 94.488250000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 253.228510000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 253.228510000000000000
          Top = 79.370130000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 487.559370000000000000
          Top = 94.488250000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 487.559370000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 487.559370000000000000
          Top = 79.370130000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object keterangan: TfrxMemoView
          Left = 11.338590000000000000
          Top = 124.724490000000000000
          Width = 660.989301260000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
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
            'Jl. Pius Papu Sernaru Telp. (0385) 41404 L. Bajo')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
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
            'PEMERINTAH KABUPATEN MANGGARAI BARAT'
            'PDAM WAE MBELILING')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 200.315090000000000000
          Top = 45.354360000000000000
          Width = 308.932967540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
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
            'L A P O R A N  P I U T A N G')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 285.848761230000000000
          Top = 79.370130000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 285.848761230000000000
          Top = 109.606370000000000000
          Width = 150.192707540000000000
          Color = clBlack
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 646.299630000000000000
        Width = 718.110700000000000000
        object Page4: TfrxMemoView
          Left = 529.134200000000000000
          Top = 11.338590000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'HAL [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object waktuposting: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = usuratpiutang.rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[Date] ')
          ParentFont = False
        end
      end
    end
  end
  object Qgol: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      'c.kodegol,'
      'g.golongan,'
      'COUNT(c.nosamb) AS lembar,'
      'SUM(c.pakai) AS pakai,'
      'SUM(c.biayapemakaian) AS biayapemakaian,'
      'SUM(c.administrasi)AS administrasi,'
      'SUM(c.pemeliharaan)AS pemeliharaan,'
      'SUM(c.retribusi) AS retribusi,'
      'SUM(c.meterai) AS meterai,'
      'SUM(c.rekair) AS rekair,'
      'SUM(c.denda) AS denda,'
      'SUM(c.total) AS total'
      ''
      ''
      'FROM dumplaporanpiutang c '
      'LEFT JOIN golongan g ON c.kodegol=g.kodegol')
    Connection = DM.Conn
    Left = 400
    Top = 48
  end
  object DSgol: TMyDataSource
    DataSet = Qgol
    Left = 392
    Top = 96
  end
  object gol: TfrxDBDataset
    UserName = 'gol'
    CloseDataSource = False
    DataSource = DSgol
    BCDToCurrency = False
    Left = 592
    Top = 208
  end
  object ActionList1: TActionList
    Left = 144
    Top = 224
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
    Top = 56
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
    Left = 64
    Top = 368
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
    Left = 104
    Top = 224
  end
end
