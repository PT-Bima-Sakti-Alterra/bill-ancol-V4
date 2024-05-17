object upostingdrd: Tupostingdrd
  Left = 427
  Top = 108
  BorderStyle = bsNone
  Caption = 'upostingdrd'
  ClientHeight = 292
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 292
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object Progress: TRzProgressBar
      Left = 40
      Top = 256
      Width = 265
      Height = 23
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
    object btnno: TcxButton
      Left = 176
      Top = 212
      Width = 129
      Height = 35
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnnoClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object btnok: TcxButton
      Left = 40
      Top = 212
      Width = 129
      Height = 35
      Caption = 'Posting'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnokClick
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 55
      Caption = 'Bulan :'
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
      Left = 96
      Top = 55
      Width = 129
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
    object memo: TcxMemo
      Left = 40
      Top = 148
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 57
      Width = 265
    end
    object cxLabel2: TcxLabel
      Left = 40
      Top = 128
      Caption = 'Catatan '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 325
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'POSTING LAPORAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object cek1: TcxCheckBox
      Left = 40
      Top = 86
      Caption = 'Posting DRD Air'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      Width = 121
    end
    object cek2: TcxCheckBox
      Left = 40
      Top = 107
      Caption = 'Posting Data Pelanggan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      Width = 177
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 184
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnokClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = btnnoClick
    end
  end
  object QpostingPel: TMyQuery
    SQLInsert.Strings = (
      'DELETE FROM `pelanggan_posting_` WHERE periode=:periode;'
      ''
      ''
      '-- AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"AKTIF" '
      
        'FROM sleman_bsbs4.drdposting:periode2 p WHERE p.flagaktif="1" OR' +
        'DER BY p.`nosamb` ASC );'
      #9
      #9
      #9
      #9
      '-- AKTIVASI SAMBUNGAN BARU'#9#9
      #9#9#9
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'#9#9#9
      
        '(SELECT CONCAT(:periode,".",p.nosambyangdiberikan), :periode, p.' +
        'nosambyangdiberikan, p.koderayon, p.kodegol, "AKTIVASI SAMBUNGAN' +
        ' BARU"  FROM kabsleman_loket.rab p '
      
        'WHERE DATE_FORMAT(p.`waktupengaktifan`,"%Y%m")=:periode AND p.fl' +
        'agaktif="1" AND p.flaghapus="0" ORDER BY p.`nosambyangdiberikan`' +
        ' ASC );'
      ''
      ''
      '-- SEGEL'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"SEGEL" FROM sleman_bsbs4.d' +
        'rdposting:periode2 p '
      'WHERE p.flagaktif="2" ORDER BY p.`nosamb` ASC );'
      ''
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS perio' +
        'de, c.nosamb, c.koderayon, c.kodegol,"SEGEL"  FROM kabsleman_lok' +
        'et.ba_pemutusan_sementara p '
      
        'LEFT JOIN permohonan_pemutusan_sementara c ON p.nomorpermohonan=' +
        'c.nomor'
      
        'WHERE c.segel="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  ' +
        'AND c.flaghapus="0" ORDER BY c.`nosamb` ASC );'
      ''
      ''
      '-- NON AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "NON AKTIF"   FROM sleman_bsbs4.drdposting:pe' +
        'riode2 p'
      'WHERE p.flagaktif="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- SAMBUNG KEMBALI'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "SAMBUNG KEMBALI"   FROM rab_sambung_kembali ' +
        'p '
      
        'WHERE DATE_FORMAT(p.`tglpasang`,"%Y%m")=:periode AND p.flagpasan' +
        'g="1" AND p.flaghapus="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- AIR TIDAK MENGALIR'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT("AIR TIDAK MENGALIR",".",:periode,".",p.nosamb), ' +
        ':periode, p.nosamb, p.koderayon, p.kodegol, "AIR TIDAK MENGALIR"' +
        '   FROM sleman_bsbs4.drdposting:periode2 p  '
      'WHERE p.flag="3" ORDER BY p.`nosamb` ASC );')
    Connection = Umain.host
    Left = 400
    Top = 240
  end
  object Qcek: TMyQuery
    SQLInsert.Strings = (
      'DELETE FROM `pelanggan_posting_` WHERE periode=:periode;'
      ''
      ''
      '-- AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"AKTIF" '
      
        'FROM sleman_bsbs4.drdposting:periode2 p WHERE p.flagaktif="1" OR' +
        'DER BY p.`nosamb` ASC );'
      #9
      #9
      #9
      #9
      '-- AKTIVASI SAMBUNGAN BARU'#9#9
      #9#9#9
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'#9#9#9
      
        '(SELECT CONCAT(:periode,".",p.nosambyangdiberikan), :periode, p.' +
        'nosambyangdiberikan, p.koderayon, p.kodegol, "AKTIVASI SAMBUNGAN' +
        ' BARU"  FROM kabsleman_loket.rab p '
      
        'WHERE DATE_FORMAT(p.`waktupengaktifan`,"%Y%m")=:periode AND p.fl' +
        'agaktif="1" AND p.flaghapus="0" ORDER BY p.`nosambyangdiberikan`' +
        ' ASC );'
      ''
      ''
      '-- SEGEL'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"SEGEL" FROM sleman_bsbs4.d' +
        'rdposting:periode2 p '
      'WHERE p.flagaktif="2" ORDER BY p.`nosamb` ASC );'
      ''
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS perio' +
        'de, c.nosamb, c.koderayon, c.kodegol,"SEGEL"  FROM kabsleman_lok' +
        'et.ba_pemutusan_sementara p '
      
        'LEFT JOIN permohonan_pemutusan_sementara c ON p.nomorpermohonan=' +
        'c.nomor'
      
        'WHERE c.segel="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  ' +
        'AND c.flaghapus="0" ORDER BY c.`nosamb` ASC );'
      ''
      ''
      '-- NON AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "NON AKTIF"   FROM sleman_bsbs4.drdposting:pe' +
        'riode2 p'
      'WHERE p.flagaktif="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- SAMBUNG KEMBALI'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "SAMBUNG KEMBALI"   FROM rab_sambung_kembali ' +
        'p '
      
        'WHERE DATE_FORMAT(p.`tglpasang`,"%Y%m")=:periode AND p.flagpasan' +
        'g="1" AND p.flaghapus="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- AIR TIDAK MENGALIR'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT("AIR TIDAK MENGALIR",".",:periode,".",p.nosamb), ' +
        ':periode, p.nosamb, p.koderayon, p.kodegol, "AIR TIDAK MENGALIR"' +
        '   FROM sleman_bsbs4.drdposting:periode2 p  '
      'WHERE p.flag="3" ORDER BY p.`nosamb` ASC );')
    Connection = Umain.host
    Left = 208
    Top = 392
  end
  object QExec: TMyQuery
    SQLInsert.Strings = (
      'DELETE FROM `pelanggan_posting_` WHERE periode=:periode;'
      ''
      ''
      '-- AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"AKTIF" '
      
        'FROM sleman_bsbs4.drdposting:periode2 p WHERE p.flagaktif="1" OR' +
        'DER BY p.`nosamb` ASC );'
      #9
      #9
      #9
      #9
      '-- AKTIVASI SAMBUNGAN BARU'#9#9
      #9#9#9
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'#9#9#9
      
        '(SELECT CONCAT(:periode,".",p.nosambyangdiberikan), :periode, p.' +
        'nosambyangdiberikan, p.koderayon, p.kodegol, "AKTIVASI SAMBUNGAN' +
        ' BARU"  FROM kabsleman_loket.rab p '
      
        'WHERE DATE_FORMAT(p.`waktupengaktifan`,"%Y%m")=:periode AND p.fl' +
        'agaktif="1" AND p.flaghapus="0" ORDER BY p.`nosambyangdiberikan`' +
        ' ASC );'
      ''
      ''
      '-- SEGEL'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS perio' +
        'de, p.nosamb, p.koderayon, p.kodegol,"SEGEL" FROM sleman_bsbs4.d' +
        'rdposting:periode2 p '
      'WHERE p.flagaktif="2" ORDER BY p.`nosamb` ASC );'
      ''
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS perio' +
        'de, c.nosamb, c.koderayon, c.kodegol,"SEGEL"  FROM kabsleman_lok' +
        'et.ba_pemutusan_sementara p '
      
        'LEFT JOIN permohonan_pemutusan_sementara c ON p.nomorpermohonan=' +
        'c.nomor'
      
        'WHERE c.segel="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  ' +
        'AND c.flaghapus="0" ORDER BY c.`nosamb` ASC );'
      ''
      ''
      '-- NON AKTIF'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "NON AKTIF"   FROM sleman_bsbs4.drdposting:pe' +
        'riode2 p'
      'WHERE p.flagaktif="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- SAMBUNG KEMBALI'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb, p.kod' +
        'erayon, p.kodegol, "SAMBUNG KEMBALI"   FROM rab_sambung_kembali ' +
        'p '
      
        'WHERE DATE_FORMAT(p.`tglpasang`,"%Y%m")=:periode AND p.flagpasan' +
        'g="1" AND p.flaghapus="0" ORDER BY p.`nosamb` ASC );'
      ''
      '-- AIR TIDAK MENGALIR'
      ''
      
        'REPLACE INTO pelanggan_posting_ (kode,periode,nosamb,koderayon,k' +
        'odegol,ket)'
      
        '(SELECT CONCAT("AIR TIDAK MENGALIR",".",:periode,".",p.nosamb), ' +
        ':periode, p.nosamb, p.koderayon, p.kodegol, "AIR TIDAK MENGALIR"' +
        '   FROM sleman_bsbs4.drdposting:periode2 p  '
      'WHERE p.flag="3" ORDER BY p.`nosamb` ASC );')
    Connection = Umain.host
    Left = 112
    Top = 344
  end
end
