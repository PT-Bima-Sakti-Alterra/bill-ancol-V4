unit FRAME_logakses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, RzButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MemDS, DBAccess, MyAccess, cxContainer, cxLabel,
  ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox, Menus, cxButtons, dxSkinOffice2013White,
  dxSkiniMaginary;

type
  TFRlogakses = class(TFrame)
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzPanel1: TRzPanel;
    RzPanel3: TRzPanel;
    RzToolbar1: TRzToolbar;
    refresh: TRzToolButton;
    RzSpacer1: TRzSpacer;
    Gridhis: TcxGrid;
    GridhisDBTableView1: TcxGridDBTableView;
    GridhisDBTableView1waktu: TcxGridDBColumn;
    GridhisDBTableView1user: TcxGridDBColumn;
    GridhisDBTableView1uraian: TcxGridDBColumn;
    GridhisLevel1: TcxGridLevel;
    GridhisDBTableView1Column1: TcxGridDBColumn;
    DSlog: TMyDataSource;
    Qlog: TMyQuery;
    cxLabel22: TcxLabel;
    cxLabel2: TcxLabel;
    date1: TcxDateEdit;
    cxLabel3: TcxLabel;
    date2: TcxDateEdit;
    cekuser: TcxCheckBox;
    user: TcxComboBox;
    tampilkan: TcxButton;
    procedure tampilkanClick(Sender: TObject);
    procedure cekuserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}  uses module;

procedure TFRlogakses.tampilkanClick(Sender: TObject);
begin
Qlog.close;
Qlog.SQL.Clear;
Qlog.SQL.Add('SELECT * FROM logakses WHERE DATE(waktu) >= :date1 AND DATE(waktu) <= :date2 ');
if(cekuser.Checked=true)then
begin
  Qlog.SQL.Add('AND user=:user');
  Qlog.ParamByName('user').AsString:=user.Text;
end;;

Qlog.SQL.add('ORDER BY waktu DESC');
Qlog.ParamByName('date1').AsDate:=date1.date;
Qlog.ParamByName('date2').AsDate:=date2.date;

Qlog.Open;
end;

procedure TFRlogakses.cekuserClick(Sender: TObject);
begin
if(cekuser.Checked=true)then
  user.Enabled:=true
else
  user.Enabled:=false;
end;

end.
