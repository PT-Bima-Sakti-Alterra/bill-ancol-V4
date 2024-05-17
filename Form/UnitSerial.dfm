object userial: Tuserial
  Left = 533
  Top = 287
  BorderStyle = bsNone
  Caption = 'userial'
  ClientHeight = 151
  ClientWidth = 219
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
  object info: TRzPanel
    Left = 0
    Top = 0
    Width = 219
    Height = 25
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clBlack
    Caption = 'VALIDASI NOMOR SERI PERANGKAT'
    Color = 27887
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 25
    Width = 219
    Height = 126
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 27887
    BorderWidth = 2
    Color = clWhite
    TabOrder = 1
    object cxButton2: TcxButton
      Left = 16
      Top = 58
      Width = 185
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 87
      Width = 185
      Height = 25
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object ketikan: TcxTextEdit
      Left = 16
      Top = 32
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 185
    end
    object id: TRzPanel
      Left = 2
      Top = 2
      Width = 215
      Height = 25
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'VALIDASI NOMOR SERI PERANGKAT'
      Color = 27887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object ActionList1: TActionList
    Left = 288
    Top = 73
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
end
