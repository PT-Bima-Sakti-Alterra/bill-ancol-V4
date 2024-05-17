object ubackuphost: Tubackuphost
  Left = 252
  Top = 101
  BorderStyle = bsNone
  Caption = 'Perawatan Database Loket'
  ClientHeight = 425
  ClientWidth = 603
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 425
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object btnOK: TcxButton
      Left = 24
      Top = 56
      Width = 125
      Height = 25
      Caption = 'Mulai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnOKClick
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 152
      Top = 56
      Width = 125
      Height = 25
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object memo: TcxMemo
      Left = 24
      Top = 112
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBtnFace
      TabOrder = 2
      Height = 281
      Width = 553
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 88
      Caption = 'Proses :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object info: TRzPanel
      Left = 5
      Top = 5
      Width = 593
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'FORMULIR ANGSURAN 3'
      Color = 10420224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Qmemo: TMyQuery
    Connection = Umain.host
    Left = 216
    Top = 8
  end
  object ActionList1: TActionList
    Left = 464
    Top = 24
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnOKClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
  object Qcek: TMyQuery
    Connection = Umain.host
    Left = 296
    Top = 16
  end
  object Qexec: TMyQuery
    Connection = Umain.host
    Left = 336
    Top = 16
  end
end
