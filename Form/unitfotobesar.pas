unit unitfotobesar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Menus, StdCtrls, cxButtons, ActnList,
  dxSkinOffice2013White, cxImage, RzLabel, ExtCtrls,
  RzPanel;

type
  Tufotobesar = class(TForm)
    RzLabel1: TRzLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    RzPanel1: TRzPanel;
    foto: TcxImage;
    procedure fotoDblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufotobesar: Tufotobesar;

implementation

{$R *.dfm}

procedure Tufotobesar.fotoDblClick(Sender: TObject);
begin
close;
end;

procedure Tufotobesar.Action1Execute(Sender: TObject);
begin
close;
end;

procedure Tufotobesar.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tufotobesar.Action3Execute(Sender: TObject);
begin
close;
end;

procedure Tufotobesar.Action4Execute(Sender: TObject);
begin
close;
end;

end.
