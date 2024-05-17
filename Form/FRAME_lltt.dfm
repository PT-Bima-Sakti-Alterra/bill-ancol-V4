object FRlltt: TFRlltt
  Left = 0
  Top = 0
  Width = 1364
  Height = 784
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
    Width = 1364
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR REKENING L2T2'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzSizePanel2: TRzSizePanel
    Left = 1129
    Top = 30
    Width = 235
    Height = 754
    Align = alRight
    HotSpotVisible = True
    SizeBarStyle = ssGroove
    SizeBarWidth = 7
    TabOrder = 1
    object cxScrollBox2: TcxScrollBox
      Left = 8
      Top = 0
      Width = 227
      Height = 654
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      object RzPanel13: TRzPanel
        Left = 0
        Top = 0
        Width = 227
        Height = 465
        Align = alTop
        BorderOuter = fsNone
        BorderShadow = clWhite
        Color = 16316664
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
          Caption = 'Gol.L2T2'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          OnClick = cekgolonganClick
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
          TabOrder = 1
          Transparent = True
          OnClick = cekrayonClick
          Width = 65
        end
        object ceknosamb: TcxCheckBox
          Left = 0
          Top = 100
          Caption = 'No.Samb'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          OnClick = ceknosambClick
          Width = 81
        end
        object ceknama: TcxCheckBox
          Left = 0
          Top = 144
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Transparent = True
          OnClick = ceknamaClick
          Width = 65
        end
        object cekalamat: TcxCheckBox
          Left = 0
          Top = 166
          Caption = 'Alamat'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          OnClick = cekalamatClick
          Width = 65
        end
        object cekkolektif: TcxCheckBox
          Left = 0
          Top = 188
          Caption = 'Kolektif'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          OnClick = cekkolektifClick
          Width = 97
        end
        object kolektif: TcxComboBox
          Left = 144
          Top = 188
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kolektifPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 57
        end
        object alamat: TcxTextEdit
          Left = 96
          Top = 166
          Enabled = False
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 105
        end
        object nama: TcxTextEdit
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
          TabOrder = 8
          Width = 105
        end
        object nosamb: TcxTextEdit
          Left = 96
          Top = 100
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
        object kodelltt: TcxComboBox
          Left = 80
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodellttPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Height = 23
          Width = 48
        end
        object golonganlltt: TcxComboBox
          Left = 128
          Top = 78
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = golonganllttPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
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
          Properties.OnChange = namarayonPropertiesChange
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
        object koderayon: TcxComboBox
          Left = 80
          Top = 34
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = koderayonPropertiesChange
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
        object tglbayar1: TcxDateEdit
          Left = 96
          Top = 210
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Width = 105
        end
        object cektglbayar: TcxCheckBox
          Left = 0
          Top = 210
          Caption = 'Tgl.Bayar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Transparent = True
          OnClick = cektglbayarClick
          Width = 97
        end
        object cekrekair: TcxCheckBox
          Left = 0
          Top = 254
          Caption = 'Total (Rp)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 16
          Transparent = True
          OnClick = cekrekairClick
          Width = 97
        end
        object rekair1: TcxCurrencyEdit
          Left = 104
          Top = 254
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
          TabOrder = 17
          Width = 97
        end
        object rekair2: TcxCurrencyEdit
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
          TabOrder = 18
          Width = 97
        end
        object tglbayar2: TcxDateEdit
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
          TabOrder = 19
          Width = 105
        end
        object cxLabel80: TcxLabel
          Left = 64
          Top = 276
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
          Top = 232
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
          Top = 393
          Caption = 'Filter Lainnya'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Transparent = True
          OnClick = ceklainnyaClick
          Width = 104
        end
        object lainnya: TcxComboBox
          Left = 104
          Top = 393
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.Items.Strings = (
            'Sudah Publish'
            'Belum Publish'
            'Sudah Lunas'
            'Belum Lunas'
            'Sudah Upload'
            'Belum Upload'
            '')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 23
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
          Properties.OnChange = wilayahPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 24
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
          Properties.OnChange = kodewilPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 25
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
          TabOrder = 26
          Transparent = True
          OnClick = cekwilayahClick
          Width = 73
        end
        object cekkasir: TcxCheckBox
          Left = 0
          Top = 300
          Caption = 'Kasir'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 27
          Transparent = True
          OnClick = cekkasirClick
          Width = 81
        end
        object kasir: TcxComboBox
          Left = 104
          Top = 298
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
          Height = 25
          Width = 97
        end
        object cekloket: TcxCheckBox
          Left = 0
          Top = 322
          Caption = 'Loket Bayar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 29
          Transparent = True
          OnClick = cekloketClick
          Width = 97
        end
        object loket: TcxComboBox
          Left = 104
          Top = 322
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
          TabOrder = 30
          Height = 25
          Width = 97
        end
        object kodekolektif: TcxComboBox
          Left = 96
          Top = 188
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodekolektifPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 31
          Width = 49
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
          TabOrder = 32
        end
        object ceknorek: TcxCheckBox
          Left = 0
          Top = 122
          Caption = 'No.Limbah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 33
          Transparent = True
          OnClick = ceknorekClick
          Width = 81
        end
        object nomorlltt: TcxTextEdit
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
          TabOrder = 34
          Width = 105
        end
        object cekcab: TcxCheckBox
          Left = 0
          Top = 347
          Caption = 'Cabang'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 35
          Transparent = True
          OnClick = cekcabClick
          Width = 65
        end
        object cekkel: TcxCheckBox
          Left = 0
          Top = 371
          Caption = 'Kelurahan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 36
          Transparent = True
          OnClick = cekkelClick
          Width = 81
        end
        object kodecab: TcxComboBox
          Left = 80
          Top = 347
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodecabPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 37
          Height = 23
          Width = 57
        end
        object cab: TcxComboBox
          Left = 136
          Top = 347
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = cabPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 38
          Height = 23
          Width = 65
        end
        object kel: TcxComboBox
          Left = 136
          Top = 370
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kelPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 39
          Height = 23
          Width = 65
        end
        object kodekel: TcxComboBox
          Left = 80
          Top = 370
          AutoSize = False
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = kodekelPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 40
          Height = 23
          Width = 57
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 465
        Width = 227
        Height = 189
        Align = alClient
        BorderOuter = fsNone
        Color = 16316664
        TabOrder = 1
      end
    end
    object RzPanel6: TRzPanel
      Left = 8
      Top = 654
      Width = 227
      Height = 100
      Align = alBottom
      BorderOuter = fsFlatRounded
      BorderColor = clBlack
      BorderHighlight = clSilver
      BorderShadow = clBtnFace
      Color = 16316664
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
          'Tutup Total / Non Aktif'
          'Aktif'
          'Segel'
          'Tutup Sementara')
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
        OnClick = pindahperiodeClick
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
        OnClick = tampilkanClick
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
    Left = 0
    Top = 30
    Width = 1129
    Height = 754
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    Transparent = True
    object Gridrek: TcxGrid
      Left = 0
      Top = 40
      Width = 1129
      Height = 678
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.SkinName = 'Office2013White'
      object Gtvrek: TcxGridDBTableView
        PopupMenu = PopupMenu1
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
        OnCellDblClick = GtvrekCellDblClick
        OnCustomDrawCell = GtvrekCustomDrawCell
        DataController.DataSource = DSrek
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.##'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '#,##0.#0'
            Kind = skSum
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.#0'
            Kind = skSum
          end
          item
            Format = '#,##0.###;(#,##0.###)'
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
            Format = '#,##0.##'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
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
            Format = ',0.;(,0.)'
            Kind = skCount
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
          end
          item
            Format = '#,##0.###;(#,##0.###)'
            Kind = skSum
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = GtvrekColumn3
          end
          item
            Format = ',0.;-,0.'
            Kind = skCount
            Column = GtvrekColumn1
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
        object GtvrekColumn5: TcxGridDBColumn
          Caption = 'P'
          DataBinding.FieldName = 'flagpublish'
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
          Width = 32
        end
        object GtvrekColumn17: TcxGridDBColumn
          Caption = 'Nomor L2T2'
          DataBinding.FieldName = 'nomorlltt'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object GtvrekColumn1: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosamb'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object GtvrekColumn10: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 188
        end
        object GtvrekColumn11: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 181
        end
        object GtvrekColumn2: TcxGridDBColumn
          Caption = 'KD.l2T2'
          DataBinding.FieldName = 'kodelltt'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object GtvrekColumn3: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Width = 114
        end
        object GtvrekColumn18: TcxGridDBColumn
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
          Width = 30
        end
        object GtvrekColumn16: TcxGridDBColumn
          Caption = 'Gol.L2T2'
          DataBinding.FieldName = 'golonganlltt'
          HeaderAlignmentHorz = taCenter
          Width = 294
        end
        object GtvrekColumn12: TcxGridDBColumn
          Caption = 'KD.Rayon'
          DataBinding.FieldName = 'koderayon'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object GtvrekColumn15: TcxGridDBColumn
          Caption = 'Rayon'
          DataBinding.FieldName = 'namarayon'
          HeaderAlignmentHorz = taCenter
          Width = 187
        end
        object GtvrekColumn4: TcxGridDBColumn
          Caption = 'L'
          DataBinding.FieldName = 'flaglunas'
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
          Width = 32
        end
        object GtvrekColumn6: TcxGridDBColumn
          Caption = 'Kasir'
          DataBinding.FieldName = 'kasir'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object GtvrekColumn7: TcxGridDBColumn
          Caption = 'Tgl.Bayar'
          DataBinding.FieldName = 'tglbayar'
          HeaderAlignmentHorz = taCenter
          Width = 156
        end
        object GtvrekColumn8: TcxGridDBColumn
          Caption = 'Loket'
          DataBinding.FieldName = 'loketbayar'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object GtvrekColumn13: TcxGridDBColumn
          Caption = 'KD.Wil'
          DataBinding.FieldName = 'kodewil'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object GtvrekColumn14: TcxGridDBColumn
          Caption = 'Wilayah'
          DataBinding.FieldName = 'wilayah'
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object GtvrekColumn9: TcxGridDBColumn
          Caption = 'No.LPP'
          DataBinding.FieldName = 'nolpp'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 142
        end
        object gtvreklunas: TcxGridDBColumn
          DataBinding.FieldName = 'flaglunas'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object GridrekLevel1: TcxGridLevel
        GridView = Gtvrek
      end
    end
    object RzPanel15: TRzPanel
      Left = 0
      Top = 0
      Width = 1129
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      Color = 16316664
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 385
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
        OnClick = cxButton1Click
        Align = alLeft
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object terbitkanpelanggan: TcxButton
        Left = 201
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
        OnClick = terbitkanpelangganClick
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
        OnClick = tampilkanClick
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object cxButton3: TcxButton
        Left = 305
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
        OnClick = cxButton3Click
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
        OnClick = publishsemuaClick
        Align = alLeft
        OptionsImage.ImageIndex = 31
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
    object RzPanel11: TRzPanel
      Left = 0
      Top = 718
      Width = 1129
      Height = 36
      Align = alBottom
      BorderOuter = fsFlat
      Color = 16316664
      TabOrder = 2
      object cxLabel15: TcxLabel
        Left = 16
        Top = 7
        Caption = 'Lunas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object RzPanel12: TRzPanel
        Left = 56
        Top = 5
        Width = 33
        Height = 25
        BorderOuter = fsFlat
        Color = 5197823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Qrek: TMyQuery
    SQLDelete.Strings = (
      'SELECT '
      'p.nama,'
      
        'CONCAT( p.alamat," NO. ",COALESCE(p.norumah,"")," RT. ",COALESCE' +
        '(p.rt,"")," RW. ",COALESCE(p.rt,"")) AS alamat,'
      'p.norekening,'
      'p.sumberair,'
      'p.kodekondisimeter,'
      'km.kondisi,'
      'p.flag,'
      'f.uraian,'
      'c.*,'
      'g.golongan,'
      'r.namarayon,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'd.ukuran,'
      'CASE c.flagaktif'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'c.retribusi+c.retribusilain AS retribusicampur,'
      'c.pemeliharaan+c.pemeliharaanlain AS pemeliharaancampur,'
      'c.administrasi+c.administrasilain AS administrasicampur,'
      'CASE c.flagangsur'
      ' WHEN 1 THEN "Di Angsur"'
      ' WHEN 0 THEN "-"'
      ' WHEN 2 THEN "Angsuran Lunas"'
      'END'
      'AS statusangsuran,'
      'COALESCE(tak.flagkoreksi,"0") AS taksasi'
      ''
      ' FROM drd c'
      '         LEFT JOIN pelanggan p ON c.nosamb=p.nosamb'
      
        '         LEFT JOIN golongan g ON c.kodegol=g.kodegol AND g.aktif' +
        '="1" '
      
        '         LEFT JOIN diameter d ON c.kodediameter=d.kodediameter A' +
        'ND d.aktif="1"'
      '         LEFT JOIN rayon r ON c.koderayon=r.koderayon'
      
        '         LEFT JOIN kelurahan X ON c.kodekelurahan=x.kodekeluraha' +
        'n '
      '         LEFT JOIN flag f ON p.`flag`=f.`kodeflag`'
      '         LEFT JOIN kolektif k ON c.kodekolektif=k.kodekolektif'
      '         LEFT JOIN meterai m ON m.idx="1" '
      'LEFT JOIn kondisimeter km ON p.kodekondisimeter-km.kodekondisi'
      
        'LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND peri' +
        'ode="201701") tak ON c.nosamb=tak.nosamb'
      '         WHERE c.nosamb IS NOT NULL')
    SQLLock.Strings = (
      'SELECT '
      'p.nama,'
      'p.alamat,'
      'p.norekening,'
      'p.sumberair,'
      'p.flag,'
      'p.kodekondisimeter,'
      'km.kondisi,'
      'f.uraian,'
      'p.kodekolektif,'
      'c.*,'
      'g.golongan,'
      'r.namarayon,'
      'r.kodewil,'
      'r.wilayah,'
      'x.kelurahan,'
      'x.kodecabang,'
      'x.cabang,'
      'k.kolektif,'
      'd.ukuran,'
      'CASE c.flagaktif'
      ' WHEN 1 THEN "Aktif"'
      ' WHEN 0 THEN "Non Aktif"'
      ' WHEN 2 THEN "Segel/Tutup Smtr"'
      'END'
      'AS aktif,'
      'c.retribusi+c.retribusilain AS retribusicampur,'
      'c.pemeliharaan+c.pemeliharaanlain AS pemeliharaancampur,'
      'c.administrasi+c.administrasilain AS administrasicampur,'
      'CASE c.flagangsur'
      ' WHEN 1 THEN "Di Angsur"'
      ' WHEN 0 THEN "-"'
      ' WHEN 2 THEN "Angsuran Lunas"'
      'END'
      'AS statusangsuran,'
      'COALESCE(tak.flagkoreksi,"0") AS taksasi')
    Connection = DM.Conn
    Left = 352
    Top = 464
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 480
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 264
    object Koreksi1: TMenuItem
      Caption = 'Koreksi'
      OnClick = Koreksi1Click
    end
    object Publish1: TMenuItem
      Caption = 'Publish ( F2 )'
      OnClick = Publish1Click
    end
    object Unpublish1: TMenuItem
      Caption = 'Unpublish ( F4 )'
      OnClick = Unpublish1Click
    end
    object UploadUlang1: TMenuItem
      Caption = 'Upload Ulang'
      OnClick = UploadUlang1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
  object Qcekhost: TMyQuery
    SQLInsert.Strings = (
      'REPLACE INTO drd ('
      '  `kode`,'
      '  `periode`,'
      '  `nosamb`,'
      '  `nama`,'
      '  `alamat`,'
      '   kodegol,'
      '  `kodediameter`,'
      '  `koderayon`,'
      '  `kodekelurahan`,'
      '  `kodekolektif`,'
      '  `stanlalu`,'
      '  `stanskrg`,'
      '  `stanangkat`,'
      '  `pakai`,'
      '  `biayapemakaian`,'
      '  `administrasi`,'
      '  `pemeliharaan`,'
      '  `retribusi`,'
      '  `pelayanan`,'
      '  `airlimbah`,'
      '  `dendapakai0`,'
      '  `administrasilain`,'
      '  `pemeliharaanlain`,'
      '  `retribusilain`,'
      '  `meterai`,'
      '  `dendatunggakan`,'
      '  `rekair`,'
      '  `total`,  '
      '  `tglupload`,'
      '  `tglmulaidenda`,'
      '  `tglmulaidenda2`,'
      '`tglmulaidenda3`,'
      '`tglmulaidendaperbulan`,'
      '  `bulan`,  '
      '  `prog1`,'
      '  `prog2`,'
      '  `prog3`,'
      '  `prog4`,'
      '  `prog5`,'
      '  `nolpp`, '
      '  `flag`,'
      '  `trf_dendatunggakan`,'
      '  `trf_dendatunggakan2`,'
      'trf_dendatunggakan3,'
      'trf_dendatunggakanperbulan,'
      '  `kodeadministrasilain`,'
      '  `kodepemeliharaanlain`,'
      '   koderetribusilain,'
      'angsuran,'
      'persenppn,'
      'ppn,'
      'angsuranke,'
      'jenisangsuran,'
      'blok1,'
      'blok2,'
      'blok3,'
      'blok4,'
      'blok5,'
      'kelainan'
      ')'
      'VALUES'
      '('
      '   :kode,'
      '  :periode,'
      '  :nosamb,'
      '  :nama,'
      '  :alamat,'
      '  :kodegol,'
      '  :kodediameter,'
      '  :koderayon,'
      '  :kodekelurahan,'
      '  :kodekolektif,'
      '  :stanlalu,'
      '  :stanskrg,'
      '  :stanangkat,'
      '  :pakai,'
      '  :biayapemakaian,'
      '  :administrasi,'
      '  :pemeliharaan,'
      '  :retribusi,'
      '  :pelayanan,'
      '  :airlimbah,'
      '  :dendapakai0,'
      '  :administrasilain,'
      '  :pemeliharaanlain,'
      ':retribusilain,'
      '  :meterai,'
      '  :dendatunggakan,'
      '  :rekair,'
      '  :total,  '
      '  :tglupload,'
      '  :tglmulaidenda,'
      '  :tglmulaidenda2,'
      ':tglmulaidenda3,'
      ':tglmulaidendaperbulan,'
      '  :bulan,  '
      '  :prog1,'
      '  :prog2,'
      '  :prog3,'
      '  :prog4,'
      '  :prog5,'
      '  :nolpp, '
      '  :flag,'
      '  :trf_dendatunggakan,'
      '  :trf_dendatunggakan2,'
      ':trf_dendatunggakan3,'
      ':trf_dendatunggakanperbulan,'
      '  :kodeadministrasilain,'
      '  :kodepemeliharaanlain,'
      ':koderetribusilain,'
      ':angsuran,'
      ':persenppn,'
      ':ppn,'
      ':angsuranke,'
      ':jenisangsuran,'
      ':blok1,'
      ':blok2,'
      ':blok3,'
      ':blok4,'
      ':blok5,'
      ':kelainan'
      ')')
    Connection = Umain.host
    Left = 280
    Top = 488
  end
  object Qexec: TMyQuery
    Connection = Umain.host
    Left = 240
    Top = 408
  end
  object MyDataSource1: TMyDataSource
    Left = 280
    Top = 248
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 408
    Top = 312
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = Gridrek
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43763.544365462960000000
      ShrinkToPageWidth = True
      OptionsCards.AutoWidth = True
      OptionsCards.Borders = False
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.Visible = False
      OptionsRefinements.TransparentGraphics = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
end
