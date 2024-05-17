object uharganet: Tuharganet
  Left = 653
  Top = 262
  BorderStyle = bsNone
  Caption = 'uharganet'
  ClientHeight = 190
  ClientWidth = 330
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
  object cPanel: TRzPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 190
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 9103615
    TabOrder = 0
    object cxLabel3: TcxLabel
      Left = 24
      Top = 55
      Caption = 'Harga Rp. :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object harga: TcxCurrencyEdit
      Left = 24
      Top = 80
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.#0'
      Properties.EditFormat = '#,##0.#0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 273
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 318
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'HARGA NET SATUAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object button: TcxButton
      Left = 26
      Top = 136
      Width = 135
      Height = 27
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = buttonClick
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 168
      Top = 136
      Width = 129
      Height = 27
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object ActionList2: TActionList
    Left = 192
    Top = 152
    object Action3: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = buttonClick
    end
    object Action4: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
end
