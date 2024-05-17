object utloket: Tutloket
  Left = 369
  Top = 191
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Data Loket Pembayaran'
  ClientHeight = 401
  ClientWidth = 373
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 401
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object loket: TcxTextEdit
      Left = 94
      Top = 80
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 235
    end
    object btnOK: TcxButton
      Left = 66
      Top = 358
      Width = 114
      Height = 30
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = btnOKClick
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 185
      Top = 358
      Width = 116
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object kodeloket: TcxTextEdit
      Left = 94
      Top = 56
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 153
    end
    object cxLabel3: TcxLabel
      Left = 30
      Top = 170
      Caption = 'No.Telp'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object notelp: TcxTextEdit
      Left = 94
      Top = 170
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 32
      Top = 194
      Caption = 'No. Hp'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object nohp: TcxTextEdit
      Left = 94
      Top = 194
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 408
      Top = 192
      Caption = 'Penanggung Jawab'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object pj: TcxTextEdit
      Left = 534
      Top = 192
      TabStop = False
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 153
    end
    object cxLabel7: TcxLabel
      Left = 34
      Top = 242
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
    object status: TcxComboBox
      Left = 94
      Top = 242
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Non Aktif'
        'Aktif')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Text = 'Non Aktif'
      Width = 97
    end
    object alamat: TcxMemo
      Left = 94
      Top = 128
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 41
      Width = 235
    end
    object kodewil2: TcxComboBox
      Left = 94
      Top = 104
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = kodewil2PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 73
    end
    object wilayah2: TcxComboBox
      Left = 166
      Top = 104
      TabStop = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = wilayah2PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 163
    end
    object cxLabel1: TcxLabel
      Left = 33
      Top = 128
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
    object cxLabel2: TcxLabel
      Left = 36
      Top = 104
      Caption = 'Lokasi'
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
      Left = 40
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
    object cxLabel8: TcxLabel
      Left = 42
      Top = 56
      Caption = 'Kode'
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
      Left = 37
      Top = 218
      Caption = 'Serial'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object serial: TcxTextEdit
      Left = 94
      Top = 218
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 235
    end
    object RzPanel4: TRzPanel
      Left = 38
      Top = 295
      Width = 289
      Height = 52
      BorderOuter = fsFlat
      BorderColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      object cxLabel10: TcxLabel
        Left = 20
        Top = 0
        Caption = 'Status Mitra'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object flagMitra: TcxComboBox
        Left = 19
        Top = 21
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Non Aktif'
          'Aktif')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Open Sans Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Text = 'Non Aktif'
        Width = 97
      end
      object admMitra: TcxCurrencyEdit
        Left = 162
        Top = 21
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;(,0.)'
        Properties.EditFormat = ',0.;(,0.)'
        Properties.Nullable = False
        Properties.Nullstring = '0'
        Properties.ReadOnly = False
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
        Width = 108
      end
      object cxLabel11: TcxLabel
        Left = 164
        Top = 2
        Caption = 'Admin Mitra'
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
    object RzPanel2: TRzPanel
      Left = 6
      Top = 6
      Width = 361
      Height = 33
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DATA LOKET'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object cxLabel12: TcxLabel
      Left = 35
      Top = 269
      AutoSize = False
      Caption = 'Khusus Loket Mitra : '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Transparent = True
      Height = 21
      Width = 182
    end
  end
  object ActionList1: TActionList
    Left = 448
    Top = 96
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = btnOKClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton2Click
    end
  end
end
