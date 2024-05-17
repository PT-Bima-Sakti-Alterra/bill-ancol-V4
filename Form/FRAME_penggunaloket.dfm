object FRuserloket: TFRuserloket
  Left = 0
  Top = 0
  Width = 1451
  Height = 736
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans Semibold'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object RzPanel1: TRzPanel
    Left = 768
    Top = 0
    Width = 683
    Height = 736
    Align = alRight
    BorderOuter = fsNone
    TabOrder = 0
    object RzPanel3: TRzPanel
      Left = 0
      Top = 0
      Width = 49
      Height = 736
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
    end
    object RzPanel5: TRzPanel
      Left = 49
      Top = 0
      Width = 634
      Height = 736
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      object RzPanel7: TRzPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 30
        Align = alTop
        BorderOuter = fsNone
        BorderColor = clBlack
        Caption = 'DAFTAR PENGGUNA BSHL - BSPRC - BSDIST'
        Color = 20966
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RzPanel9: TRzPanel
        Left = 0
        Top = 30
        Width = 634
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object koreksi2: TcxButton
          Left = 201
          Top = 0
          Width = 96
          Height = 41
          Caption = 'Koreksi'
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
          OnClick = koreksi2Click
          Align = alLeft
          OptionsImage.ImageIndex = 22
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object tambah2: TcxButton
          Left = 105
          Top = 0
          Width = 96
          Height = 41
          Caption = 'Tambah'
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
          OnClick = tambah2Click
          Align = alLeft
          OptionsImage.ImageIndex = 24
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object refresh2: TcxButton
          Left = 0
          Top = 0
          Width = 105
          Height = 41
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
          OnClick = refresh2Click
          Align = alLeft
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object hapus2: TcxButton
          Left = 297
          Top = 0
          Width = 104
          Height = 41
          Caption = 'Hapus'
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
          OnClick = hapus2Click
          Align = alLeft
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 71
        Width = 634
        Height = 665
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.SkinName = 'iMaginary'
        object cxGridDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = cxGridDBTableView1CellDblClick
          DataController.DataSource = DSbshl
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
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
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          Styles.Selection = cxStyle1
          object cxGridDBTableView1flagaktif: TcxGridDBColumn
            Caption = 'Aktif'
            DataBinding.FieldName = 'flagaktif'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DM.png16
            Properties.Items = <
              item
                ImageIndex = 15
                Value = '0'
              end
              item
                ImageIndex = 17
                Value = '1'
              end>
            HeaderAlignmentHorz = taCenter
            Width = 37
          end
          object cxGridDBTableView1nama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
            HeaderAlignmentHorz = taCenter
            Width = 123
          end
          object cxGridDBTableView1namauser: TcxGridDBColumn
            Caption = 'Username'
            DataBinding.FieldName = 'namauser'
            HeaderAlignmentHorz = taCenter
            Width = 117
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Hak Akses'
            DataBinding.FieldName = 'hakakses'
            HeaderAlignmentHorz = taCenter
            Width = 165
          end
          object cxGridDBTableView1kodeloket: TcxGridDBColumn
            Caption = 'Kode Loket'
            DataBinding.FieldName = 'kodeloket'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 736
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object RzPanel4: TRzPanel
      Left = 0
      Top = 30
      Width = 768
      Height = 706
      Align = alClient
      BorderOuter = fsNone
      Color = clWhite
      TabOrder = 0
      object RzPanel6: TRzPanel
        Left = 0
        Top = 0
        Width = 768
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object labelToken: TRzLabel
          Left = 699
          Top = 0
          Width = 69
          Height = 41
          Align = alRight
          Alignment = taRightJustify
          Caption = 'TOKEN OFF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Open Sans Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Blinking = True
          BlinkIntervalOff = 700
          BlinkIntervalOn = 600
          Rotation = roFlat
        end
        object koreksi: TcxButton
          Left = 160
          Top = 0
          Width = 80
          Height = 41
          Caption = 'Koreksi'
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
          OnClick = koreksiClick
          Align = alLeft
          OptionsImage.ImageIndex = 22
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object tambah: TcxButton
          Left = 80
          Top = 0
          Width = 80
          Height = 41
          Caption = 'Tambah'
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
          OnClick = tambahClick
          Align = alLeft
          OptionsImage.ImageIndex = 24
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object refresh: TcxButton
          Left = 0
          Top = 0
          Width = 80
          Height = 41
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
        object hapus: TcxButton
          Left = 240
          Top = 0
          Width = 80
          Height = 41
          Caption = 'Hapus'
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
          OnClick = hapusClick
          Align = alLeft
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object rubahpassword: TcxButton
          Left = 320
          Top = 0
          Width = 145
          Height = 41
          Caption = 'Rubah Password'
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
          Visible = False
          OnClick = rubahpasswordClick
          Align = alLeft
          OptionsImage.ImageIndex = 36
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
        object OnOffToken: TcxButton
          Left = 465
          Top = 0
          Width = 145
          Height = 41
          Caption = 'On / Off Token'
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
          OnClick = OnOffTokenClick
          Align = alLeft
          LookAndFeel.Kind = lfFlat
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = DM.png24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 768
        Height = 665
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Open Sans Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.SkinName = 'iMaginary'
        object cxGrid1DBTableView1: TcxGridDBTableView
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
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = Dsuser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
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
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          Styles.Selection = cxStyle1
          object cxGrid1DBTableView1flagaktif: TcxGridDBColumn
            Caption = 'Aktif'
            DataBinding.FieldName = 'flagaktif'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DM.png16
            Properties.Items = <
              item
                ImageIndex = 15
                Value = '0'
              end
              item
                ImageIndex = 17
                Value = '1'
              end>
            HeaderAlignmentHorz = taCenter
            Width = 38
          end
          object cxGrid1DBTableView1nama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
            HeaderAlignmentHorz = taCenter
            Width = 250
          end
          object cxGrid1DBTableView1namauser: TcxGridDBColumn
            Caption = 'Username'
            DataBinding.FieldName = 'namauser'
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
          object cxGrid1DBTableView1kodeloket: TcxGridDBColumn
            Caption = 'Kode Loket'
            DataBinding.FieldName = 'kodeloket'
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object cxGrid1DBTableView1pusat: TcxGridDBColumn
            Caption = 'Pusat'
            DataBinding.FieldName = 'pusat'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DM.png16
            Properties.Items = <
              item
                ImageIndex = 15
                Value = '0'
              end
              item
                ImageIndex = 17
                Value = '1'
              end>
            Visible = False
            Width = 47
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object RzPanel8: TRzPanel
      Left = 0
      Top = 0
      Width = 768
      Height = 30
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'DAFTAR PENGGUNA LOKET'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Quser: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT * FROM userloket u,userloket_hakakses h WHERE u.nama=h.na' +
        'ma AND u.nama=:nama')
    SQLLock.Strings = (
      
        'SELECT * FROM userloket u,userloket_hakakses h WHERE u.nama=h.na' +
        'ma ORDER BY u.nama ASC;')
    Connection = Umain.host
    SQL.Strings = (
      
        'SELECT * FROM userloket u,userloket_hakakses h WHERE u.nama=h.na' +
        'ma ORDER BY nama ASC;')
    Left = 152
    Top = 144
    object Qusernama: TStringField
      FieldName = 'nama'
      Size = 30
    end
    object Qusernamauser: TStringField
      FieldName = 'namauser'
    end
    object Quserpassworduser: TStringField
      FieldName = 'passworduser'
      Size = 200
    end
    object Quserpusat: TStringField
      FieldName = 'pusat'
      FixedChar = True
      Size = 1
    end
    object Quserkodeloket: TStringField
      FieldName = 'kodeloket'
      Size = 50
    end
    object Quserflagaktif: TStringField
      FieldName = 'flagaktif'
      FixedChar = True
      Size = 1
    end
    object Quserbolehpelunasan: TStringField
      FieldName = 'bolehpelunasan'
      FixedChar = True
      Size = 1
    end
    object Quserbolehcetaklpp: TStringField
      FieldName = 'bolehcetaklpp'
      FixedChar = True
      Size = 1
    end
    object Quserbolehpembatalan: TStringField
      FieldName = 'bolehpembatalan'
      FixedChar = True
      Size = 1
    end
    object Quserbolehcetakulang: TStringField
      FieldName = 'bolehcetakulang'
      FixedChar = True
      Size = 1
    end
    object Quserbolehkoreksidenda: TStringField
      FieldName = 'bolehkoreksidenda'
      FixedChar = True
      Size = 1
    end
    object Quserbolehrubahtanggalbayar: TStringField
      FieldName = 'bolehrubahtanggalbayar'
      FixedChar = True
      Size = 1
    end
    object Quserbolehpembatalankasirlain: TStringField
      FieldName = 'bolehpembatalankasirlain'
      FixedChar = True
      Size = 1
    end
    object Quserbolehpelunasannonair: TStringField
      FieldName = 'bolehpelunasannonair'
      FixedChar = True
      Size = 1
    end
    object Quserbolehpembatalantanggallain: TStringField
      FieldName = 'bolehpembatalantanggallain'
      FixedChar = True
      Size = 1
    end
    object Quserbolehloncatbulan: TStringField
      FieldName = 'bolehloncatbulan'
      FixedChar = True
      Size = 1
    end
    object Qusertagihan: TIntegerField
      FieldName = 'tagihan'
    end
    object Quserangsuran: TIntegerField
      FieldName = 'angsuran'
    end
    object Qusertunggakan: TIntegerField
      FieldName = 'tunggakan'
    end
    object Quserpenerimaan: TIntegerField
      FieldName = 'penerimaan'
    end
    object Quserlaporan: TIntegerField
      FieldName = 'laporan'
    end
    object Qusertutuploket: TIntegerField
      FieldName = 'tutuploket'
    end
    object Qusersetoran: TIntegerField
      FieldName = 'setoran'
    end
    object Quserinfoloket: TIntegerField
      FieldName = 'infoloket'
    end
    object Quserkwitansimanual: TIntegerField
      FieldName = 'kwitansimanual'
    end
  end
  object Dsuser: TMyDataSource
    DataSet = Quser
    Left = 272
    Top = 192
  end
  object Qexec: TMyQuery
    SQLRefresh.Strings = (
      'select * FROM userloket ORDER BY nama ASC')
    Connection = Umain.host
    SQL.Strings = (
      'select * FROM userloket ORDER BY nama ASC')
    Left = 136
    Top = 280
  end
  object Qcek: TMyQuery
    SQLRefresh.Strings = (
      'select * FROM userloket ORDER BY nama ASC')
    Connection = Umain.host
    SQL.Strings = (
      'select * FROM userloket ORDER BY nama ASC')
    Left = 136
    Top = 368
  end
  object Qbshl: TMyQuery
    SQLRefresh.Strings = (
      'select * FROm userbshl WHERE nama=:nama')
    SQLLock.Strings = (
      'select * FROm userbshl')
    Connection = Umain.host
    Left = 984
    Top = 168
  end
  object DSbshl: TMyDataSource
    DataSet = Qbshl
    Left = 1104
    Top = 216
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12016384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object QcekToken: TMyQuery
    Connection = DM.Conn
    Left = 648
    Top = 88
  end
end
