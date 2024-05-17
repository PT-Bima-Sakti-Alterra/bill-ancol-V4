object udrd_koreksi: Tudrd_koreksi
  Left = 446
  Top = 233
  BorderStyle = bsNone
  Caption = 'Koreksi DRD'
  ClientHeight = 197
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
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
    Width = 324
    Height = 197
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object periode: TRzDateTimePicker
      Left = 146
      Top = 58
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
      TabOrder = 0
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel1: TcxLabel
      Left = 56
      Top = 58
      Caption = 'Bulan/Tahun'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxRadioButton1: TcxRadioButton
      Left = 368
      Top = 115
      Width = 265
      Height = 17
      Caption = 'Dibandingkan dengan DRD Real'
      Checked = True
      Color = clWhite
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TabStop = True
      Transparent = True
    end
    object cxRadioButton2: TcxRadioButton
      Left = 368
      Top = 144
      Width = 249
      Height = 17
      Caption = 'Dibandingkan dengan DRD Posting'
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 43
      Top = 106
      Width = 238
      Height = 30
      Caption = 'Lihat Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 43
      Top = 141
      Width = 238
      Height = 30
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 312
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DRD YANG DIKOREKSI'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  c.nosamb,'
      '  p.nama,'
      '  h.`koderayon`,'
      '  h.`stanlalu`,'
      '  h.stanskrg,'
      '  h.pakai,'
      '  h.kodegol,'
      '  h.`kodediameter`,'
      '  h.`biayapemakaian`,'
      '  h.`administrasi`,'
      '  h.`pemeliharaan`,'
      '  h.`rekair`,'
      '  h.tglkoreksi,'
      '  h.`userpublish`,'
      '  h.`userkoreksi`,'
      '  '
      '  c.`stanlalu` AS stanlalu1,'
      '  c.stanskrg AS stanskrg1,'
      '  c.pakai AS pakai1,'
      '  c.koderayon as koderayon1,'
      '  c.kodegol AS kodegol1,'
      '  c.`kodediameter` AS kodediameter1,'
      '  c.`biayapemakaian` AS biayapemakaian1,'
      '  c.`administrasi` AS administrasi1,'
      '  c.`pemeliharaan` AS pemeliharaan1,'
      '  c.`rekair` AS rekair1 ,'
      '  c.tglkoreksi AS tglkoreksi1,'
      '  c.`userpublish` AS userpublish1,'
      '  c.`userkoreksi` as userkoreksi1'
      '   '
      'FROM'
      '  drdkoreksi c '
      '  LEFT JOIN pelanggan p '
      '    ON c.nosamb = p.`nosamb`')
    SQLLock.Strings = (
      'SELECT '
      '  c.nosamb,'
      '  p.nama,'
      '  h.`koderayon`,'
      '  h.`stanlalu`,'
      '  h.stanskrg,'
      '  h.pakai,'
      '  h.kodegol,'
      '  h.`kodediameter`,'
      '  h.`biayapemakaian`,'
      '  h.`administrasi`,'
      '  h.`pemeliharaan`,'
      '  h.`rekair`,'
      '  h.tglkoreksi,'
      '  h.`userpublish`,'
      '  h.`userkoreksi`,'
      '  '
      '  c.`stanlalu` AS stanlalu1,'
      '  c.stanskrg AS stanskrg1,'
      '  c.pakai AS pakai1,'
      '  c.koderayon as koderayon1,'
      '  c.kodegol AS kodegol1,'
      '  c.`kodediameter` AS kodediameter1,'
      '  c.`biayapemakaian` AS biayapemakaian1,'
      '  c.`administrasi` AS administrasi1,'
      '  c.`pemeliharaan` AS pemeliharaan1,'
      '  c.`rekair` AS rekair1 ,'
      '  c.tglkoreksi AS tglkoreksi1,'
      '  c.`userpublish` AS userpublish1,'
      '  c.`userkoreksi` as userkoreksi1'
      '   '
      'FROM'
      '  drd:periode c '
      '  LEFT JOIN pelanggan p '
      '    ON c.nosamb = p.`nosamb`')
    Connection = DM.Conn
    Left = 112
    Top = 104
  end
  object report: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42674.569376608800000000
    ReportOptions.LastChange = 42755.392810300920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 88
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
      PaperWidth = 352.000000000000000000
      PaperHeight = 279.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 257.008040000000000000
        Width = 1254.803960000000000000
        Child = report.Child1
        DataSet = rek
        DataSetName = 'rek'
        RowCount = 0
        Stretched = True
        object reknosamb: TfrxMemoView
          Left = 52.006332800000000000
          Top = 2.000000000000000000
          Width = 70.148076800000000000
          Height = 49.133890000000000000
          DataField = 'nosamb'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nosamb"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 135.307174000000000000
          Top = 3.000000000000000000
          Width = 162.217427600000000000
          Height = 49.133890000000000000
          DataField = 'nama'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[rek."nama"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 617.575202000000000000
          Top = 26.566945000000000000
          Width = 61.379567200000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."stanlalu"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 683.339024000000000000
          Top = 26.566945000000000000
          Width = 65.763822000000000000
          Height = 24.566945000000000000
          DataField = 'stanskrg'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."stanskrg"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 753.487100800000000000
          Top = 26.566945000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataField = 'pakai'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."pakai"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 810.482413200000000000
          Top = 26.566945000000000000
          Width = 92.069350800000000000
          Height = 24.566945000000000000
          DataField = 'biayapemakaian'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."biayapemakaian"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 906.936018800000000000
          Top = 26.566945000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'administrasi'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."administrasi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 1007.773879200000000000
          Top = 26.566945000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'pemeliharaan'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."pemeliharaan"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 1108.611739600000000000
          Top = 26.566945000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'rekair'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."rekair"]')
          ParentFont = False
          WordWrap = False
        end
        object rektglpublish: TfrxMemoView
          Left = 372.056933200000000000
          Top = 26.566945000000000000
          Width = 135.911898800000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."tglkoreksi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 617.575202000000000000
          Top = 2.000000000000000000
          Width = 61.379567200000000000
          Height = 24.566945000000000000
          DataField = 'stanlalu1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."stanlalu1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 683.339024000000000000
          Top = 2.000000000000000000
          Width = 65.763822000000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."stanskrg1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 753.487100800000000000
          Top = 2.000000000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataField = 'pakai1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."pakai1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 810.482413200000000000
          Top = 2.000000000000000000
          Width = 92.069350800000000000
          Height = 24.566945000000000000
          DataField = 'biayapemakaian1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."biayapemakaian1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 906.936018800000000000
          Top = 2.000000000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'administrasi1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."administrasi1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 1007.773879200000000000
          Top = 2.000000000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'pemeliharaan1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."pemeliharaan1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 1108.611739600000000000
          Top = 2.000000000000000000
          Width = 96.453605600000000000
          Height = 24.566945000000000000
          DataField = 'rekair1'
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[rek."rekair1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 372.056933200000000000
          Top = 2.000000000000000000
          Width = 135.911898800000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."tglkoreksi1"]')
          ParentFont = False
          WordWrap = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 35.074038400000000000
          Height = 44.220501000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 301.908856400000000000
          Top = 24.566945000000000000
          Width = 907.540743600000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 301.908856400000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 126.538664400000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 43.237823200000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 1209.449600000000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object rekkoderayon: TfrxMemoView
          Left = 512.353086800000000000
          Top = 26.566945000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."koderayon"]')
          ParentFont = False
        end
        object rekkoderayon1: TfrxMemoView
          Left = 512.353086800000000000
          Top = 2.000000000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."koderayon1"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 564.964144400000000000
          Top = 26.566945000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataField = 'kodegol'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 564.964144400000000000
          Top = 2.000000000000000000
          Width = 52.611057600000000000
          Height = 24.566945000000000000
          DataField = 'kodegol1'
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."kodegol1"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 512.353086800000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 569.348399200000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 617.575202000000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 683.339024000000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 753.487100800000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 810.482413200000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 906.936018800000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 1007.773879200000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 1108.611739600000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 306.293111200000000000
          Top = 2.000000000000000000
          Width = 61.379567200000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."userkoreksi1"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 306.293111200000000000
          Top = 26.566945000000000000
          Width = 61.379567200000000000
          Height = 24.566945000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[rek."userkoreksi"]')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 367.672678400000000000
          Height = 49.133890000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Width = 1205.670070000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 1254.803960000000000000
        Condition = 'rek."nosamb"'
        KeepTogether = True
        Stretched = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 381.732530000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 1108.611739600000000000
          Width = 96.453605600000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            '[<rek."rekair">-<rek."rekair1">]')
          ParentFont = False
          WordWrap = False
        end
        object Line17: TfrxLineView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 1205.670070000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 1209.449600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 1108.611739600000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 3.779530000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 1254.803960000000000000
        object Memo40: TfrxMemoView
          Left = 525.505851200000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'Bulan/Tahun : ')
          ParentFont = False
        end
        object judul: TfrxMemoView
          Left = 525.505851200000000000
          Top = 7.559060000000000000
          Width = 381.430167600000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            'LAPORAN KOREKSI DRD')
          ParentFont = False
        end
        object bulan: TfrxMemoView
          Left = 635.112221200000000000
          Top = 26.456710000000000000
          Width = 276.208052400000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '???')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 341.971874400000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header1"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 341.971874400000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."header2"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 109.606370000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Width = 35.074038400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 38.853568400000000000
          Width = 87.685096000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NOSAMB')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 126.538664400000000000
          Width = 175.370192000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 367.672678400000000000
          Width = 144.680408400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TGl.KOREKSI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 512.353086800000000000
          Width = 56.995312400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'RYN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 569.348399200000000000
          Width = 48.226802800000000000
          Height = 30.236240000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 617.575202000000000000
          Width = 65.763822000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M.LALU')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 683.339024000000000000
          Width = 70.148076800000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M.KINI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 753.487100800000000000
          Width = 56.995312400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'M3')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 810.482413200000000000
          Width = 96.453605600000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA AIR')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 906.936018800000000000
          Width = 100.837860400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ADM')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 1007.773879200000000000
          Width = 100.837860400000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PEM')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 1108.611739600000000000
          Width = 100.837860400000000000
          Height = 30.236240000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object Line21: TfrxLineView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 1205.670070000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 3.779530000000000000
          Width = 1205.670070000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 3.779530000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 43.237823200000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 126.538664400000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 367.672678400000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 512.353086800000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 569.348399200000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Left = 617.575202000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 683.339024000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 753.487100800000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 810.482413200000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 906.936018800000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 1007.773879200000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 1108.611739600000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 1209.449600000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          Left = 301.908856400000000000
          Width = 65.763822000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'USER')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line42: TfrxLineView
          Left = 301.908856400000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 710.551640000000000000
        Width = 1254.803960000000000000
        object Memo62: TfrxMemoView
          Left = 3.779530000000000000
          Width = 306.897836000000000000
          Height = 18.897650000000000000
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
        object Memo63: TfrxMemoView
          Left = 942.010057200000000000
          Width = 267.439542800000000000
          Height = 18.897650000000000000
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
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 222.992270000000000000
        Top = 464.882190000000000000
        Width = 1254.803960000000000000
        Stretched = True
        object jab1: TfrxMemoView
          Left = 117.770154800000000000
          Top = 68.031540000000000000
          Width = 242.230077700000000000
          Height = 41.574830000000000000
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
          Left = 117.770154800000000000
          Top = 147.401670000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
          Left = 117.770154800000000000
          Top = 162.519790000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
        object Date: TfrxMemoView
          Left = 876.246235200000000000
          Top = 34.015770000000000000
          Width = 324.434855200000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Memo.UTF8 = (
            '[pejabat."footer"] , [Date]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 117.770154800000000000
          Top = 52.913420000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
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
        object Memo35: TfrxMemoView
          Left = 503.584577200000000000
          Top = 68.031540000000000000
          Width = 229.077313300000000000
          Height = 41.574830000000000000
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
        object Memo36: TfrxMemoView
          Left = 503.584577200000000000
          Top = 147.401670000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
          Left = 503.584577200000000000
          Top = 162.519790000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
          Left = 503.584577200000000000
          Top = 52.913420000000000000
          Width = 227.981249600000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
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
          Left = 876.246235200000000000
          Top = 68.031540000000000000
          Width = 229.077313300000000000
          Height = 41.574830000000000000
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
          Left = 876.246235200000000000
          Top = 147.401670000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
          Left = 876.246235200000000000
          Top = 162.519790000000000000
          Width = 241.134014000000000000
          Height = 15.118120000000000000
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
          Left = 876.246235200000000000
          Top = 52.913420000000000000
          Width = 232.365504400000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = rek
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
        object Memo37: TfrxMemoView
          Left = 1108.611739600000000000
          Width = 96.453605600000000000
          Height = 18.897650000000000000
          DataSet = rek
          DataSetName = 'rek'
          DisplayFormat.FormatStr = '%2.n'
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
            
              '[SUM(<rek."rekair"> ,MasterData1) - SUM(<rek."rekair1"> ,MasterD' +
              'ata1)    ]')
          ParentFont = False
          WordWrap = False
        end
        object Line37: TfrxLineView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 1205.670070000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 1209.449600000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 1108.611739600000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 3.779530000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo38: TfrxMemoView
          Left = 959.547076400000000000
          Width = 131.527644000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 17cpi'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL SELISIH : ')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object rek: TfrxDBDataset
    UserName = 'rek'
    CloseDataSource = False
    DataSource = Drek
    BCDToCurrency = False
    Left = 352
    Top = 192
  end
  object Drek: TMyDataSource
    DataSet = Qrek
    Left = 464
    Top = 208
  end
  object ActionList1: TActionList
    Left = 432
    Top = 336
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
end
