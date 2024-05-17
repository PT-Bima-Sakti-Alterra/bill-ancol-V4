unit unitdaftarongkos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS, cxContainer,
  cxTextEdit, cxLabel, Menus, StdCtrls, cxButtons, ActnList, cxMaskEdit, cxDropDownEdit;

type
  Tudaftarongkos = class(TForm)
    RzPanel24: TRzPanel;
    RzPanel8: TRzPanel;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Qcek: TMyQuery;
    DScek: TMyDataSource;
    cxLabel2: TcxLabel;
    nama: TcxTextEdit;
    cari: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    panelqty: TRzPanel;
    cxLabel1: TcxLabel;
    qty: TcxCurrencyEdit;
    ok: TcxButton;
    no: TcxButton;
    cxLabel3: TcxLabel;
    keterangan: TcxComboBox;
    procedure cariClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure cxGridDBTableView5CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _limbah:String;
  end;

var
  udaftarongkos: Tudaftarongkos;

implementation

uses UnitMain;

{$R *.dfm}

procedure Tudaftarongkos.cariClick(Sender: TObject);
begin

  TRY
  Umain.openkoneksi_host;


  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;


  panelqty.Visible:=false;


  if(nama.Text<>'')then
  begin

    Qcek.close;
    Qcek.SQL.Clear;

    if _limbah='0' then
    Qcek.SQL.Add('select * FROm ongkos WHERE namaongkos LIKE CONCAT("%",:nama,"%") ORDER BY namaongkos ASC')
    else
    Qcek.SQL.Add('select * FROm ongkos_limbah WHERE namaongkos LIKE CONCAT("%",:nama,"%") ORDER BY namaongkos ASC');

    Qcek.ParamByName('nama').AsString:=nama.Text;
    Qcek.Open;

  end
  else
  begin

    Qcek.close;
    Qcek.SQL.Clear;

    if _limbah='0' then
    Qcek.SQL.Add('select * FROm ongkos ORDER BY namaongkos ASC')
    else
    Qcek.SQL.Add('select * FROm ongkos_limbah ORDER BY namaongkos ASC');

    Qcek.Open;

  end;
end;

procedure Tudaftarongkos.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tudaftarongkos.cxGridDBTableView5CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if(Qcek.RecordCount>0)then
  begin
    qty.Value:=0;
    panelqty.Visible:=true;
    qty.SetFocus;
  end;
end;

procedure Tudaftarongkos.noClick(Sender: TObject);
begin
panelqty.Visible:=false;
end;

procedure Tudaftarongkos.okClick(Sender: TObject);
begin
ModalResult:=MrOk;
end;

end.
