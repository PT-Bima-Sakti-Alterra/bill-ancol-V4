unit UnitVerifikasiPemutihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White,
  Menus, ActnList, cxLabel, StdCtrls, cxButtons, cxTextEdit, ExtCtrls,
  RzPanel, ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TUverifikasipemutihan = class(TForm)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RzPanel8: TRzPanel;
    cxLabel1: TcxLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    tanggal: TcxDateEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Uverifikasipemutihan: TUverifikasipemutihan;

implementation

{$R *.dfm}

procedure TUverifikasipemutihan.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TUverifikasipemutihan.cxButton2Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TUverifikasipemutihan.FormCreate(Sender: TObject);
begin
tanggal.Date:=Date;
end;

end.
