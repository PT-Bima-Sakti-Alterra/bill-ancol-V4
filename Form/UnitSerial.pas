unit unitserial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2013White,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit,
  ActnList;

type
  Tuserial = class(TForm)
    info: TRzPanel;
    RzPanel1: TRzPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    ketikan: TcxTextEdit;
    id: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    seri:String;
  end;

var
  userial: Tuserial;

implementation

{$R *.dfm}

procedure Tuserial.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tuserial.cxButton2Click(Sender: TObject);
begin
  if( seri<>ketikan.Text) then
  begin
      MessageDlg('Nomor Seri salah !!', mtWarning, [MbOk], 0);
      exit;
  end;

  ModalResult:=MrOk;

end;

end.