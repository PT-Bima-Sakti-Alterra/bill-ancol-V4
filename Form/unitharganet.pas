unit unitharganet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxTextEdit,
  cxCurrencyEdit, cxLabel, ExtCtrls, RzPanel, Menus, StdCtrls, cxButtons,
  ActnList;

type
  Tuharganet = class(TForm)
    cPanel: TRzPanel;
    cxLabel3: TcxLabel;
    harga: TcxCurrencyEdit;
    info: TRzPanel;
    button: TcxButton;
    cxButton2: TcxButton;
    ActionList2: TActionList;
    Action3: TAction;
    Action4: TAction;
    procedure cxButton2Click(Sender: TObject);
    procedure buttonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uharganet: Tuharganet;

implementation

{$R *.dfm}

procedure Tuharganet.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tuharganet.buttonClick(Sender: TObject);
begin
ModalResult:=MrOk;
end;

procedure Tuharganet.FormShow(Sender: TObject);
begin
harga.SetFocus;
end;

end.
