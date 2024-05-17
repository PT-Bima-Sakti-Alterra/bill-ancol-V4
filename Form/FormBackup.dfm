object Fbackup: TFbackup
  Left = 409
  Top = 135
  BorderStyle = bsToolWindow
  Caption = 'Backup Database'
  ClientHeight = 171
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Dump: TMyDump
    Connection = DM.Conn
    Objects = [doDatabase, doStoredProcs, doTables, doData, doViews, doTriggers]
    Options.CompleteInsert = True
    Left = 88
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.sql'
    FileName = '*.sql'
    Filter = '*.sql|*.sql'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 144
    Top = 80
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 40
  end
  object Dump2: TMyDump
    Connection = Umain.host
    Objects = [doDatabase, doStoredProcs, doTables, doData, doViews, doTriggers]
    Options.CompleteInsert = True
    Left = 128
    Top = 16
  end
end
