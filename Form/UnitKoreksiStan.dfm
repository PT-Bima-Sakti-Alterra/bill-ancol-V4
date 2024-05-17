object ukoreksistan: Tukoreksistan
  Left = 228
  Top = 243
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Koreksi Stan Meter'
  ClientHeight = 452
  ClientWidth = 435
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lewati: TcxButton
    Left = 216
    Top = 528
    Width = 169
    Height = 25
    Caption = 'Lewati ( ESC )'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Extrabold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = False
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = DM.small
    SpeedButtonOptions.CanBeFocused = False
  end
  object tglmulaidenda1: TcxDateEdit
    Left = 480
    Top = 498
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 113
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 452
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object minus: TRzLabel
      Left = 88
      Top = 240
      Width = 121
      Height = 16
      Caption = '{ PAKAI MINUS !! }'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
      Blinking = True
      BlinkColor = clRed
      BlinkIntervalOff = 400
      BlinkIntervalOn = 600
      FlyByColor = clOlive
    end
    object pakai: TcxCurrencyEdit
      Left = 16
      Top = 256
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
      Properties.EditFormat = '#,##0.###;(#,##0.###)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Properties.OnChange = pakaiPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Open Sans Extrabold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 193
    end
    object minpakai: TcxCurrencyEdit
      Left = 360
      Top = 48
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 55
    end
    object biayapemakaian: TcxCurrencyEdit
      Left = 312
      Top = 72
      TabStop = False
      Enabled = False
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
      Properties.OnChange = biayapemakaianPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 103
    end
    object administrasi: TcxCurrencyEdit
      Left = 312
      Top = 96
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 103
    end
    object pemeliharaan: TcxCurrencyEdit
      Left = 312
      Top = 120
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 103
    end
    object pelayanan: TcxCurrencyEdit
      Left = 312
      Top = 144
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 103
    end
    object retribusi: TcxCurrencyEdit
      Left = 312
      Top = 168
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 103
    end
    object airlimbah: TcxCurrencyEdit
      Left = 312
      Top = 216
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 103
    end
    object dendapakai0: TcxCurrencyEdit
      Left = 312
      Top = 240
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 103
    end
    object meterai: TcxCurrencyEdit
      Left = 312
      Top = 264
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 103
    end
    object rekair: TcxCurrencyEdit
      Left = 312
      Top = 288
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.#0'
      Properties.EditFormat = '#,##0.#0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 103
    end
    object cxLabel2: TcxLabel
      Left = 232
      Top = 264
      Caption = 'Meterai'
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
    object cxLabel7: TcxLabel
      Left = 232
      Top = 240
      Caption = 'Denda PK 0'
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
    object cxLabel8: TcxLabel
      Left = 232
      Top = 216
      Caption = 'Air Limbah'
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
    object cxLabel9: TcxLabel
      Left = 232
      Top = 168
      Caption = 'IPL'
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
    object cxLabel10: TcxLabel
      Left = 232
      Top = 144
      Caption = 'Beban Tetap'
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
    object cxLabel11: TcxLabel
      Left = 232
      Top = 120
      Caption = 'Pemeliharaan'
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
    object cxLabel12: TcxLabel
      Left = 232
      Top = 96
      Caption = 'Administrasi'
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
    object cxLabel13: TcxLabel
      Left = 232
      Top = 72
      Caption = 'Biaya Pakai'
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
    object cxLabel16: TcxLabel
      Left = 232
      Top = 48
      Caption = 'Minimal Pakai'
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
    object cekpakai: TcxCheckBox
      Left = 16
      Top = 238
      Caption = 'Pakai'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 25
      Transparent = True
      OnClick = cekpakaiClick
      Width = 65
    end
    object kelainan: TcxComboBox
      Left = 16
      Top = 328
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 193
    end
    object cekadakelainan: TcxCheckBox
      Left = 16
      Top = 308
      Caption = 'Ada Kelainan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 26
      Transparent = True
      OnClick = cekadakelainanClick
      Width = 121
    end
    object stanangkat: TcxCurrencyEdit
      Left = 16
      Top = 192
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Properties.OnChange = stanangkatPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Open Sans Extrabold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 193
    end
    object cekstanangkat: TcxCheckBox
      Left = 16
      Top = 174
      Caption = 'Stan Angkat'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 27
      Transparent = True
      OnClick = cekstanangkatClick
      Width = 105
    end
    object stankini: TcxCurrencyEdit
      Left = 16
      Top = 128
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Properties.OnChange = stankiniPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Open Sans Extrabold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 193
    end
    object cekstankini: TcxCheckBox
      Left = 16
      Top = 110
      Caption = 'Stan Kini'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 28
      Transparent = True
      OnClick = cekstankiniClick
      Width = 89
    end
    object stanlalu: TcxCurrencyEdit
      Left = 16
      Top = 64
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Properties.OnChange = stanlaluPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -27
      Style.Font.Name = 'Open Sans Extrabold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 193
    end
    object cekstanlalu: TcxCheckBox
      Left = 16
      Top = 46
      Caption = 'Stan Lalu'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 29
      Transparent = True
      OnClick = cekstanlaluClick
      Width = 89
    end
    object cxLabel14: TcxLabel
      Left = 232
      Top = 289
      Caption = 'Total Rek.'
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
    object cxLabel3: TcxLabel
      Left = 232
      Top = 314
      Caption = 'Total'
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object total: TcxCurrencyEdit
      Left = 312
      Top = 312
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.#0'
      Properties.EditFormat = '#,##0.#0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 32
      Visible = False
      Width = 103
    end
    object admlain: TcxCurrencyEdit
      Left = 492
      Top = 96
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 33
      Width = 50
    end
    object pemlain: TcxCurrencyEdit
      Left = 492
      Top = 120
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 34
      Width = 50
    end
    object btnKeluar: TcxButton
      Left = 224
      Top = 392
      Width = 193
      Height = 35
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
      TabStop = False
      OnClick = btnKeluarClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object btnOK: TcxButton
      Left = 17
      Top = 392
      Width = 200
      Height = 35
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
      TabStop = False
      OnClick = btnOKClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object retlain: TcxCurrencyEdit
      Left = 492
      Top = 144
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.###'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 37
      Width = 50
    end
    object cxLabel24: TcxLabel
      Left = 16
      Top = 353
      Caption = 'Catat Mtr.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object pembacameter: TcxComboBox
      Left = 80
      Top = 353
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 129
    end
    object cxLabel25: TcxLabel
      Left = 232
      Top = 193
      Caption = 'Tax'
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
    object ppn: TcxCurrencyEdit
      Left = 312
      Top = 192
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '#,##0.###'
      Properties.EditFormat = '#,##0.#0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 40
      Width = 103
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 423
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'KOREKSI STAN METER'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
    end
    object cektaksasi: TcxCheckBox
      Left = 232
      Top = 356
      Caption = 'Taksasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 42
      Transparent = True
      OnClick = cekadakelainanClick
      Width = 81
    end
  end
  object tglmulaidenda2: TcxDateEdit
    Left = 480
    Top = 522
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 113
  end
  object tglmulaidenda3: TcxDateEdit
    Left = 480
    Top = 546
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 113
  end
  object tglmulaidenda4: TcxDateEdit
    Left = 480
    Top = 570
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 113
  end
  object tglmulaidenda5: TcxDateEdit
    Left = 608
    Top = 498
    Enabled = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 113
  end
  object cxLabel1: TcxLabel
    Left = 528
    Top = 66
    Caption = 'Denda TG'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object dendatunggakan: TcxCurrencyEdit
    Left = 616
    Top = 66
    TabStop = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = '#,##0.###'
    Properties.EditFormat = '#,##0.###'
    Properties.Nullable = False
    Properties.Nullstring = '0'
    Properties.ReadOnly = True
    Properties.UseDisplayFormatWhenEditing = True
    Properties.UseLeftAlignmentOnEditing = False
    Properties.UseNullString = True
    Properties.UseThousandSeparator = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = 'Open Sans'
    Style.Font.Style = []
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    TabOrder = 8
    Width = 95
  end
  object Qgol: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from golongan '
      'WHERE kodegolyangberlaku=:kodegolyangberlaku')
    Connection = DM.Conn
    Left = 464
    Top = 296
  end
  object Qdia: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from diameter'
      'WHERE kodediameteryangberlaku=:kodediameteryangberlaku')
    Connection = DM.Conn
    Left = 528
    Top = 304
  end
  object Qmeterai: TMyQuery
    SQLRefresh.Strings = (
      
        'select * from meterai where :periode>=periodeawal AND :periode<=' +
        'periodeakhir')
    Connection = DM.Conn
    Left = 544
    Top = 360
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
      OnExecute = Action2Execute
    end
    object KoreksiBP: TAction
      Caption = 'KoreksiBP'
      ShortCut = 16453
      OnExecute = KoreksiBPExecute
    end
  end
  object Qadministrasilain: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from byadministrasi_lain'
      'WHERE kode=:kode')
    Connection = DM.Conn
    Left = 616
    Top = 216
  end
  object Qpemeliharaanlain: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from bypemeliharaan_lain'
      'WHERE kode=:kode')
    Connection = DM.Conn
    Left = 616
    Top = 288
  end
  object Qretribusilain: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from byretribusi_lain'
      'WHERE kode=:kode')
    Connection = DM.Conn
    Left = 720
    Top = 232
  end
  object Qadm: TMyQuery
    SQLRefresh.Strings = (
      
        'select * from byadministrasi where :periode>=periodeawal AND :pe' +
        'riode<=periodeakhir')
    Connection = DM.Conn
    Left = 464
    Top = 352
  end
  object QgolIPL: TMyQuery
    SQLRefresh.Strings = (
      'select *'
      'from golongan_ipl '
      'WHERE kodegolyangberlaku=:kodegolyangberlaku')
    Connection = DM.Conn
    Left = 464
    Top = 248
  end
end
