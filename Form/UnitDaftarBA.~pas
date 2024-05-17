unit UnitDaftarBA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, DB, MemDS, DBAccess, MyAccess, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkiniMaginary, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ActnList;

type
  TUdaftarBA = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    MyDataSource1: TMyDataSource;
    Qcek: TMyQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    ActionList1: TActionList;
    Action1: TAction;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UdaftarBA: TUdaftarBA;

implementation

{$R *.dfm}  uses UnitMain;

procedure TUdaftarBA.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
if Qcek.RecordCount>0 then
begin

    ModalResult:=mrOk;

end;
end;

procedure TUdaftarBA.Action1Execute(Sender: TObject);
begin
Close;
end;

end.
