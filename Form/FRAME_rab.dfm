object FRrab: TFRrab
  Left = 0
  Top = 0
  Width = 1480
  Height = 594
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 657
    Height = 594
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 21
    object TabSheet1: TRzTabSheet
      Caption = 'Sambungan Baru'
    end
    object TabSheet2: TRzTabSheet
      TabVisible = False
      Caption = 'TabSheet2'
    end
  end
  object RzSizePanel2: TRzSizePanel
    Left = 1238
    Top = 30
    Width = 242
    Height = 564
    Align = alRight
    HotSpotVisible = True
    SizeBarStyle = ssGroove
    SizeBarWidth = 7
    TabOrder = 1
    Visible = False
    object cxScrollBox4: TcxScrollBox
      Left = 8
      Top = 0
      Width = 234
      Height = 564
      Align = alClient
      BorderStyle = cxcbsNone
      Color = 14676991
      ParentColor = False
      TabOrder = 0
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 234
        Height = 305
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Open Sans'
        Font.Style = []
        GradientColorStop = clWhite
        ParentFont = False
        TabOrder = 0
        object cekblok: TcxCheckBox
          Left = 8
          Top = 533
          Caption = 'Blok'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Transparent = True
          Visible = False
          Width = 81
        end
        object blok: TcxTextEdit
          Left = 104
          Top = 533
          Enabled = False
          TabOrder = 1
          Visible = False
          Width = 82
        end
        object cekket: TcxCheckBox
          Left = 8
          Top = 560
          Caption = 'Ket'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Open Sans'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          Visible = False
          Width = 89
        end
        object keterangan: TcxComboBox
          Left = 104
          Top = 559
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          TabOrder = 3
          Visible = False
          Height = 23
          Width = 129
        end
        object RzPanel8: TRzPanel
          Left = 8
          Top = 7
          Width = 217
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
          TabOrder = 4
        end
        object ceknorab: TcxCheckBox
          Left = 4
          Top = 38
          Caption = 'No.RAB'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Transparent = True
          OnClick = ceknorabClick
          Width = 73
        end
        object norab: TcxTextEdit
          Left = 81
          Top = 36
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 145
        end
        object nama: TcxTextEdit
          Left = 81
          Top = 80
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 145
        end
        object cekwil: TcxCheckBox
          Left = 4
          Top = 104
          Caption = 'Wilayah'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Transparent = True
          OnClick = cekwilClick
          Width = 73
        end
        object ceknama: TcxCheckBox
          Left = 4
          Top = 82
          Caption = 'Nama'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Transparent = True
          OnClick = ceknamaClick
          Width = 65
        end
        object cekrayon: TcxCheckBox
          Left = 4
          Top = 124
          Caption = 'Rayon'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Transparent = True
          OnClick = cekrayonClick
          Width = 89
        end
        object koderayon: TcxComboBox
          Left = 101
          Top = 124
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
          Width = 51
        end
        object kodewil: TcxComboBox
          Left = 101
          Top = 102
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
          TabOrder = 12
          Width = 51
        end
        object kodegol: TcxComboBox
          Left = 101
          Top = 146
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
          TabOrder = 13
          Width = 51
        end
        object cekgol: TcxCheckBox
          Left = 4
          Top = 146
          Caption = 'Golongan'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 14
          Transparent = True
          OnClick = cekgolClick
          Width = 89
        end
        object limit: TcxCurrencyEdit
          Left = 46
          Top = 233
          EditValue = 5000.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.DisplayFormat = ',0.;(,0.)'
          Properties.EditFormat = ',0.;(,0.)'
          Properties.Nullable = False
          Properties.Nullstring = '0'
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseThousandSeparator = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Width = 47
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 234
          Caption = 'Batas :'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object refresh: TcxButton
          Left = 104
          Top = 231
          Width = 122
          Height = 25
          Caption = 'Refresh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Open Sans Semibold'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          TabStop = False
          OnClick = refreshClick
          OptionsImage.ImageIndex = 7
          OptionsImage.Images = DM.png16
          SpeedButtonOptions.CanBeFocused = False
        end
        object wilayah: TcxComboBox
          Left = 151
          Top = 102
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
          TabOrder = 18
          Width = 75
        end
        object rayon: TcxComboBox
          Left = 151
          Top = 124
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 15
          Properties.OnChange = rayonPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 19
          Width = 75
        end
        object golongan: TcxComboBox
          Left = 151
          Top = 146
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
          TabOrder = 20
          Width = 75
        end
        object ceknodaftar: TcxCheckBox
          Left = 4
          Top = 60
          Caption = 'No.Daftar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 21
          Transparent = True
          OnClick = ceknodaftarClick
          Width = 81
        end
        object nodaftar: TcxTextEdit
          Left = 97
          Top = 58
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 22
          Width = 129
        end
        object ceklainnya: TcxCheckBox
          Left = 4
          Top = 170
          Caption = 'Lainnya'
          ParentFont = False
          State = cbsChecked
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 23
          Transparent = True
          OnClick = ceklainnyaClick
          Width = 89
        end
        object lainnya: TcxComboBox
          Left = 5
          Top = 191
          ParentFont = False
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'Hanya Yang Belum Diaktifkan'
            'Hanya Yang Sudah Diaktifkan')
          Properties.OnChange = kodegolPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Open Sans Semibold'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 24
          Text = 'Hanya Yang Belum Diaktifkan'
          Width = 220
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 305
        Width = 234
        Height = 259
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 1
      end
    end
  end
  object RzPanel10: TRzPanel
    Left = 0
    Top = 0
    Width = 1480
    Height = 30
    Align = alTop
    BorderOuter = fsNone
    Caption = 'DAFTAR TUNGGU PENGAKTIFAN'
    Color = 20966
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Open Sans Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 30
    Width = 1238
    Height = 564
    Align = alClient
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 3
    object ss: TcxGrid
      Left = 0
      Top = 40
      Width = 1238
      Height = 524
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.SkinName = 'iMaginary'
      object grid: TcxGridDBTableView
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
        OnCellDblClick = gridCellDblClick
        OnCustomDrawCell = gridCustomDrawCell
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.;(,0.)'
            Kind = skSum
            Position = spFooter
            Column = gridgrandtotal
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'COUNT = ,0.;(,0.)'
            Kind = skCount
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
          end
          item
            Format = ',0.;(,0.)'
            Kind = skCount
          end
          item
            Format = ',0.;(,0.)'
            Kind = skSum
            Column = gridgrandtotal
          end
          item
            Format = ' Jumlah : ,0.;(,0.)'
            Kind = skCount
            Column = gridwaktubayar
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        object gridwaktubayar: TcxGridDBColumn
          Caption = 'Waktu Bayar'
          DataBinding.FieldName = 'waktubayar'
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object gridnorab: TcxGridDBColumn
          Caption = 'No.Rab'
          DataBinding.FieldName = 'norab'
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object gridColumn3: TcxGridDBColumn
          Caption = 'No.Samb'
          DataBinding.FieldName = 'nosambyangdiberikan'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object gridnama: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 218
        end
        object gridalamat: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 203
        end
        object gridgrandtotal: TcxGridDBColumn
          Caption = 'Grand Total'
          DataBinding.FieldName = 'grandtotal'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          Width = 109
        end
        object gridtglinput: TcxGridDBColumn
          Caption = 'Waktu Input'
          DataBinding.FieldName = 'tglinput'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD MMM YYYY'
          Visible = False
          Width = 132
        end
        object gridvaliddate: TcxGridDBColumn
          Caption = 'Kadaluarsa RAB'
          DataBinding.FieldName = 'validdate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD MMM YYYY'
          Visible = False
          Width = 104
        end
        object gridlunas: TcxGridDBColumn
          Caption = 'LNS'
          DataBinding.FieldName = 'flaglunas'
          Visible = False
          VisibleForCustomization = False
          Width = 28
        end
        object gridnohp: TcxGridDBColumn
          Caption = 'No.HP'
          DataBinding.FieldName = 'nohp'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object gridnotelp: TcxGridDBColumn
          Caption = 'No.Telp'
          DataBinding.FieldName = 'notelp'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridflagpasang: TcxGridDBColumn
          Caption = 'PS'
          DataBinding.FieldName = 'flagpasang'
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
          Width = 29
        end
        object gridtglpasang: TcxGridDBColumn
          Caption = 'Waktu Pasang'
          DataBinding.FieldName = 'tglpasang'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD MMM YYYY hh:mm:ss'
          Visible = False
          Width = 162
        end
        object gridColumn1: TcxGridDBColumn
          Caption = 'Aktif'
          DataBinding.FieldName = 'flagaktif'
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
          Width = 32
        end
        object gridkodegol: TcxGridDBColumn
          Caption = 'Gol'
          DataBinding.FieldName = 'kodegol'
          Visible = False
          Width = 54
        end
        object gridkodediameter: TcxGridDBColumn
          Caption = 'Dia'
          DataBinding.FieldName = 'kodediameter'
          Visible = False
          Width = 50
        end
        object gridkoderayon: TcxGridDBColumn
          Caption = 'Rayon'
          DataBinding.FieldName = 'koderayon'
          Visible = False
          Width = 60
        end
        object gridkodekolektif: TcxGridDBColumn
          Caption = 'Kolektif'
          DataBinding.FieldName = 'kodekolektif'
          Visible = False
          Width = 64
        end
        object gridserimeter: TcxGridDBColumn
          Caption = 'Serimeter'
          DataBinding.FieldName = 'serimeter'
          Visible = False
          Width = 74
        end
        object gridmerkmeter: TcxGridDBColumn
          Caption = 'Merk Meter'
          DataBinding.FieldName = 'merkmeter'
          Visible = False
          Width = 86
        end
        object gridpekerjaan: TcxGridDBColumn
          Caption = 'Pekerjaan'
          DataBinding.FieldName = 'pekerjaan'
          Visible = False
          Width = 116
        end
        object gridnoktp: TcxGridDBColumn
          Caption = 'No.KTP'
          DataBinding.FieldName = 'noktp'
          Visible = False
          Width = 132
        end
        object gridnamapemilik: TcxGridDBColumn
          Caption = 'Nama Pemilik'
          DataBinding.FieldName = 'namapemilik'
          Visible = False
          Width = 117
        end
        object gridkepemilikanbangunan: TcxGridDBColumn
          Caption = 'Kepemilkan Bangunan'
          DataBinding.FieldName = 'kepemilikanbangunan'
          Visible = False
          Width = 134
        end
        object gridpenghuni: TcxGridDBColumn
          Caption = 'Penghuni'
          DataBinding.FieldName = 'penghuni'
          Visible = False
          Width = 65
        end
        object gridstanawalpasang: TcxGridDBColumn
          Caption = 'Stan Awal Pasang'
          DataBinding.FieldName = 'stanawalpasang'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;(,0.)'
          Visible = False
          Width = 106
        end
        object gridsumberair: TcxGridDBColumn
          Caption = 'Sumber Air'
          DataBinding.FieldName = 'sumberair'
          Visible = False
          Width = 142
        end
        object gridgenap: TcxGridDBColumn
          DataBinding.FieldName = 'genap'
          Visible = False
          VisibleForCustomization = False
        end
        object gridColumn2: TcxGridDBColumn
          Caption = 'Waktu Pengaktifan'
          DataBinding.FieldName = 'waktupengaktifan'
          HeaderAlignmentHorz = taCenter
          Width = 134
        end
        object gridnoreg: TcxGridDBColumn
          Caption = 'No.Pendaftaran'
          DataBinding.FieldName = 'noreg'
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
        object gridstatus: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
          HeaderAlignmentHorz = taCenter
          Width = 169
        end
      end
      object ssLevel1: TcxGridLevel
        GridView = grid
      end
    end
    object RzPanel6: TRzPanel
      Left = 544
      Top = 152
      Width = 185
      Height = 41
      Color = 8978431
      TabOrder = 1
      Visible = False
    end
    object RzPanel5: TRzPanel
      Left = 0
      Top = 0
      Width = 1238
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 2
      object print: TcxButton
        Left = 297
        Top = 0
        Width = 104
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
        Visible = False
        Align = alLeft
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object pengaktifan: TcxButton
        Left = 97
        Top = 0
        Width = 104
        Height = 40
        Caption = 'Pengaktifan'
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
        OnClick = pengaktifanClick
        Align = alLeft
        OptionsImage.ImageIndex = 31
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object cxButton1: TcxButton
        Left = 0
        Top = 0
        Width = 97
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
        OnClick = refreshClick
        Align = alLeft
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
      object export: TcxButton
        Left = 201
        Top = 0
        Width = 96
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
        Visible = False
        Align = alLeft
        OptionsImage.ImageIndex = 26
        OptionsImage.Images = DM.png24
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
      end
    end
  end
  object Qrab: TMyQuery
    SQLRefresh.Strings = (
      'SELECT * FROM rab WHERE norab=:norab')
    SQLLock.Strings = (
      'SELECT c.*,'
      'IF(c.flagaktif="1","SUDAH DI AKTIFKAN...",'
      
        #9'IF(c.flaglunas="1" AND c.flagaktif="0","MENUNGGU PENGAKTIFAN...' +
        '","MENUNGGU PEMBAYARAN...")) AS STATUSrab'
      ''
      ''
      'FROM rab c LEFT JOIN rayon r ON c.koderayon=r.koderayon '
      
        'WHERE c.norab IS NOT NULL and c.flaglunas="1" AND c.flagpasang="' +
        '1"')
    Connection = Umain.host
    SQL.Strings = (
      'SELECT c.*,'
      'IF(c.flagaktif="1","SUDAH DI AKTIFKAN...",'
      
        #9'IF(c.flaglunas="1" AND c.flagaktif="0","MENUNGGU PENGAKTIFAN...' +
        '","MENUNGGU PEMBAYARAN...")) AS STATUSrab'
      ''
      ''
      'FROM rab c LEFT JOIN rayon r ON c.koderayon=r.koderayon '
      
        'WHERE c.norab IS NOT NULL AND c.flaglunas="1" AND c.flagpasang="' +
        '1" AND c.flagaktif="0"')
    Left = 321
    Top = 225
    object Qrabnorab: TStringField
      FieldName = 'norab'
      Size = 100
    end
    object Qrabnomorspko: TStringField
      FieldName = 'nomorspko'
      Size = 100
    end
    object Qrabnomorreg: TStringField
      FieldName = 'nomorreg'
      Size = 100
    end
    object Qrabnomorgambar: TStringField
      FieldName = 'nomorgambar'
      Size = 100
    end
    object Qrabnomorrkp: TStringField
      FieldName = 'nomorrkp'
      Size = 100
    end
    object Qrabnomorapbd: TStringField
      FieldName = 'nomorapbd'
      Size = 100
    end
    object Qrabnomorspl: TStringField
      FieldName = 'nomorspl'
      Size = 100
    end
    object Qrabnomorspkp: TStringField
      FieldName = 'nomorspkp'
      Size = 100
    end
    object Qrabtanggalspkp: TDateField
      FieldName = 'tanggalspkp'
    end
    object Qrabnomorsppb: TStringField
      FieldName = 'nomorsppb'
      Size = 100
    end
    object Qrabnomorbapb: TStringField
      FieldName = 'nomorbapb'
      Size = 100
    end
    object Qrabnomorba: TStringField
      FieldName = 'nomorba'
      Size = 100
    end
    object Qrabnomorbppi: TStringField
      FieldName = 'nomorbppi'
      Size = 100
    end
    object Qrabtanggalbppi: TDateField
      FieldName = 'tanggalbppi'
    end
    object Qrabnama: TStringField
      FieldName = 'nama'
      Size = 70
    end
    object Qrabalamat: TStringField
      FieldName = 'alamat'
      Size = 100
    end
    object Qrabtglrab: TDateField
      FieldName = 'tglrab'
    end
    object Qrabvaliddate: TDateField
      FieldName = 'validdate'
    end
    object Qrabflaglunas: TSmallintField
      FieldName = 'flaglunas'
    end
    object Qrabgrandtotal: TFloatField
      FieldName = 'grandtotal'
    end
    object Qrabwaktubayar: TDateTimeField
      FieldName = 'waktubayar'
    end
    object Qrabnohp: TStringField
      FieldName = 'nohp'
    end
    object Qrabnotelp: TStringField
      FieldName = 'notelp'
    end
    object Qrabkodegol: TStringField
      FieldName = 'kodegol'
      Size = 15
    end
    object Qrabkodediameter: TStringField
      FieldName = 'kodediameter'
      Size = 15
    end
    object Qrabkoderayon: TStringField
      FieldName = 'koderayon'
      Size = 15
    end
    object Qrabkodekolektif: TStringField
      FieldName = 'kodekolektif'
      Size = 15
    end
    object Qrabserimeter: TStringField
      FieldName = 'serimeter'
      Size = 30
    end
    object Qrabmerkmeter: TStringField
      FieldName = 'merkmeter'
      Size = 50
    end
    object Qrabpekerjaan: TStringField
      FieldName = 'pekerjaan'
      Size = 50
    end
    object Qrabnoktp: TStringField
      FieldName = 'noktp'
      Size = 50
    end
    object Qrabnamapemilik: TStringField
      FieldName = 'namapemilik'
      Size = 100
    end
    object Qrabkepemilikanbangunan: TStringField
      FieldName = 'kepemilikanbangunan'
      Size = 50
    end
    object Qrabpenghuni: TStringField
      FieldName = 'penghuni'
      Size = 3
    end
    object Qrabstanawalpasang: TFloatField
      FieldName = 'stanawalpasang'
    end
    object Qrabsumberair: TStringField
      FieldName = 'sumberair'
      Size = 50
    end
    object Qrabflagpasang: TStringField
      FieldName = 'flagpasang'
      FixedChar = True
      Size = 1
    end
    object Qrabtglpasang: TDateField
      FieldName = 'tglpasang'
    end
    object Qrabpetugaspasang: TStringField
      FieldName = 'petugaspasang'
      Size = 50
    end
    object Qrabnikpetugaspasang: TStringField
      FieldName = 'nikpetugaspasang'
      Size = 50
    end
    object Qrabflagaktif: TStringField
      FieldName = 'flagaktif'
      FixedChar = True
      Size = 1
    end
    object Qrabwaktupengaktifan: TDateTimeField
      FieldName = 'waktupengaktifan'
    end
    object Qrabnosambyangdiberikan: TStringField
      FieldName = 'nosambyangdiberikan'
      Size = 50
    end
    object Qrabemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object Qrabflagangsur: TStringField
      FieldName = 'flagangsur'
      FixedChar = True
      Size = 1
    end
    object Qrabnorumah: TStringField
      FieldName = 'norumah'
      Size = 50
    end
    object Qrabrt: TStringField
      FieldName = 'rt'
      Size = 50
    end
    object Qrabrw: TStringField
      FieldName = 'rw'
      Size = 50
    end
    object Qrabflaghapus: TStringField
      FieldName = 'flaghapus'
      FixedChar = True
      Size = 1
    end
    object Qrabtglmulaitagih: TDateField
      FieldName = 'tglmulaitagih'
    end
    object Qrabflagditarik: TStringField
      FieldName = 'flagditarik'
      FixedChar = True
      Size = 1
    end
    object Qrabalasanpenarikan: TMemoField
      FieldName = 'alasanpenarikan'
      BlobType = ftMemo
    end
    object Qrabketalamat: TStringField
      FieldName = 'ketalamat'
      Size = 100
    end
    object QrabSTATUSrab: TStringField
      FieldName = 'STATUSrab'
      Size = 23
    end
  end
  object Drab: TMyDataSource
    DataSet = mem_
    Left = 400
    Top = 256
  end
  object MyDataSource1: TMyDataSource
    Left = 400
    Top = 336
  end
  object Qhost: TMyQuery
    Connection = Umain.host
    Left = 233
    Top = 361
    object StringField1: TStringField
      FieldName = 'norab'
      Origin = 'rab.norab'
      Size = 55
    end
    object StringField2: TStringField
      FieldName = 'noreg'
      Origin = 'rab.noreg'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'nama'
      Origin = 'rab.nama'
      Size = 70
    end
    object StringField4: TStringField
      FieldName = 'alamat'
      Origin = 'rab.alamat'
      Size = 100
    end
    object DateField1: TDateField
      FieldName = 'tglinput'
      Origin = 'rab.tglinput'
    end
    object DateField2: TDateField
      FieldName = 'validdate'
      Origin = 'rab.validdate'
    end
    object SmallintField1: TSmallintField
      FieldName = 'flaglunas'
      Origin = 'rab.flaglunas'
    end
    object FloatField1: TFloatField
      FieldName = 'grandtotal'
      Origin = 'rab.grandtotal'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'waktubayar'
      Origin = 'rab.waktubayar'
    end
    object StringField5: TStringField
      FieldName = 'nohp'
      Origin = 'rab.nohp'
    end
    object StringField6: TStringField
      FieldName = 'notelp'
      Origin = 'rab.notelp'
    end
    object StringField7: TStringField
      FieldName = 'kodegol'
      Origin = 'rab.kodegol'
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'kodediameter'
      Origin = 'rab.kodediameter'
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'koderayon'
      Origin = 'rab.koderayon'
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'kodekolektif'
      Origin = 'rab.kodekolektif'
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'serimeter'
      Origin = 'rab.serimeter'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'merkmeter'
      Origin = 'rab.merkmeter'
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'flagpasang'
      Origin = 'rab.flagpasang'
      FixedChar = True
      Size = 1
    end
    object DateField3: TDateField
      FieldName = 'tglpasang'
      Origin = 'rab.tglpasang'
    end
    object StringField14: TStringField
      FieldName = 'flagaktif'
      Origin = 'rab.flagaktif'
      FixedChar = True
      Size = 1
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'waktupengaktifan'
      Origin = 'rab.waktupengaktifan'
    end
    object StringField15: TStringField
      FieldName = 'pekerjaan'
      Origin = 'rab.pekerjaan'
      Size = 50
    end
    object StringField16: TStringField
      FieldName = 'noktp'
      Origin = 'rab.noktp'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'namapemilik'
      Origin = 'rab.namapemilik'
      Size = 100
    end
    object StringField18: TStringField
      FieldName = 'kepemilikanbangunan'
      Origin = 'rab.kepemilikanbangunan'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'penghuni'
      Origin = 'rab.penghuni'
      Size = 3
    end
    object FloatField2: TFloatField
      FieldName = 'stanawalpasang'
      Origin = 'rab.stanawalpasang'
    end
    object StringField20: TStringField
      FieldName = 'sumberair'
      Origin = 'rab.sumberair'
      Size = 50
    end
    object StringField21: TStringField
      FieldName = 'nosambyangdiberikan'
      Size = 50
    end
  end
  object mem_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 496
    Top = 240
    object mem_noreg: TStringField
      FieldName = 'noreg'
    end
    object mem_grandtotal: TCurrencyField
      FieldName = 'grandtotal'
    end
    object mem_nohp: TStringField
      FieldName = 'nohp'
    end
    object mem_notelp: TStringField
      FieldName = 'notelp'
    end
    object mem_kodegol: TStringField
      FieldName = 'kodegol'
    end
    object mem_kodediameter: TStringField
      FieldName = 'kodediameter'
    end
    object mem_koderayon: TStringField
      FieldName = 'koderayon'
    end
    object mem_kodekolektif: TStringField
      FieldName = 'kodekolektif'
    end
    object mem_serimeter: TStringField
      FieldName = 'serimeter'
    end
    object mem_merkmeter: TStringField
      FieldName = 'merkmeter'
    end
    object mem_namapemilik: TStringField
      FieldName = 'namapemilik'
    end
    object mem_pekerjaan: TStringField
      FieldName = 'pekerjaan'
    end
    object mem_noktp: TStringField
      FieldName = 'noktp'
    end
    object mem_kepemilikanbangunan: TStringField
      FieldName = 'kepemilikanbangunan'
    end
    object mem_stanawalpasang: TCurrencyField
      FieldName = 'stanawalpasang'
    end
    object mem_sumberair: TStringField
      FieldName = 'sumberair'
    end
    object mem_penghuni: TStringField
      FieldName = 'penghuni'
    end
    object mem_flagpasang: TStringField
      FieldName = 'flagpasang'
    end
    object mem_tglpasang: TDateTimeField
      FieldName = 'tglpasang'
    end
    object mem_flagaktif: TStringField
      FieldName = 'flagaktif'
    end
    object mem_flaglunas: TStringField
      FieldName = 'flaglunas'
    end
    object mem_nosambyangdiberikan: TStringField
      FieldName = 'nosambyangdiberikan'
    end
    object mem_genap: TStringField
      FieldName = 'genap'
    end
    object mem_status: TStringField
      FieldName = 'status'
      Size = 100
    end
    object mem_validdate: TDateField
      FieldName = 'validdate'
    end
    object mem_waktubayar: TStringField
      FieldName = 'waktubayar'
    end
    object mem_waktupengaktifan: TStringField
      FieldName = 'waktupengaktifan'
    end
    object mem_norab: TStringField
      FieldName = 'norab'
      Size = 100
    end
    object mem_norumah: TStringField
      FieldName = 'norumah'
      Size = 50
    end
    object mem_rt: TStringField
      FieldName = 'rt'
      Size = 50
    end
    object mem_rw: TStringField
      FieldName = 'rw'
      Size = 50
    end
    object mem_tglrab: TDateField
      FieldName = 'tglrab'
    end
    object mem_alamat: TStringField
      FieldName = 'alamat'
      Size = 200
    end
    object mem_nama: TStringField
      FieldName = 'nama'
      Size = 200
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 216
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12016384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object MyDataSource2: TMyDataSource
    DataSet = data_
    Left = 80
    Top = 280
  end
  object data_: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 192
    Top = 176
    object data_uraian: TStringField
      FieldName = 'uraian'
      Size = 100
    end
    object data_jumlah: TIntegerField
      FieldName = 'jumlah'
    end
  end
end
