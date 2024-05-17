object upostingsaldo: Tupostingsaldo
  Left = 295
  Top = 298
  BorderStyle = bsNone
  Caption = 'upostingsaldo'
  ClientHeight = 178
  ClientWidth = 206
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
    Top = 33
    Width = 206
    Height = 145
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 20966
    BorderWidth = 2
    Color = clWhite
    TabOrder = 0
    object Progress: TRzProgressBar
      Left = 2
      Top = 2
      Width = 202
      Height = 141
      Align = alClient
      BorderOuter = fsFlat
      BorderWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      Left = 32
      Top = 106
      Width = 145
      Height = 25
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      Left = 32
      Top = 74
      Width = 145
      Height = 25
      Caption = 'Posting'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
    object tanggal: TcxDateEdit
      Left = 32
      Top = 37
      ParentFont = False
      Properties.DisplayFormat = 'dd MMMM yyyy'
      Properties.EditFormat = 'dd MMMM yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 13
      Caption = 'Proses s/d tanggal '
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
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 206
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'POSTING SALDO BULANAN'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  object BillQCek: TMyQuery
    Connection = DM.Conn
    Left = 248
    Top = 215
  end
  object Qposting: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO saldopiutang:thnbln VALUES ('
      '  :kode,'
      '  :periode,'
      '  :bulan,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      '  :kodegol,'
      '  :kodediameter,'
      '  :kodekelurahan,'
      '  :koderayon,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
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
      '  :ppn,'
      '  :total,'
      '  NULL,'
      '  NULL,'
      '  NULL,'
      '  :userkoreksi,'
      '  :userpublish,'
      '  :flagpublish,'
      '  "0",'
      '  "0",'
      'null, '
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
      '  :flagkoreksi,'
      '  :flagbatal,'
      '  :flagcetak,'
      '  null,'
      '  :flagaktif,'
      '  :loketbayar,'
      '  :flagkirim,'
      '  :tglkirim,'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      '  :userkirim,'
      '  :flagdownload,'
      '  :tgldownload,'
      '  :userdownload,'
      '  :tglbatal,'
      '  :pembacameter,'
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      '  :koderetribusilain,'
      '  :flag'
      ')')
    SQLUpdate.Strings = (
      'INSERT INTO saldopiutang:thnbln VALUES ('
      '  :kode,'
      '  :periode,'
      '  :bulan,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      '  :kodegol,'
      '  :kodediameter,'
      '  :kodekelurahan,'
      '  :koderayon,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
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
      '  :tglkoreksi,'
      '  :tglpublish,'
      '  :tglbayar,'
      '  :userkoreksi,'
      '  :userpublish,'
      '  :flagpublish,'
      '  :flaglunas,'
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
      '  :flagkoreksi,'
      '  :flagbatal,'
      '  :flagcetak,'
      '  :tglcetak,'
      '  :flagaktif,'
      '  :loketbayar,'
      '  :flagkirim,'
      '  :tglkirim,'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      '  :userkirim,'
      '  :flagdownload,'
      '  :tgldownload,'
      '  :userdownload,'
      '  :tglbatal,'
      '  :pembacameter,'
      '  :flagbuatfilepos,'
      '  :waktubuatfilepos,'
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      '  :koderetribusilain,'
      '  :flag'
      ')')
    Connection = DM.Conn
    Left = 72
    Top = 287
  end
end
