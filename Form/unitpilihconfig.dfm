object upilihunit: Tupilihunit
  Left = 604
  Top = 308
  BorderStyle = bsNone
  Caption = 'upilihunit'
  ClientHeight = 156
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 19
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 156
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 334
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'PILIH SERVER BACAMETER'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object config: TcxComboBox
      Left = 40
      Top = 56
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'TANJUNGPINANG'
        'UBAN'
        'KIJANG')
      TabOrder = 1
      Text = 'TANJUNGPINANG'
      Width = 265
    end
    object cxButton1: TcxButton
      Left = 39
      Top = 92
      Width = 130
      Height = 35
      Caption = 'Download'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 175
      Top = 92
      Width = 130
      Height = 35
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
  end
end
