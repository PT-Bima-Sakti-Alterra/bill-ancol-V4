unit unitdaftarmaterial;

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
  Tudaftarmaterial = class(TForm)
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
  udaftarmaterial: Tudaftarmaterial;

implementation

uses UnitMain;

{$R *.dfm}

procedure Tudaftarmaterial.cariClick(Sender: TObject);
begin

  TRY
  Umain.openkoneksi_gudang;


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
    Qcek.SQL.Add('SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabeli as harga,hargajual as harganet FROM barang  WHERE deskripsi LIKE CONCAT("%",:nama,"%") ORDER BY deskripsi ASC')
    else
    Qcek.SQL.Add('SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabeli as harga,hargajual as harganet FROM barang_limbah  WHERE deskripsi LIKE CONCAT("%",:nama,"%") ORDER BY deskripsi ASC');
    
    Qcek.ParamByName('nama').AsString:=nama.Text;
    Qcek.Open;

  end
  else
  begin

    Qcek.close;
    Qcek.SQL.Clear;

    if _limbah='0' then
    Qcek.SQL.Add('SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabeli as harga,hargajual as harganet FROM barang ORDER BY deskripsi ASC')
    else
    Qcek.SQL.Add('SELECT kodebarang,deskripsi as namabarang,unit as satuan,hargabeli as harga,hargajual as harganet FROM barang_limbah ORDER BY deskripsi ASC');
    
    Qcek.Open;

  end;
end;

procedure Tudaftarmaterial.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tudaftarmaterial.cxGridDBTableView5CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if(Qcek.RecordCount>0)then
  begin
    qty.Value:=0;
    keterangan.Clear;
    panelqty.Visible:=true;
    qty.SetFocus;
  end;
end;

procedure Tudaftarmaterial.noClick(Sender: TObject);
begin
panelqty.Visible:=false;
end;

procedure Tudaftarmaterial.okClick(Sender: TObject);
begin
ModalResult:=MrOk;
end;

end.
