object uterbitkanlimbah: Tuterbitkanlimbah
  Left = 936
  Top = 194
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Terbitkan Pelanggan ke Rekening'
  ClientHeight = 764
  ClientWidth = 1135
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object periode: TRzDateTimePicker
    Left = 200
    Top = 55
    Width = 129
    Height = 21
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
    Font.Height = -11
    Font.Name = 'tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = False
    Visible = False
    FlatButtonColor = 6316128
    FlatButtons = True
    DisabledColor = 6316128
    FrameColor = clAppWorkSpace
    FrameHotColor = clBlack
    FrameHotStyle = fsFlat
    FrameVisible = True
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 764
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 1
    object Gridpel: TcxGrid
      Left = 22
      Top = 88
      Width = 1091
      Height = 657
      BorderWidth = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      object gtvpel: TcxGridDBTableView
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
        OnCellDblClick = gtvpelCellDblClick
        OnCustomDrawCell = gtvpelCustomDrawCell
        DataController.DataSource = DSpel
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Kind = skCount
          end
          item
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
            Kind = skCount
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = gtvpelidpelanggan
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        Styles.Selection = cxStyle1
        object gtvpelColumn6: TcxGridDBColumn
          Caption = 'P'
          DataBinding.FieldName = 'flag'
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
          Width = 28
        end
        object gtvpelColumn13: TcxGridDBColumn
          Caption = 'No.Limbah'
          DataBinding.FieldName = 'nomorlimbah'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object gtvpelidpelanggan: TcxGridDBColumn
          Caption = 'NO.SAMB'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object gtvpelnama: TcxGridDBColumn
          Caption = 'NAMA'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 172
        end
        object gtvpelalamat: TcxGridDBColumn
          Caption = 'ALAMAT'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 266
        end
        object gtvpelkodegol: TcxGridDBColumn
          Caption = 'GOL'
          DataBinding.FieldName = 'kodelimbah'
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object gtvpelkoderayon: TcxGridDBColumn
          Caption = 'RAYON'
          DataBinding.FieldName = 'koderayon'
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object gtvpelColumn10: TcxGridDBColumn
          Caption = 'WIL'
          DataBinding.FieldName = 'kodewil'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object gtvpelColumn1: TcxGridDBColumn
          Caption = 'KOLEKTIF'
          DataBinding.FieldName = 'kodekolektif'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object gtvpelColumn7: TcxGridDBColumn
          Caption = 'Flag'
          DataBinding.FieldName = 'flag'
          Visible = False
          VisibleForCustomization = False
        end
        object gtvpelColumn11: TcxGridDBColumn
          Caption = 'STATUS'
          DataBinding.FieldName = 'statuspel'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gtvpelColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gtvpel
      end
    end
    object RzPanel2: TRzPanel
      Left = 6
      Top = 42
      Width = 1123
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 97
        Top = 0
        Width = 176
        Height = 40
        Caption = 'Terbitkan yang dipilih'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = cxButton1Click
        Align = alLeft
        OptionsImage.ImageIndex = 32
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object refresh: TcxButton
        Left = 0
        Top = 0
        Width = 97
        Height = 40
        Caption = 'Refresh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = refreshClick
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object cxButton2: TcxButton
        Left = 273
        Top = 0
        Width = 80
        Height = 40
        Caption = 'Print'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = cxButton2Click
        Align = alLeft
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 1123
      Height = 36
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'TERBITKAN PELANGGAN LIMBAH'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Qpel: TMyQuery
    Connection = DM.Conn
    Left = 128
    Top = 152
  end
  object DSpel: TMyDataSource
    DataSet = Qpel
    Left = 200
    Top = 224
  end
  object Qexec: TMyQuery
    Connection = DM.Conn
    Left = 264
    Top = 160
    object StringField1: TStringField
      FieldName = 'nosamb'
      Origin = 'd.nosamb'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'norekening'
      Origin = 'p.norekening'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'nama'
      Origin = 'p.nama'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'alamat'
      Origin = 'p.alamat'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'koderayon'
      Origin = 'p.koderayon'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'kodegol'
      Origin = 'p.kodegol'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'kodediameter'
      Origin = 'p.kodediameter'
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'kodekolektif'
      Origin = 'p.kodekolektif'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'serimeter'
      Origin = 'p.serimeter'
    end
    object FloatField1: TFloatField
      FieldName = 'stan'
      Origin = 's.stan'
    end
    object StringField10: TStringField
      FieldName = 'hashing'
      Origin = 'hashing'
      Size = 4
    end
  end
  object Qpelmain: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT p.nomorlimbah,p.nosamb,p.nama,p.alamat,p.koderayon,r.kode' +
        'wil,p.kodekelurahan,y.kodecabang,p.kodelimbah,p.kodekolektif,'
      ''
      'CASE p.status'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Tutup Total / Non Aktif"'
      ' WHEN 2 THEN "Segel"'
      ' WHEN 3 THEN "Tutup Sementara"'
      'END'
      'AS statuspel,'
      ''
      'p.status,'
      'x.tglmulaidenda,'
      'z.flag'
      ''
      ''
      
        'FROM dump11 z LEFT JOIN pelanggan_limbah p ON z.nomorlimbah=p.no' +
        'morlimbah '
      
        'LEFT JOIn (SELECT kodelimbah,nama FROM golongan_limbah GROUP BY ' +
        'kodelimbah) g On p.kodelimbah=g.kodelimbah'
      'LEFT JOIN periode x ON x.periode=:periode'
      'left join rayon r On p.koderayon=r.koderayon'
      'left join kelurahan y on p.kodekelurahan=y.kodekelurahan'
      
        'WHERE z.nomorlimbah  NOT IN (SELECT nomorlimbah FROM dump22) AND' +
        ' p.status<>"0"'
      'ORDER BY CAST(z.nomorlimbah AS UNSIGNED) ASC')
    Connection = DM.Conn
    Left = 128
    Top = 328
  end
  object Qcek: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  p.nomorlimbah,'
      '  p.nosamb,'
      '  p.nama,'
      '  p.alamat,'
      '  p.koderayon,'
      '  r.kodewil,'
      '  p.kodekelurahan,'
      '  p.kodelimbah,'
      '  p.kodekolektif,'
      '  p.status, '
      '  p.flag '
      ''
      '  FROM'
      '  dump11 z '
      
        '  LEFT JOIN pelanggan_limbah p ON z.nomorlimbah = p.nomorlimbah ' +
        ' '
      '  LEFT JOIN periode per ON per.periode = :periode'
      '  left join rayon r On p.koderayon=r.koderayon'
      '  left join kelurahan y on p.kodekelurahan=y.kodekelurahan'
      ''
      ''
      
        '  WHERE z.flag = "1" AND z.nomorlimbah NOT IN (SELECT nomorlimba' +
        'h FROM dump22)')
    Connection = DM.Conn
    Left = 392
    Top = 224
  end
  object ActionList1: TActionList
    Left = 520
    Top = 208
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
  end
  object Qtabel: TMyQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  p.nosamb,'
      '  p.norekening,'
      '  p.nama,'
      '  p.alamat,'
      '  p.koderayon,'
      '  r.kodewil,'
      '  p.kodekelurahan,'
      '  y.kodecabang,'
      '  p.kodegol,'
      '  p.kodediameter,'
      '  p.kodekolektif,'
      '  p.serimeter,'
      '  COALESCE(s.stan, 0) AS stan,'
      '  UPPER('
      '    LEFT('
      '      ('
      '        CONCAT('
      '          LEFT(MD5(p.nosamb), 3),'
      '          RIGHT(MD5(CONCAT(NOW(), p.nosamb)), 2)'
      '        )'
      '      ),'
      '      4'
      '    )'
      '  ) AS hashing,'
      '  g.administrasi + d.administrasi AS administrasi,'
      '  g.pemeliharaan + d.pemeliharaan AS pemeliharaan,'
      '  g.pelayanan + d.pelayanan AS pelayanan,'
      '  g.retribusi + d.retribusi AS retribusi,'
      '  g.airlimbah + d.airlimbah AS airlimbah,'
      '  p.status,'
      '  x.tglmulaidenda,'
      'x.tglmulaidenda2,'
      '  z.flag,'
      '  p.sisaangsuran,'
      
        '  IF(p.sisaangsuran>0,IF(angsuranperbulan<=sisaangsuran,angsuran' +
        'perbulan,sisaangsuran),0) as cicilan,'
      '  g.dendatunggakan,'
      ' g.dendatunggakan2,'
      ' p.kodeadministrasilain,'
      'p.kodepemeliharaanlain,'
      'COALESCE(b1.`administrasilain`,0) AS administrasilain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS pemeliharaanlain'
      ''
      'FROM'
      '  dump1 z '
      '  LEFT JOIN pelanggan p '
      '    ON z.nosamb = p.nosamb '
      '  LEFT JOIN golongan g '
      '    ON p.kodegol = g.kodegol '
      '  LEFT JOIN diameter d '
      '    ON p.kodediameter = d.kodediameter '
      '  LEFT JOIN stan s '
      '    ON p.nosamb = s.nosamb '
      '  LEFT JOIN periode X'
      '    ON x.periode = :periode'
      '  left join rayon r On p.koderayon=r.koderayon'
      'left join kelurahan y on p.kodekelurahan=y.kodekelurahan'
      ' '
      
        'LEFT JOIN byadministrasi_lain b1 ON p.kodeadministrasilain=b1.`k' +
        'ode`'
      
        'LEFT JOIN `bypemeliharaan_lain` b2 ON p.kodepemeliharaanlain=b2.' +
        '`kode`'
      ''
      'WHERE z.flag = "1" '
      '  AND z.nosamb NOT IN '
      '  (SELECT '
      '    nosamb '
      '  FROM'
      '    dump2)')
    Connection = DM.Conn
    Left = 272
    Top = 304
  end
  object Qangsuran: TMyQuery
    Connection = DM.Conn
    Left = 112
    Top = 248
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
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 408
    Top = 312
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = Gridpel
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43775.675304282410000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsCards.AutoWidth = True
      OptionsCards.Borders = False
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.Visible = False
      OptionsRefinements.TransparentGraphics = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      StyleRepository = cxStyleRepository2
      Styles.BandHeader = cxStyle4
      Styles.Caption = cxStyle3
      Styles.FilterBar = cxStyle2
      Styles.Footer = cxStyle5
      Styles.Header = cxStyle6
      Styles.Selection = cxStyle7
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object Qdiameter: TMyQuery
    Connection = DM.Conn
    Left = 496
    Top = 488
  end
  object Qgol: TMyQuery
    Connection = DM.Conn
    Left = 432
    Top = 488
  end
end
