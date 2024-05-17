object usetdenda: Tusetdenda
  Left = 299
  Top = 120
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Set Tgl.Denda'
  ClientHeight = 316
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 348
    Height = 316
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 32
      Top = 223
      Width = 281
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
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 32
      Top = 258
      Width = 281
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
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object l4: TcxLabel
      Left = 32
      Top = 115
      Caption = 'Tgl.Mulai Denda III'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object l3: TcxLabel
      Left = 32
      Top = 91
      Caption = 'Tgl.Mulai Denda II'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object l2: TcxLabel
      Left = 32
      Top = 67
      Caption = 'Tgl.Mulai Denda I'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object l5: TcxLabel
      Left = 32
      Top = 163
      Caption = 'Tgl.Mulai Denda Per Bulan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object l6: TcxLabel
      Left = 32
      Top = 139
      Caption = 'Tgl.Mulai Denda IV'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tanggal5: TcxDateEdit
      Left = 184
      Top = 160
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 129
    end
    object tanggal: TcxDateEdit
      Left = 184
      Top = 64
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 129
    end
    object tanggal2: TcxDateEdit
      Left = 184
      Top = 88
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 129
    end
    object tanggal3: TcxDateEdit
      Left = 184
      Top = 112
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 129
    end
    object tanggal4: TcxDateEdit
      Left = 184
      Top = 136
      ParentFont = False
      Properties.DisplayFormat = 'dd mmmm yyyy'
      Properties.EditFormat = 'dd mmmm yyyy'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 129
    end
    object info: TRzPanel
      Left = 6
      Top = 6
      Width = 336
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'KOREKSI TANGGAL DENDA'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object cbWilayah: TcxCheckBox
      Left = 32
      Top = 183
      TabStop = False
      Caption = 'Wilayah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 13
      OnClick = cbWilayahClick
      Width = 73
    end
    object Wilayah: TcxComboBox
      Left = 184
      Top = 184
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.OnChange = WilayahPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 129
    end
    object kodewil: TcxComboBox
      Left = 552
      Top = 106
      AutoSize = False
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 15
      Height = 21
      Width = 48
    end
    object cbRayon: TcxCheckBox
      Left = 100
      Top = 183
      TabStop = False
      Caption = 'Rayon'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 16
      OnClick = cbRayonClick
      Width = 60
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 16
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton1Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
  object Qcek: TMyQuery
    Connection = DM.Conn
    Left = 424
    Top = 224
  end
end
