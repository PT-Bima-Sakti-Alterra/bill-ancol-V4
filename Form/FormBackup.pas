unit FormBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DADump, MyDump, DB, DBAccess, MyAccess;

type
  TFbackup = class(TForm)
    Dump: TMyDump;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Dump2: TMyDump;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fbackup: TFbackup;

implementation

{$R *.dfm}uses Module,UnitMain;

end.
