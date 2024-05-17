object uloading: Tuloading
  Left = 560
  Top = 345
  BorderStyle = bsNone
  Caption = 'uloading'
  ClientHeight = 86
  ClientWidth = 230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object cPanel: TRzPanel
    Left = 0
    Top = 0
    Width = 230
    Height = 86
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = clWhite
    BorderWidth = 5
    TabOrder = 0
    object proses: TRzLabel
      Left = 16
      Top = 16
      Width = 111
      Height = 17
      AutoSize = False
      Caption = 'Harap menunggu...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      BlinkIntervalOff = 400
      BlinkIntervalOn = 600
    end
    object Progress: TRzProgressBar
      Left = 16
      Top = 42
      Width = 201
      Height = 23
      BorderOuter = fsFlat
      BorderWidth = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Open Sans Semibold'
      Font.Style = []
      InteriorOffset = 0
      ParentFont = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
      Visible = False
    end
  end
end
