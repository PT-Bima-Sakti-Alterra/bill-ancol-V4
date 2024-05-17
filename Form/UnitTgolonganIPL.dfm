object FGolonganIPL: TFGolonganIPL
  Left = 742
  Top = 112
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Input Data Golongan IPL'
  ClientHeight = 553
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
    Height = 553
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
      Caption = 'Kode IPL'
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
      Caption = 'Nama IPL'
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
    object TcxButton
      Left = 111
      Top = 497
      Width = 146
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      OnClick = buttonClick
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 264
      Top = 497
      Width = 145
      Height = 30
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      OnClick = cxButton2Click
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxLabel11: TcxLabel
      Left = 64
      Top = 164
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
      Top = 162
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
      Width = 50
    end
    object ba1: TcxCurrencyEdit
      Left = 168
      Top = 162
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
      TabOrder = 4
      Width = 65
    end
    object bb2: TcxCurrencyEdit
      Left = 112
      Top = 186
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
      Width = 50
    end
    object ba2: TcxCurrencyEdit
      Left = 168
      Top = 186
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
      TabOrder = 6
      Width = 65
    end
    object ba3: TcxCurrencyEdit
      Left = 168
      Top = 210
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
      TabOrder = 8
      Width = 65
    end
    object bb3: TcxCurrencyEdit
      Left = 112
      Top = 210
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
      Width = 50
    end
    object bb4: TcxCurrencyEdit
      Left = 112
      Top = 234
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
      Width = 50
    end
    object ba4: TcxCurrencyEdit
      Left = 168
      Top = 234
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
      TabOrder = 10
      Width = 65
    end
    object ba5: TcxCurrencyEdit
      Left = 168
      Top = 258
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
    object bb5: TcxCurrencyEdit
      Left = 112
      Top = 258
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
    object cxLabel31: TcxLabel
      Left = 64
      Top = 259
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
      Top = 235
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
      Top = 211
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
      Top = 189
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
      Top = 162
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
      Width = 65
    end
    object cxLabel22: TcxLabel
      Left = 243
      Top = 162
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
      Top = 186
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
      Top = 186
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
      TabOrder = 14
      Width = 65
    end
    object tetap2: TcxComboBox
      Left = 360
      Top = 186
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
      TabOrder = 19
      Text = '-'
      Width = 65
    end
    object tetap1: TcxComboBox
      Left = 360
      Top = 162
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
      TabOrder = 18
      Text = '-'
      Width = 65
    end
    object tetap3: TcxComboBox
      Left = 360
      Top = 210
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
      TabOrder = 20
      Text = '-'
      Width = 65
    end
    object t3: TcxCurrencyEdit
      Left = 288
      Top = 210
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
      Width = 65
    end
    object cxLabel24: TcxLabel
      Left = 243
      Top = 210
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
      Top = 234
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
      Top = 234
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
      TabOrder = 16
      Width = 65
    end
    object tetap4: TcxComboBox
      Left = 360
      Top = 234
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
      TabOrder = 21
      Text = '-'
      Width = 65
    end
    object tetap5: TcxComboBox
      Left = 360
      Top = 258
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
      TabOrder = 22
      Text = '-'
      Width = 65
    end
    object t5: TcxCurrencyEdit
      Left = 288
      Top = 258
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
      Width = 65
    end
    object cxLabel30: TcxLabel
      Left = 243
      Top = 258
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
      Top = 451
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
      Top = 450
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
      TabOrder = 26
      Text = 'Ya'
      Width = 57
    end
    object cxLabel26: TcxLabel
      Left = 29
      Top = 378
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
      Top = 378
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 23
      Width = 169
    end
    object kategori: TcxTextEdit
      Left = 96
      Top = 402
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 24
      Width = 169
    end
    object cxLabel28: TcxLabel
      Left = 40
      Top = 402
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
      Top = 426
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
      TabOrder = 25
      Width = 169
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 138
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
      TabOrder = 45
    end
    object RzPanel3: TRzPanel
      Left = 16
      Top = 348
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
      TabOrder = 46
    end
    object RzPanel4: TRzPanel
      Left = 6
      Top = 6
      Width = 487
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA GOLONGAN IPL'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 47
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
    object bb6: TcxCurrencyEdit
      Left = 112
      Top = 282
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
      TabOrder = 49
      Width = 50
    end
    object ba6: TcxCurrencyEdit
      Left = 168
      Top = 282
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
      TabOrder = 50
      Width = 65
    end
    object ba7: TcxCurrencyEdit
      Left = 168
      Top = 306
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
      TabOrder = 51
      Width = 65
    end
    object bb7: TcxCurrencyEdit
      Left = 112
      Top = 306
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
      TabOrder = 52
      Width = 50
    end
    object cxLabel3: TcxLabel
      Left = 64
      Top = 307
      Caption = 'Batas 7'
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
      Left = 64
      Top = 283
      Caption = 'Batas 6'
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
      Left = 243
      Top = 282
      Caption = 'Tarif 6'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object t6: TcxCurrencyEdit
      Left = 288
      Top = 282
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
      TabOrder = 56
      Width = 65
    end
    object tetap6: TcxComboBox
      Left = 360
      Top = 282
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
      TabOrder = 57
      Text = '-'
      Width = 65
    end
    object tetap7: TcxComboBox
      Left = 360
      Top = 306
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
      TabOrder = 58
      Text = '-'
      Width = 65
    end
    object t7: TcxCurrencyEdit
      Left = 288
      Top = 306
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
      TabOrder = 59
      Width = 65
    end
    object cxLabel6: TcxLabel
      Left = 243
      Top = 306
      Caption = 'Tarif 7'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel29: TcxLabel
      Left = 65
      Top = 105
      Caption = 'Tax %'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ppn: TcxCurrencyEdit
      Left = 112
      Top = 104
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
      TabOrder = 62
      Width = 57
    end
  end
  object Qgol: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO golongan_ipl VALUES ('
      'NULL,  '
      ':kodegolyangberlaku,'
      ':periodemulaiberlaku,                  '
      ':kodegol,                 '
      ':golongan, '
      ':kategori,'
      ':uraian,'
      ':ppn,              '
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
      ':bb6,                      '
      ':ba6,                     '
      ':bb7,                      '
      ':ba7,                     '
      ':t1,                        '
      ':t2,                         '
      ':t3,                  '
      ':t4,'
      ':t5,'
      ':t6,'
      ':t7,'
      ':tetap1,'
      ':tetap2,'
      ':tetap3,'
      ':tetap4,'
      ':tetap5,'
      ':tetap6,'
      ':tetap7,'
      ':nomorba,'
      ':aktif)')
    SQLUpdate.Strings = (
      'UPDATE golongan_ipl SET                              '
      'golongan=:golongan,'
      'ppn=:ppn,                '
      'bb1=:bb1,                       '
      'bb2=:bb2,               '
      'bb3=:bb3,             '
      'bb4=:bb4,'
      'bb5=:bb5,                '
      'bb6=:bb6,                '
      'bb7=:bb7,                '
      'ba1=:ba1,                       '
      'ba2=:ba2,               '
      'ba3=:ba3,             '
      'ba4=:ba4,'
      'ba5=:ba5,                     '
      'ba6=:ba6,                     '
      'ba7=:ba7,                     '
      't1=:t1,                        '
      't2=:t2,                         '
      't3=:t3,                  '
      't4=:t4,'
      't5=:t5,'
      't6=:t6,'
      't7=:t7,'
      't1_tetap=:tetap1,'
      't2_tetap=:tetap2,'
      't3_tetap=:tetap3,'
      't4_tetap=:tetap4,'
      't5_tetap=:tetap5,'
      't6_tetap=:tetap6,'
      't7_tetap=:tetap7,'
      'nomorba=:nomorba,'
      'aktif=:aktif,'
      'kategori=:kategori,'
      'uraian=:uraian'
      'WHERE kodegolyangberlaku=:kodegolyangberlaku')
    SQLRefresh.Strings = (
      'INSERT INTO golongan_ipl VALUES (  '
      ':kodegolyangberlaku,'
      ':periodemulaiberlaku,                  '
      ':kodegol,                 '
      ':golongan, '
      ':kategori,'
      ':uraian,              '
      ':ppn,'
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
      ':bb6,                      '
      ':ba6,                     '
      ':bb7,                      '
      ':ba7,                     '
      ':t1,                        '
      ':t2,                         '
      ':t3,                  '
      ':t4,'
      ':t5,'
      ':t6,'
      ':t7,'
      ':tetap1,'
      ':tetap2,'
      ':tetap3,'
      ':tetap4,'
      ':tetap5,'
      ':tetap6,'
      ':tetap7,'
      ':nomorba,'
      ':aktif)')
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
