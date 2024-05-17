object FRdownload: TFRdownload
  Left = 0
  Top = 0
  Width = 1051
  Height = 725
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object cxLabel3: TcxLabel
    Left = 472
    Top = 395
    Caption = '3. ID Double bayar'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object id: TcxCurrencyEdit
    Left = 648
    Top = 395
    Enabled = False
    Properties.DisplayFormat = ',0.;(,0.)'
    Properties.EditFormat = ',0.;(,0.)'
    Properties.UseDisplayFormatWhenEditing = True
    Properties.UseNullString = True
    Properties.UseThousandSeparator = True
    TabOrder = 1
    Width = 57
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 725
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 2
    object Progress: TRzProgressBar
      Left = 6
      Top = 33
      Width = 1039
      Height = 22
      Align = alTop
      BorderOuter = fsFlat
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
    object cxButton1: TcxButton
      Left = 33
      Top = 294
      Width = 305
      Height = 35
      Caption = 'Download'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 33
      Top = 374
      Width = 305
      Height = 35
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 108
      Caption = '1. Transaksi Terakhir Air'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 132
      Caption = '2. Transaksi Terakhir Non Air'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t1: TcxDateEdit
      Left = 184
      Top = 105
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 146
    end
    object t2: TcxDateEdit
      Left = 184
      Top = 132
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 146
    end
    object reset: TcxButton
      Left = 33
      Top = 334
      Width = 305
      Height = 35
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OptionsImage.ImageIndex = 19
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cek: TcxCheckBox
      Left = 24
      Top = 80
      TabStop = False
      Caption = 'Ganti Tanggal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      Width = 209
    end
    object memo: TcxMemo
      Left = 704
      Top = 168
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsFlat
      StyleHot.BorderStyle = ebsFlat
      TabOrder = 8
      Height = 145
      Width = 249
    end
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 1039
      Height = 27
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DOWNLOAD TRANSAKSI'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 159
      Caption = '3. Setoran'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t3: TcxDateEdit
      Left = 184
      Top = 159
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 146
    end
    object lastupdate1: TcxDateEdit
      Left = 568
      Top = 104
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 153
    end
    object lastupdate2: TcxDateEdit
      Left = 568
      Top = 136
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 153
    end
    object lastupdatelimbah: TcxDateEdit
      Left = 568
      Top = 200
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 153
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 185
      Caption = '4. Transaksi Terakhir Limbah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t4: TcxDateEdit
      Left = 184
      Top = 185
      Enabled = False
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 146
    end
  end
  object lastupdate3: TcxDateEdit
    Left = 568
    Top = 168
    TabStop = False
    Enabled = False
    ParentFont = False
    Properties.Kind = ckDateTime
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 153
  end
  object lastupdatelltt: TcxDateEdit
    Left = 568
    Top = 232
    TabStop = False
    Enabled = False
    ParentFont = False
    Properties.Kind = ckDateTime
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 153
  end
  object cxLabel6: TcxLabel
    Left = 24
    Top = 212
    Caption = '5. Transaksi Terakhir L2T2'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object t5: TcxDateEdit
    Left = 184
    Top = 212
    Enabled = False
    ParentFont = False
    Properties.Kind = ckDateTime
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 146
  end
  object Qhost1: TMyQuery
    Connection = Umain.host
    Left = 32
    Top = 230
  end
  object Qcek: TMyQuery
    Connection = Umain.host
    Left = 80
    Top = 326
  end
  object Qnonair: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO nonair ('
      '  urutan,'
      '  nomor,'
      '  periode,'
      '  jenis,'
      '  waktubayar,'
      '  waktubatal,'
      '  kasir,'
      '  loketbayar,'
      '  nama,'
      '  alamat,'
      '  notelp,'
      '  nohp,'
      '  biaya1,'
      '  biaya2,'
      '  biaya3,'
      '  biaya4,'
      '  biaya5,'
      '  biaya6,'
      '  biaya7,'
      '  biaya8,'
      '  biaya9,'
      '  biaya10,'
      '  biayapemakaian,'
      '  administrasi,'
      '  pemeliharaan,'
      '  retribusi,'
      '  dendatunggakan,'
      '  angsuran1,'
      '  angsuran2,'
      '  ppn,'
      '  biayabahan,'
      '  biayapasang,'
      '  pendaftaran,'
      '  jaminan,'
      '  perencanaan,'
      '  meterai,'
      '  tangki,'
      '  lainnya,'
      '  perbaikan,'
      '  meterkas,'
      '  pul,'
      '  gwm,'
      '  biayaperbaikan,'
      '  biayafpb,'
      '  biayateswm,'
      '  biayagantinama,'
      '  biayaprosestutup,'
      '  biayaprosesbuka,'
      '  memakaiairtidaksah,'
      '  dendaadmpelanggan,'
      '  biayasegelputus,'
      '  biayakartupemakaianair,'
      '  sewakendaraantangki,'
      '  penjualanairtangki,'
      '  piutangsisapemakaianair,'
      '  piutanggwm,'
      '  piutangmeterkas,'
      '  dendapelanggaran,'
      '  realisasipembagi,'
      '  realisasipersil,'
      '  realisasisambungan,'
      '  rencanapembagi,'
      '  rencanapersil,'
      '  rencanasambungan,'
      '  total,'
      '  keterangan,'
      '  terbilang,'
      '  waktudownload,'
      '  waktucetak,'
      '  flaglunas,'
      '  flagbatal,'
      '  flag,'
      '  nospk,'
      '  tangki_m3,'
      '  tangki_tarifperkubik,'
      '  tangki_jumlahtarif,'
      '  tangki_jarak,'
      '  tangki_ongkos,'
      '  waktuinput,'
      '  userinput,'
      '  loketinput,'
      '  tglpesan,'
      '  petugastangki,'
      '  noangsuran,'
      '  kodegol,'
      '  golongan,'
      '  namaloket,'
      '  kodewil,'
      '  namawil,'
      '  flagangsur,'
      '  kode,'
      '  ketjenis,'
      '  termin,'
      '  dibebankankepada,'
      '  tglmulaitagih,'
      '  flaghapus,'
      '  noorder,'
      '  nokwitansi,'
      'shift,'
      'alasanbatal,'
      'nolpp'
      ') '
      'VALUES'
      '  ('
      '    :urutan,'
      '    :nomor,'
      '    IF(:periode="",null,:periode),'
      '    :jenis,'
      '    IF('
      '      YEAR(:waktubayar) < 1980,'
      '      NULL,'
      '      :waktubayar'
      '    ),'
      '    IF('
      '      YEAR(:waktubatal) < 1980,'
      '      NULL,'
      '      :waktubatal'
      '    ),'
      '    :kasir,'
      '    :loketbayar,'
      '    :nama,'
      '    :alamat,'
      '    :notelp,'
      '    :nohp,'
      '    :biaya1,'
      '    :biaya2,'
      '    :biaya3,'
      '    :biaya4,'
      '    :biaya5,'
      '    :biaya6,'
      '    :biaya7,'
      '    :biaya8,'
      '    :biaya9,'
      '    :biaya10,'
      '    :biayapemakaian,'
      '    :administrasi,'
      '    :pemeliharaan,'
      '    :retribusi,'
      '    :dendatunggakan,'
      '    :angsuran1,'
      '    :angsuran2,'
      '    :ppn,'
      '    :biayabahan,'
      '    :biayapasang,'
      '    :pendaftaran,'
      '    :jaminan,'
      '    :perencanaan,'
      '    :meterai,'
      '    :tangki,'
      '    :lainnya,'
      '    :perbaikan,'
      '    :meterkas,'
      '    :pul,'
      '    :gwm,'
      '    :biayaperbaikan,'
      '  :biayafpb,'
      '  :biayateswm,'
      '  :biayagantinama,'
      '  :biayaprosestutup,'
      '  :biayaprosesbuka,'
      '  :memakaiairtidaksah,'
      '  :dendaadmpelanggan,'
      '  :biayasegelputus,'
      '  :biayakartupemakaianair,'
      '  :sewakendaraantangki,'
      '  :penjualanairtangki,'
      '  :piutangsisapemakaianair,'
      '  :piutanggwm,'
      '  :piutangmeterkas,'
      '  :dendapelanggaran,'
      '  :realisasipembagi,'
      '  :realisasipersil,'
      '  :realisasisambungan,'
      '  :rencanapembagi,'
      '  :rencanapersil,'
      '  :rencanasambungan,'
      '    :total,'
      '    :keterangan,'
      '    :terbilang,'
      '    :waktudownload,'
      '    IF('
      '      YEAR(:waktucetak) < 1980,'
      '      NULL,'
      '      :waktucetak'
      '    ),'
      '    :flaglunas,'
      '    :flagbatal,'
      '    :flag,'
      '    :nospk,'
      '    :tangki_m3,'
      '    :tangki_tarifperkubik,'
      '    :tangki_jumlahtarif,'
      '    :tangki_jarak,'
      '    :tangki_ongkos,'
      '    :waktuinput,'
      '    :userinput,'
      '    :loketinput,'
      '    IF('
      '      YEAR(:tglpesan) < 1980,'
      '      NULL,'
      '      :tglpesan'
      '    ),'
      '    :petugastangki,'
      '    :noangsuran,'
      '    :kodegol,'
      '    :golongan,'
      '    :namaloket,'
      '    :kodewil,'
      '    :namawil,'
      '    :flagangsur,'
      '    :kode,'
      '    :ketjenis,'
      '    :termin,'
      '    :dibebankankepada,'
      '    :tglmulaitagih,'
      '    :flaghapus,'
      '    :noorder,'
      '    :nokwitansi,'
      ':shift,'
      ':alasanbatal,'
      ':nolpp'
      '  )')
    Connection = DM.Conn
    Left = 208
    Top = 376
  end
  object Qlunas: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO'
      ' bayar '
      '('
      '  `kode`,'
      '  `periode`,'
      '  `bulan`,'
      '  `nosamb`,'
      '  `kodegol`,'
      '  `kodediameter`,'
      '  `kodekelurahan`,'
      '  `koderayon`,'
      '  `kodekolektif`,'
      '  `stanlalu`,'
      '  `stanskrg`,'
      '  `stanangkat`,'
      '  `pakai`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `pelayanan`,'
      '  `retribusi`,'
      '  `airlimbah`,'
      '  `dendapakai0`,'
      '  `pemeliharaanlain`,'
      '  `administrasilain`,'
      '  `retribusilain`,'
      '  `meterai`,'
      '  `rekair`,'
      '  `dendatunggakan`,'
      '  `angsuran`,'
      '  `ppn`,'
      '  `total`,'
      '  `tglbayar`,'
      '  `flagangsur`,'
      '  `noangsuran`,'
      '  `blok1`,'
      '  `blok2`,'
      '  `blok3`,'
      '  `blok4`,'
      '  `blok5`,'
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `kasir`,'
      '  `nolpp`,'
      '  `flagaktif`,'
      '  `loketbayar`,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      '  `koderetribusilain`,'
      '  `kodeblok`,'
      '  `golongan`,'
      '  `namaloket`,'
      '  `kodewil`,'
      '  `namawil`,'
      'shift'
      ') '
      'VALUES'
      '  ('
      '    :kode,'
      '    :periode,'
      '    :bulan,'
      '    :nosamb,'
      '    :kodegol,'
      '    :kodediameter,'
      '    :kodekelurahan,'
      '    :koderayon,'
      '    :kodekolektif,'
      '    :stanlalu,'
      '    :stanskrg,'
      '    :stanangkat,'
      '    :pakai,'
      '    :biayapemakaian,'
      '    :administrasi,'
      '    :pemeliharaan,'
      '    :pelayanan,'
      '    :retribusi,'
      '    :airlimbah,'
      '    :dendapakai0,'
      '    :pemeliharaanlain,'
      '    :administrasilain,'
      '    :retribusilain,'
      '    :meterai,'
      '    :rekair,'
      '    :dendatunggakan,'
      '    :angsuran,'
      '    :ppn,'
      '    :total,'
      '    :tglbayar,'
      '    :flagangsur,'
      '    :noangsuran,'
      '    :blok1,'
      '    :blok2,'
      '    :blok3,'
      '    :blok4,'
      '    :blok5,'
      '    :prog1,'
      '    :prog2,'
      '    :prog3,'
      '    :prog4,'
      '    :prog5,'
      '    :kasir,'
      '    :nolpp,'
      '    :flagaktif,'
      '    :loketbayar,'
      '    :kodeadministrasilain,'
      '    :kodepemeliharaanlain,'
      '    :koderetribusilain,'
      '    :kodeblok,'
      '    :golongan,'
      '    :namaloket,'
      '    :kodewil,'
      '    :namawil,'
      ':shift'
      '  )')
    SQLUpdate.Strings = (
      'set'
      'tgldownload=:tgldownload,'
      'tglbayar=:tglbayar,'
      'loketbayar=:loketbayar,'
      'kasir=:kasir,'
      'nolpp=:nolpp,'
      'tglbatal=:tglbatal,'
      'flaglunas=:flaglunas,'
      'flagbatal=:flagbatal,'
      'shift=:shift'
      'WHERE nosamb=:nosamb')
    Connection = DM.Conn
    Left = 368
    Top = 144
  end
  object ActionList1: TActionList
    Left = 536
    Top = 40
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
  end
  object Qcek2: TMyQuery
    Connection = Umain.host
    Left = 368
    Top = 254
  end
  object Qangsurantunggakan: TMyQuery
    SQLInsert.Strings = (
      '('
      '  kode,'
      '  periode,'
      '  nosamb,'
      '  biayapemakaian,'
      '  administrasi,'
      '  pemeliharaan,'
      '  retribusi,'
      '  meterai,'
      '  angsuran,'
      '  rekair,'
      '  dendatunggakan,'
      '  total,'
      '  tglbayar,'
      '  tglbatal,'
      '  loketbayar,'
      '  kasir,'
      '  noangsuran,'
      '  golongan,'
      '  namaloket,'
      '  kodewil,'
      '  namawil,'
      '  kodegol,'
      '  koderayon,'
      '  kodediameter,'
      '  nolpp,'
      '  flaglunas,'
      '  flagbatal,'
      '  flagangsur,'
      '  shift,'
      'bulan,'
      'flagpublish,'
      'flagkirim,'
      'flagaktif'
      ') '
      ''
      'VALUES'
      ''
      '('
      '    :kode,'
      '    :periode,'
      '    :nosamb,'
      '    :biayapemakaian,'
      '    :administrasi,'
      '    :pemeliharaan,'
      '    :retribusi,'
      '    :meterai,'
      '    :angsuran,'
      '    :rekair,'
      '    :dendatunggakan,'
      '    :total,'
      '    :tglbayar,'
      '    :tglbatal,'
      '    :loketbayar,'
      '    :kasir,'
      '    :noangsuran,'
      '    :golongan,'
      '    :namaloket,'
      '    :kodewil,'
      '    :namawil,'
      '    :kodegol,'
      '    :koderayon,'
      '    :kodediameter,'
      '    :nolpp,'
      '    :flaglunas,'
      '    :flagbatal,'
      '    :flagangsur,'
      '    :shift,'
      ':bulan,'
      '"1",'
      '"1",'
      '"1"'
      ' )')
    Connection = DM.Conn
    Left = 576
    Top = 176
  end
  object Qrek: TMyQuery
    SQLDelete.Strings = (
      '('
      #9#9'SELECT c.*,r.kodewil,r.wilayah,'#9'l.loket,g.golongan  '
      #9#9'FROM bayar  c                                          '
      
        '                LEFT JOIN rayon r ON c.`koderayon`=r.`koderayon`' +
        '     '
      
        '                LEFT JOIN golongan g ON c.`kodegolyangberlaku`=g' +
        '.`kodegolyangberlaku` LEFT JOIN loket l ON c.`loketbayar`=l.`kod' +
        'eloket`  '
      
        '                WHERE c.waktuupdate>:tanggal AND  (c.flaglunas="' +
        '1" OR c.flagbatal="1"))'
      '                '
      '                UNION'
      '                '
      
        '                (SELECT c.*,r.kodewil,r.wilayah,l.loket,g.golong' +
        'an  '
      #9#9'FROM piutang c                                          '
      
        '                LEFT JOIN rayon r ON c.`koderayon`=r.`koderayon`' +
        '     '
      
        '                LEFT JOIN golongan g ON c.`kodegolyangberlaku`=g' +
        '.`kodegolyangberlaku` LEFT JOIN loket l ON c.`loketbayar`=l.`kod' +
        'eloket`  '
      
        '                WHERE c.waktuupdate>:tanggal AND  (c.flaglunas="' +
        '1" OR c.flagbatal="1")'
      '                '
      '                ) ORDER BY waktuupdate ASC')
    SQLRefresh.Strings = (
      '('
      #9#9'SELECT c.*,r.kodewil,r.wilayah,l.loket,g.golongan  '
      #9#9'FROM bayar c                                          '
      
        '                LEFT JOIN rayon r ON c.`koderayon`=r.`koderayon`' +
        '     '
      
        '                LEFT JOIN (select kodegol,golongan FROm golongan' +
        ' GROUP BY kodegol) g ON c.`kodegol`=g.`kodegol` LEFT JOIN loket ' +
        'l ON c.`loketbayar`=l.`kodeloket`  '
      '                WHERE c.waktuupdate>:tanggal )'
      '                '
      '                UNION'
      '                '
      
        '                (SELECT c.*,r.kodewil,r.wilayah,l.loket,g.golong' +
        'an  '
      #9#9'FROM piutang c                                          '
      
        '                LEFT JOIN rayon r ON c.`koderayon`=r.`koderayon`' +
        '     '
      
        '                LEFT JOIN (select kodegol,golongan FROm golongan' +
        ' GROUP BY kodegol) g ON c.`kodegol`=g.`kodegol` LEFT JOIN loket ' +
        'l ON c.`loketbayar`=l.`kodeloket`  '
      '                WHERE c.waktuupdate>:tanggal'
      '                '
      '                ) ORDER BY waktuupdate ASC;')
    Connection = Umain.host
    Left = 72
    Top = 478
  end
  object Qna: TMyQuery
    SQLRefresh.Strings = (
      'SELECT'
      ''
      'g.golongan,'
      'r.kodewil AS kodewil_dari_koderayon_nonair,'
      'r.wilayah AS wilayah_dari_koderayon_nonair,'
      ''
      'r1.`kodewil` AS kodewil_dari_koderayon_pelanggan,'
      'r1.wilayah AS wilayah_dari_koderayon_pelanggan,'
      ''
      'l.`kodewillokasi` AS kodewil_dari_wilayah_loket,'
      'w.`wilayah` AS wilayah_dari_wilayah_loket,'
      ''
      'l.loket,'
      ''
      'n.*'
      ''
      ''
      ''
      ''
      ''
      'FROM nonair n '
      
        'LEFT JOIN (SELECT kodegol,golongan FROM golongan GROUP BY kodego' +
        'l) g ON n.kodegol=g.kodegol'
      ''
      ''
      '-- KODE RAYON DARI NON AIR ---'
      ''
      'LEFT JOIN rayon r ON n.koderayon=r.`koderayon`'
      ''
      ' -- KODE RAYON DARI PELANGGAN ----'
      'LEFT JOIN pelanggan p ON n.`dibebankankepada`=p.`nosamb`'
      'LEFT JOIN rayon r1 ON p.`koderayon`=r1.`koderayon`'
      ''
      ''
      'LEFT JOIN loket l ON n.`loketbayar`=l.`kodeloket`'
      'LEFT JOIN wilayah w ON l.`kodewillokasi`=w.kodewil'
      ''
      'WHERE'
      'n.waktuupdate > :tanggal'
      'ORDER BY n.waktuupdate ASC')
    Connection = Umain.host
    Left = 144
    Top = 374
  end
  object Qlunas2: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO'
      ' bayar '
      '('
      '  `kode`,'
      '  `periode`,'
      '  `bulan`,'
      '  `nosamb`,'
      '  `kodegol`,'
      '  `kodediameter`,'
      '  `kodekelurahan`,'
      '  `koderayon`,'
      '  `kodekolektif`,'
      '  `stanlalu`,'
      '  `stanskrg`,'
      '  `stanangkat`,'
      '  `pakai`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `pelayanan`,'
      '  `retribusi`,'
      '  `airlimbah`,'
      '  `dendapakai0`,'
      '  `pemeliharaanlain`,'
      '  `administrasilain`,'
      '  `retribusilain`,'
      '  `meterai`,'
      '  `rekair`,'
      '  `dendatunggakan`,'
      '  `angsuran`,'
      '  `ppn`,'
      '  `total`,'
      '  `tglbayar`,'
      '  `flagangsur`,'
      '  `noangsuran`,'
      '  `blok1`,'
      '  `blok2`,'
      '  `blok3`,'
      '  `blok4`,'
      '  `blok5`,'
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `kasir`,'
      '  `nolpp`,'
      '  `flagaktif`,'
      '  `loketbayar`,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      '  `koderetribusilain`,'
      '  `kodeblok`,'
      '  `golongan`,'
      '  `namaloket`,'
      '  `kodewil`,'
      '  `namawil`,'
      'shift'
      ') '
      'VALUES'
      '  ('
      '    :kode,'
      '    :periode,'
      '    :bulan,'
      '    :nosamb,'
      '    :kodegol,'
      '    :kodediameter,'
      '    :kodekelurahan,'
      '    :koderayon,'
      '    :kodekolektif,'
      '    :stanlalu,'
      '    :stanskrg,'
      '    :stanangkat,'
      '    :pakai,'
      '    :biayapemakaian,'
      '    :administrasi,'
      '    :pemeliharaan,'
      '    :pelayanan,'
      '    :retribusi,'
      '    :airlimbah,'
      '    :dendapakai0,'
      '    :pemeliharaanlain,'
      '    :administrasilain,'
      '    :retribusilain,'
      '    :meterai,'
      '    :rekair,'
      '    :dendatunggakan,'
      '    :angsuran,'
      '    :ppn,'
      '    :total,'
      '    :tglbayar,'
      '    :flagangsur,'
      '    :noangsuran,'
      '    :blok1,'
      '    :blok2,'
      '    :blok3,'
      '    :blok4,'
      '    :blok5,'
      '    :prog1,'
      '    :prog2,'
      '    :prog3,'
      '    :prog4,'
      '    :prog5,'
      '    :kasir,'
      '    :nolpp,'
      '    :flagaktif,'
      '    :loketbayar,'
      '    :kodeadministrasilain,'
      '    :kodepemeliharaanlain,'
      '    :koderetribusilain,'
      '    :kodeblok,'
      '    :golongan,'
      '    :namaloket,'
      '    :kodewil,'
      '    :namawil,'
      ':shift'
      '  )')
    SQLUpdate.Strings = (
      'set'
      'flagpublish="1", '
      'flagdownload="1",'
      'flagkirim="1",'
      'tgldownload=:tgldownload,'
      'tglbayar=:tglbayar,'
      'loketbayar=:loketbayar,'
      'kasir=:kasir,'
      'kodegol=:kodegol,'
      'kodediameter=:kodediameter,'
      'koderayon=:koderayon,'
      'kodekelurahan=:kodekelurahan,'
      'stanskrg=:stanskrg,'
      'stanlalu=:stanlalu,'
      'stanangkat=:stanangkat,'
      'pakai=:pakai,'
      'biayapemakaian=:biayapemakaian,'
      'administrasi=:administrasi,'
      'pemeliharaan=:pemeliharaan,'
      'retribusi=:retribusi,'
      'pelayanan=:pelayanan,'
      'airlimbah=:airlimbah,'
      'dendapakai0=:dendapakai0,'
      'pemeliharaanlain=:pemeliharaanlain,'
      'administrasilain=:administrasilain,'
      'retribusilain=:retribusilain,'
      'meterai=:meterai,'
      'dendatunggakan=:dendatunggakan,'
      'rekair=:rekair,'
      'total=:total,'
      'nolpp=:nolpp,'
      'prog1=:prog1,'
      'prog2=:prog2,'
      'prog3=:prog3,'
      'prog4=:prog4,'
      'prog5=:prog5,'
      'tglmulaidenda=:tglmulaidenda,'
      'tglmulaidenda2=:tglmulaidenda2,'
      'tglmulaidenda3=:tglmulaidenda3,'
      'tglmulaidenda4=:tglmulaidenda4,'
      'tglmulaidendaperbulan=:tglmulaidendaperbulan,'
      'trf_dendatunggakan=:trf_dendatunggakan,'
      'trf_dendatunggakan2=:trf_dendatunggakan2,'
      'trf_dendatunggakan3=:trf_dendatunggakan3,'
      'trf_dendatunggakan4=:trf_dendatunggakan4,'
      'trf_dendatunggakanperbulan=:trf_dendatunggakanperbulan,'
      'kodeadministrasilain=:kodeadministrasilain,'
      'kodepemeliharaanlain=:kodepemeliharaanlain,'
      'koderetribusilain=:koderetribusilain,'
      'tglbatal=:tglbatal,'
      'flaglunas=:flaglunas,'
      'flagbatal=:flagbatal,'
      'ppn=:ppn,'
      'blok1=:blok1,'
      'blok2=:blok2,'
      'blok3=:blok3,'
      'blok4=:blok4,'
      'blok5=:blok5,'
      'kelainan=:kelainan,'
      'flagangsur=:flagangsur,'
      'noangsuran=:noangsuran,'
      'shift=:shift'
      'WHERE nosamb=:nosamb')
    Connection = DM.Conn
    Left = 400
    Top = 344
  end
  object Qbayar: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO bayar:tahun'
      '('
      '  kode,'
      '  periode,'
      '  bulan,'
      '  nosamb,'
      '  kodegol,'
      '  kodegolyangberlaku,'
      '  kodediameter,'
      '  kodediameteryangberlaku,'
      '  kodekelurahan,'
      '  koderayon,'
      '  kodekolektif,'
      '  stanlalu,'
      '  stanskrg,'
      '  stanangkat,'
      '  pakai,'
      '  pakai2,'
      '  biayapemakaian,'
      '  administrasi,'
      '  pemeliharaan,'
      '  pelayanan,'
      '  retribusi,'
      '  airlimbah,'
      '  dendapakai0,'
      '  pemeliharaanlain,'
      '  administrasilain,'
      '  retribusilain,'
      '  meterai,'
      '  rekair,'
      '  dendatunggakan,'
      '  angsuran,'
      '  ppn,'
      '  total,'
      '  `tglbayar`,'
      '  `flagpublish`,'
      '  `flaglunas`,'
      '  `flagangsur`,'
      '  `noangsuran`,'
      '  `blok1`,'
      '  `blok2`,'
      '  `blok3`,'
      '  `blok4`,'
      '  `blok5`,'
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `kelainan`,'
      '  `kasir`,'
      '  `nolpp`,'
      '  `flagbatal`,'
      '  `flagaktif`,'
      '  `loketbayar`,'
      '  `flagkirim`,'
      '  `tglmulaidenda`,'
      '  `tglmulaidenda2`,'
      '  `tglmulaidenda3`,'
      '  `tglmulaidenda4`,'
      '  `tglmulaidendaperbulan`,'
      '  `flagdownload`,'
      '  `tgldownload`,'
      '  `userdownload`,'
      '  `tglbatal`,'
      '  `pembacameter`,'
      '  `trf_dendatunggakan`,'
      '  `trf_dendatunggakan2`,'
      '  `trf_dendatunggakan3`,'
      '  `trf_dendatunggakan4`,'
      '  `trf_dendatunggakanperbulan`,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      '  `koderetribusilain`,'
      '  `waktu`,'
      '  `kodeblok`,'
      '  `luasrumah`,'
      '  `shift`,'
      '  -- `trf_denda_berdasarkan_persen`,'
      '  `flag`,'
      '  `golongan`,'
      '  `namaloket`,'
      '  `kodewil`,'
      '  `namawil`'
      ')'
      ''
      'VALUES'
      ''
      '  ('
      '  :kode,'
      '  :periode,'
      '  :bulan,'
      '  :nosamb,'
      '  :kodegol,'
      '  :kodegolyangberlaku,'
      '  :kodediameter,'
      '  :kodediameteryangberlaku,'
      '  :kodekelurahan,'
      '  :koderayon,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
      '  :pakai2,'
      '  :biayapemakaian,'
      '  :administrasi,'
      '  :pemeliharaan,'
      '  :pelayanan,'
      '  :retribusi,'
      '  :airlimbah,'
      '  :dendapakai0,'
      '  :pemeliharaanlain,'
      '  :administrasilain,'
      '  :retribusilain,'
      '  :meterai,'
      '  :rekair,'
      '  :dendatunggakan,'
      '  :angsuran,'
      '  :ppn,'
      '  :total,'
      '  :tglbayar,'
      '  :flagpublish,'
      '  :flaglunas,'
      '  :flagangsur,'
      '  :noangsuran,'
      '  :blok1,'
      '  :blok2,'
      '  :blok3,'
      '  :blok4,'
      '  :blok5,'
      '  :prog1,'
      '  :prog2,'
      '  :prog3,'
      '  :prog4,'
      '  :prog5,'
      '  :kelainan,'
      '  :kasir,'
      '  :nolpp,'
      '  :flagbatal,'
      '  :flagaktif,'
      '  :loketbayar,'
      '  :flagkirim,'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      '  :tglmulaidenda3,'
      '  :tglmulaidenda4,'
      '  :tglmulaidendaperbulan,'
      '  :flagdownload,'
      '  :tgldownload,'
      '  :userdownload,'
      '  :tglbatal,'
      '  :pembacameter,'
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      '  :trf_dendatunggakan3,'
      '  :trf_dendatunggakan4,'
      '  :trf_dendatunggakanperbulan,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      '  :koderetribusilain,'
      '  :waktu,'
      '  :kodeblok,'
      '  :luasrumah,'
      '  :shift,'
      '  -- :trf_denda_berdasarkan_persen,'
      '  :flag,'
      '  :golongan,'
      '  :namaloket,'
      '  :kodewil,'
      '  :namawil)')
    Connection = DM.Conn
    Left = 368
    Top = 446
  end
end
