unit unitpengaturan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Menus, StdCtrls, cxButtons, ActnList,
  dxSkinOffice2013White;

type
  Tulokasifoto = class(TForm)
    cxLabel1: TcxLabel;
    btnKeluar: TcxButton;
    btnOK: TcxButton;
    lokasi: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulokasifoto: Tulokasifoto;

implementation

{$R *.dfm}  uses Module, DB;

procedure Tulokasifoto.btnKeluarClick(Sender: TObject);
begin
close;
end;

procedure Tulokasifoto.btnOKClick(Sender: TObject);
begin
DM.Qexec.close;
DM.Qexec.SQL.Clear;
DM.Qexec.SQL.Add('replace into lokasifoto (idx,lokasi,aktif) values ("1",:lokasi,:aktif)');
DM.Qexec.ParamByName('lokasi').AsString:=lokasi.Text;

if(lokasi.Text<>'')then
DM.Qexec.ParamByName('aktif').AsString:= '1'
else
DM.Qexec.ParamByName('aktif').AsString:= '0';

DM.Qexec.Execute;

close;



end;

procedure Tulokasifoto.FormShow(Sender: TObject);
begin
DM.Qcek.close;
DM.Qcek.SQL.Clear;
DM.Qcek.SQL.Add('select * FROM lokasifoto where idx="1"');
DM.Qcek.Open;

lokasi.Text:=DM.Qcek.fieldbyname('lokasi').AsString;
end;

end.
