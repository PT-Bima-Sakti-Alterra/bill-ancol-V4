unit UnitPilihPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White,
  cxLabel, ComCtrls, RzDTP, Menus, StdCtrls, cxButtons, ExtCtrls, RzPanel,
  ActnList;

type
  TUpilihperiode = class(TForm)
    RzPanel1: TRzPanel;
    periode1: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    periode2: TRzDateTimePicker;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    info: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Upilihperiode: TUpilihperiode;

implementation

{$R *.dfm}      uses DateUtils;

procedure TUpilihperiode.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TUpilihperiode.FormShow(Sender: TObject);
begin
periode1.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
periode2.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure TUpilihperiode.cxButton1Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

end.
