object Ubuatperiode: TUbuatperiode
  Left = 915
  Top = 318
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Buat Periode Baru'
  ClientHeight = 449
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 449
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object Progress: TRzProgressBar
      Left = 6
      Top = 39
      Width = 324
      Height = 21
      Align = alTop
      BorderOuter = fsNone
      BorderWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      InteriorOffset = 0
      ParentFont = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
      Visible = False
    end
    object l1: TcxLabel
      Left = 24
      Top = 149
      Caption = 'Bulan/Tahun'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object periode: TRzDateTimePicker
      Left = 175
      Top = 149
      Width = 130
      Height = 23
      Date = 41660.788053020830000000
      Format = 'MMMM yyy'
      Time = 41660.788053020830000000
      Color = clWhite
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = periodeChange
      FocusColor = clBtnFace
      FrameColor = clGradientActiveCaption
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object l2: TcxLabel
      Left = 24
      Top = 174
      Caption = 'Tgl.Mulai Denda I'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal1: TcxDateEdit
      Left = 175
      Top = 174
      EditValue = 42572d
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 130
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 344
      Width = 281
      Height = 40
      Caption = 'Buat Peiode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 388
      Width = 281
      Height = 40
      Caption = 'Batal'
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
    object l3: TcxLabel
      Left = 24
      Top = 198
      Caption = 'Tgl.Mulai Denda II'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal2: TcxDateEdit
      Left = 175
      Top = 198
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 130
    end
    object l4: TcxLabel
      Left = 24
      Top = 222
      Caption = 'Tgl.Mulai Denda III'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal3: TcxDateEdit
      Left = 175
      Top = 222
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 130
    end
    object tanggal4: TcxDateEdit
      Left = 175
      Top = 246
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 130
    end
    object l5: TcxLabel
      Left = 24
      Top = 246
      Caption = 'Tgl.Mulai Denda IV'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object l6: TcxLabel
      Left = 24
      Top = 270
      Caption = 'Tgl.Mulai Denda Per Bulan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal5: TcxDateEdit
      Left = 175
      Top = 270
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 130
    end
    object cxCheckBox1: TcxCheckBox
      Left = 24
      Top = 312
      TabStop = False
      Caption = 'Saya sudah mengisi data dengan benar ....'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 281
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 324
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'BUAT PERIODE BARU'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object cekair: TcxCheckBox
      Left = 24
      Top = 72
      TabStop = False
      Caption = 'Buat Periode Air'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 281
    end
    object ceklimbah: TcxCheckBox
      Left = 24
      Top = 96
      TabStop = False
      Caption = 'Buat Periode Limbah'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 281
    end
    object ceklltt: TcxCheckBox
      Left = 24
      Top = 120
      TabStop = False
      Caption = 'Buat periode L2T2'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 281
    end
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    Left = 288
    Top = 208
  end
  object Qpelanggan: TMyQuery
    SQLInsert.Strings = (
      'SELECT'
      'COUNT(p.nosamb) AS pelanggan,'
      'SUM(p.status NOT IN ("0")) AS pelaktif,'
      'SUM(p.status IN ("0")) AS nonaktif,'
      'SUM(c.flagaktif IN ("1","2","3")) AS rekaktif,'
      'SUM(c.flagpublish="1") AS publish,'
      'SUM(c.flagpublish="0") AS belumpublish,'
      'SUM(c.flaglunas="1") AS lunas,'
      'SUM(IF(c.flagpublish="1",c.pakai,0)) AS pakai,'
      'SUM(IF(c.flagpublish="1",c.rekair,0)) AS rekair,'
      'SUM(IF(c.flagpublish="1",c.total,0)) AS total,'
      'SUM(IF(c.flagpublish="1",c.total,0)) AS biayapemakaian,'
      
        'SUM(IF(c.flagpublish="1",c.administrasi+c.administrasilain,0)) A' +
        'S administrasi,'
      
        'SUM(IF(c.flagpublish="1",c.pemeliharaan+c.pemeliharaanlain,0)) A' +
        'S pemeliharaan,'
      
        'SUM(IF(c.flagpublish="1",c.retribusi+c.retribusilain,0)) AS retr' +
        'ibusi,'
      'SUM(IF(c.flagpublish="1",c.dendatunggakan,0)) AS dendatunggakan,'
      'SUM(IF(c.flagpublish="1",c.meterai,0)) AS meterai,'
      'SUM(IF(c.flagpublish="1",c.pelayanan,0)) AS pelayanan,'
      'SUM(IF(c.flagpublish="1",c.airlimbah,0)) AS airlimbah,'
      'SUM(IF(c.flagpublish="1",c.dendapakai0,0)) AS dendapakai0,'
      'SUM(IF(c.flagpublish="1",c.ppn,0)) AS ppn')
    SQLRefresh.Strings = (
      'SELECT '
      'p.nosamb,'
      'p.serimeter,'
      'g.kodegolyangberlaku,'
      'd.kodediameteryangberlaku,'
      'p.kodegol,'
      'p.kodediameter,'
      'p.koderayon,'
      'p.kodekelurahan,'
      '0 as stanlalu,'
      'g.administrasi+d.administrasi as administrasi,'
      'g.pemeliharaan+d.pemeliharaan AS pemeliharaan,'
      'g.pelayanan+d.pelayanan AS pelayanan,'
      'g.retribusi+d.retribusi AS retribusi,'
      'g.airlimbah+d.airlimbah AS airlimbah,'
      'b1.administrasilain,'
      'b2.pemeliharaanlain,'
      'b3.retribusilain,'
      'p.status as flagaktif,'
      'p.kodekolektif,'
      ':tglmulaidenda as tglmulaidenda,'
      ':tglmulaidenda2 as tglmulaidenda2,'
      ':tglmulaidenda3 as tglmulaidenda3,'
      ':tglmulaidenda4 as tglmulaidenda4,'
      ':tglmulaidendaperbulan as tglmulaidendaperbulan,'
      ''
      'g.dendatunggakan,'
      'g.dendatunggakan2,'
      'g.dendatunggakan3,'
      'g.dendatunggakan4,'
      'g.dendatunggakanperbulan,'
      ''
      'p.kodeadministrasilain,'
      'p.kodepemeliharaanlain,'
      'i.kodegolyangberlaku as koderetribusilain,'
      ':waktu as waktu,'
      'p.kodeblok,'
      'p.luasrumah'
      'FROM pelanggan p '
      
        'LEFT JOIN (select * FROM golongan where aktif="1" GROUP BY kodeg' +
        'ol ORDER BY periodemulaiberlaku) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select * FROM golongan_ipl where aktif="1" GROUP BY k' +
        'odegol ORDER BY periodemulaiberlaku) i ON p.koderetribusilain=i.' +
        'kodegol'
      
        'LEFT JOIN (select * FROm diameter WHERE aktif="1" GROUP BY koded' +
        'iameter ORDER BY periodemulaiberlaku) d ON p.kodediameter=d.kode' +
        'diameter'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.kodeadministrasilain=b1.`k' +
        'ode`'
      
        'LEFT JOIN `bypemeliharaan_lain` b2 ON p.kodepemeliharaanlain=b2.' +
        '`kode`'
      'LEFT JOIN `byretribusi_lain` b3 ON p.koderetribusilain=b3.`kode`'
      'WHERE '
      'p.nosamb IS NOT NULL AND '
      
        '(p.status<>"0" OR (p.status="0" and DATE_FORMAT(p.tglputus,"%Y%m' +
        '")>=:periode) OR (p.status="0" and p.tglputus IS NULL))'
      'ORDER BY CAST(p.nosamb AS UNSIGNED) ASC')
    SQLLock.Strings = (
      'SELECT '
      'p.nosamb,'
      'p.norekening,'
      'p.nama,'
      'p.alamat,'
      'p.serimeter,'
      'p.kodegol,'
      'g.golongan,'
      'p.kodediameter,'
      'p.koderayon,'
      'p.kodekelurahan,'
      'p.kodekolektif,'
      'p.status,'
      'p.kodeadministrasilain,'
      'p.kodepemeliharaanlain,'
      'p.koderetribusilain,'
      'p.flag,'
      'p.kodeblok,'
      'p.luasrumah,'
      ''
      'COALESCE(b1.`administrasilain`,0) AS administrasilain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS pemeliharaanlain,'
      'COALESCE(b3.`retribusilain`,0) AS retribusilain'
      ''
      'FROM pelanggan p '
      
        'LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodego' +
        'l ) g ON p.kodegol=g.kodegol'
      
        'LEFT JOIN (select kodediameter,ukuran FROm diameter GROUP BY kod' +
        'ediameter) d ON p.kodediameter=d.kodediameter'
      
        'LEFT JOIN byadministrasi_lain b1 ON p.kodeadministrasilain=b1.`k' +
        'ode`'
      
        'LEFT JOIN `bypemeliharaan_lain` b2 ON p.kodepemeliharaanlain=b2.' +
        '`kode`'
      'LEFT JOIN `byretribusi_lain` b3 ON p.koderetribusilain=b3.`kode`'
      'WHERE '
      'p.nosamb IS NOT NULL AND '
      
        '(p.status<>"0" OR (p.status="0" and DATE_FORMAT(p.tglputus,"%Y%m' +
        '")>:periode) OR (p.status="0" and p.tglputus IS NULL))'
      'ORDER BY CAST(p.nosamb AS UNSIGNED) ASC')
    Connection = DM.Conn
    Left = 488
    Top = 192
  end
  object ActionList1: TActionList
    Left = 176
    Top = 104
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
  object Qper: TMyQuery
    Connection = DM.Conn
    Left = 344
    Top = 128
  end
  object Qangsuran: TMyQuery
    Connection = DM.Conn
    Left = 136
    Top = 136
  end
  object Qexec: TMyQuery
    Connection = DM.Conn
    Left = 200
    Top = 200
  end
  object ActionList2: TActionList
    Left = 48
    Top = 65513
    object Action3: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action4: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
  object Qgol: TMyQuery
    Connection = DM.Conn
    Left = 368
    Top = 288
  end
  object Qdiameter: TMyQuery
    Connection = DM.Conn
    Left = 432
    Top = 288
  end
  object QcekHost: TMyQuery
    Connection = Umain.host
    Left = 448
    Top = 120
  end
end