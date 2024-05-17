object upass: Tupass
  Left = 843
  Top = 333
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Masukkan Password User Anda'
  ClientHeight = 236
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 259
    Height = 236
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object password: TcxTextEdit
      Left = 24
      Top = 71
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = SYMBOL_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Open Sans'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 209
    end
    object cxButton1: TcxButton
      Left = 130
      Top = 189
      Width = 103
      Height = 30
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object cxButton2: TcxButton
      Left = 26
      Top = 189
      Width = 103
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = cxButton2Click
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.png16
      SpeedButtonOptions.CanBeFocused = False
    end
    object RzPanel8: TRzPanel
      Left = 6
      Top = 6
      Width = 247
      Height = 27
      Align = alTop
      BorderOuter = fsNone
      BorderColor = clBlack
      Caption = 'MASUKKAN PASSWORD'
      Color = 20966
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object alasan: TcxComboBox
      Left = 24
      Top = 122
      AutoSize = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'KESALAHAN PEMBACA METER'
        'KESALAHAN INPUT'
        'HASIL AKURASI METER'
        'SK DIREKSI'
        'KESALAHAN SISTEM'
        'AIR TIDAK LANCAR'
        'METER RUSAK'
        'METER BARU TERIDENTIFIKASI'
        'GANTI METER'
        'KEBERATAN BAYAR'
        'ADA KEBOCORAN'
        'KOMPLIKASI')
      Properties.OnChange = alasanPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 25
      Width = 209
    end
    object cxLabel80: TcxLabel
      Left = 24
      Top = 102
      Caption = 'Alasan Koreksi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 51
      Caption = 'Password'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object perhitungan: TcxTextEdit
      Left = 104
      Top = 157
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Visible = False
      Width = 131
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 158
      Caption = 'Hasil AKurasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Open Sans Semibold'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
  end
  object ActionList1: TActionList
    Left = 288
    Top = 65528
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = cxButton2Click
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 27
      OnExecute = cxButton1Click
    end
  end
end
