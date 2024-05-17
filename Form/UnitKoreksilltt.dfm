object Ukoreksilltt: TUkoreksilltt
  Left = 805
  Top = 325
  BorderStyle = bsNone
  Caption = 'Ukoreksilltt'
  ClientHeight = 222
  ClientWidth = 417
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
    Width = 417
    Height = 222
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 405
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'KOREKSI L2T2'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object total: TcxCurrencyEdit
      Left = 32
      Top = 120
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.#0'
      Properties.EditFormat = '#,##0.#0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = False
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -16
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 145
    end
    object cxLabel13: TcxLabel
      Left = 32
      Top = 96
      Caption = 'Biaya LLTT'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnOK: TcxButton
      Left = 33
      Top = 166
      Width = 112
      Height = 35
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btnOKClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object btnKeluar: TcxButton
      Left = 153
      Top = 166
      Width = 120
      Height = 35
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btnKeluarClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object kodelltt: TcxComboBox
      Left = 32
      Top = 72
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodellttPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 65
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 48
      Caption = 'Kode'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object nama: TcxComboBox
      Left = 96
      Top = 72
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = namaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 289
    end
  end
  object Qgol: TMyQuery
    Connection = DM.Conn
    Left = 336
    Top = 144
  end
  object ActionList1: TActionList
    Left = 120
    Top = 80
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnOKClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = btnKeluarClick
    end
    object Action3: TAction
      Caption = 'Action3'
    end
  end
end
