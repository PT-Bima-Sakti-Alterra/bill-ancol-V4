unit unitdaftarjabatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  ActnList, DBAccess, MyAccess, MemDS, RzPanel, RzButton, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxSkinOffice2013White, StdCtrls,
  RzLabel, cxContainer, cxLabel, dxSkiniMaginary, Menus, cxButtons;
type
  Tudaftarjabatan = class(TForm)
    Qjab: TMyQuery;
    DSjab: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel16: TRzPanel;
    koreksi: TcxButton;
    tambah: TcxButton;
    refresh: TcxButton;
    hapus: TcxButton;
    RzPanel8: TRzPanel;
    procedure refreshClick(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udaftarjabatan: Tudaftarjabatan;

implementation

{$R *.dfm} uses Module, unithakakses;

procedure Tudaftarjabatan.refreshClick(Sender: TObject);
begin
Qjab.close;
Qjab.SQL.Clear;
Qjab.SQL.Add('select * FROm hakakses ORDER BY hak_akses ASC');
Qjab.Open;
end;

procedure Tudaftarjabatan.koreksiClick(Sender: TObject);
begin
DM.Xkey:='Koreksi';
DM.Xid:=Qjab.fieldbyname('id').AsInteger;

uhakakses.hakakses_awal:=Qjab.fieldbyname('hak_akses').AsString;
uhakakses.hakakses.Text:=Qjab.fieldbyname('hak_akses').AsString;


  if(Qjab.fieldbyname('akses_laporan').AsString='1')then
        uhakakses.akses_laporan.Checked:=true
  else
        uhakakses.akses_laporan.Checked:=false;



  if(Qjab.fieldbyname('akses_daftar_pelanggan').AsString='1')then
        uhakakses.akses_daftar_pelanggan.Checked:=true
  else
        uhakakses.akses_daftar_pelanggan.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_tunggu').AsString='1')then
        uhakakses.akses_daftar_tunggu.Checked:=true
  else
        uhakakses.akses_daftar_tunggu.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_rekening').AsString='1')then
        uhakakses.akses_daftar_rekening.Checked:=true
  else
        uhakakses.akses_daftar_rekening.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_sambunganbaru').AsString='1')then
        uhakakses.akses_daftar_sambunganbaru.Checked:=true
  else
        uhakakses.akses_daftar_sambunganbaru.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_angsuran').AsString='1')then
        uhakakses.akses_daftar_angsuran.Checked:=true
  else
        uhakakses.akses_daftar_angsuran.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_periode').AsString='1')then
        uhakakses.akses_daftar_periode.Checked:=true
  else
        uhakakses.akses_daftar_periode.Checked:=false;

  if(Qjab.fieldbyname('akses_upload_drd').AsString='1')then
        uhakakses.akses_upload_drd.Checked:=true
  else
        uhakakses.akses_upload_drd.Checked:=false;

  if(Qjab.fieldbyname('akses_download_transaksi').AsString='1')then
        uhakakses.akses_download_transaksi.Checked:=true
  else
        uhakakses.akses_download_transaksi.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_tarif').AsString='1')then
        uhakakses.akses_daftar_tarif.Checked:=true
  else
        uhakakses.akses_daftar_tarif.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_area').AsString='1')then
        uhakakses.akses_daftar_area.Checked:=true
  else
        uhakakses.akses_daftar_area.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_unitpelayanan').AsString='1')then
        uhakakses.akses_daftar_unitpelayanan.Checked:=true
  else
        uhakakses.akses_daftar_unitpelayanan.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_pengguna').AsString='1')then
        uhakakses.akses_daftar_pengguna.Checked:=true
  else
        uhakakses.akses_daftar_pengguna.Checked:=false;

  if(Qjab.fieldbyname('akses_daftar_lainnya').AsString='1')then
        uhakakses.akses_daftar_lainnya.Checked:=true
  else
        uhakakses.akses_daftar_lainnya.Checked:=false;

  if(Qjab.fieldbyname('akses_tools').AsString='1')then
        uhakakses.akses_tools.Checked:=true
  else
        uhakakses.akses_tools.Checked:=false;


        

  if(Qjab.fieldbyname('olah_data_pelanggan').AsString='1')then
        uhakakses.olah_data_pelanggan.Checked:=true
  else
        uhakakses.olah_data_pelanggan.Checked:=false;

  if(Qjab.fieldbyname('olah_daftar_tunggu').AsString='1')then
        uhakakses.olah_daftar_tunggu.Checked:=true
  else
        uhakakses.olah_daftar_tunggu.Checked:=false;

   if(Qjab.fieldbyname('olah_sambbaru').AsString='1')then
        uhakakses.olah_sambbaru.Checked:=true
  else
        uhakakses.olah_sambbaru.Checked:=false;


  if(Qjab.fieldbyname('olah_data_rekening').AsString='1')then
        uhakakses.olah_data_rekening.Checked:=true
  else
        uhakakses.olah_data_rekening.Checked:=false;



  if(Qjab.fieldbyname('publish_rekening').AsString='1')then
        uhakakses.publish_rekening.Checked:=true
  else
        uhakakses.publish_rekening.Checked:=false;

  if(Qjab.fieldbyname('unpublish_rekening').AsString='1')then
        uhakakses.unpublish_rekening.Checked:=true
  else
        uhakakses.unpublish_rekening.Checked:=false;

  if(Qjab.fieldbyname('olah_data_angsuran').AsString='1')then
        uhakakses.olah_data_angsuran.Checked:=true
  else
        uhakakses.olah_data_angsuran.Checked:=false;

  if(Qjab.fieldbyname('olah_data_periode').AsString='1')then
        uhakakses.olah_data_periode.Checked:=true
  else
        uhakakses.olah_data_periode.Checked:=false;

  if(Qjab.fieldbyname('olah_data_tarif').AsString='1')then
        uhakakses.olah_data_tarif.Checked:=true
  else
        uhakakses.olah_data_tarif.Checked:=false;

  if(Qjab.fieldbyname('olah_data_area').AsString='1')then
        uhakakses.olah_data_area.Checked:=true
  else
        uhakakses.olah_data_area.Checked:=false;

  if(Qjab.fieldbyname('olah_data_unit').AsString='1')then
        uhakakses.olah_data_unit.Checked:=true
  else
        uhakakses.olah_data_unit.Checked:=false;

  if(Qjab.fieldbyname('olah_data_lainnya').AsString='1')then
        uhakakses.olah_data_lainnya.Checked:=true
  else
        uhakakses.olah_data_lainnya.Checked:=false;

  if(Qjab.fieldbyname('olah_data_pengguna').AsString='1')then
        uhakakses.olah_data_pengguna.Checked:=true
  else
        uhakakses.olah_data_pengguna.Checked:=false;


  if(Qjab.fieldbyname('lunasi_angsuran').AsString='1')then
        uhakakses.lunasi_angsuran.Checked:=true
  else
        uhakakses.lunasi_angsuran.Checked:=false;

   if(Qjab.fieldbyname('posting').AsString='1')then
        uhakakses.posting.Checked:=true
  else
        uhakakses.posting.Checked:=false;

   if(Qjab.fieldbyname('olah_penghapusan_piutang').AsString='1')then
        uhakakses.olah_penghapusan_piutang.Checked:=true
  else
        uhakakses.olah_penghapusan_piutang.Checked:=false;




  if uhakakses.showmodal=mrOK then
  begin
       refresh.Click;

  end;


end;

procedure Tudaftarjabatan.tambahClick(Sender: TObject);
begin
DM.Xkey:='Tambah';
if uhakakses.showmodal=MrOk then
begin
   Qjab.Refresh;
end;

end;

procedure Tudaftarjabatan.hapusClick(Sender: TObject);
begin
if not Qjab.Eof then
  begin
    if MessageDlg('Yakin Akan Menghapus Hak Akses "'+Qjab.fieldbyname('hak_akses').AsString+'" ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      with dm do
      begin
        Qexec.Close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('delete from hakakses where id=:id');
        Qexec.ParamByName('id').AsInteger := Qjab.fieldbyname('id').AsInteger;
        Qexec.Execute;
      end;
      Qjab.Refresh;
    end;
  end;
end;

procedure Tudaftarjabatan.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tudaftarjabatan.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksi.Click;
end;

end.
