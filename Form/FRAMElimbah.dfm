object FRlimbah: TFRlimbah
  Left = 0
  Top = 0
  Width = 1265
  Height = 833
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object info: TRzPanel
    Left = 0
    Top = 0
    Width = 1265
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR REKENING LIMBAH'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzSizePanel1: TRzSizePanel
    Left = 0
    Top = 30
    Width = 226
    Height = 803
    BorderOuter = fsFlat
    HotSpotVisible = True
    SizeBarWidth = 7
    TabOrder = 1
    VisualStyle = vsGradient
    object cxScrollBox1: TcxScrollBox
      Left = 1
      Top = 1
      Width = 216
      Height = 801
      Align = alClient
      BorderStyle = cxcbsNone
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 199
        Height = 1208
        HelpContext = 1500
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Open Sans'
        Font.Style = []
        GradientColorStart = clBtnFace
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsClassic
        object cxGroupBox5: TcxGroupBox
          Left = 8
          Top = 664
          Alignment = alTopCenter
          TabOrder = 0
          Height = 153
          Width = 185
          object cxLabel60: TcxLabel
            Left = 16
            Top = 2
            Caption = 'Blok'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = [fsUnderline]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object b1: TcxCurrencyEdit
            Left = 17
            Top = 22
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 1
            Width = 50
          end
          object b2: TcxCurrencyEdit
            Left = 17
            Top = 46
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 2
            Width = 50
          end
          object b3: TcxCurrencyEdit
            Left = 17
            Top = 70
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 3
            Width = 50
          end
          object b4: TcxCurrencyEdit
            Left = 17
            Top = 94
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 4
            Width = 50
          end
          object p1: TcxCurrencyEdit
            Left = 73
            Top = 22
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 5
            Width = 97
          end
          object p2: TcxCurrencyEdit
            Left = 73
            Top = 46
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            Width = 97
          end
          object p3: TcxCurrencyEdit
            Left = 73
            Top = 70
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 7
            Width = 97
          end
          object p4: TcxCurrencyEdit
            Left = 73
            Top = 94
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 8
            Width = 97
          end
          object cxLabel62: TcxLabel
            Left = 88
            Top = 2
            Caption = 'Biaya'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = [fsUnderline]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object b5: TcxCurrencyEdit
            Left = 17
            Top = 118
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 10
            Width = 50
          end
          object p5: TcxCurrencyEdit
            Left = 73
            Top = 118
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 11
            Width = 97
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 8
          Top = 838
          Alignment = alTopCenter
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 355
          Width = 185
          object pakai: TcxCurrencyEdit
            Left = 101
            Top = 16
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
            Properties.EditFormat = '#,##0.###;(#,##0.###)'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 0
            Width = 80
          end
          object bpakai: TcxCurrencyEdit
            Left = 101
            Top = 40
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 1
            Width = 80
          end
          object adm: TcxCurrencyEdit
            Left = 101
            Top = 64
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 2
            Width = 80
          end
          object retribusi: TcxCurrencyEdit
            Left = 101
            Top = 112
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 3
            Width = 80
          end
          object pemeliharaan: TcxCurrencyEdit
            Left = 101
            Top = 88
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 4
            Width = 80
          end
          object pelayanan: TcxCurrencyEdit
            Left = 101
            Top = 136
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 5
            Width = 80
          end
          object airlimbah: TcxCurrencyEdit
            Left = 101
            Top = 160
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            Width = 80
          end
          object cxLabel32: TcxLabel
            Left = 8
            Top = 16
            Caption = 'Pakai'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel42: TcxLabel
            Left = 8
            Top = 40
            Caption = 'B.Pakai'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel43: TcxLabel
            Left = 8
            Top = 64
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
          object cxLabel44: TcxLabel
            Left = 8
            Top = 112
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
          object cxLabel45: TcxLabel
            Left = 8
            Top = 88
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
          object cxLabel46: TcxLabel
            Left = 8
            Top = 136
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
          object cxLabel48: TcxLabel
            Left = 8
            Top = 160
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
          object dendapakai0: TcxCurrencyEdit
            Left = 101
            Top = 184
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 14
            Width = 80
          end
          object cxLabel54: TcxLabel
            Left = 8
            Top = 184
            Caption = 'Denda PK 0'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel55: TcxLabel
            Left = 8
            Top = 256
            Caption = 'Denda TG'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dendatunggakan: TcxCurrencyEdit
            Left = 101
            Top = 256
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 17
            Width = 80
          end
          object cxLabel9: TcxLabel
            Left = 8
            Top = 232
            Caption = 'Rek. Air'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object rekair: TcxCurrencyEdit
            Left = 101
            Top = 232
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 19
            Width = 80
          end
          object meterai: TcxCurrencyEdit
            Left = 101
            Top = 208
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 20
            Width = 80
          end
          object cxLabel20: TcxLabel
            Left = 8
            Top = 208
            Caption = 'Meterai'
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
            Left = 8
            Top = 328
            Caption = 'Total'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object total: TcxCurrencyEdit
            Left = 101
            Top = 328
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.#0'
            Properties.EditFormat = '#,##0.#0'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 23
            Width = 80
          end
          object angsuran: TcxCurrencyEdit
            Left = 101
            Top = 280
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 24
            Width = 80
          end
          object cxLabel12: TcxLabel
            Left = 8
            Top = 280
            Caption = 'Angsuran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel33: TcxLabel
            Left = 8
            Top = 304
            Caption = 'PPn'
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
            Left = 101
            Top = 304
            TabStop = False
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '#,##0.##'
            Properties.EditFormat = '#,##0.##'
            Properties.Nullable = False
            Properties.Nullstring = '-'
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
            TabOrder = 27
            Width = 80
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 7
          Top = 240
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          Height = 393
          Width = 186
          object Sta: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Status'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xstatus: TcxTextEdit
            Left = 76
            Top = 8
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 106
          end
          object xnosamb: TcxTextEdit
            Left = 76
            Top = 32
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 106
          end
          object cxLabel8: TcxLabel
            Left = 8
            Top = 32
            Caption = 'No.Samb'
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
            Left = 8
            Top = 80
            Caption = 'Nama'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xnama: TcxTextEdit
            Left = 76
            Top = 80
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 106
          end
          object xkodegol: TcxTextEdit
            Left = 76
            Top = 104
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 106
          end
          object cxLabel28: TcxLabel
            Left = 8
            Top = 104
            Caption = 'KD.Gol'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodedia: TcxTextEdit
            Left = 76
            Top = 128
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 106
          end
          object sasa: TcxLabel
            Left = 8
            Top = 128
            Caption = 'KD.Dia'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkoderayon: TcxTextEdit
            Left = 76
            Top = 152
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 106
          end
          object cxLabel29: TcxLabel
            Left = 8
            Top = 152
            Caption = 'KD.Rayon'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel13: TcxLabel
            Left = 8
            Top = 176
            Caption = 'Rayon'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xalamat: TcxMemo
            Left = 76
            Top = 210
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 13
            Height = 31
            Width = 106
          end
          object cxLabel14: TcxLabel
            Left = 8
            Top = 205
            Caption = 'Alamat'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel51: TcxLabel
            Left = 8
            Top = 56
            Caption = 'No.Rek'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xnorek: TcxTextEdit
            Left = 76
            Top = 56
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 106
          end
          object xrayon: TcxMemo
            Left = 76
            Top = 176
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 17
            Height = 33
            Width = 106
          end
          object cxLabel17: TcxLabel
            Left = 8
            Top = 240
            Caption = 'KD.Wil'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodewil: TcxTextEdit
            Left = 76
            Top = 242
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 19
            Width = 106
          end
          object xwilayah: TcxTextEdit
            Left = 76
            Top = 266
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 20
            Width = 106
          end
          object cxLabel18: TcxLabel
            Left = 8
            Top = 265
            Caption = 'Wilayah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxLabel19: TcxLabel
            Left = 8
            Top = 290
            Caption = 'Kelainan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object kelainan: TcxTextEdit
            Left = 76
            Top = 290
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 23
            Width = 106
          end
          object cxLabel21: TcxLabel
            Left = 8
            Top = 313
            Caption = 'KD. Adm Lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodeadmlain: TcxTextEdit
            Left = 109
            Top = 314
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 25
            Width = 73
          end
          object cxLabel23: TcxLabel
            Left = 8
            Top = 337
            Caption = 'KD.Pmlihara Lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkodepemlain: TcxTextEdit
            Left = 109
            Top = 338
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 27
            Width = 73
          end
          object cxLabel26: TcxLabel
            Left = 8
            Top = 361
            Caption = 'KD.Retribusi Lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object xkoderetlain: TcxTextEdit
            Left = 109
            Top = 362
            Enabled = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 29
            Width = 73
          end
        end
        object RzPanel17: TRzPanel
          Left = 8
          Top = 215
          Width = 185
          Height = 25
          BorderOuter = fsNone
          Caption = 'Informasi'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object RzPanel19: TRzPanel
          Left = 7
          Top = 639
          Width = 186
          Height = 25
          BorderOuter = fsNone
          Caption = 'Progresif'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object RzPanel20: TRzPanel
          Left = 8
          Top = 823
          Width = 185
          Height = 25
          BorderOuter = fsNone
          Caption = 'Rincian Tagihan'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object cxPageControl1: TcxPageControl
          Left = 8
          Top = 32
          Width = 185
          Height = 176
          Focusable = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TabStop = False
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Style = 11
          Properties.TabPosition = tpBottom
          Properties.TabsScroll = False
          ClientRectBottom = 146
          ClientRectLeft = 2
          ClientRectRight = 183
          ClientRectTop = 2
          object cxTabSheet1: TcxTabSheet
            Caption = 'Bulan Ini'
            ImageIndex = 0
            object RzPanel7: TRzPanel
              Left = 0
              Top = 0
              Width = 181
              Height = 144
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 0
              object foto1: TcxImage
                Left = 0
                Top = 0
                TabStop = False
                Align = alClient
                Properties.GraphicClassName = 'TdxPNGImage'
                Properties.GraphicTransparency = gtTransparent
                Properties.Proportional = False
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Style.BorderStyle = ebsNone
                TabOrder = 0
                Height = 144
                Width = 181
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Bulan Lalu'
            ImageIndex = 1
            object RzPanel8: TRzPanel
              Left = 0
              Top = 0
              Width = 181
              Height = 144
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 0
              object foto2: TcxImage
                Left = 0
                Top = 0
                TabStop = False
                Align = alClient
                Properties.GraphicClassName = 'TdxPNGImage'
                Properties.GraphicTransparency = gtTransparent
                Properties.Proportional = False
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Style.BorderStyle = ebsNone
                TabOrder = 0
                Height = 144
                Width = 181
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Map'
            ImageIndex = 2
            TabVisible = False
            object RzPanel9: TRzPanel
              Left = 0
              Top = 0
              Width = 181
              Height = 144
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 0
              object foto3: TcxImage
                Left = 0
                Top = 0
                Align = alClient
                Properties.GraphicClassName = 'TdxPNGImage'
                Properties.GraphicTransparency = gtTransparent
                Properties.Proportional = False
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderStyle = ebsNone
                TabOrder = 0
                Height = 144
                Width = 181
              end
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Map Lalu'
            ImageIndex = 3
            TabVisible = False
            object RzPanel10: TRzPanel
              Left = 0
              Top = 0
              Width = 181
              Height = 144
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 0
              object foto4: TcxImage
                Left = 0
                Top = 0
                Align = alClient
                Properties.GraphicClassName = 'TdxPNGImage'
                Properties.GraphicTransparency = gtTransparent
                Properties.Proportional = False
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderStyle = ebsNone
                TabOrder = 0
                Height = 144
                Width = 181
              end
            end
          end
        end
        object RzPanel21: TRzPanel
          Left = 8
          Top = 5
          Width = 185
          Height = 25
          BorderOuter = fsNone
          Caption = 'Foto Stan Meter ( F3 )'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object RzPanel16: TRzPanel
          Left = 6
          Top = 1304
          Width = 185
          Height = 25
          BorderOuter = fsNone
          Caption = 'Piutang Rekening'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = False
        end
        object cxGrid1: TcxGrid
          Left = 6
          Top = 1328
          Width = 185
          Height = 193
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = False
          object gtvpiutang: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.#0'
                Kind = skSum
                Column = gtvpiutangColumn2
              end
              item
                Format = ',0.;(,0.)'
                Kind = skCount
                Column = gtvpiutangColumn1
              end
              item
                Format = '#,##0.###;(#,##0.###)'
                Kind = skSum
                Column = gtvpiutangColumn3
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object gtvpiutangColumn1: TcxGridDBColumn
              Caption = 'Bulan'
              DataBinding.FieldName = 'bulan'
              Width = 57
            end
            object gtvpiutangColumn3: TcxGridDBColumn
              Caption = 'Pakai'
              DataBinding.FieldName = 'pakai'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
              Width = 41
            end
            object gtvpiutangColumn2: TcxGridDBColumn
              Caption = 'Rek.Air'
              DataBinding.FieldName = 'rekair'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.#0'
              Width = 73
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gtvpiutang
          end
        end
        object cxGrid3: TcxGrid
          Left = 10
          Top = 1530
          Width = 181
          Height = 117
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Visible = False
          object cxGridDBChartView1: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'total'
            DiagramArea.Legend.Alignment = cpaCenter
            DiagramArea.Legend.Border = lbNone
            DiagramArea.Legend.KeyBorder = lbNone
            DiagramArea.Legend.Orientation = cpoVertical
            DiagramArea.Legend.Position = cppNone
            DiagramArea.AxisCategory.TickMarkLabels = False
            DiagramBar.Legend.Alignment = cpaCenter
            DiagramBar.Legend.Border = lbNone
            DiagramBar.Legend.KeyBorder = lbNone
            DiagramBar.Legend.Orientation = cpoVertical
            DiagramBar.Legend.Position = cppBottom
            DiagramBar.AxisValue.GridLines = False
            DiagramBar.AxisValue.TickMarkKind = tmkInside
            DiagramColumn.Active = True
            DiagramColumn.Legend.Alignment = cpaStart
            DiagramColumn.Legend.Border = lbNone
            DiagramColumn.Legend.KeyBorder = lbNone
            DiagramColumn.Legend.Position = cppNone
            DiagramColumn.AxisCategory.GridLines = False
            DiagramColumn.AxisCategory.TickMarkKind = tmkNone
            DiagramColumn.AxisCategory.TickMarkLabels = False
            DiagramColumn.AxisValue.TickMarkKind = tmkNone
            DiagramColumn.AxisValue.TickMarkLabels = False
            DiagramColumn.AxisValue.Title.Alignment = cpaCenter
            DiagramColumn.AxisValue.TickMarkLabelFormat = ',0.;(,0.)'
            DiagramLine.Legend.Alignment = cpaCenter
            DiagramLine.Legend.Border = lbNone
            DiagramLine.Legend.KeyBorder = lbNone
            DiagramLine.Legend.Position = cppBottom
            DiagramLine.AxisValue.TickMarkKind = tmkCross
            DiagramLine.AxisValue.Title.Alignment = cpaCenter
            DiagramLine.Values.MarkerSize = 3
            DiagramPie.Legend.Border = lbNone
            DiagramPie.Legend.KeyBorder = lbNone
            DiagramPie.Legend.Position = cppNone
            DiagramPie.SeriesCaptions = False
            DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
            Legend.Border = lbNone
            Legend.Position = cppNone
            Title.Position = cppNone
            ToolBox.Border = tbNone
            ToolBox.DataLevelsInfoVisible = dlivNever
            ToolBox.Position = tpBottom
            ToolBox.Visible = tvNever
            object cxGridDBChartView1DataGroup1: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'periode'
              DisplayText = 'Periode'
            end
            object cxGridDBChartView1Series1: TcxGridDBChartSeries
              DataBinding.FieldName = 'rekair'
              DisplayText = 'Rek.Air'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBChartView1
          end
        end
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 1208
        Width = 199
        Height = 0
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 1
      end
    end
  end
  object RzSizePanel2: TRzSizePanel
    Left = 1030
    Top = 30
    Width = 235
    Height = 803
    Align = alRight
    HotSpotVisible = True
    SizeBarStyle = ssGroove
    SizeBarWidth = 7
    TabOrder = 2
    object cxScrollBox2: TcxScrollBox
      Left = 8
      Top = 0
      Width = 227
      Height = 703
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      object RzPanel13: TRzPanel
        Left = 0
        Top = 0
        Width = 227
        Height = 473
        Align = alTop
        BorderOuter = fsNone
        BorderShadow = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStop = clWhite
        GridColor = clWhite
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object cekgolongan: TcxCheckBox
          Left = 0
          Top = 78
          Caption = 'Golongan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          Width = 81
        end
        object cekdiameter: TcxCheckBox
          Left = 0
          Top = 100
          Caption = 'Diameter'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Transparent = True
          Width = 81
        end
        object cekrayon: TcxCheckBox
          Left = 0
          Top = 34
          Caption = 'Rayon'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          Width = 65
        end
        object ceknosamb: TcxCheckBox
          Left = 0
          Top = 122
          Caption = 'No.Samb'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Transparent = True
          Width = 81
        end
        object ceknama: TcxCheckBox
          Left = 0
          Top = 166
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          Width = 65
        end
        object cekalamat: TcxCheckBox
          Left = 0
          Top = 188
          Caption = 'Alamat'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          Width = 65
        end
        object cekkolektif: TcxCheckBox
          Left = 0
          Top = 210
          Caption = 'Kolektif'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Transparent = True
          Width = 97
        end
        object kolektif: TcxComboBox
          Left = 144
          Top = 210
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 57
        end
        object alamat: TcxTextEdit
          Left = 96
          Top = 188
          Enabled = False
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 105
        end
        object nama: TcxTextEdit
          Left = 96
          Top = 166
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 105
        end
        object nosamb: TcxTextEdit
          Left = 96
          Top = 122
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 105
        end
        object kodediameter: TcxComboBox
          Left = 80
          Top = 100
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Height = 23
          Width = 48
        end
        object ukuran: TcxComboBox
          Left = 128
          Top = 100
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Height = 23
          Width = 73
        end
        object kodegol: TcxComboBox
          Left = 80
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Height = 23
          Width = 48
        end
        object golongan: TcxComboBox
          Left = 128
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Height = 23
          Width = 73
        end
        object namarayon: TcxComboBox
          Left = 128
          Top = 34
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Height = 23
          Width = 73
        end
        object koderayon: TcxComboBox
          Left = 80
          Top = 34
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 16
          Height = 23
          Width = 48
        end
        object tglbayar1: TcxDateEdit
          Left = 96
          Top = 232
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 17
          Width = 105
        end
        object cektglbayar: TcxCheckBox
          Left = 0
          Top = 232
          Caption = 'Tgl.Bayar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 18
          Transparent = True
          Width = 97
        end
        object cekrekair: TcxCheckBox
          Left = 0
          Top = 276
          Caption = 'Rek Air (Rp)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 19
          Transparent = True
          Width = 97
        end
        object rekair1: TcxCurrencyEdit
          Left = 104
          Top = 276
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.Nullstring = '0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 20
          Width = 97
        end
        object rekair2: TcxCurrencyEdit
          Left = 104
          Top = 298
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.Nullstring = '0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 21
          Width = 97
        end
        object tglbayar2: TcxDateEdit
          Left = 96
          Top = 254
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Width = 105
        end
        object cxLabel80: TcxLabel
          Left = 64
          Top = 298
          Caption = 's/d'
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
          Top = 254
          Caption = 's/d'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object ceklainnya: TcxCheckBox
          Left = 1
          Top = 434
          Caption = 'Filter Lainnya'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 25
          Transparent = True
          Width = 104
        end
        object lainnya: TcxComboBox
          Left = 104
          Top = 434
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.Items.Strings = (
            'Sudah Koreksi'
            'Belum Koreksi'
            'Sudah Publish'
            'Belum Publish'
            'Sudah Lunas'
            'Belum Lunas'
            'Kena Denda'
            'Tanpa Denda'
            'Sudah Upload'
            'Belum Upload'
            'Kirim POS'
            'Tidak Kirim POS')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 26
          Width = 97
        end
        object wilayah: TcxComboBox
          Left = 128
          Top = 56
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 27
          Height = 23
          Width = 73
        end
        object kodewil: TcxComboBox
          Left = 80
          Top = 56
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 28
          Height = 23
          Width = 48
        end
        object cekwilayah: TcxCheckBox
          Left = 0
          Top = 56
          Caption = 'Wilayah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 29
          Transparent = True
          Width = 73
        end
        object cekkasir: TcxCheckBox
          Left = 0
          Top = 344
          Caption = 'Kasir'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 30
          Transparent = True
          Width = 81
        end
        object kasir: TcxComboBox
          Left = 104
          Top = 342
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 31
          Height = 25
          Width = 97
        end
        object cekloket: TcxCheckBox
          Left = 0
          Top = 366
          Caption = 'Loket Bayar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 32
          Transparent = True
          Width = 97
        end
        object loket: TcxComboBox
          Left = 104
          Top = 366
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 33
          Height = 25
          Width = 97
        end
        object cekflag: TcxCheckBox
          Left = 0
          Top = 387
          Caption = 'Flag'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 34
          Transparent = True
          Width = 89
        end
        object cekpakai: TcxCheckBox
          Left = 0
          Top = 322
          Caption = 'Pakai ( m3 )'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 35
          Transparent = True
          Width = 105
        end
        object pakai1: TcxCurrencyEdit
          Left = 88
          Top = 320
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.Nullstring = '0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 36
          Width = 41
        end
        object cxLabel31: TcxLabel
          Left = 129
          Top = 320
          Caption = 's/d'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object pakai2: TcxCurrencyEdit
          Left = 152
          Top = 320
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.Nullstring = '0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 38
          Width = 49
        end
        object kodekolektif: TcxComboBox
          Left = 96
          Top = 210
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 39
          Width = 49
        end
        object kodeflag: TcxComboBox
          Left = 80
          Top = 390
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 40
          Height = 23
          Width = 49
        end
        object flag: TcxComboBox
          Left = 128
          Top = 390
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 41
          Height = 23
          Width = 73
        end
        object RzPanel22: TRzPanel
          Left = 8
          Top = 5
          Width = 197
          Height = 25
          BorderOuter = fsNone
          Caption = 'Filter Pencarian'
          Color = 20966
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 42
        end
        object ceknorek: TcxCheckBox
          Left = 0
          Top = 144
          Caption = 'No.Rek'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 43
          Transparent = True
          Width = 81
        end
        object norekening: TcxTextEdit
          Left = 96
          Top = 144
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 44
          Width = 105
        end
        object cekkondisimeter: TcxCheckBox
          Left = 0
          Top = 412
          Caption = 'Kond.Mtr'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 45
          Transparent = True
          Width = 81
        end
        object kodekondisi: TcxComboBox
          Left = 80
          Top = 412
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 46
          Height = 23
          Width = 57
        end
        object kondisimeter: TcxComboBox
          Left = 136
          Top = 412
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 47
          Height = 23
          Width = 65
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 473
        Width = 227
        Height = 230
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 1
      end
    end
    object RzPanel6: TRzPanel
      Left = 8
      Top = 703
      Width = 227
      Height = 100
      Align = alBottom
      BorderOuter = fsFlatRounded
      BorderColor = clBlack
      BorderHighlight = clSilver
      BorderShadow = clBtnFace
      FlatColor = clBtnFace
      GradientColorStyle = gcsCustom
      GridColor = clBtnFace
      TabOrder = 1
      VisualStyle = vsClassic
      object periode: TRzDateTimePicker
        Left = 87
        Top = 39
        Width = 119
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
        TabOrder = 3
        FlatButtonColor = 6316128
        FlatButtons = True
        DisabledColor = 6316128
        FrameColor = clAppWorkSpace
        FrameHotColor = clBlack
        FrameHotStyle = fsFlat
        FrameVisible = True
      end
      object cxLabel4: TcxLabel
        Left = 34
        Top = 43
        Caption = 'Periode'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextStyle = []
        Transparent = True
      end
      object cekstatus: TcxCheckBox
        Left = 38
        Top = 9
        Caption = 'Status'
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        Width = 63
      end
      object status: TcxComboBox
        Left = 114
        Top = 7
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Properties.Items.Strings = (
          'Non Aktif'
          'Aktif'
          'Segel / Tutup Smtr')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Text = 'Aktif'
        Width = 87
      end
      object pindahperiode: TcxButton
        Left = 29
        Top = 35
        Width = 177
        Height = 30
        Caption = 'Pindah Periode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        Visible = False
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
      end
      object tampilkan: TcxButton
        Left = 117
        Top = 68
        Width = 89
        Height = 25
        Caption = 'Refresh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = DM.png16
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
      end
      object limit: TcxCurrencyEdit
        Left = 56
        Top = 69
        EditValue = 1000.000000000000000000
        ParentFont = False
        Properties.DisplayFormat = ',0.;(,0.)'
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
        Width = 57
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 70
        Caption = 'Batas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextStyle = []
        Transparent = True
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 226
    Top = 30
    Width = 804
    Height = 803
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 3
    Transparent = True
    object Gridrek: TcxGrid
      Left = 0
      Top = 40
      Width = 804
      Height = 763
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.SkinName = 'iMaginary'
      object Gtvrek: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
            Position = spFooter
            Column = Gtvrekpakai
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Position = spFooter
            Column = GtvrekColumn20
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
            Column = Gtvrekbiayapemakaian
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
            Column = GtvrekColumn33
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
            Column = GtvrekColumn34
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
            Column = GtvrekColumn35
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
            Column = Gtvrekpelayanan
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
            Column = Gtvrekdendatunggakan
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
            Column = Gtvrektotalrekening
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
            Column = GtvrekColumn8
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.#0'
            Kind = skSum
            Column = Gtvrektotalrekening
          end
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
            Column = Gtvrekpakai
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Column = Gtvrekbiayapemakaian
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = Gtvrekdendatunggakan
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = Gtvrekmeterai
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Column = GtvrekColumn8
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Column = GtvrekColumn20
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = GtvrekColumn33
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = GtvrekColumn34
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = GtvrekColumn35
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = Gtvrekairlimbah
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = Gtvrekdendapakai0
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Column = Gtvrekpelayanan
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Column = GtvrekColumn37
          end
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
            Column = GtvrekColumn11
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        object Gtvrekflagpublish: TcxGridDBColumn
          Caption = 'P'
          DataBinding.FieldName = 'flagpublish'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 15
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 26
        end
        object GtvrekColumn20: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object Gtvreknama: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 170
        end
        object Gtvrekgolongan: TcxGridDBColumn
          Caption = 'Nm. Golongan'
          DataBinding.FieldName = 'golongan'
          Visible = False
          Width = 148
        end
        object Gtvrekukuran: TcxGridDBColumn
          Caption = 'Nm. Diameter'
          DataBinding.FieldName = 'ukuran'
          Visible = False
          Width = 59
        end
        object Gtvrekkodecabang: TcxGridDBColumn
          Caption = 'Cabang'
          DataBinding.FieldName = 'kodecabang'
          Visible = False
          Width = 63
        end
        object Gtvrekcabang: TcxGridDBColumn
          Caption = 'Nm. Cabang'
          DataBinding.FieldName = 'cabang'
          Visible = False
          Width = 105
        end
        object Gtvreknamarayon: TcxGridDBColumn
          Caption = 'Nm. Rayon'
          DataBinding.FieldName = 'namarayon'
          Visible = False
          Width = 204
        end
        object GtvrekColumn12: TcxGridDBColumn
          Caption = 'Kel'
          DataBinding.FieldName = 'kodekelurahan'
          Visible = False
          Width = 43
        end
        object GtvrekColumn5: TcxGridDBColumn
          Caption = 'Nm. Kelurahan'
          DataBinding.FieldName = 'kelurahan'
          Visible = False
          Width = 118
        end
        object GtvrekColumn1: TcxGridDBColumn
          Caption = 'Blok'
          DataBinding.FieldName = 'kodeblok'
          Visible = False
          Width = 61
        end
        object GtvrekColumn13: TcxGridDBColumn
          Caption = 'Wil'
          DataBinding.FieldName = 'kodewil'
          Visible = False
          Width = 44
        end
        object GtvrekColumn14: TcxGridDBColumn
          Caption = 'Nm. Wilayah'
          DataBinding.FieldName = 'wilayah'
          Visible = False
          Width = 145
        end
        object Gtvrekkodekolektif: TcxGridDBColumn
          Caption = 'Kolektif'
          DataBinding.FieldName = 'kodekolektif'
          Visible = False
          Width = 72
        end
        object Gtvrekkolektif: TcxGridDBColumn
          Caption = 'Nm. Kolektif'
          DataBinding.FieldName = 'kolektif'
          Visible = False
          Width = 100
        end
        object GtvrekColumn31: TcxGridDBColumn
          Caption = 'Pem. Lain'
          DataBinding.FieldName = 'kodepemeliharaanlain'
          Visible = False
          Width = 77
        end
        object GtvrekColumn32: TcxGridDBColumn
          Caption = 'Adm. Lain'
          DataBinding.FieldName = 'kodeadministrasilain'
          Visible = False
          Width = 73
        end
        object GtvrekColumn30: TcxGridDBColumn
          Caption = 'Ret. Lain'
          DataBinding.FieldName = 'koderetribusilain'
          Visible = False
          Width = 74
        end
        object GtvrekColumn10: TcxGridDBColumn
          Caption = 'No.Rek'
          DataBinding.FieldName = 'norekening'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object Gtvrekstanlalu: TcxGridDBColumn
          Caption = 'S. Lalu'
          DataBinding.FieldName = 'stanlalu'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object Gtvrekstanskrg: TcxGridDBColumn
          Caption = 'S. Kini'
          DataBinding.FieldName = 'stanskrg'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object Gtvrekstanangkat: TcxGridDBColumn
          Caption = 'S. Angkat'
          DataBinding.FieldName = 'stanangkat'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object Gtvrekpakai: TcxGridDBColumn
          Caption = 'Pakai'
          DataBinding.FieldName = 'pakai'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object GtvrekColumn11: TcxGridDBColumn
          Caption = 'Pakai Hitung'
          DataBinding.FieldName = 'pakai2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.###;(#,##0.###)'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object Gtvrekbiayapemakaian: TcxGridDBColumn
          Caption = 'By. Pakai'
          DataBinding.FieldName = 'biayapemakaian'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.#0'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object GtvrekColumn33: TcxGridDBColumn
          Caption = 'Administrasi'
          DataBinding.FieldName = 'administrasicampur'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object GtvrekColumn34: TcxGridDBColumn
          Caption = 'Pemeliharaan'
          DataBinding.FieldName = 'pemeliharaancampur'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object Gtvrekmeterai: TcxGridDBColumn
          Caption = 'Materai'
          DataBinding.FieldName = 'meterai'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object Gtvrektotalrekening: TcxGridDBColumn
          Caption = 'Rek. Air'
          DataBinding.FieldName = 'rekair'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.#0'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object Gtvrekflagkoreksi: TcxGridDBColumn
          Caption = 'K'
          DataBinding.FieldName = 'flagkoreksi'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 15
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 24
        end
        object GtvrekColumn15: TcxGridDBColumn
          Caption = 'Gol'
          DataBinding.FieldName = 'kodegol'
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object GtvrekColumn16: TcxGridDBColumn
          Caption = 'Dia'
          DataBinding.FieldName = 'kodediameter'
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object Gtvrekkoderayon: TcxGridDBColumn
          Caption = 'Rayon'
          DataBinding.FieldName = 'koderayon'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object Gtvrekalamat: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 215
        end
        object GtvrekColumn35: TcxGridDBColumn
          Caption = 'Retribusi'
          DataBinding.FieldName = 'retribusicampur'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          Visible = False
          Width = 72
        end
        object Gtvrekpelayanan: TcxGridDBColumn
          Caption = 'Pelayanan'
          DataBinding.FieldName = 'pelayanan'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          Visible = False
          Width = 84
        end
        object Gtvrekairlimbah: TcxGridDBColumn
          Caption = 'Airlimbah'
          DataBinding.FieldName = 'airlimbah'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          Visible = False
          Width = 77
        end
        object Gtvrekdendapakai0: TcxGridDBColumn
          Caption = 'Denda PK 0'
          DataBinding.FieldName = 'dendapakai0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          Visible = False
          Width = 83
        end
        object Gtvrekdendatunggakan: TcxGridDBColumn
          Caption = 'Denda TG.'
          DataBinding.FieldName = 'dendatunggakan'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.##'
          Visible = False
          Width = 74
        end
        object GtvrekColumn37: TcxGridDBColumn
          Caption = 'Ppn'
          DataBinding.FieldName = 'ppn'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.#0'
          Visible = False
          Width = 65
        end
        object GtvrekColumn8: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.#0'
          Visible = False
          Width = 107
        end
        object Gtvrektglkoreksi: TcxGridDBColumn
          Caption = 'Tgl Koreksi'
          DataBinding.FieldName = 'tglkoreksi'
          Visible = False
          Width = 112
        end
        object Gtvrekuserkoreksi: TcxGridDBColumn
          Caption = 'User Koreksi'
          DataBinding.FieldName = 'userkoreksi'
          Visible = False
          Width = 105
        end
        object Gtvrektglpublish: TcxGridDBColumn
          Caption = 'Tgl. Publish'
          DataBinding.FieldName = 'tglpublish'
          Visible = False
          Width = 112
        end
        object Gtvrekuserpublish: TcxGridDBColumn
          Caption = 'User Publish'
          DataBinding.FieldName = 'userpublish'
          Visible = False
          Width = 108
        end
        object Gtvrekflaglunas: TcxGridDBColumn
          Caption = 'Lunas'
          DataBinding.FieldName = 'flaglunas'
          Visible = False
          VisibleForCustomization = False
          Width = 44
        end
        object Gtvreknolpp: TcxGridDBColumn
          Caption = 'No. LPP'
          DataBinding.FieldName = 'nolpp'
          Visible = False
          Width = 127
        end
        object Gtvrekflagbatal: TcxGridDBColumn
          Caption = 'Batal'
          DataBinding.FieldName = 'flagbatal'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.Grid
          Properties.Items = <
            item
              ImageIndex = 2
              Value = '1'
            end
            item
              ImageIndex = 1
              Value = '0'
            end>
          Visible = False
          VisibleForCustomization = False
          Width = 38
        end
        object gtvrekflagaktif: TcxGridDBColumn
          DataBinding.FieldName = 'flagaktif'
          Visible = False
          VisibleForCustomization = False
        end
        object GtvrekColumn2: TcxGridDBColumn
          Caption = 'D'
          DataBinding.FieldName = 'flagdownload'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 15
              Value = '0'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 26
        end
        object GtvrekColumn9: TcxGridDBColumn
          Caption = 'U'
          DataBinding.FieldName = 'flagkirim'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 15
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 28
        end
        object GtvrekColumn17: TcxGridDBColumn
          Caption = 'Petugas Baca'
          DataBinding.FieldName = 'pembacameter'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 180
        end
        object GtvrekColumn19: TcxGridDBColumn
          Caption = 'Sumber'
          DataBinding.FieldName = 'sumberair'
          Visible = False
          Width = 81
        end
        object Gtvrekserimeter: TcxGridDBColumn
          Caption = 'No. Meter'
          DataBinding.FieldName = 'serimeter'
          Visible = False
          Width = 81
        end
        object Gtvrekflag: TcxGridDBColumn
          Caption = 'F'
          DataBinding.FieldName = 'flag'
          Visible = False
          VisibleForCustomization = False
        end
        object Gtvrekkasir: TcxGridDBColumn
          Caption = 'Kasir'
          DataBinding.FieldName = 'kasir'
          Visible = False
          Width = 113
        end
        object Gtvrekloketbayar: TcxGridDBColumn
          Caption = 'Loket Bayar'
          DataBinding.FieldName = 'loketbayar'
          Visible = False
          Width = 122
        end
        object Gtvrektglbayar: TcxGridDBColumn
          Caption = 'Tgl.Bayar'
          DataBinding.FieldName = 'tglbayar'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd MMM YYYY hh:mm:ss'
          Visible = False
          Width = 168
        end
        object Gtvrektglbatal: TcxGridDBColumn
          Caption = 'Tgl. Batal'
          DataBinding.FieldName = 'tglbatal'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd MMM YYYY hh:mm:ss'
          Visible = False
          Width = 178
        end
        object GtvrekColumn21: TcxGridDBColumn
          Caption = 'Flag'
          DataBinding.FieldName = 'flag'
          Visible = False
          Width = 32
        end
        object GtvrekColumn4: TcxGridDBColumn
          Caption = 'Nm. Flag'
          DataBinding.FieldName = 'uraian'
          Visible = False
          Width = 161
        end
        object Gtvrekkelainan: TcxGridDBColumn
          Caption = 'Kelainan'
          DataBinding.FieldName = 'kelainan'
          HeaderAlignmentHorz = taCenter
          Width = 164
        end
        object GtvrekColumn6: TcxGridDBColumn
          Caption = 'Angsuran'
          DataBinding.FieldName = 'statusangsuran'
          Visible = False
          Width = 103
        end
        object GtvrekColumn3: TcxGridDBColumn
          Caption = 'No. Angsuran'
          DataBinding.FieldName = 'noangsuran'
          Visible = False
          Width = 147
        end
        object Gtvrekaktif: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'aktif'
          Visible = False
          Width = 79
        end
        object GtvrekColumn7: TcxGridDBColumn
          Caption = 'Luas Rmh.'
          DataBinding.FieldName = 'luasrumah'
          Visible = False
          Width = 75
        end
        object GtvrekColumn25: TcxGridDBColumn
          Caption = 'Kondisi Mtr.'
          DataBinding.FieldName = 'kondisi'
          HeaderAlignmentHorz = taCenter
          Width = 106
        end
        object GtvrekColumn18: TcxGridDBColumn
          Caption = 'POS'
          DataBinding.FieldName = 'flagbuatfilepos'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.png16
          Properties.Items = <
            item
              ImageIndex = 17
              Value = '1'
            end
            item
              ImageIndex = 15
              Value = '0'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 31
        end
        object GtvrekColumn22: TcxGridDBColumn
          Caption = 'Waktu Buat File POS'
          DataBinding.FieldName = 'waktubuatfilepos'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 166
        end
        object GtvrekColumn23: TcxGridDBColumn
          Caption = 'TK'
          DataBinding.FieldName = 'taksasi'
          HeaderAlignmentHorz = taCenter
          Width = 23
        end
        object GtvrekColumn24: TcxGridDBColumn
          Caption = 'Kd.Kondisi Mtr'
          DataBinding.FieldName = 'kodekondisimeter'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
      end
      object GridrekLevel1: TcxGridLevel
        GridView = Gtvrek
      end
    end
    object RzPanel15: TRzPanel
      Left = 0
      Top = 0
      Width = 804
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 680
        Top = 0
        Width = 80
        Height = 40
        Caption = 'Print'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object terbitkanpelanggan: TcxButton
        Left = 496
        Top = 0
        Width = 104
        Height = 40
        Caption = 'Terbitkan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 32
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object refresh: TcxButton
        Left = 0
        Top = 0
        Width = 80
        Height = 40
        Caption = 'Refresh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object cxButton3: TcxButton
        Left = 600
        Top = 0
        Width = 80
        Height = 40
        Caption = 'Export'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 26
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object publishsemua: TcxButton
        Left = 80
        Top = 0
        Width = 121
        Height = 40
        Caption = 'Publish Semua'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 31
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object hitungulangrekening: TcxButton
        Left = 408
        Top = 0
        Width = 88
        Height = 40
        Caption = 'Hitung'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 30
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object updatebcmeter: TcxButton
        Left = 297
        Top = 0
        Width = 111
        Height = 40
        Caption = 'Bacameter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TabStop = False
        Align = alLeft
        OptionsImage.ImageIndex = 27
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object unpublishsemua: TcxButton
        Left = 201
        Top = 0
        Width = 96
        Height = 40
        Caption = 'Un-Publish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        Visible = False
        Align = alLeft
        OptionsImage.ImageIndex = 6
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
    object RzPanel23: TRzPanel
      Left = 400
      Top = 304
      Width = 57
      Height = 81
      Color = 6488063
      TabOrder = 2
      Visible = False
      object cekserimeter: TcxCheckBox
        Left = 136
        Top = 48
        Caption = 'Seri Meter'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        Width = 81
      end
      object serimeter: TcxTextEdit
        Left = 224
        Top = 48
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 105
      end
      object cekwm: TcxCheckBox
        Left = 128
        Top = 78
        Caption = 'Merk WM.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Transparent = True
        Width = 81
      end
      object merkwm: TcxComboBox
        Left = 224
        Top = 78
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 27
        Width = 105
      end
      object cekkelurahan: TcxCheckBox
        Left = 128
        Top = 134
        Caption = 'Kelurahan'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Transparent = True
        Width = 81
      end
      object kodekelurahan: TcxComboBox
        Left = 208
        Top = 134
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Height = 23
        Width = 48
      end
      object kelurahan: TcxComboBox
        Left = 256
        Top = 134
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Height = 23
        Width = 73
      end
      object cabang: TcxComboBox
        Left = 256
        Top = 156
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 23
        Width = 73
      end
      object kodecabang: TcxComboBox
        Left = 208
        Top = 156
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Height = 23
        Width = 48
      end
      object cekcabang: TcxCheckBox
        Left = 128
        Top = 156
        Caption = 'Cabang'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        Transparent = True
        Width = 65
      end
      object ceksumberair: TcxCheckBox
        Left = 96
        Top = 254
        Caption = 'Sumber Air'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Transparent = True
        Width = 89
      end
      object cekkepemlilikan: TcxCheckBox
        Left = 104
        Top = 254
        Caption = 'ST.Bangunan'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Transparent = True
        Width = 97
      end
      object kepemilikan: TcxComboBox
        Left = 200
        Top = 248
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Height = 25
        Width = 97
      end
      object sumberair: TcxComboBox
        Left = 208
        Top = 248
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Height = 25
        Width = 97
      end
      object nolpp: TcxTextEdit
        Left = 192
        Top = 226
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Width = 97
      end
      object ceknolpp: TcxCheckBox
        Left = 112
        Top = 254
        Caption = 'No.LPP'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 15
        Transparent = True
        Width = 65
      end
      object cekcatat: TcxCheckBox
        Left = 80
        Top = 326
        Caption = 'Catat Meter'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 16
        Transparent = True
        Width = 97
      end
      object namapembaca: TcxComboBox
        Left = 184
        Top = 322
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 17
        Height = 23
        Width = 97
      end
      object cekadmlain: TcxCheckBox
        Left = 88
        Top = 490
        Caption = 'Adm.Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 18
        Transparent = True
        Width = 81
      end
      object kodeadm_lain: TcxComboBox
        Left = 168
        Top = 490
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 19
        Height = 23
        Width = 49
      end
      object adm_lain: TcxComboBox
        Left = 216
        Top = 490
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 20
        Height = 23
        Width = 73
      end
      object pem_lain: TcxComboBox
        Left = 216
        Top = 512
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 21
        Height = 23
        Width = 73
      end
      object kodepem_lain: TcxComboBox
        Left = 168
        Top = 512
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 22
        Height = 23
        Width = 49
      end
      object cekpemlain: TcxCheckBox
        Left = 88
        Top = 512
        Caption = 'Pem.Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 23
        Transparent = True
        Width = 73
      end
      object cekretlain: TcxCheckBox
        Left = 88
        Top = 534
        Caption = 'Ret.Lain'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 24
        Transparent = True
        Width = 97
      end
      object koderet_lain: TcxComboBox
        Left = 168
        Top = 534
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 25
        Height = 23
        Width = 49
      end
      object ret_lain: TcxComboBox
        Left = 216
        Top = 534
        AutoSize = False
        Enabled = False
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 15
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 26
        Height = 23
        Width = 73
      end
      object cektotal: TcxCheckBox
        Left = 0
        Top = 310
        Caption = 'Total TGH (Rp)'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 27
        Transparent = True
        Width = 105
      end
      object total1: TcxCurrencyEdit
        Left = 104
        Top = 306
        Enabled = False
        ParentFont = False
        Properties.DisplayFormat = ',0.;(,0.)'
        Properties.Nullstring = '0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseThousandSeparator = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 28
        Width = 97
      end
      object total2: TcxCurrencyEdit
        Left = 112
        Top = 306
        Enabled = False
        ParentFont = False
        Properties.DisplayFormat = ',0.;(,0.)'
        Properties.Nullstring = '0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseThousandSeparator = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 29
        Width = 97
      end
      object cxLabel11: TcxLabel
        Left = 64
        Top = 308
        Caption = 's/d'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
end
