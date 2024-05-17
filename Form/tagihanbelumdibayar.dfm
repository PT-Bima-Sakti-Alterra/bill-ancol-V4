object utagbelumbayar: Tutagbelumbayar
  Left = 593
  Top = 206
  BorderStyle = bsNone
  Caption = 'Tagihan Belum Dibayar'
  ClientHeight = 371
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object cxLabel1: TcxLabel
    Left = 448
    Top = 59
    Caption = 'Periode Rekening'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object sumberair: TcxComboBox
    Left = 600
    Top = 192
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 1
    Width = 121
  end
  object ceksumberair: TcxCheckBox
    Left = 496
    Top = 192
    Caption = 'Sumber Air'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans Extrabold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Transparent = True
    Width = 97
  end
  object cekkelurahan: TcxCheckBox
    Left = 464
    Top = 357
    Caption = 'Kelurahan'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Transparent = True
    OnClick = cekkelurahanClick
    Width = 105
  end
  object kodekelurahan: TcxComboBox
    Left = 592
    Top = 357
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodekelurahanPropertiesChange
    TabOrder = 4
    Width = 60
  end
  object cekcabang: TcxCheckBox
    Left = 464
    Top = 381
    Caption = 'Cabang'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Transparent = True
    OnClick = cekcabangClick
    Width = 97
  end
  object kodecabang: TcxComboBox
    Left = 592
    Top = 381
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kodecabangPropertiesChange
    TabOrder = 6
    Width = 60
  end
  object kelurahan: TcxComboBox
    Left = 656
    Top = 357
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = kelurahanPropertiesChange
    TabOrder = 7
    Width = 161
  end
  object cabang: TcxComboBox
    Left = 656
    Top = 381
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cabangPropertiesChange
    TabOrder = 8
    Width = 161
  end
  object cxLabel3: TcxLabel
    Left = 490
    Top = 27
    Caption = 'Kode Paraf'
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object kodeparaf: TcxComboBox
    Left = 600
    Top = 24
    Enabled = False
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Tidak'
      'Ya')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 10
    Width = 129
  end
  object RzPanel20: TRzPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'SALDO TAGIHAN BELUM DIBAYAR'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 25
    Width = 419
    Height = 346
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 20966
    BorderWidth = 3
    Color = 14676991
    TabOrder = 12
    object periode: TRzDateTimePicker
      Left = 152
      Top = 210
      Width = 161
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
      DateFormat = dfLong
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      FlatButtons = True
      FocusColor = clBtnHighlight
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cekpemakaian: TcxCheckBox
      Left = 24
      Top = 155
      Caption = 'Lembar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      OnClick = cekpemakaianClick
      Width = 97
    end
    object kodegol: TcxComboBox
      Left = 152
      Top = 47
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodegolPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 60
    end
    object cekkodegol: TcxCheckBox
      Left = 24
      Top = 47
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      OnClick = cekkodegolClick
      Width = 97
    end
    object cekrayon: TcxCheckBox
      Left = 24
      Top = 74
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      OnClick = cekrayonClick
      Width = 97
    end
    object koderayon: TcxComboBox
      Left = 152
      Top = 74
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = koderayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 60
    end
    object cekwil: TcxCheckBox
      Left = 24
      Top = 101
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
      OnClick = cekwilClick
      Width = 97
    end
    object kodewil: TcxComboBox
      Left = 152
      Top = 101
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = kodewilPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 60
    end
    object namarayon: TcxComboBox
      Left = 211
      Top = 74
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = namarayonPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 182
    end
    object wilayah: TcxComboBox
      Left = 211
      Top = 101
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = wilayahPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 182
    end
    object cekkodekolektif: TcxCheckBox
      Left = 24
      Top = 128
      Caption = 'Kolektif'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
      OnClick = cekkodekolektifClick
      Width = 97
    end
    object kodekolektif: TcxComboBox
      Left = 152
      Top = 128
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 60
    end
    object kolektif: TcxComboBox
      Left = 211
      Top = 128
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = kolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 182
    end
    object status: TcxComboBox
      Left = 152
      Top = 20
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Non Aktif'
        'Aktif'
        'Segel / Tutup Semtr.')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 241
    end
    object cxLabel4: TcxLabel
      Left = 40
      Top = 20
      Caption = 'Status Pelanggan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object op: TcxComboBox
      Left = 152
      Top = 155
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '='
        '>'
        '<'
        '<>')
      Properties.OnChange = kodekolektifPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 60
    end
    object pemakaian: TcxCurrencyEdit
      Left = 211
      Top = 155
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 86
    end
    object cekdrd: TcxCheckBox
      Left = 24
      Top = 210
      Caption = 'DRD'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Transparent = True
      OnClick = cekdrdClick
      Width = 97
    end
    object cekloket: TcxCheckBox
      Left = 24
      Top = 182
      Caption = 'Loket Penagih.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Transparent = True
      OnClick = cekloketClick
      Width = 129
    end
    object kodeloket: TcxComboBox
      Left = 152
      Top = 182
      Enabled = False
      ParentFont = False
      Properties.OnChange = kodeloketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 60
    end
    object loket: TcxComboBox
      Left = 211
      Top = 182
      Enabled = False
      ParentFont = False
      Properties.OnChange = loketPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 182
    end
    object golongan: TcxComboBox
      Left = 211
      Top = 47
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = golonganPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 182
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 248
      Width = 369
      Height = 41
      Caption = 'Tampilkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 291
      Width = 369
      Height = 38
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = DSrek
    BCDToCurrency = False
    Left = 496
    Top = 80
  end
  object ActionList1: TActionList
    Left = 424
    Top = 240
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton1Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.nosamb,'
      '  c.bulan,'
      '  p.nama,'
      '  p.alamat,'
      '  c.koderayon,'
      '  r.namarayon,'
      '  c.kodegol,'
      '  c.stanlalu,'
      '  c.stanskrg,'
      '  c.pakai,'
      
        'IF(p.status="1","AKTIF",IF(p.status="0","NON AKTIF","SEGEL")) as' +
        ' aktif,'
      '  c.`biayapemakaian`,'
      '  c.`administrasi`+c.`administrasilain` AS administrasi,'
      '  c.pemeliharaan+c.pemeliharaanlain AS pemeliharaan,'
      '  c.retribusi+c.retribusilain AS retribusi,'
      '  c.rekair,'
      '  '
      '  IF(p.flag<>"2",'
      '  IF(c.trf_dendatunggakan>0,'
      
        '  IF(CURRENT_DATE>=c.tglmulaidenda,c.trf_dendatunggakan,0),0),0)' +
        ' AS denda,'
      '  '
      '  c.rekair +'
      '  IF(p.flag<>"2",'
      '  IF(c.trf_dendatunggakan>0,'
      
        '  IF(CURRENT_DATE>=c.tglmulaidenda,c.trf_dendatunggakan,0),0),0)' +
        ' AS tagihan'
      '  '
      '  '
      '  '
      'FROM'
      '  piutang c '
      'LEFT JOIN pelanggan p ON c.nosamb=p.nosamb'
      'LEFT JOIN rayon r On c.koderayon=r.koderayon'
      
        'LEFT JOIN (SELECT nosamb,COUNT(kode) AS jum FROM piutang WHERE f' +
        'laglunas="0" GROUP BY nosamb) b ON c.nosamb=b.nosamb'
      'WHERE c.flaglunas = "0"')
    Connection = DM.Conn
    Left = 96
    Top = 197
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 392
    Top = 120
  end
  object report: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.Reverse = True
    ReportOptions.CreateDate = 42030.464315972200000000
    ReportOptions.LastChange = 42364.487461724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 262
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
      LeftMargin = 3.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 309.921460000000000000
        Width = 763.465060000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object rekgolongan: TfrxMemoView
          Left = 278.905690000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanlalu'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."stanlalu"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 14.338590000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[rek."bulan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 320.480520000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'stanskrg'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."stanskrg"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 358.275820000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pakai'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."pakai"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 384.732530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'biayapemakaian'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."biayapemakaian"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 452.764070000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'administrasi'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."administrasi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 513.236550000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'pemeliharaan'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."pemeliharaan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 581.268090000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[rek."rekair"]')
          ParentFont = False
          WordWrap = False
        end
        object Line8: TfrxLineView
          Left = 6.779530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 278.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 320.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 358.275820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 384.732530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 452.764070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 513.236550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 577.488560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 705.992580000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 758.906000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 248.669450000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Left = 248.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 245.669450000000000000
        Top = 536.693260000000000000
        Width = 763.465060000000000000
        Stretched = True
        object jab1: TfrxMemoView
          Left = 74.811070000000000000
          Top = 88.149660000000000000
          Width = 208.819032500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab1"]')
          ParentFont = False
        end
        object nama1: TfrxMemoView
          Left = 74.811070000000000000
          Top = 167.519790000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama1"]')
          ParentFont = False
          WordWrap = False
        end
        object nik1: TfrxMemoView
          Left = 74.811070000000000000
          Top = 182.637910000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik1"]')
          ParentFont = False
          WordWrap = False
        end
        object Date: TfrxMemoView
          Left = 535.913730000000000000
          Top = 54.133890000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 74.811070000000000000
          Top = 73.031540000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket1"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 301.582870000000000000
          Top = 88.149660000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab2"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 301.582870000000000000
          Top = 167.519790000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 301.582870000000000000
          Top = 182.637910000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          Left = 301.582870000000000000
          Top = 73.031540000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket2"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 535.913730000000000000
          Top = 88.149660000000000000
          Width = 197.480442500000000000
          Height = 41.574830000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."jab3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 535.913730000000000000
          Top = 167.519790000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nama3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          Left = 535.913730000000000000
          Top = 182.637910000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."nik3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo81: TfrxMemoView
          Left = 535.913730000000000000
          Top = 73.031540000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[pejabat."ket3"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 384.732530000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 452.764070000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 513.236550000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 581.268090000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 6.779530000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 384.732530000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 452.764070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 513.236550000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line44: TfrxLineView
          Left = 577.488560000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 705.992580000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 758.906000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 78.590600000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Jumlah Total : ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 324.260050000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
        end
        object Line48: TfrxLineView
          Left = 6.779530000000000000
          Top = 26.456710000000000000
          Width = 752.126470000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          Left = 157.960730000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[COUNT(MasterData1)] Lembar')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 763.465060000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 297.803340000000000000
          Top = 31.551330000000000000
          Width = 325.039580000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'TAGIHAN REKENING AIR BELUM TERBAYAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object keterangan: TfrxMemoView
          Left = 14.338590000000000000
          Top = 65.567100000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'keterangan')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 14.338590000000000000
          Top = 8.874150000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header1"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 14.338590000000000000
          Top = 31.551330000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header2"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 763.465060000000000000
        Stretched = True
        object Line32: TfrxLineView
          Left = 6.779530000000000000
          Width = 699.213050000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 249.448980000000000000
        Width = 763.465060000000000000
        Condition = 'rek."nosamb"'
        KeepTogether = True
        Stretched = True
        object Memo38: TfrxMemoView
          Left = 10.559060000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            
              '[Line]. [rek."nosamb"] /  [rek."nama"] / [rek."alamat"] / [rek."' +
              'aktif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line38: TfrxLineView
          Left = 6.779530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 758.906000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 6.779530000000000000
          Top = 22.677180000000000000
          Width = 752.126470000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 404.409710000000000000
        Width = 763.465060000000000000
        Child = report.Child2
        Stretched = True
        object Memo46: TfrxMemoView
          Left = 384.732530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."biayapemakaian">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 452.764070000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."administrasi">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Left = 513.236550000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pemeliharaan">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          Left = 581.268090000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."rekair">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line43: TfrxLineView
          Left = 6.779530000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 384.732530000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 452.764070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line55: TfrxLineView
          Left = 513.236550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Left = 577.488560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line60: TfrxLineView
          Left = 705.992580000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line61: TfrxLineView
          Left = 758.906000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 324.260050000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<rek."pakai">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 139.842610000000000000
        Width = 763.465060000000000000
        Stretched = True
        object Memo8: TfrxMemoView
          Left = 6.779530000000000000
          Top = 4.527520000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 48.354360000000000000
          Top = 4.527520000000000000
          Width = 143.622140000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Uraian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 48.354360000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 6.779530000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 248.669450000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 248.669450000000000000
          Top = 4.527520000000000000
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Gol')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 278.905690000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 278.905690000000000000
          Top = 19.645640000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lalu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 278.905690000000000000
          Top = 4.527520000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Stand')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 320.480520000000000000
          Top = 19.645640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KIni')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 358.275820000000000000
          Top = 19.645640000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 384.732530000000000000
          Top = 4.527520000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga'
            'Air')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 452.764070000000000000
          Top = 4.527520000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Adm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 513.236550000000000000
          Top = 4.527520000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'By.'
            'Pem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 581.268090000000000000
          Top = 4.527520000000000000
          Width = 109.606370000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Tagihan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          Left = 384.732530000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 452.764070000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 513.236550000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 577.488560000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 705.992580000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 6.779530000000000000
          Top = 38.543290000000000000
          Width = 752.126470000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 6.779530000000000000
          Top = 4.527520000000000000
          Width = 752.126470000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 705.992580000000000000
          Top = 4.527520000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Paraf')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line34: TfrxLineView
          Left = 758.906000000000000000
          Top = 4.527520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 278.905690000000000000
          Top = 19.645640000000000000
          Width = 105.826840000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 320.480520000000000000
          Top = 19.645640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 358.275820000000000000
          Top = 19.645640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child2: TfrxChild
        Height = 22.677180000000000000
        Top = 453.543600000000000000
        Width = 763.465060000000000000
        Stretched = True
        object Line41: TfrxLineView
          Left = 6.779530000000000000
          Top = 0.000000000000000028
          Width = 752.126470000000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 805.039890000000000000
        Width = 763.465060000000000000
        object Memo115: TfrxMemoView
          Left = 6.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 93.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 520.795610000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] dari [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
end
