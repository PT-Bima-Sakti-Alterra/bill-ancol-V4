object FGolongan: TFGolongan
  Left = 742
  Top = 112
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Input Data Golongan'
  ClientHeight = 617
  ClientWidth = 499
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
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 617
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    Color = 16316664
    TabOrder = 0
    object kode: TcxTextEdit
      Left = 112
      Top = 56
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 10
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 113
    end
    object cxLabel1: TcxLabel
      Left = 51
      Top = 55
      Caption = 'Kode Gol'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 50
      Top = 80
      Caption = 'Golongan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object golongan: TcxTextEdit
      Left = 112
      Top = 80
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 100
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 361
    end
    object adm: TcxCurrencyEdit
      Left = 112
      Top = 104
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 3
      Width = 73
    end
    object pemeliharaan: TcxCurrencyEdit
      Left = 112
      Top = 128
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 73
    end
    object pelayanan: TcxCurrencyEdit
      Left = 112
      Top = 152
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 5
      Width = 73
    end
    object retribusi: TcxCurrencyEdit
      Left = 112
      Top = 176
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      Width = 73
    end
    object airlimbah: TcxCurrencyEdit
      Left = 288
      Top = 104
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 7
      Width = 73
    end
    object denda0: TcxCurrencyEdit
      Left = 288
      Top = 128
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 8
      Width = 73
    end
    object dendatunggakan: TcxCurrencyEdit
      Left = 368
      Top = 423
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 36
      Width = 57
    end
    object minpakai: TcxCurrencyEdit
      Left = 112
      Top = 370
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '#,##0.###;(#,##0.###);0'
      Properties.EditFormat = '#,##0.###;(#,##0.###);0'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 21
      Width = 49
    end
    object cxLabel13: TcxLabel
      Left = 168
      Top = 371
      Caption = 'M3'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel12: TcxLabel
      Left = 48
      Top = 370
      Caption = 'Min. Pakai'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 291
      Top = 423
      Caption = 'Denda TG I'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 216
      Top = 128
      Caption = 'Denda Pk 0'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 219
      Top = 104
      Caption = 'Air Limbah'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 56
      Top = 176
      Caption = 'Retribusi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 48
      Top = 152
      Caption = 'Pelayanan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 32
      Top = 128
      Caption = 'Pemeliharaan'
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
      Left = 39
      Top = 104
      Caption = 'Administrasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dendatunggakan2: TcxCurrencyEdit
      Left = 368
      Top = 447
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 37
      Width = 57
    end
    object cxLabel21: TcxLabel
      Left = 288
      Top = 447
      Caption = 'Denda TG II'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel34: TcxLabel
      Left = 288
      Top = 471
      Caption = 'Denda TG III'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dendatunggakan3: TcxCurrencyEdit
      Left = 368
      Top = 471
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 38
      Width = 57
    end
    object cxLabel35: TcxLabel
      Left = 248
      Top = 519
      Caption = 'Denda TG Per Bulan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dendatunggakanperbulan: TcxCurrencyEdit
      Left = 368
      Top = 519
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 41
      Width = 57
    end
    object cxLabel36: TcxLabel
      Left = 200
      Top = 152
      Caption = 'Retribusi Pakai'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object retribusipakai: TcxCurrencyEdit
      Left = 288
      Top = 152
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 9
      Width = 73
    end
    object cxLabel37: TcxLabel
      Left = 288
      Top = 495
      Caption = 'Denda TG IV'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dendatunggakan4: TcxCurrencyEdit
      Left = 368
      Top = 495
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 39
      Width = 57
    end
    object TcxButton
      Left = 111
      Top = 561
      Width = 146
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 57
      OnClick = buttonClick
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 264
      Top = 561
      Width = 145
      Height = 30
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
      OnClick = cxButton2Click
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel11: TcxLabel
      Left = 64
      Top = 252
      Caption = 'Batas 1'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object bb1: TcxCurrencyEdit
      Left = 112
      Top = 250
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 11
      Width = 50
    end
    object ba1: TcxCurrencyEdit
      Left = 168
      Top = 250
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.MaxLength = 9
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 12
      Width = 65
    end
    object bb2: TcxCurrencyEdit
      Left = 112
      Top = 274
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 13
      Width = 50
    end
    object ba2: TcxCurrencyEdit
      Left = 168
      Top = 274
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.MaxLength = 9
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 14
      Width = 65
    end
    object ba3: TcxCurrencyEdit
      Left = 168
      Top = 298
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.MaxLength = 9
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 16
      Width = 65
    end
    object bb3: TcxCurrencyEdit
      Left = 112
      Top = 298
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 15
      Width = 50
    end
    object bb4: TcxCurrencyEdit
      Left = 112
      Top = 322
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 17
      Width = 50
    end
    object ba4: TcxCurrencyEdit
      Left = 168
      Top = 322
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.MaxLength = 9
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 18
      Width = 65
    end
    object ba5: TcxCurrencyEdit
      Left = 168
      Top = 346
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.MaxLength = 9
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 20
      Width = 65
    end
    object bb5: TcxCurrencyEdit
      Left = 112
      Top = 346
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 19
      Width = 50
    end
    object cxLabel31: TcxLabel
      Left = 64
      Top = 347
      Caption = 'Batas 5'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel16: TcxLabel
      Left = 64
      Top = 323
      Caption = 'Batas 4'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel15: TcxLabel
      Left = 64
      Top = 299
      Caption = 'Batas 3'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel14: TcxLabel
      Left = 64
      Top = 277
      Caption = 'Batas 2'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t1: TcxCurrencyEdit
      Left = 288
      Top = 250
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 22
      Width = 65
    end
    object cxLabel22: TcxLabel
      Left = 243
      Top = 250
      Caption = 'Tarif 1'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel23: TcxLabel
      Left = 243
      Top = 274
      Caption = 'Tarif 2'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t2: TcxCurrencyEdit
      Left = 288
      Top = 274
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 23
      Width = 65
    end
    object tetap2: TcxComboBox
      Left = 360
      Top = 274
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-'
        'Tetap')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 28
      Text = '-'
      Width = 65
    end
    object tetap1: TcxComboBox
      Left = 360
      Top = 250
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-'
        'Tetap')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Text = '-'
      Width = 65
    end
    object tetap3: TcxComboBox
      Left = 360
      Top = 298
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-'
        'Tetap')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 29
      Text = '-'
      Width = 65
    end
    object t3: TcxCurrencyEdit
      Left = 288
      Top = 298
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 24
      Width = 65
    end
    object cxLabel24: TcxLabel
      Left = 243
      Top = 298
      Caption = 'Tarif 3'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel25: TcxLabel
      Left = 243
      Top = 322
      Caption = 'Tarif 4'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t4: TcxCurrencyEdit
      Left = 288
      Top = 322
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 25
      Width = 65
    end
    object tetap4: TcxComboBox
      Left = 360
      Top = 322
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-'
        'Tetap')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 30
      Text = '-'
      Width = 65
    end
    object tetap5: TcxComboBox
      Left = 360
      Top = 346
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-'
        'Tetap')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Text = '-'
      Width = 65
    end
    object t5: TcxCurrencyEdit
      Left = 288
      Top = 346
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 26
      Width = 65
    end
    object cxLabel30: TcxLabel
      Left = 243
      Top = 346
      Caption = 'Tarif 5'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel27: TcxLabel
      Left = 58
      Top = 499
      Caption = 'Aktif'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object aktif: TcxComboBox
      Left = 96
      Top = 498
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ya'
        'Tidak')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 35
      Text = 'Ya'
      Width = 57
    end
    object cxLabel26: TcxLabel
      Left = 29
      Top = 426
      Caption = 'Nomor S.K'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object nomorba: TcxTextEdit
      Left = 96
      Top = 426
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 32
      Width = 169
    end
    object kategori: TcxTextEdit
      Left = 96
      Top = 450
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 33
      Width = 169
    end
    object cxLabel28: TcxLabel
      Left = 40
      Top = 450
      Caption = 'Kategori'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 16
      Top = 474
      Caption = 'Uraian Kateg.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object uraian: TcxTextEdit
      Left = 96
      Top = 474
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 34
      Width = 169
    end
    object ppn: TcxCurrencyEdit
      Left = 288
      Top = 176
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.##;(,0.##)'
      Properties.EditFormat = ',0.##;(,0.##)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 10
      Width = 57
    end
    object cxLabel29: TcxLabel
      Left = 241
      Top = 177
      Caption = 'Ppn %'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 226
      Width = 457
      Height = 23
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'PROGRESIF'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 74
    end
    object RzPanel3: TRzPanel
      Left = 16
      Top = 396
      Width = 457
      Height = 23
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'KETERANGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 75
    end
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 487
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA GOLONGAN'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 76
    end
    object periode: TRzDateTimePicker
      Left = 345
      Top = 53
      Width = 129
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      CalColors.BackColor = 6316128
      CalColors.TextColor = 6316128
      CalColors.TitleTextColor = 6316128
      CalColors.MonthBackColor = 6316128
      Date = 41655.788053020830000000
      Format = 'MMMM yyyy'
      Time = 41655.788053020830000000
      Color = clBtnHighlight
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      FlatButtons = True
      FrameColor = clAppWorkSpace
      FrameHotColor = clBlack
      FrameHotStyle = fsFlat
      FrameVisible = True
    end
    object cxLabel17: TcxLabel
      Left = 240
      Top = 55
      Caption = 'Bulan Ml. Berlaku'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel18: TcxLabel
      Left = 45
      Top = 200
      Caption = 'Min.Denda'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object mindenda: TcxCurrencyEdit
      Left = 112
      Top = 200
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DisplayFormat = ',0.;(,0.)'
      Properties.EditFormat = ',0.;(,0.)'
      Properties.Nullable = False
      Properties.Nullstring = '0'
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
      TabOrder = 79
      Width = 73
    end
    object cxLabel19: TcxLabel
      Left = 210
      Top = 201
      Caption = 'Trf Denda %'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object trf_denda_persen: TcxComboBox
    Left = 288
    Top = 200
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Tidak'
      'Ya')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Open Sans Semibold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = 'Tidak'
    Width = 57
  end
  object Qgol: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO golongan VALUES ('
      'NULL,  '
      ':kodegolyangberlaku,'
      ':periodemulaiberlaku,                  '
      ':kodegol,                 '
      ':golongan, '
      ':kategori,'
      ':uraian,              '
      ':administrasi,                      '
      ':pemeliharaan,               '
      ':pelayanan,                '
      ':retribusi,           '
      ':dendapakai0,               '
      ':dendatunggakan,'
      ':dendatunggakan2, '
      ':dendatunggakan3,'
      ':dendatunggakan4,'
      ':dendatunggakanperbulan,            '
      ':airlimbah,                           '
      ':minpakai,'
      ':ppn,                '
      ':bb1,                       '
      ':ba1,                '
      ':bb2,             '
      ':ba2,                '
      ':bb3,                     '
      ':ba3,                     '
      ':bb4,                      '
      ':ba4,'
      ':bb5,                      '
      ':ba5,                     '
      ':t1,                        '
      ':t2,                         '
      ':t3,                  '
      ':t4,'
      ':t5,'
      ':tetap1,'
      ':tetap2,'
      ':tetap3,'
      ':tetap4,'
      ':tetap5,'
      ':nomorba,'
      ':aktif,'
      ':retribusipakai,'
      ':mindenda,'
      ':trf_denda_persen)')
    SQLUpdate.Strings = (
      'UPDATE golongan SET                              '
      'golongan=:golongan,                '
      'administrasi=:administrasi,                      '
      'pemeliharaan=:pemeliharaan,               '
      'pelayanan=:pelayanan,                '
      'retribusi=:retribusi,           '
      'dendapakai0=:dendapakai0,               '
      'dendatunggakan=:dendatunggakan,  '
      'dendatunggakan2=:dendatunggakan2,'
      'dendatunggakan3=:dendatunggakan3,'
      'dendatunggakan4=:dendatunggakan4,     '
      'dendatunggakanperbulan=:dendatunggakanperbulan,         '
      'airlimbah=:airlimbah,                            '
      'minpakai=:minpakai, '
      'ppn=:ppn,               '
      'bb1=:bb1,                       '
      'bb2=:bb2,               '
      'bb3=:bb3,             '
      'bb4=:bb4,'
      'bb5=:bb5,                '
      'ba1=:ba1,                       '
      'ba2=:ba2,               '
      'ba3=:ba3,             '
      'ba4=:ba4,'
      'ba5=:ba5,                     '
      't1=:t1,                        '
      't2=:t2,                         '
      't3=:t3,                  '
      't4=:t4,'
      't5=:t5,'
      't1_tetap=:tetap1,'
      't2_tetap=:tetap2,'
      't3_tetap=:tetap3,'
      't4_tetap=:tetap4,'
      't5_tetap=:tetap5,'
      'nomorba=:nomorba,'
      'aktif=:aktif,'
      'kategori=:kategori,'
      'uraian=:uraian,'
      'retribusi_pakai=:retribusipakai,'
      'mindenda=:mindenda,'
      'trf_denda_berdasarkan_persen=:trf_denda_persen'
      'WHERE kodegolyangberlaku=:kodegolyangberlaku')
    Connection = DM.Conn
    Left = 512
    Top = 270
  end
  object ActionList1: TActionList
    Left = 464
    Top = 406
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = buttonClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = Action2Execute
    end
  end
end
