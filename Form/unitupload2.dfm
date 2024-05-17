object uupload2: Tuupload2
  Left = 496
  Top = 146
  BorderStyle = bsNone
  Caption = 'Upload Data Tagihan'
  ClientHeight = 254
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Open Sans'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 254
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object Progress: TRzProgressBar
      Left = 6
      Top = 39
      Width = 329
      Height = 26
      Align = alTop
      BorderOuter = fsFlat
      BorderWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = [fsBold]
      InteriorOffset = 0
      ParentFont = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
      Visible = False
    end
    object periode: TRzDateTimePicker
      Left = 656
      Top = 400
      Width = 137
      Height = 25
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Visible = False
      FrameColor = clGradientActiveCaption
      FrameHotStyle = fsNone
      FrameVisible = True
    end
    object periode2: TRzDateTimePicker
      Left = 671
      Top = 432
      Width = 138
      Height = 25
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Visible = False
      FrameColor = clGradientActiveCaption
      FrameHotStyle = fsNone
      FrameVisible = True
    end
    object cekpiutang: TcxCheckBox
      Left = 21
      Top = 123
      TabStop = False
      Caption = 'Upload tagihan Air Belum Terkirim ( Flagkirim=0 )'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Transparent = True
      OnClick = cekpiutangClick
      Width = 308
    end
    object cekpelanggan: TcxCheckBox
      Left = 341
      Top = 413
      TabStop = False
      Caption = 'Sinkronisasi Pelanggan Air'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      Width = 204
    end
    object ceksingkron: TcxCheckBox
      Left = 21
      Top = 100
      TabStop = False
      Caption = 'Sinkronisasi Parameter'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      Width = 204
    end
    object cxButton2: TcxButton
      Left = 167
      Top = 209
      Width = 129
      Height = 27
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
    object cxButton1: TcxButton
      Left = 21
      Top = 209
      Width = 139
      Height = 27
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object lblPanelInfo: TRzPanel
      Left = 6
      Top = 6
      Width = 329
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'UPLOAD DATA'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cxGrid1: TcxGrid
      Left = 503
      Top = 65
      Width = 145
      Height = 186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
      LookAndFeel.SkinName = 'Office2013White'
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = MyDataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxGrid1DBTableView1Column2
          end
          item
            Format = ',0.;-,0.'
            Kind = skCount
            Column = cxGrid1DBTableView1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssNone
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          Properties.EditFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 58
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ceklimbah: TcxCheckBox
      Left = 21
      Top = 147
      TabStop = False
      Caption = 'Upload tagihan Limbah Belum Terkirim ( Flagkirim=0 )'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Transparent = True
      OnClick = cekpiutangClick
      Width = 308
    end
    object ceklltt: TcxCheckBox
      Left = 21
      Top = 171
      TabStop = False
      Caption = 'Upload tagihan L2T2 Belum Terkirim ( Flagkirim=0 )'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
      OnClick = cekpiutangClick
      Width = 308
    end
    object cekpelangganlimbah: TcxCheckBox
      Left = 341
      Top = 445
      TabStop = False
      Caption = 'Sinkronisasi Pelanggan Limbah'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Transparent = True
      Width = 204
    end
    object cekpelangganlltt: TcxCheckBox
      Left = 341
      Top = 477
      TabStop = False
      Caption = 'Sinkronisasi Pelanggan L2T2'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Transparent = True
      Width = 204
    end
    object cekOtomatisLunas: TcxCheckBox
      Left = 21
      Top = 77
      TabStop = False
      Caption = 'Pelunasan Otomatis'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Transparent = True
      Width = 204
    end
  end
  object Qexec: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO drddump('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      '   kodegolyangberlaku,'
      '   kodediameteryangberlaku,'
      '   kodegol,'
      '  `kodediameter`,'
      '  `koderayon`,  '
      '  `kodekolektif`,'
      '  `stanlalu`,'
      '  `stanskrg`,'
      '  `stanangkat`,'
      '  `pakai`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `retribusi`,'
      '  `pelayanan`,'
      '  `airlimbah`,'
      '  `dendapakai0`,'
      '  `administrasilain`,'
      '  `pemeliharaanlain`,'
      '`retribusilain`,'
      '  `meterai`,'
      '  `dendatunggakan`,'
      '  `rekair`,'
      '  `total`,  '
      '  `tglupload`,'
      '  `tglmulaidenda`,'
      '  `tglmulaidenda2`,'
      '`tglmulaidenda3`,'
      '`tglmulaidenda4`,'
      '`tglmulaidendaperbulan`,'
      '  `bulan`,  '
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `nolpp`, '
      '  `flag`, '
      '  `trf_dendatunggakan`,'
      '  `trf_dendatunggakan2`,'
      ' `trf_dendatunggakan3`,'
      ' `trf_dendatunggakan4`,'
      ' `trf_dendatunggakanperbulan`,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      'koderetribusilain,'
      'ppn,'
      'persenppn,'
      'blok1,'
      'blok2,'
      'blok3,'
      'blok4,'
      'blok5,'
      'kelainan,'
      'flagangsur,'
      'noangsuran,'
      'pembacameter,'
      'trf_denda_berdasarkan_persen'
      ')'
      'VALUES'
      '('
      '   :kode,'
      '  :periode,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      ' :kodegolyangberlaku,'
      '   :kodediameteryangberlaku,'
      ':kodegol,'
      '  :kodediameter,'
      '  :koderayon,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
      '  :biayapemakaian,'
      '  :administrasi,'
      '  :pemeliharaan,'
      '  :retribusi,'
      '  :pelayanan,'
      '  :airlimbah,'
      '  :dendapakai0,'
      '  :administrasilain,'
      '  :pemeliharaanlain,'
      ':retribusilain,'
      '  :meterai,'
      '  :dendatunggakan,'
      '  :rekair,'
      '  :total,  '
      '  NOW(),'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      ':tglmulaidenda3,'
      ':tglmulaidenda4,'
      ':tglmulaidendaperbulan,'
      '  :bulan,  '
      '  :prog1,'
      '  :prog2,'
      '  :prog3,'
      '  :prog4,'
      '  :prog5,'
      '  :nolpp, '
      '  :flag, '
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      ':trf_dendatunggakan3,'
      ':trf_dendatunggakan4,'
      ':trf_dendatunggakanperbulan,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      ':koderetribusilain,'
      ':ppn,'
      ':persenppn,'
      ':blok1,'
      ':blok2,'
      ':blok3,'
      ':blok4,'
      ':blok5,'
      ':kelainan,'
      ':flagangsur,'
      ':noangsuran,'
      ':pembacameter,'
      ':trf_denda_berdasarkan_persen'
      ')')
    Connection = Umain.host
    Left = 52
    Top = 26
  end
  object Qrek: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT c.*,p.nama,p.alamat,p.flag,CONCAT(n.nama," ",LEFT(c.kode,' +
        '4)) AS bulan'
      'FROM send_piutang c '
      'LEFT JOIN pelanggan p ON c.`nosamb`=p.`nosamb`'
      'LEFT JOIN namabulan n ON MID(c.kode,5,2)=n.`bulan`'
      'ORDER BY c.kode ASC')
    Connection = DM.Conn
    Left = 260
    Top = 290
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    Left = 492
    Top = 146
  end
  object ActionList1: TActionList
    Left = 484
    Top = 210
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object Qtabel: TMyQuery
    Connection = DM.Conn
    Left = 396
    Top = 226
  end
  object Qhost1: TMyQuery
    Connection = Umain.host
    Left = 820
    Top = 282
  end
  object Qceklunas: TMyQuery
    Connection = Umain.host
    Left = 756
    Top = 50
  end
  object Qexec2: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO pelanggan'
      '('
      '`nosamb`,'
      '`norekening`,'
      '`nama`,'
      '`alamat`,'
      '`koderayon`,'
      '`kodekelurahan`,'
      '`kodediameter`,'
      '`kodekolektif`,'
      '`merk`,'
      '`kodegol`,'
      '`nohp`,'
      '`notelp`,'
      '`serimeter`,'
      '`tgldaftar`,'
      '`tglnonaktif`,'
      '`status`,'
      '`kepemilikanbangunan`,'
      '`namapemilik`,'
      '`pekerjaan`,'
      '`noktp`,'
      '`penghuni`,'
      '`sisaangsuran`,'
      '`angsuranperbulan`,'
      '`sumberair`,'
      '`kodeloket`,'
      '`noregistrasi`,'
      '`flag`,'
      '`kodeadministrasilain`,'
      '`kodepemeliharaanlain`,'
      '`koderetribusilain` '
      ')'
      'VALUES'
      '('
      ':nosamb,'
      ':norekening,'
      ':nama,'
      ':alamat,'
      ':koderayon,'
      ':kodekelurahan,'
      ':kodediameter,'
      ':kodekolektif,'
      ':merk,'
      ':kodegol,'
      ':nohp,'
      ':notelp,'
      ':serimeter,'
      ':tgldaftar,'
      ':tglnonaktif,'
      ':STATUS,'
      ':kepemilikanbangunan,'
      ':namapemilik,'
      ':pekerjaan,'
      ':noktp,'
      ':penghuni,'
      ':sisaangsuran,'
      ':angsuranperbulan,'
      ':sumberair,'
      ':kodeloket,'
      ':noregistrasi,'
      ':flag,'
      ':kodeadministrasilain,'
      ':kodepemeliharaanlain,'
      ':koderetribusilain '
      ')')
    Connection = Umain.host
    Left = 148
    Top = 298
  end
  object data_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 616
    Top = 208
    object data_kode: TStringField
      FieldName = 'kode'
      Size = 50
    end
    object data_jumlah: TIntegerField
      FieldName = 'jumlah'
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = data_
    Left = 512
    Top = 280
  end
  object Qcektabel: TMyQuery
    Connection = DM.Conn
    Left = 372
    Top = 178
  end
  object QcekRek: TMyQuery
    Connection = Umain.host
    Left = 236
    Top = 42
  end
  object QcekParam: TMyQuery
    Connection = Umain.host
    Left = 140
    Top = 18
  end
  object Qlunasair: TMyQuery
    SQLInsert.Strings = (
      
        'UPDATE piutang SET waktuupdate=NOW(), loketupdate=:loketupdate, ' +
        'kasir=:kasir, loketbayar=:loketbayar, sudahupload="1",'
      
        'persenppn=rekair, tglbayar=NOW(),flaglunas="1", flagbatal="0", n' +
        'olpp=:nolpp, shift="1" WHERE kodegol=:kodegol AND periode=:perio' +
        'de;'
      
        'REPLACE INTO bayar SELECT * FROM piutang WHERE kodegol=:kodegol ' +
        'AND periode=:periode;'
      'DELETE FROM piutang WHERE kodegol=:kodegol AND periode=:periode;')
    SQLDelete.Strings = (
      
        'UPDATE piutang SET waktuupdate=NOW(), loketupdate=:loketupdate, ' +
        'kasir=:kasir, loketbayar=:loketbayar, sudahupload="1",'
      
        'persenppn=rekair, tglbayar=NOW(),flaglunas="1", flagbatal="0", n' +
        'olpp=:nolpp, shift="1" WHERE kodegol=:kodegol AND rekair<=:rekai' +
        'r AND periode=:periode;'
      
        'REPLACE INTO bayar SELECT * FROM piutang WHERE kodegol=:kodegol ' +
        'AND rekair<=:rekair AND periode=:periode;'
      
        'DELETE FROM piutang WHERE kodegol=:kodegol AND rekair<=:rekair A' +
        'ND periode=:periode;')
    SQLUpdate.Strings = (
      
        'UPDATE piutang SET waktuupdate=NOW(), loketupdate=:loketupdate, ' +
        'kasir=:kasir, loketbayar=:loketbayar, sudahupload="1",'
      
        'persenppn=rekair, tglbayar=NOW(),flaglunas="1", flagbatal="0", n' +
        'olpp=:nolpp, shift="1", terbilang=:terbilang WHERE kode=:kode;'
      
        'REPLACE INTO bayar SELECT * FROM piutang WHERE kode=:kode AND fl' +
        'aglunas="1";'
      'DELETE FROM piutang WHERE kode=:kode;'
      
        'UPDATE spk_pemutusan_tunggakan_periode SET flaglunas="0", tglbay' +
        'ar=null WHERE kode=:kode;')
    SQLRefresh.Strings = (
      
        'REPLACE `param_diskon` SELECT jenis,kodegol,nosamb,persendiskon,' +
        ':nominaldiskon,kubikasidiskon,:periodeawal,:periodeakhir,tglmula' +
        'iberlaku,tglberakhir,keterangan,NOW() FROM param_diskon '
      
        'WHERE jenis=:jenis AND (:kodegol=kodegol OR :nosamb=nosamb) AND ' +
        ':periode>=periodeawal AND :periode<=periodeakhir AND ((NOW()>=tg' +
        'lmulaiberlaku AND NOW()<=tglberakhir) OR (tglmulaiberlaku IS NUL' +
        'L AND tglberakhir IS NULL))')
    SQLLock.Strings = (
      
        'UPDATE piutang SET waktuupdate=NOW(), loketupdate=:loketupdate, ' +
        'kasir=:kasir, loketbayar=:loketbayar, sudahupload="1",'
      
        'persenppn=rekair, tglbayar=NOW(),flaglunas="1", flagbatal="0", n' +
        'olpp=:nolpp, shift="1" WHERE kodegol=:kodegol AND pakai<=:pakai ' +
        'AND periode=:periode;'
      
        'REPLACE INTO bayar SELECT * FROM piutang WHERE kodegol=:kodegol ' +
        'AND pakai<=:pakai AND periode=:periode;'
      
        'DELETE FROM piutang WHERE kodegol=:kodegol AND pakai<=:pakai AND' +
        ' periode=:periode;')
    Connection = Umain.host
    Left = 40
    Top = 248
  end
  object Qexecsend: TMyQuery
    SQLRefresh.Strings = (
      'REPLACE INTO sendtagihan_email (`kode`,'
      '`periode`,'
      '`nosamb`,'
      '`nama`,'
      '`alamat`,'
      '`kodegol`,'
      '`kodegolyangberlaku`,'
      '`kodediameter`,'
      '`kodediameteryangberlaku`,'
      '`koderayon`,'
      '`stanlalu`,'
      '`stanskrg`,'
      '`stanangkat`,'
      '`pakai`,'
      '`biayapemakaian`,'
      '`administrasi`,'
      '`pemeliharaan`,'
      '`retribusi`,'
      '`pelayanan`,'
      '`airlimbah`,'
      '`administrasilain`,'
      '`pemeliharaanlain`,'
      '`retribusilain`,'
      '`meterai`,'
      '`dendatunggakan`,'
      '`rekair`,'
      '`ppn`,'
      '`persenppn`,'
      '`total`,'
      '`tglbayar`,'
      '`tglbatal`,'
      '`flagangsur`,'
      '`noangsuran`,'
      '`flaglunas`,'
      '`flagbatal`,'
      '`alasanbatal`,'
      '`loketbayar`,'
      '`kasir`,'
      '`bulan`,'
      '`terbilang`,'
      '`prog1`,'
      '`prog2`,'
      '`prog3`,'
      '`prog4`,'
      '`prog5`,'
      '`nolpp`,'
      '`waktucetak`,'
      '`flag`,'
      '`blok1`,'
      '`blok2`,'
      '`blok3`,'
      '`blok4`,'
      '`blok5`,'
      '`kelainan`,'
      '`loketupdate`,'
      '`waktuupdate`,'
      '`sudahupload`,'
      '`shift`,'
      '`pembacameter`,'
      '`trf_denda_berdasarkan_persen`,'
      '`flagkirim`,'
      '`id_struk`,'
      '`jenis`,'
      'email) '
      ''
      'SELECT '
      '`kode`,'
      '`periode`,'
      'a.`nosamb`,'
      '`nama`,'
      '`alamat`,'
      '`kodegol`,'
      '`kodegolyangberlaku`,'
      '`kodediameter`,'
      '`kodediameteryangberlaku`,'
      '`koderayon`,'
      '`stanlalu`,'
      '`stanskrg`,'
      '`stanangkat`,'
      '`pakai`,'
      '`biayapemakaian`,'
      'a.`administrasi`,'
      '`pemeliharaan`,'
      '`retribusi`,'
      '`pelayanan`,'
      '`airlimbah`,'
      '`administrasilain`,'
      '`pemeliharaanlain`,'
      '`retribusilain`,'
      '`meterai`,'
      '`dendatunggakan`,'
      '`rekair`,'
      '`ppn`,'
      'a.`persenppn`,'
      '`total`,'
      '`tglbayar`,'
      '`tglbatal`,'
      '`flagangsur`,'
      '`noangsuran`,'
      '`flaglunas`,'
      '`flagbatal`,'
      '`alasanbatal`,'
      '`loketbayar`,'
      '`kasir`,'
      '`bulan`,'
      '`terbilang`,'
      '`prog1`,'
      '`prog2`,'
      '`prog3`,'
      '`prog4`,'
      '`prog5`,'
      '`nolpp`,'
      '`waktucetak`,'
      '`flag`,'
      '`blok1`,'
      '`blok2`,'
      '`blok3`,'
      '`blok4`,'
      '`blok5`,'
      '`kelainan`,'
      '`loketupdate`,'
      'a.`waktuupdate`,'
      '`sudahupload`,'
      '`shift`,'
      '`pembacameter`,'
      '`trf_denda_berdasarkan_persen`,'
      '0,'
      '1,'
      ' "Rekening Air",'
      ''
      'b.email'
      
        'FROM bayar a LEFT JOIN (SELECT nosamb,email FROM pelanggan ) b O' +
        'N a.nosamb=b.nosamb  WHERE nolpp=:nolpp')
    SQLLock.Strings = (
      '-- NONAIR'
      ''
      'REPLACE INTO sendtagihan_email ('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      ''
      '  `kodegol`,'
      '  `koderayon`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `retribusi`,'
      '  `dendatunggakan`,'
      '  `ppn`,'
      '  `persenppn`,'
      '  `total`,'
      '  `tglbayar`,'
      '  `tglbatal`,'
      '  `flagangsur`,'
      '  `noangsuran`,'
      '  `flaglunas`,'
      '  `flagbatal`,'
      '  `alasanbatal`,'
      '  `loketbayar`,'
      '  `kasir`,'
      '  `bulan`,'
      '  `terbilang`,'
      '  `nolpp`,'
      '  `waktucetak`,'
      '  `flag`,'
      '  `loketupdate`,'
      '  `waktuupdate`,'
      '  `sudahupload`,'
      '  `shift`,'
      '  `flagkirim`,'
      '  `id_struk`,'
      '  `jenis`,'
      'email'
      ') '
      ' '
      'SELECT '
      '  `nomor`,'
      '  `periode`,'
      '  `dibebankankepada`,'
      '  a.`nama`,'
      '  `alamat`,'
      '  `kodegol`,'
      '  `koderayon`,'
      '  `biayapemakaian`,'
      '  a.`administrasi`,'
      '  `pemeliharaan`,'
      '  `retribusi`,'
      '  `dendatunggakan`,'
      '  `ppn`,'
      '  a.persenppn,'
      '  `total`,'
      '  `waktubayar`,'
      '  `waktubatal`,'
      '  `flagangsur`,'
      '  `noangsuran`,'
      '  `flaglunas`,'
      '  `flagbatal`,'
      '  `alasanbatal`,'
      '  `loketbayar`,'
      '  `kasir`,'
      '   CONCAT(nb.nama,'#39' '#39',LEFT(periode,4)),'
      '  `terbilang`,'
      '  `nolpp`,'
      '  `waktucetak`,'
      '  `flag`,'
      '  `loketupdate`,'
      '  a.`waktuupdate`,'
      '  `sudahupload`,'
      '  `shift`,'
      '  0,'
      '  2,'
      '  jn.jenis_keterangan,'
      '  b.email'
      'FROM'
      '  nonair a'
      'left join ('
      '  select nosamb,email from('
      '  select nosamb,email from `pelanggan`'
      '  union'
      '  select `nosambyangdiberikan` as nosamb,email from rab'
      ') g ) b on a.`dibebankankepada`=b.nosamb'
      'LEFT JOIN `namabulan` nb ON RIGHT(a.periode,2)=nb.`bulan` '
      'LEFT JOIN jenisnonair jn ON a.jenis=jn.jenis '
      'WHERE nolpp = :nolpp and a.jenis<>"DENDA"')
    Connection = Umain.host
    Left = 96
    Top = 256
  end
  object Qcek_: TMyQuery
    Connection = DM.Conn
    Left = 412
    Top = 106
  end
end
