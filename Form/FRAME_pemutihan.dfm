object FRpemutihan: TFRpemutihan
  Left = 0
  Top = 0
  Width = 1335
  Height = 735
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
    Width = 1335
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR PEMUTIHAN'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 30
    Width = 1335
    Height = 705
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object RzSizePanel2: TRzSizePanel
      Left = 1100
      Top = 0
      Width = 235
      Height = 705
      Align = alRight
      HotSpotVisible = True
      SizeBarStyle = ssGroove
      SizeBarWidth = 7
      TabOrder = 0
      object cxScrollBox2: TcxScrollBox
        Left = 8
        Top = 0
        Width = 227
        Height = 605
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        object RzPanel13: TRzPanel
          Left = 0
          Top = 0
          Width = 227
          Height = 401
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
            Top = 84
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
            Top = 109
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
            Top = 134
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
            Top = 159
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
          object alamat: TcxTextEdit
            Left = 96
            Top = 159
            Enabled = False
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 108
          end
          object nama: TcxTextEdit
            Left = 96
            Top = 134
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 108
          end
          object nosamb: TcxTextEdit
            Left = 96
            Top = 109
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 108
          end
          object kodegol: TcxComboBox
            Left = 80
            Top = 84
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownRows = 15
            Properties.OnChange = kodegolPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Height = 23
            Width = 48
          end
          object golongan: TcxComboBox
            Left = 130
            Top = 84
            AutoSize = False
            Enabled = False
            ParentFont = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownRows = 15
            Properties.OnChange = golonganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 9
            Height = 23
            Width = 74
          end
          object namarayon: TcxComboBox
            Left = 130
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
            TabOrder = 10
            Height = 23
            Width = 74
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
            TabOrder = 11
            Height = 23
            Width = 48
          end
          object cekrekair: TcxCheckBox
            Left = 0
            Top = 184
            Caption = 'Rek Air (Rp)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Transparent = True
            OnClick = cekrekairClick
            Width = 97
          end
          object rekair1: TcxCurrencyEdit
            Left = 104
            Top = 184
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
            TabOrder = 13
            Width = 100
          end
          object rekair2: TcxCurrencyEdit
            Left = 104
            Top = 209
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
            TabOrder = 14
            Width = 100
          end
          object cxLabel80: TcxLabel
            Left = 64
            Top = 209
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
          object wilayah: TcxComboBox
            Left = 130
            Top = 59
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
            TabOrder = 16
            Height = 23
            Width = 74
          end
          object kodewil: TcxComboBox
            Left = 80
            Top = 59
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
            TabOrder = 17
            Height = 23
            Width = 48
          end
          object cekwilayah: TcxCheckBox
            Left = 0
            Top = 59
            Caption = 'Wilayah'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 18
            Transparent = True
            OnClick = cekwilayahClick
            Width = 73
          end
          object cekpakai: TcxCheckBox
            Left = 0
            Top = 236
            Caption = 'Pakai ( m3 )'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 19
            Transparent = True
            OnClick = cekpakaiClick
            Width = 105
          end
          object pakai1: TcxCurrencyEdit
            Left = 88
            Top = 234
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
            Width = 41
          end
          object cxLabel31: TcxLabel
            Left = 131
            Top = 234
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
            Left = 154
            Top = 234
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
            TabOrder = 22
            Width = 50
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
            TabOrder = 23
          end
          object cekcab: TcxCheckBox
            Left = 0
            Top = 259
            Caption = 'Cabang'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 24
            Transparent = True
            OnClick = cekcabClick
            Width = 65
          end
          object cekkel: TcxCheckBox
            Left = 0
            Top = 284
            Caption = 'Kelurahan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 25
            Transparent = True
            OnClick = cekkelClick
            Width = 81
          end
          object kodecab: TcxComboBox
            Left = 80
            Top = 259
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
            TabOrder = 26
            Height = 23
            Width = 57
          end
          object cab: TcxComboBox
            Left = 139
            Top = 259
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
            TabOrder = 27
            Height = 23
            Width = 65
          end
          object kel: TcxComboBox
            Left = 139
            Top = 284
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
            TabOrder = 28
            Height = 23
            Width = 65
          end
          object kodekel: TcxComboBox
            Left = 80
            Top = 284
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
            TabOrder = 29
            Height = 23
            Width = 57
          end
          object cektglhps: TcxCheckBox
            Left = 0
            Top = 308
            Caption = 'Tgl.Hps.Scr.Akn'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 30
            Transparent = True
            OnClick = cektglhpsClick
            Width = 129
          end
          object tglhps1: TcxDateEdit
            Left = 24
            Top = 332
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 31
            Width = 81
          end
          object tglhps2: TcxDateEdit
            Left = 128
            Top = 332
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 32
            Width = 75
          end
          object cxLabel5: TcxLabel
            Left = 106
            Top = 335
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
            Top = 361
            Caption = 'Filter Lainnya'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 34
            Transparent = True
            OnClick = ceklainnyaClick
            Width = 104
          end
          object lainnya: TcxComboBox
            Left = 104
            Top = 357
            Enabled = False
            ParentFont = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownRows = 15
            Properties.Items.Strings = (
              'Belum Verifikasi'
              'Sudah Verifikasi')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Open Sans Semibold'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 35
            Width = 99
          end
        end
        object RzPanel3: TRzPanel
          Left = 0
          Top = 401
          Width = 227
          Height = 204
          Align = alClient
          BorderOuter = fsNone
          Color = 16316664
          TabOrder = 1
        end
      end
      object RzPanel6: TRzPanel
        Left = 8
        Top = 605
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
          Left = 136
          Top = 39
          Width = 70
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          CalColors.BackColor = 6316128
          CalColors.TextColor = 6316128
          CalColors.TitleTextColor = 6316128
          CalColors.MonthBackColor = 6316128
          Date = 41655.788053020830000000
          Format = 'yyyy'
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
          FlatButtonColor = 6316128
          FlatButtons = True
          DisabledColor = 6316128
          FrameColor = clAppWorkSpace
          FrameHotColor = clBlack
          FrameHotStyle = fsFlat
          FrameVisible = True
        end
        object cxLabel4: TcxLabel
          Left = 82
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
          TabOrder = 0
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
          TabOrder = 2
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
          TabOrder = 3
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
      Top = 0
      Width = 1100
      Height = 705
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      Transparent = True
      object Gridrek: TcxGrid
        Left = 0
        Top = 40
        Width = 1100
        Height = 629
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
            end
            item
              Format = '#,##0.##'
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
              Format = '#,##0.##'
              Kind = skSum
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekpakai
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekbiayapemakaian
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekadministrasi
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekpemeliharaan
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekretribusi
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekpelayanan
            end
            item
              Format = ',0.;-,0.'
              Kind = skSum
              Column = Gtvrekrekair
            end
            item
              Format = ',0.;-,0.'
              Kind = skCount
              Column = Gtvreknosamb
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
          object Gtvrekverifikasi: TcxGridDBColumn
            Caption = 'V'
            DataBinding.FieldName = 'verifikasi'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DM.png16
            Properties.Items = <
              item
                ImageIndex = 17
                Value = '1'
              end
              item
                ImageIndex = 16
                Value = '0'
              end>
            HeaderAlignmentHorz = taCenter
            HeaderHint = 'Verifikasi'
            Width = 26
          end
          object Gtvrekkode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'kode'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object Gtvreknosamb: TcxGridDBColumn
            Caption = 'No.Samb'
            DataBinding.FieldName = 'nosamb'
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object Gtvrektahun: TcxGridDBColumn
            Caption = 'Tahun'
            DataBinding.FieldName = 'tahun'
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
          object Gtvrekperiode: TcxGridDBColumn
            Caption = 'Periode'
            DataBinding.FieldName = 'periode'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object Gtvrekkodegol: TcxGridDBColumn
            Caption = 'Kd.Gol'
            DataBinding.FieldName = 'kodegol'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object Gtvrekkoderayon: TcxGridDBColumn
            Caption = 'Kd.Ryn'
            DataBinding.FieldName = 'koderayon'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object Gtvrekkodekelurahan: TcxGridDBColumn
            Caption = 'Kd.Kel'
            DataBinding.FieldName = 'kodekelurahan'
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
          object Gtvrekstanlalu: TcxGridDBColumn
            Caption = 'St.Lalu'
            DataBinding.FieldName = 'stanlalu'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
          end
          object Gtvrekstanskrg: TcxGridDBColumn
            Caption = 'St.Skrg'
            DataBinding.FieldName = 'stanskrg'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object Gtvrekstanangkat: TcxGridDBColumn
            Caption = 'St.Angkat'
            DataBinding.FieldName = 'stanangkat'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object Gtvrekpakai: TcxGridDBColumn
            Caption = 'Pakai'
            DataBinding.FieldName = 'pakai'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object Gtvrekbiayapemakaian: TcxGridDBColumn
            Caption = 'B.Pemakaian'
            DataBinding.FieldName = 'biayapemakaian'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object Gtvrekadministrasi: TcxGridDBColumn
            Caption = 'Adm.'
            DataBinding.FieldName = 'administrasi'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object Gtvrekpemeliharaan: TcxGridDBColumn
            Caption = 'Pem.'
            DataBinding.FieldName = 'pemeliharaan'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object Gtvrekretribusi: TcxGridDBColumn
            Caption = 'Ret.'
            DataBinding.FieldName = 'retribusi'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object Gtvrekpelayanan: TcxGridDBColumn
            Caption = 'Pelayanan'
            DataBinding.FieldName = 'pelayanan'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object Gtvrekrekair: TcxGridDBColumn
            Caption = 'Rek.Air'
            DataBinding.FieldName = 'rekair'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.EditFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object Gtvrektglhapussecaraakuntansi: TcxGridDBColumn
            Caption = 'Tgl.Hps.Scr Akun'
            DataBinding.FieldName = 'tglhapussecaraakuntansi'
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object Gtvrektglverifikasi: TcxGridDBColumn
            Caption = 'Tgl.Ver'
            DataBinding.FieldName = 'tglverifikasi'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object Gtvrekuserverifikasi: TcxGridDBColumn
            Caption = 'User Ver'
            DataBinding.FieldName = 'userverifikasi'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object Gtvreknama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
            HeaderAlignmentHorz = taCenter
            Width = 169
          end
          object Gtvrekalamat: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'alamat'
            HeaderAlignmentHorz = taCenter
            Width = 151
          end
        end
        object GridrekLevel1: TcxGridLevel
          GridView = Gtvrek
        end
      end
      object RzPanel15: TRzPanel
        Left = 0
        Top = 0
        Width = 1100
        Height = 40
        Align = alTop
        BorderOuter = fsNone
        Color = 16316664
        TabOrder = 1
        object cxButton1: TcxButton
          Left = 473
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
          TabOrder = 1
          TabStop = False
          OnClick = tampilkanClick
          Align = alLeft
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object cxButton3: TcxButton
          Left = 393
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
          TabOrder = 2
          TabStop = False
          OnClick = cxButton3Click
          Align = alLeft
          OptionsImage.ImageIndex = 26
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object verifikasi: TcxButton
          Left = 260
          Top = 0
          Width = 133
          Height = 40
          Caption = 'Verifikasi Semua'
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
          OnClick = verifikasiClick
          Align = alLeft
          OptionsImage.ImageIndex = 31
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object tambah: TcxButton
          Left = 80
          Top = 0
          Width = 90
          Height = 40
          Caption = 'Tambah'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = tambahClick
          Align = alLeft
          OptionsImage.ImageIndex = 24
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object hapus: TcxButton
          Left = 170
          Top = 0
          Width = 90
          Height = 40
          Caption = 'Hapus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = False
          OnClick = hapusClick
          Align = alLeft
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
      end
      object RzPanel11: TRzPanel
        Left = 0
        Top = 669
        Width = 1100
        Height = 36
        Align = alBottom
        BorderOuter = fsFlat
        Color = 16316664
        TabOrder = 2
      end
    end
  end
  object Qrek: TMyQuery
    SQLLock.Strings = (
      'SELECT '
      '  c.*,'
      '  p.nama,'
      '  p.alamat '
      '  '
      '  FROM `drdpemutihan` c'
      '  LEFT JOIN pelanggan p ON c.`nosamb`=p.`nosamb`'
      'LEFT JOIN rayon  r ON c.koderayon=r.koderayon'
      'LEFT JOIN kelurahan k ON c.kodekelurahan=k.kodekelurahan'
      'WHERE c.tahun=:tahun')
    Connection = DM.Conn
    SQL.Strings = (
      'SELECT '
      '  c.*,'
      '  p.nama,'
      '  p.alamat '
      '  '
      '  FROM `drdpemutihan` c'
      '  LEFT JOIN pelanggan p ON c.`nosamb`=p.`nosamb`'
      'LEFT JOIN rayon  r ON c.koderayon=r.koderayon'
      'LEFT JOIN kelurahan k ON c.kodekelurahan=k.kodekelurahan')
    Left = 352
    Top = 464
    object Qrekkode: TStringField
      FieldName = 'kode'
      Size = 50
    end
    object Qreknosamb: TStringField
      FieldName = 'nosamb'
      Size = 30
    end
    object Qrektahun: TStringField
      FieldName = 'tahun'
      Size = 4
    end
    object Qrekperiode: TStringField
      FieldName = 'periode'
      Size = 6
    end
    object Qrektglhapussecaraakuntansi: TDateField
      FieldName = 'tglhapussecaraakuntansi'
    end
    object Qrekkodegol: TStringField
      FieldName = 'kodegol'
      Size = 50
    end
    object Qrekkoderayon: TStringField
      FieldName = 'koderayon'
      Size = 50
    end
    object Qrekkodekelurahan: TStringField
      FieldName = 'kodekelurahan'
      Size = 50
    end
    object Qrekrekair: TFloatField
      FieldName = 'rekair'
    end
    object Qrekverifikasi: TStringField
      FieldName = 'verifikasi'
      FixedChar = True
      Size = 1
    end
    object Qrektglverifikasi: TDateTimeField
      FieldName = 'tglverifikasi'
    end
    object Qrekuserverifikasi: TStringField
      FieldName = 'userverifikasi'
      Size = 50
    end
    object Qrekbiayapemakaian: TFloatField
      FieldName = 'biayapemakaian'
    end
    object Qrekadministrasi: TFloatField
      FieldName = 'administrasi'
    end
    object Qrekpemeliharaan: TFloatField
      FieldName = 'pemeliharaan'
    end
    object Qrekretribusi: TFloatField
      FieldName = 'retribusi'
    end
    object Qrekpelayanan: TFloatField
      FieldName = 'pelayanan'
    end
    object Qreknama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object Qrekalamat: TStringField
      FieldName = 'alamat'
      Size = 200
    end
    object Qrekstanlalu: TFloatField
      FieldName = 'stanlalu'
    end
    object Qrekstanskrg: TFloatField
      FieldName = 'stanskrg'
    end
    object Qrekstanangkat: TFloatField
      FieldName = 'stanangkat'
    end
    object Qrekpakai: TFloatField
      FieldName = 'pakai'
    end
  end
  object DSrek: TMyDataSource
    DataSet = Qrek
    Left = 480
    Top = 304
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    PreviewOptions.IsCaptionAssigned = True
    Version = 0
    Left = 496
    Top = 536
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = Gridrek
      PageNumberFormat = pnfNumeral
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
      ReportDocument.CreationDate = 44781.810996053240000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
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
      StyleRepository = cxStyleRepository1
      Styles.BandHeader = cxStyle1
      Styles.Caption = cxStyle2
      Styles.FilterBar = cxStyle3
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.Header = cxStyle6
      Styles.Selection = cxStyle7
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindow
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DM.png16
    Left = 104
    Top = 232
    object Verifikasi1: TMenuItem
      Caption = 'Verifikasi'
      ImageIndex = 12
      OnClick = Verifikasi1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      ImageIndex = 0
      OnClick = hapusClick
    end
  end
  object Qexec: TMyQuery
    Connection = Umain.host
    Left = 184
    Top = 472
  end
end