object utkepemilikan: Tutkepemilikan
  Left = 489
  Top = 326
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Data Kepemilikan Bangunan'
  ClientHeight = 204
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Width = 319
    Height = 204
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object ok: TcxButton
      Left = 49
      Top = 109
      Width = 224
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
    object kepemilikan: TcxTextEdit
      Left = 47
      Top = 78
      BeepOnEnter = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 226
    end
    object cxLabel1: TcxLabel
      Left = 48
      Top = 56
      Caption = 'Kepemilikan Bangunan :'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object no: TcxButton
      Left = 48
      Top = 142
      Width = 225
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = noClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 307
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA KEPEMILIKAN BANGUNAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object ActionList1: TActionList
    Left = 296
    Top = 96
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
