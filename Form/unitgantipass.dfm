object ugantipass: Tugantipass
  Left = 317
  Top = 3
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Ganti Password'
  ClientHeight = 287
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 287
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object password: TcxTextEdit
      Left = 45
      Top = 75
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 188
    end
    object cxLabel2: TcxLabel
      Left = 45
      Top = 57
      Caption = 'Password Lama'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 45
      Top = 97
      Caption = 'Password Baru'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      Transparent = True
    end
    object passwordbaru: TcxTextEdit
      Left = 45
      Top = 115
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 188
    end
    object cxLabel3: TcxLabel
      Left = 45
      Top = 137
      Caption = 'Konfirmasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      Transparent = True
    end
    object konfirmasi: TcxTextEdit
      Left = 45
      Top = 156
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 188
    end
    object cxButton2: TcxButton
      Left = 46
      Top = 184
      Width = 187
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 46
      Top = 218
      Width = 187
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 275
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'GANTI PASSWORD'
      Color = 23498
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      GradientColorStart = 20966
      GradientColorStop = 19157
      ParentFont = False
      TabOrder = 8
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 287
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 1
    object RzLabel1: TRzLabel
      Left = 40
      Top = 64
      Width = 216
      Height = 76
      Caption = 
        'Password Anda '#13'sudah berumur lebih dari 3 Bulan, '#13'diharapkan unt' +
        'uk mengganti '#13'Password lama anda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      BlinkIntervalOff = 400
      BlinkIntervalOn = 600
    end
    object RzPanel3: TRzPanel
      Left = 6
      Top = 6
      Width = 275
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'GANTI PASSWORD'
      Color = 23498
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      GradientColorStart = 20966
      GradientColorStop = 19157
      ParentFont = False
      TabOrder = 0
    end
    object btnOk: TcxButton
      Left = 46
      Top = 160
      Width = 187
      Height = 30
      Caption = 'Lanjutkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnOkClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object btnBatal: TcxButton
      Left = 46
      Top = 194
      Width = 187
      Height = 30
      Caption = 'Tidak Usah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btnBatalClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cekTanya: TRzCheckBox
      Left = 72
      Top = 248
      Width = 131
      Height = 17
      Caption = 'Jangan Tanyakan Lagi'
      State = cbUnchecked
      TabOrder = 3
      Transparent = True
    end
  end
  object ActionList1: TActionList
    Left = 176
    Top = 65528
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
  end
end