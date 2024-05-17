unit unit_perbaruidata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White, ActnList, ComCtrls,
  RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel;

type
  Tuperbaruidata = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    periode: TRzDateTimePicker;
    RzPanel8: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure noClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uperbaruidata: Tuperbaruidata;

implementation
uses DateUtils;
{$R *.dfm}

procedure Tuperbaruidata.noClick(Sender: TObject);
begin
  Close;
end;

procedure Tuperbaruidata.FormShow(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tuperbaruidata.okClick(Sender: TObject);
begin
    ModalResult:=mrOk;
end;

end.
