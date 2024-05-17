object urubahnosamb: Turubahnosamb
  Left = 599
  Top = 208
  BorderStyle = bsNone
  Caption = 'urubahnosamb'
  ClientHeight = 429
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 429
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object ok: TcxButton
      Left = 24
      Top = 334
      Width = 313
      Height = 30
      Caption = 'Simpan'
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
      Left = 24
      Top = 368
      Width = 313
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
    object cxLabel1: TcxLabel
      Left = 24
      Top = 56
      Caption = 'No.Samb Lama :'
      Transparent = True
    end
    object nosamblama: TcxTextEdit
      Left = 24
      Top = 75
      Enabled = False
      TabOrder = 3
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 104
      Caption = 'No.Samb Baru :'
      Transparent = True
    end
    object nosambbaru: TcxTextEdit
      Left = 24
      Top = 123
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 185
    end
    object cxLabel3: TcxLabel
      Left = 24
      Top = 152
      Caption = 'Nomor Berita Acara :'
      Transparent = True
    end
    object nomorba: TcxTextEdit
      Left = 24
      Top = 171
      Properties.CharCase = ecUpperCase
      TabOrder = 7
      Width = 313
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 248
      Caption = 'Alasan Perubahan Nama :'
      Transparent = True
    end
    object tanggal: TcxDateEdit
      Left = 24
      Top = 219
      TabOrder = 9
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 200
      Caption = 'Tanggal Berita Acara :'
      Transparent = True
    end
    object alasan: TcxMemo
      Left = 24
      Top = 267
      TabOrder = 11
      Height = 49
      Width = 313
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 348
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'GANTI NOMOR SAMBUNGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 152
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
    end
  end
end
