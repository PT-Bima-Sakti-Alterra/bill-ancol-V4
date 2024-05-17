object urubahgolonganlimbah: Turubahgolonganlimbah
  Left = 1004
  Top = 336
  BorderStyle = bsNone
  Caption = 'urubahgolonganlimbah'
  ClientHeight = 419
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
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
    Width = 363
    Height = 419
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
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
      Top = 372
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
      Top = 52
      Caption = 'Kode Limbah Lama :'
      Transparent = True
    end
    object kodelama: TcxTextEdit
      Left = 24
      Top = 71
      Enabled = False
      TabOrder = 3
      Width = 137
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 100
      Caption = 'Kode Limbah Baru :'
      Transparent = True
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
      TabOrder = 6
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
      TabOrder = 8
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
      TabOrder = 10
      Height = 49
      Width = 313
    end
    object kodebaru: TcxComboBox
      Left = 24
      Top = 120
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 11
      Width = 137
    end
    object RzPanel8: TRzPanel
      Left = 5
      Top = 5
      Width = 353
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'RUBAH GOLONGAN LIMBAH'
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
    Left = 184
    Top = 160
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
end
