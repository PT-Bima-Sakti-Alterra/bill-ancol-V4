object ustatus: Tustatus
  Left = 700
  Top = 311
  BorderStyle = bsNone
  Caption = 'ustatus'
  ClientHeight = 371
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
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 371
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 24
      Top = 56
      Caption = 'Status PLG'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ok: TcxButton
      Left = 24
      Top = 280
      Width = 313
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = okClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 314
      Width = 313
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object tanggal: TcxDateEdit
      Left = 24
      Top = 127
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 121
    end
    object status: TcxComboBox
      Left = 24
      Top = 74
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tutup Total / Non Aktif'
        'Aktif'
        'Segel'
        'Tutup Sementara')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 217
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 105
      Caption = 'Tanggal Berita Acara'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
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
      TabOrder = 7
      Width = 313
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 200
      Caption = 'Alasan Perubahan Status :'
      Transparent = True
    end
    object alasan: TcxMemo
      Left = 24
      Top = 219
      TabOrder = 9
      Height = 49
      Width = 313
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 351
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'GANTI STATUS'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 152
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = okClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
end
