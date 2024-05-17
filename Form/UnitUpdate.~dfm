object Uupdate: TUupdate
  Left = 1080
  Top = 289
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Update Perubahan Ke Rekening'
  ClientHeight = 181
  ClientWidth = 210
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
    Width = 210
    Height = 181
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object ok: TcxButton
      Left = 34
      Top = 88
      Width = 143
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object no: TcxButton
      Left = 34
      Top = 122
      Width = 143
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object periode: TRzDateTimePicker
      Left = 34
      Top = 55
      Width = 143
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
      Color = clBtnHighlight
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      FlatButtonColor = 6316128
      FlatButtons = True
      DisabledColor = 6316128
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 198
      Height = 35
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'PILIH DRD'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Qisi: TMyQuery
    Connection = DM.Conn
    Left = 248
    Top = 32
  end
  object ActionList1: TActionList
    Left = 272
    Top = 112
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
  object Qmirror_: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      'c.nosamb,'
      'IF(c.flagaktif IN("1","2"),"1","0") AS flagaktif,'
      'c.flaglunas,'
      'c.flagpublish,'
      'c.flagkoreksi,'
      'c.flagkirim,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.stanangkat,'
      'c.kodegol,'
      'c.kodediameter,'
      'c.pakai,'
      'g.minpakai,'
      
        'COALESCE(g.administrasi,0)+COALESCE(d.administrasi,0) AS xadmini' +
        'strasi,'
      
        'COALESCE(g.pemeliharaan,0)+COALESCE(d.pemeliharaan,0) AS xpemeli' +
        'haraan,'
      'COALESCE(g.pelayanan,0)+COALESCE(d.pelayanan,0) AS xpelayanan,'
      'COALESCE(g.retribusi,0)+COALESCE(d.retribusi,0) AS xretribusi,'
      'COALESCE(g.airlimbah,0)+COALESCE(d.airlimbah,0) AS xairlimbah,'
      
        'COALESCE(g.dendapakai0,0)+COALESCE(d.dendapakai0,0) AS xdendapak' +
        'ai0,'
      'COALESCE(g.retribusi_pakai,0) AS xretribusipakai,'
      'COALESCE(g.ppn,0)as xppn,'
      'COALESCE(b1.`administrasilain`,0) AS trf_admlain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS trf_pemlain,'
      'COALESCE(b3.`retribusilain`,0) AS trf_retlain,'
      'c.biayapemakaian AS zbiayapemakaian,'
      'c.meterai AS zmeterai,'
      'c.pemeliharaan AS zpemeliharaan,'
      'c.retribusi AS zretribusi,'
      'c.administrasi AS zadministrasi,'
      'c.pelayanan AS zpelayanan,'
      'c.dendatunggakan AS zdendatunggakan,'
      'c.airlimbah as zairlimbah,'
      'c.dendapakai0 as zdendapakai0,'
      'c.administrasilain as zadministrasilain,'
      'c.pemeliharaanlain as zpemeliharaanlain,'
      'c.retribusilain as zretribusilain,'
      ''
      'COALESCE(g.bb1,0) as bb1,'
      'COALESCE(g.bb2,0) as bb2,'
      'COALESCE(g.bb3,0) as bb3,'
      'COALESCE(g.bb4,0) as bb4,'
      'COALESCE(g.bb5,0) as bb5,'
      'COALESCE(g.ba1,0) as ba1,'
      'COALESCE(g.ba2,0) as ba2,'
      'COALESCE(g.ba3,0) as ba3,'
      'COALESCE(g.ba4,0) as ba4,'
      'COALESCE(g.ba5,0) as ba5,'
      'COALESCE(g.t1,0) as t1,'
      'COALESCE(g.t2,0) as t2,'
      'COALESCE(g.t3,0) as t3,'
      'COALESCE(g.t4,0) as t4,'
      'COALESCE(g.t5,0) as t5,'
      'COALESCE(g.t1_tetap,0) as t1_tetap,'
      'COALESCE(g.t2_tetap,0) as t2_tetap,'
      'COALESCE(g.t3_tetap,0) as t3_tetap,'
      'COALESCE(g.t4_tetap,0) as t4_tetap,'
      'COALESCE(g.t5_tetap,0) as t5_tetap,'
      'm.*,'
      'c.tglmulaidenda,'
      'c.tglmulaidenda2,'
      'c.tglmulaidenda3,'
      'c.tglmulaidenda4,'
      'c.rekair,'
      'p.flag,'
      'c.trf_dendatunggakan,'
      'c.trf_dendatunggakan2,'
      'c.trf_dendatunggakan3,'
      'c.trf_dendatunggakan4,'
      'c.trf_dendatunggakanperbulan,'
      'c.tglmulaidendaperbulan')
    Connection = DM.Conn
    Left = 40
    Top = 360
    object Qmirror_flagaktif: TStringField
      FieldName = 'flagaktif'
      Origin = 'flagaktif'
      FixedChar = True
      Size = 1
    end
    object Qmirror_flaglunas: TStringField
      FieldName = 'flaglunas'
      Origin = 'c.flaglunas'
      FixedChar = True
      Size = 1
    end
    object Qmirror_flagpublish: TStringField
      FieldName = 'flagpublish'
      Origin = 'c.flagpublish'
      FixedChar = True
      Size = 1
    end
    object Qmirror_flagkoreksi: TStringField
      FieldName = 'flagkoreksi'
      Origin = 'c.flagkoreksi'
      FixedChar = True
      Size = 1
    end
    object Qmirror_stanlalu: TFloatField
      FieldName = 'stanlalu'
      Origin = 'c.stanlalu'
    end
    object Qmirror_stanskrg: TFloatField
      FieldName = 'stanskrg'
      Origin = 'c.stanskrg'
    end
    object Qmirror_stanangkat: TFloatField
      FieldName = 'stanangkat'
      Origin = 'c.stanangkat'
    end
    object Qmirror_kodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
    object Qmirror_kodediameter: TStringField
      FieldName = 'kodediameter'
      Origin = 'c.kodediameter'
      Size = 50
    end
    object Qmirror_minpakai: TFloatField
      FieldName = 'minpakai'
      Origin = 'g.minpakai'
    end
    object Qmirror_xadministrasi: TFloatField
      FieldName = 'xadministrasi'
      Origin = 'xadministrasi'
    end
    object Qmirror_xpemeliharaan: TFloatField
      FieldName = 'xpemeliharaan'
      Origin = 'xpemeliharaan'
    end
    object Qmirror_xpelayanan: TFloatField
      FieldName = 'xpelayanan'
      Origin = 'xpelayanan'
    end
    object Qmirror_xretribusi: TFloatField
      FieldName = 'xretribusi'
      Origin = 'xretribusi'
    end
    object Qmirror_xairlimbah: TFloatField
      FieldName = 'xairlimbah'
      Origin = 'xairlimbah'
    end
    object Qmirror_xdendapakai0: TFloatField
      FieldName = 'xdendapakai0'
      Origin = 'xdendapakai0'
    end
    object Qmirror_bb1: TFloatField
      FieldName = 'bb1'
      Origin = 'bb1'
    end
    object Qmirror_bb2: TFloatField
      FieldName = 'bb2'
      Origin = 'bb2'
    end
    object Qmirror_bb3: TFloatField
      FieldName = 'bb3'
      Origin = 'bb3'
    end
    object Qmirror_bb4: TFloatField
      FieldName = 'bb4'
      Origin = 'bb4'
    end
    object Qmirror_ba1: TFloatField
      FieldName = 'ba1'
      Origin = 'ba1'
    end
    object Qmirror_ba2: TFloatField
      FieldName = 'ba2'
      Origin = 'ba2'
    end
    object Qmirror_ba3: TFloatField
      FieldName = 'ba3'
      Origin = 'ba3'
    end
    object Qmirror_ba4: TFloatField
      FieldName = 'ba4'
      Origin = 'ba4'
    end
    object Qmirror_t1: TFloatField
      FieldName = 't1'
      Origin = 't1'
    end
    object Qmirror_t2: TFloatField
      FieldName = 't2'
      Origin = 't2'
    end
    object Qmirror_t3: TFloatField
      FieldName = 't3'
      Origin = 't3'
    end
    object Qmirror_t4: TFloatField
      FieldName = 't4'
      Origin = 't4'
    end
    object Qmirror_t1_tetap: TStringField
      FieldName = 't1_tetap'
      Origin = 't1_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirror_t2_tetap: TStringField
      FieldName = 't2_tetap'
      Origin = 't2_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirror_t3_tetap: TStringField
      FieldName = 't3_tetap'
      Origin = 't3_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirror_t4_tetap: TStringField
      FieldName = 't4_tetap'
      Origin = 't4_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirror_idx: TStringField
      FieldName = 'idx'
      Origin = 'm.idx'
      FixedChar = True
      Size = 1
    end
    object Qmirror_batas1: TFloatField
      FieldName = 'batas1'
      Origin = 'm.batas1'
    end
    object Qmirror_batas2: TFloatField
      FieldName = 'batas2'
      Origin = 'm.batas2'
    end
    object Qmirror_batas3: TFloatField
      FieldName = 'batas3'
      Origin = 'm.batas3'
    end
    object Qmirror_meterai1: TFloatField
      FieldName = 'meterai1'
      Origin = 'm.meterai1'
    end
    object Qmirror_meterai2: TFloatField
      FieldName = 'meterai2'
      Origin = 'm.meterai2'
    end
    object Qmirror_meterai3: TFloatField
      FieldName = 'meterai3'
      Origin = 'm.meterai3'
    end
    object Qmirror_tglmulaidenda: TDateField
      FieldName = 'tglmulaidenda'
      Origin = 'c.tglmulaidenda'
    end
    object Qmirror_pakai: TFloatField
      FieldName = 'pakai'
      Origin = 'c.pakai'
    end
    object Qmirror_flagkirim: TStringField
      FieldName = 'flagkirim'
      Origin = 'c.flagkirim'
      FixedChar = True
      Size = 1
    end
    object Qmirror_rekair: TFloatField
      FieldName = 'rekair'
      Origin = 'c.rekair'
    end
    object Qmirror_nosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'c.nosamb'
      Size = 50
    end
    object Qmirror_zbiayapemakaian: TFloatField
      FieldName = 'zbiayapemakaian'
      Origin = 'c.biayapemakaian'
    end
    object Qmirror_zmeterai: TFloatField
      FieldName = 'zmeterai'
      Origin = 'c.meterai'
    end
    object Qmirror_zpemeliharaan: TFloatField
      FieldName = 'zpemeliharaan'
      Origin = 'c.pemeliharaan'
    end
    object Qmirror_zretribusi: TFloatField
      FieldName = 'zretribusi'
      Origin = 'c.retribusi'
    end
    object Qmirror_zadministrasi: TFloatField
      FieldName = 'zadministrasi'
      Origin = 'c.administrasi'
    end
    object Qmirror_zpelayanan: TFloatField
      FieldName = 'zpelayanan'
      Origin = 'c.pelayanan'
    end
    object Qmirror_zdendatunggakan: TFloatField
      FieldName = 'zdendatunggakan'
      Origin = 'c.dendatunggakan'
    end
    object Qmirror_flag: TStringField
      FieldName = 'flag'
      Origin = 'p.flag'
      Size = 50
    end
    object Qmirror_trf_dendatunggakan: TFloatField
      FieldName = 'trf_dendatunggakan'
      Origin = 'c.trf_dendatunggakan'
    end
    object Qmirror_trf_dendatunggakan2: TFloatField
      FieldName = 'trf_dendatunggakan2'
      Origin = 'c.trf_dendatunggakan2'
    end
    object Qmirror_bb5: TFloatField
      FieldName = 'bb5'
      Origin = 'bb5'
    end
    object Qmirror_ba5: TFloatField
      FieldName = 'ba5'
      Origin = 'ba5'
    end
    object Qmirror_t5: TFloatField
      FieldName = 't5'
      Origin = 't5'
    end
    object Qmirror_t5_tetap: TStringField
      FieldName = 't5_tetap'
      Origin = 't5_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirror_trf_admlain: TFloatField
      FieldName = 'trf_admlain'
      Origin = 'trf_admlain'
    end
    object Qmirror_trf_pemlain: TFloatField
      FieldName = 'trf_pemlain'
      Origin = 'trf_pemlain'
    end
    object Qmirror_tglmulaidenda2: TDateField
      FieldName = 'tglmulaidenda2'
      Origin = 'c.tglmulaidenda2'
    end
    object Qmirror_zairlimbah: TFloatField
      FieldName = 'zairlimbah'
      Origin = 'c.airlimbah'
    end
    object Qmirror_zdendapakai0: TFloatField
      FieldName = 'zdendapakai0'
      Origin = 'c.dendapakai0'
    end
    object Qmirror_zadministrasilain: TFloatField
      FieldName = 'zadministrasilain'
      Origin = 'c.administrasilain'
    end
    object Qmirror_zpemeliharaanlain: TFloatField
      FieldName = 'zpemeliharaanlain'
      Origin = 'c.pemeliharaanlain'
    end
    object Qmirror_zretribusilain: TFloatField
      FieldName = 'zretribusilain'
      Origin = 'c.retribusilain'
    end
    object Qmirror_trf_retlain: TFloatField
      FieldName = 'trf_retlain'
      Origin = 'trf_retlain'
    end
    object Qmirror_xppn: TFloatField
      FieldName = 'xppn'
      Origin = 'xppn'
    end
    object Qmirror_tglmulaidenda3: TDateField
      FieldName = 'tglmulaidenda3'
      Origin = 'c.tglmulaidenda3'
    end
    object Qmirror_trf_dendatunggakan3: TFloatField
      FieldName = 'trf_dendatunggakan3'
      Origin = 'c.trf_dendatunggakan3'
    end
    object Qmirror_trf_dendatunggakanperbulan: TFloatField
      FieldName = 'trf_dendatunggakanperbulan'
      Origin = 'c.trf_dendatunggakanperbulan'
    end
    object Qmirror_tglmulaidendaperbulan: TDateField
      FieldName = 'tglmulaidendaperbulan'
      Origin = 'c.tglmulaidendaperbulan'
    end
    object Qmirror_xretribusipakai: TFloatField
      FieldName = 'xretribusipakai'
      Origin = 'xretribusipakai'
    end
    object Qmirror_tglmulaidenda4: TDateField
      FieldName = 'tglmulaidenda4'
      Origin = 'c.tglmulaidenda4'
    end
    object Qmirror_trf_dendatunggakan4: TFloatField
      FieldName = 'trf_dendatunggakan4'
      Origin = 'c.trf_dendatunggakan4'
    end
  end
  object Qgol: TMyQuery
    Connection = DM.Conn
    Left = 168
    Top = 312
  end
  object Qdiameter: TMyQuery
    Connection = DM.Conn
    Left = 280
    Top = 320
  end
  object Qpel: TMyQuery
    Connection = DM.Conn
    Left = 72
    Top = 320
  end
  object QgolIPL: TMyQuery
    Connection = DM.Conn
    Left = 152
    Top = 400
  end
  object Qmirror: TMyQuery
    SQLDelete.Strings = (
      'SELECT'
      'c.nosamb,'
      'c.flagaktif,'
      'c.flaglunas,'
      'c.flagpublish,'
      'c.flagkoreksi,'
      'c.flagkirim,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.stanangkat,'
      'c.kodegol,'
      'c.kodediameter,'
      'c.pakai,'
      'g.minpakai,'
      
        'if(c.pakai>0,COALESCE(g.administrasi,0)*c.pakai,500)+COALESCE(d.' +
        'administrasi,0) AS xadministrasi,'
      
        'COALESCE(g.pemeliharaan,0)+COALESCE(d.pemeliharaan,0) AS xpemeli' +
        'haraan,'
      'COALESCE(g.pelayanan,0)+COALESCE(d.pelayanan,0) AS xpelayanan,'
      'COALESCE(g.retribusi,0)+COALESCE(d.retribusi,0) AS xretribusi,'
      'COALESCE(g.airlimbah,0)+COALESCE(d.airlimbah,0) AS xairlimbah,'
      
        'COALESCE(g.dendapakai0,0)+COALESCE(d.dendapakai0,0) AS xdendapak' +
        'ai0,'
      'COALESCE(g.retribusi_pakai,0) AS xretribusipakai,'
      'COALESCE(g.ppn,0)as xppn,'
      'COALESCE(b1.`administrasilain`,0) AS trf_admlain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS trf_pemlain,'
      'COALESCE(b3.`retribusilain`,0) AS trf_retlain,'
      'c.biayapemakaian AS zbiayapemakaian,'
      'c.meterai AS zmeterai,'
      'c.pemeliharaan AS zpemeliharaan,'
      'c.retribusi AS zretribusi,'
      'c.administrasi AS zadministrasi,'
      'c.pelayanan AS zpelayanan,'
      'c.dendatunggakan AS zdendatunggakan,'
      'c.airlimbah as zairlimbah,'
      'c.dendapakai0 as zdendapakai0,'
      'c.administrasilain as zadministrasilain,'
      'c.pemeliharaanlain as zpemeliharaanlain,'
      'c.retribusilain as zretribusilain,'
      ''
      'COALESCE(g.bb1,0) as bb1,'
      'COALESCE(g.bb2,0) as bb2,'
      'COALESCE(g.bb3,0) as bb3,'
      'COALESCE(g.bb4,0) as bb4,'
      'COALESCE(g.bb5,0) as bb5,'
      'COALESCE(g.ba1,0) as ba1,'
      'COALESCE(g.ba2,0) as ba2,'
      'COALESCE(g.ba3,0) as ba3,'
      'COALESCE(g.ba4,0) as ba4,'
      'COALESCE(g.ba5,0) as ba5,'
      'COALESCE(g.t1,0) as t1,'
      'COALESCE(g.t2,0) as t2,'
      'COALESCE(g.t3,0) as t3,'
      'COALESCE(g.t4,0) as t4,'
      'COALESCE(g.t5,0) as t5,'
      'COALESCE(g.t1_tetap,0) as t1_tetap,'
      'COALESCE(g.t2_tetap,0) as t2_tetap,'
      'COALESCE(g.t3_tetap,0) as t3_tetap,'
      'COALESCE(g.t4_tetap,0) as t4_tetap,'
      'COALESCE(g.t5_tetap,0) as t5_tetap,'
      'm.*,'
      'c.tglmulaidenda,'
      'c.tglmulaidenda2,'
      'c.tglmulaidenda3,'
      'c.tglmulaidenda4,'
      'c.rekair,'
      'p.flag,'
      'c.trf_dendatunggakan,'
      'c.trf_dendatunggakan2,'
      'c.trf_dendatunggakan3,'
      'c.trf_dendatunggakan4,'
      'c.trf_dendatunggakanperbulan,'
      'c.tglmulaidendaperbulan,'
      'c.tglpublish,'
      'r.kodewil,'
      'r.`wilayah`,'
      'g.`golongan`,'
      'COALESCE(tak.flagkoreksi,"0") AS taksasi,'
      'p.kodekondisimeter'
      ''
      'FROm drd c'
      '         LEFT JOIN pelanggan p ON c.nosamb=p.nosamb'
      
        '         left join golongan g On c.kodegol=g.kodegol AND g.aktif' +
        '="1" left join diameter d On c.kodediameter=d.kodediameter AND d' +
        '.aktif="1" left join rayon r On c.koderayon=r.koderayon'
      
        '         LEFT JOIn kelurahan x ON c.kodekelurahan=x.kodekeluraha' +
        'n'
      
        '         left join kolektif k on c.kodekolektif=k.kodekolektif L' +
        'EFT JOIN meterai m ON m.idx="1" '
      
        '         LEFT JOIN byadministrasi_lain b1 ON c.kodeadministrasil' +
        'ain=b1.kode LEFT JOIN bypemeliharaan_lain b2 ON c.`kodepemelihar' +
        'aanlain`=b2.kode '
      
        '         LEFT JOIN byretribusi_lain b3 ON c.`koderetribusilain`=' +
        'b3.kode '
      
        '         LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0"' +
        ' AND periode="201701") tak ON c.nosamb=tak.nosamb WHERE c.nosamb' +
        ' IS NOT NULL')
    SQLRefresh.Strings = (
      'SELECT'
      'c.nosamb,'
      'c.flagaktif,'
      'c.flaglunas,'
      'c.flagpublish,'
      'c.flagkoreksi,'
      'c.flagkirim,'
      'c.stanlalu,'
      'c.stanskrg,'
      'c.stanangkat,'
      'c.kodegol,'
      'c.kodediameter,'
      'c.pakai,'
      'g.minpakai,'
      
        'if(c.pakai>0,COALESCE(g.administrasi,0)*c.pakai,500)+COALESCE(d.' +
        'administrasi,0) AS xadministrasi,'
      
        'COALESCE(g.pemeliharaan,0)+COALESCE(d.pemeliharaan,0) AS xpemeli' +
        'haraan,'
      'COALESCE(g.pelayanan,0)+COALESCE(d.pelayanan,0) AS xpelayanan,'
      'COALESCE(g.retribusi,0)+COALESCE(d.retribusi,0) AS xretribusi,'
      'COALESCE(g.airlimbah,0)+COALESCE(d.airlimbah,0) AS xairlimbah,'
      
        'COALESCE(g.dendapakai0,0)+COALESCE(d.dendapakai0,0) AS xdendapak' +
        'ai0,'
      'COALESCE(g.retribusi_pakai,0) AS xretribusipakai,'
      'COALESCE(g.ppn,0)as xppn,'
      'COALESCE(b1.`administrasilain`,0) AS trf_admlain,'
      'COALESCE(b2.`pemeliharaanlain`,0) AS trf_pemlain,'
      'COALESCE(b3.`retribusilain`,0) AS trf_retlain,'
      'c.biayapemakaian AS zbiayapemakaian,'
      'c.meterai AS zmeterai,'
      'c.pemeliharaan AS zpemeliharaan,'
      'c.retribusi AS zretribusi,'
      'c.administrasi AS zadministrasi,'
      'c.pelayanan AS zpelayanan,'
      'c.dendatunggakan AS zdendatunggakan,'
      'c.airlimbah as zairlimbah,'
      'c.dendapakai0 as zdendapakai0,'
      'c.administrasilain as zadministrasilain,'
      'c.pemeliharaanlain as zpemeliharaanlain,'
      'c.retribusilain as zretribusilain,'
      ''
      'COALESCE(g.bb1,0) as bb1,'
      'COALESCE(g.bb2,0) as bb2,'
      'COALESCE(g.bb3,0) as bb3,'
      'COALESCE(g.bb4,0) as bb4,'
      'COALESCE(g.bb5,0) as bb5,'
      'COALESCE(g.ba1,0) as ba1,'
      'COALESCE(g.ba2,0) as ba2,'
      'COALESCE(g.ba3,0) as ba3,'
      'COALESCE(g.ba4,0) as ba4,'
      'COALESCE(g.ba5,0) as ba5,'
      'COALESCE(g.t1,0) as t1,'
      'COALESCE(g.t2,0) as t2,'
      'COALESCE(g.t3,0) as t3,'
      'COALESCE(g.t4,0) as t4,'
      'COALESCE(g.t5,0) as t5,'
      'COALESCE(g.t1_tetap,0) as t1_tetap,'
      'COALESCE(g.t2_tetap,0) as t2_tetap,'
      'COALESCE(g.t3_tetap,0) as t3_tetap,'
      'COALESCE(g.t4_tetap,0) as t4_tetap,'
      'COALESCE(g.t5_tetap,0) as t5_tetap,'
      ''
      'COALESCE(i.ppn,0) as ppnipl,'
      'COALESCE(i.bb1,0) as bbipl1,'
      'COALESCE(i.bb2,0) as bbipl2,'
      'COALESCE(i.bb3,0) as bbipl3,'
      'COALESCE(i.bb4,0) as bbipl4,'
      'COALESCE(i.bb5,0) as bbipl5,'
      'COALESCE(i.bb6,0) as bbipl6,'
      'COALESCE(i.bb7,0) as bbipl7,'
      'COALESCE(i.ba1,0) as baipl1,'
      'COALESCE(i.ba2,0) as baipl2,'
      'COALESCE(i.ba3,0) as baipl3,'
      'COALESCE(i.ba4,0) as baipl4,'
      'COALESCE(i.ba5,0) as baipl5,'
      'COALESCE(i.ba6,0) as baipl6,'
      'COALESCE(i.ba7,0) as baipl7,'
      'COALESCE(i.t1,0) as tipl1,'
      'COALESCE(i.t2,0) as tipl2,'
      'COALESCE(i.t3,0) as tipl3,'
      'COALESCE(i.t4,0) as tipl4,'
      'COALESCE(i.t5,0) as tipl5,'
      'COALESCE(i.t6,0) as tipl6,'
      'COALESCE(i.t7,0) as tipl7,'
      'COALESCE(i.t1_tetap,0) as tipl1_tetap,'
      'COALESCE(i.t2_tetap,0) as tipl2_tetap,'
      'COALESCE(i.t3_tetap,0) as tipl3_tetap,'
      'COALESCE(i.t4_tetap,0) as tipl4_tetap,'
      'COALESCE(i.t5_tetap,0) as tipl5_tetap,'
      'COALESCE(i.t6_tetap,0) as tipl6_tetap,'
      'COALESCE(i.t7_tetap,0) as tipl7_tetap,'
      ''
      'm.*,'
      'a.*,'
      'c.tglmulaidenda,'
      'c.tglmulaidenda2,'
      'c.tglmulaidenda3,'
      'c.tglmulaidenda4,'
      'c.rekair,'
      'p.flag,'
      'c.trf_dendatunggakan,'
      'c.trf_dendatunggakan2,'
      'c.trf_dendatunggakan3,'
      'c.trf_dendatunggakan4,'
      'c.trf_dendatunggakanperbulan,'
      'c.tglmulaidendaperbulan,'
      'c.tglpublish,'
      'r.kodewil,'
      'r.`wilayah`,'
      'g.`golongan`,'
      'COALESCE(tak.flagkoreksi,"0") AS taksasi,'
      'p.kodekondisimeter,'
      'c.luasrumah')
    Connection = DM.Conn
    Left = 112
    Top = 128
    object Qmirrorflagaktif: TStringField
      FieldName = 'flagaktif'
      Origin = 'flagaktif'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflaglunas: TStringField
      FieldName = 'flaglunas'
      Origin = 'c.flaglunas'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflagpublish: TStringField
      FieldName = 'flagpublish'
      Origin = 'c.flagpublish'
      FixedChar = True
      Size = 1
    end
    object Qmirrorflagkoreksi: TStringField
      FieldName = 'flagkoreksi'
      Origin = 'c.flagkoreksi'
      FixedChar = True
      Size = 1
    end
    object Qmirrorstanlalu: TFloatField
      FieldName = 'stanlalu'
      Origin = 'c.stanlalu'
    end
    object Qmirrorstanskrg: TFloatField
      FieldName = 'stanskrg'
      Origin = 'c.stanskrg'
    end
    object Qmirrorstanangkat: TFloatField
      FieldName = 'stanangkat'
      Origin = 'c.stanangkat'
    end
    object Qmirrorkodegol: TStringField
      FieldName = 'kodegol'
      Origin = 'c.kodegol'
      Size = 50
    end
    object Qmirrorkodediameter: TStringField
      FieldName = 'kodediameter'
      Origin = 'c.kodediameter'
      Size = 50
    end
    object Qmirrorminpakai: TFloatField
      FieldName = 'minpakai'
      Origin = 'g.minpakai'
    end
    object Qmirrorxadministrasi: TFloatField
      FieldName = 'xadministrasi'
      Origin = 'xadministrasi'
    end
    object Qmirrorxpemeliharaan: TFloatField
      FieldName = 'xpemeliharaan'
      Origin = 'xpemeliharaan'
    end
    object Qmirrorxpelayanan: TFloatField
      FieldName = 'xpelayanan'
      Origin = 'xpelayanan'
    end
    object Qmirrorxretribusi: TFloatField
      FieldName = 'xretribusi'
      Origin = 'xretribusi'
    end
    object Qmirrorxairlimbah: TFloatField
      FieldName = 'xairlimbah'
      Origin = 'xairlimbah'
    end
    object Qmirrorxdendapakai0: TFloatField
      FieldName = 'xdendapakai0'
      Origin = 'xdendapakai0'
    end
    object Qmirrorbb1: TFloatField
      FieldName = 'bb1'
      Origin = 'bb1'
    end
    object Qmirrorbb2: TFloatField
      FieldName = 'bb2'
      Origin = 'bb2'
    end
    object Qmirrorbb3: TFloatField
      FieldName = 'bb3'
      Origin = 'bb3'
    end
    object Qmirrorbb4: TFloatField
      FieldName = 'bb4'
      Origin = 'bb4'
    end
    object Qmirrorba1: TFloatField
      FieldName = 'ba1'
      Origin = 'ba1'
    end
    object Qmirrorba2: TFloatField
      FieldName = 'ba2'
      Origin = 'ba2'
    end
    object Qmirrorba3: TFloatField
      FieldName = 'ba3'
      Origin = 'ba3'
    end
    object Qmirrorba4: TFloatField
      FieldName = 'ba4'
      Origin = 'ba4'
    end
    object Qmirrort1: TFloatField
      FieldName = 't1'
      Origin = 't1'
    end
    object Qmirrort2: TFloatField
      FieldName = 't2'
      Origin = 't2'
    end
    object Qmirrort3: TFloatField
      FieldName = 't3'
      Origin = 't3'
    end
    object Qmirrort4: TFloatField
      FieldName = 't4'
      Origin = 't4'
    end
    object Qmirrort1_tetap: TStringField
      FieldName = 't1_tetap'
      Origin = 't1_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort2_tetap: TStringField
      FieldName = 't2_tetap'
      Origin = 't2_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort3_tetap: TStringField
      FieldName = 't3_tetap'
      Origin = 't3_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrort4_tetap: TStringField
      FieldName = 't4_tetap'
      Origin = 't4_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirroridx: TStringField
      FieldName = 'idx'
      Origin = 'm.idx'
      FixedChar = True
      Size = 1
    end
    object Qmirrorbatas1: TFloatField
      FieldName = 'batas1'
      Origin = 'm.batas1'
    end
    object Qmirrorbatas2: TFloatField
      FieldName = 'batas2'
      Origin = 'm.batas2'
    end
    object Qmirrorbatas3: TFloatField
      FieldName = 'batas3'
      Origin = 'm.batas3'
    end
    object Qmirrormeterai1: TFloatField
      FieldName = 'meterai1'
      Origin = 'm.meterai1'
    end
    object Qmirrormeterai2: TFloatField
      FieldName = 'meterai2'
      Origin = 'm.meterai2'
    end
    object Qmirrormeterai3: TFloatField
      FieldName = 'meterai3'
      Origin = 'm.meterai3'
    end
    object Qmirrortglmulaidenda: TDateField
      FieldName = 'tglmulaidenda'
      Origin = 'c.tglmulaidenda'
    end
    object Qmirrorpakai: TFloatField
      FieldName = 'pakai'
      Origin = 'c.pakai'
    end
    object Qmirrorflagkirim: TStringField
      FieldName = 'flagkirim'
      Origin = 'c.flagkirim'
      FixedChar = True
      Size = 1
    end
    object Qmirrorrekair: TFloatField
      FieldName = 'rekair'
      Origin = 'c.rekair'
    end
    object Qmirrornosamb: TStringField
      FieldName = 'nosamb'
      Origin = 'c.nosamb'
      Size = 50
    end
    object Qmirrorzbiayapemakaian: TFloatField
      FieldName = 'zbiayapemakaian'
      Origin = 'c.biayapemakaian'
    end
    object Qmirrorzmeterai: TFloatField
      FieldName = 'zmeterai'
      Origin = 'c.meterai'
    end
    object Qmirrorzpemeliharaan: TFloatField
      FieldName = 'zpemeliharaan'
      Origin = 'c.pemeliharaan'
    end
    object Qmirrorzretribusi: TFloatField
      FieldName = 'zretribusi'
      Origin = 'c.retribusi'
    end
    object Qmirrorzadministrasi: TFloatField
      FieldName = 'zadministrasi'
      Origin = 'c.administrasi'
    end
    object Qmirrorzpelayanan: TFloatField
      FieldName = 'zpelayanan'
      Origin = 'c.pelayanan'
    end
    object Qmirrorzdendatunggakan: TFloatField
      FieldName = 'zdendatunggakan'
      Origin = 'c.dendatunggakan'
    end
    object Qmirrorflag: TStringField
      FieldName = 'flag'
      Origin = 'p.flag'
      Size = 50
    end
    object Qmirrortrf_dendatunggakan: TFloatField
      FieldName = 'trf_dendatunggakan'
      Origin = 'c.trf_dendatunggakan'
    end
    object Qmirrortrf_dendatunggakan2: TFloatField
      FieldName = 'trf_dendatunggakan2'
      Origin = 'c.trf_dendatunggakan2'
    end
    object Qmirrorbb5: TFloatField
      FieldName = 'bb5'
      Origin = 'bb5'
    end
    object Qmirrorba5: TFloatField
      FieldName = 'ba5'
      Origin = 'ba5'
    end
    object Qmirrort5: TFloatField
      FieldName = 't5'
      Origin = 't5'
    end
    object Qmirrort5_tetap: TStringField
      FieldName = 't5_tetap'
      Origin = 't5_tetap'
      FixedChar = True
      Size = 1
    end
    object Qmirrortrf_admlain: TFloatField
      FieldName = 'trf_admlain'
      Origin = 'trf_admlain'
    end
    object Qmirrortrf_pemlain: TFloatField
      FieldName = 'trf_pemlain'
      Origin = 'trf_pemlain'
    end
    object Qmirrortglmulaidenda2: TDateField
      FieldName = 'tglmulaidenda2'
      Origin = 'c.tglmulaidenda2'
    end
    object Qmirrorzairlimbah: TFloatField
      FieldName = 'zairlimbah'
      Origin = 'c.airlimbah'
    end
    object Qmirrorzdendapakai0: TFloatField
      FieldName = 'zdendapakai0'
      Origin = 'c.dendapakai0'
    end
    object Qmirrorzadministrasilain: TFloatField
      FieldName = 'zadministrasilain'
      Origin = 'c.administrasilain'
    end
    object Qmirrorzpemeliharaanlain: TFloatField
      FieldName = 'zpemeliharaanlain'
      Origin = 'c.pemeliharaanlain'
    end
    object Qmirrorzretribusilain: TFloatField
      FieldName = 'zretribusilain'
      Origin = 'c.retribusilain'
    end
    object Qmirrortrf_retlain: TFloatField
      FieldName = 'trf_retlain'
      Origin = 'trf_retlain'
    end
    object Qmirrorxppn: TFloatField
      FieldName = 'xppn'
      Origin = 'xppn'
    end
    object Qmirrortglmulaidenda3: TDateField
      FieldName = 'tglmulaidenda3'
      Origin = 'c.tglmulaidenda3'
    end
    object Qmirrortrf_dendatunggakan3: TFloatField
      FieldName = 'trf_dendatunggakan3'
      Origin = 'c.trf_dendatunggakan3'
    end
    object Qmirrortrf_dendatunggakanperbulan: TFloatField
      FieldName = 'trf_dendatunggakanperbulan'
      Origin = 'c.trf_dendatunggakanperbulan'
    end
    object Qmirrortglmulaidendaperbulan: TDateField
      FieldName = 'tglmulaidendaperbulan'
      Origin = 'c.tglmulaidendaperbulan'
    end
    object Qmirrorxretribusipakai: TFloatField
      FieldName = 'xretribusipakai'
      Origin = 'xretribusipakai'
    end
    object Qmirrortglmulaidenda4: TDateField
      FieldName = 'tglmulaidenda4'
      Origin = 'c.tglmulaidenda4'
    end
    object Qmirrortrf_dendatunggakan4: TFloatField
      FieldName = 'trf_dendatunggakan4'
      Origin = 'c.trf_dendatunggakan4'
    end
    object Qmirrortglpublish: TDateTimeField
      FieldName = 'tglpublish'
    end
    object Qmirrorkodewil: TStringField
      FieldName = 'kodewil'
      Size = 30
    end
    object Qmirrorwilayah: TStringField
      FieldName = 'wilayah'
      Size = 50
    end
    object Qmirrorgolongan: TStringField
      FieldName = 'golongan'
      Size = 100
    end
    object Qmirrortaksasi: TStringField
      FieldName = 'taksasi'
      Size = 1
    end
    object Qmirrorkodekondisimeter: TStringField
      FieldName = 'kodekondisimeter'
      Size = 50
    end
    object Qmirrorbatasadm1: TCurrencyField
      FieldName = 'batasadm1'
      Origin = 'a.batasadm1'
      currency = False
    end
    object Qmirrorbatasadm2: TCurrencyField
      FieldName = 'batasadm2'
      Origin = 'a.batasadm2'
      currency = False
    end
    object Qmirrorbatasadm3: TCurrencyField
      FieldName = 'batasadm3'
      Origin = 'a.batasadm3'
      currency = False
    end
    object Qmirroradministrasi1: TCurrencyField
      FieldName = 'administrasi1'
      Origin = 'a.administrasi1'
      currency = False
    end
    object Qmirroradministrasi2: TCurrencyField
      FieldName = 'administrasi2'
      Origin = 'a.administrasi2'
      currency = False
    end
    object Qmirroradministrasi3: TCurrencyField
      FieldName = 'administrasi3'
      Origin = 'a.administrasi3'
      currency = False
    end
    object Qmirrorbbipl1: TFloatField
      FieldName = 'bbipl1'
      Origin = 'bbipl1'
    end
    object Qmirrorbbipl2: TFloatField
      FieldName = 'bbipl2'
      Origin = 'bbipl2'
    end
    object Qmirrorbbipl3: TFloatField
      FieldName = 'bbipl3'
      Origin = 'bbipl3'
    end
    object Qmirrorbbipl4: TFloatField
      FieldName = 'bbipl4'
      Origin = 'bbipl4'
    end
    object Qmirrorbbipl5: TFloatField
      FieldName = 'bbipl5'
      Origin = 'bbipl5'
    end
    object Qmirrorbbipl6: TFloatField
      FieldName = 'bbipl6'
      Origin = 'bbipl6'
    end
    object Qmirrorbbipl7: TFloatField
      FieldName = 'bbipl7'
      Origin = 'bbipl7'
    end
    object Qmirrorbaipl1: TFloatField
      FieldName = 'baipl1'
      Origin = 'baipl1'
    end
    object Qmirrorbaipl2: TFloatField
      FieldName = 'baipl2'
      Origin = 'baipl2'
    end
    object Qmirrorbaipl3: TFloatField
      FieldName = 'baipl3'
      Origin = 'baipl3'
    end
    object Qmirrorbaipl4: TFloatField
      FieldName = 'baipl4'
      Origin = 'baipl4'
    end
    object Qmirrorbaipl5: TFloatField
      FieldName = 'baipl5'
      Origin = 'baipl5'
    end
    object Qmirrorbaipl6: TFloatField
      FieldName = 'baipl6'
      Origin = 'baipl6'
    end
    object Qmirrorbaipl7: TFloatField
      FieldName = 'baipl7'
      Origin = 'baipl7'
    end
    object Qmirrortipl1: TFloatField
      FieldName = 'tipl1'
      Origin = 'tipl1'
    end
    object Qmirrortipl2: TFloatField
      FieldName = 'tipl2'
      Origin = 'tipl2'
    end
    object Qmirrortipl3: TFloatField
      FieldName = 'tipl3'
      Origin = 'tipl3'
    end
    object Qmirrortipl4: TFloatField
      FieldName = 'tipl4'
      Origin = 'tipl4'
    end
    object Qmirrortipl5: TFloatField
      FieldName = 'tipl5'
      Origin = 'tipl5'
    end
    object Qmirrortipl6: TFloatField
      FieldName = 'tipl6'
      Origin = 'tipl6'
    end
    object Qmirrortipl7: TFloatField
      FieldName = 'tipl7'
      Origin = 'tipl7'
    end
    object Qmirrorluasrumah: TFloatField
      FieldName = 'luasrumah'
    end
    object Qmirrortipl1_tetap: TStringField
      FieldName = 'tipl1_tetap'
      Origin = 'tipl1_tetap'
      Size = 1
    end
    object Qmirrortipl2_tetap: TStringField
      FieldName = 'tipl2_tetap'
      Origin = 'tipl2_tetap'
      Size = 1
    end
    object Qmirrortipl3_tetap: TStringField
      FieldName = 'tipl3_tetap'
      Origin = 'tipl3_tetap'
      Size = 1
    end
    object Qmirrortipl4_tetap: TStringField
      FieldName = 'tipl4_tetap'
      Origin = 'tipl4_tetap'
      Size = 1
    end
    object Qmirrortipl5_tetap: TStringField
      FieldName = 'tipl5_tetap'
      Origin = 'tipl5_tetap'
      Size = 1
    end
    object Qmirrortipl6_tetap: TStringField
      FieldName = 'tipl6_tetap'
      Origin = 'tipl6_tetap'
      Size = 1
    end
    object Qmirrortipl7_tetap: TStringField
      FieldName = 'tipl7_tetap'
      Origin = 'tipl7_tetap'
      Size = 1
    end
    object Qmirrorppnipl: TFloatField
      FieldName = 'ppnipl'
      Origin = 'ppnipl'
    end
  end
end
