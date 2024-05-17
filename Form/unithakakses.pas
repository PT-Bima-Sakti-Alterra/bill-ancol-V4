unit unithakakses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxLabel,
  cxTextEdit, ExtCtrls, RzPanel, cxCheckBox, Menus, StdCtrls, cxButtons,
  DB, MemDS, DBAccess, MyAccess, ActnList;

type
  Tuhakakses = class(TForm)
    RzPanel1: TRzPanel;
    hakakses: TcxTextEdit;
    cxLabel1: TcxLabel;
    akses_laporan: TcxCheckBox;
    akses_daftar_pelanggan: TcxCheckBox;
    akses_daftar_rekening: TcxCheckBox;
    akses_daftar_sambunganbaru: TcxCheckBox;
    akses_daftar_angsuran: TcxCheckBox;
    akses_daftar_periode: TcxCheckBox;
    akses_upload_drd: TcxCheckBox;
    akses_download_transaksi: TcxCheckBox;
    akses_daftar_tarif: TcxCheckBox;
    akses_daftar_area: TcxCheckBox;
    akses_daftar_unitpelayanan: TcxCheckBox;
    akses_daftar_pengguna: TcxCheckBox;
    akses_daftar_lainnya: TcxCheckBox;
    akses_tools: TcxCheckBox;
    olah_data_pelanggan: TcxCheckBox;
    olah_data_rekening: TcxCheckBox;
    publish_rekening: TcxCheckBox;
    unpublish_rekening: TcxCheckBox;
    olah_data_angsuran: TcxCheckBox;
    olah_data_periode: TcxCheckBox;
    olah_data_tarif: TcxCheckBox;
    olah_data_area: TcxCheckBox;
    olah_data_unit: TcxCheckBox;
    olah_data_lainnya: TcxCheckBox;
    olah_data_pengguna: TcxCheckBox;
    olah_sambbaru: TcxCheckBox;
    ok: TcxButton;
    no: TcxButton;
    lunasi_angsuran: TcxCheckBox;
    Qexec: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    posting: TcxCheckBox;
    olah_penghapusan_piutang: TcxCheckBox;
    akses_daftar_tunggu: TcxCheckBox;
    olah_daftar_tunggu: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    hakakses_awal:String;
  end;

var
  uhakakses: Tuhakakses;

implementation

uses Module;

{$R *.dfm}

procedure Tuhakakses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  hakakses.Clear;
  akses_laporan.SetFocus;
  akses_laporan.Checked:=false;
  akses_daftar_pelanggan.Checked:=false;
  akses_daftar_rekening.Checked:=false;
  akses_daftar_sambunganbaru.Checked:=false;
  akses_daftar_angsuran.Checked:=false;
  akses_daftar_periode.Checked:=false;
  akses_upload_drd.Checked:=false;
  akses_download_transaksi.Checked:=false;
  akses_daftar_tarif.Checked:=false;
  akses_daftar_area.Checked:=false;
  akses_daftar_unitpelayanan.Checked:=false;
  akses_daftar_pengguna.Checked:=false;
  akses_daftar_lainnya.Checked:=false;
  akses_tools.Checked:=false;
  olah_data_pelanggan.Checked:=false;
  olah_sambbaru.Checked:=false;
  olah_data_rekening.Checked:=false;
  olah_data_angsuran.Checked:=false;
  olah_data_periode.Checked:=false;
  olah_data_tarif.Checked:=false;
  olah_data_area.Checked:=false;
  olah_data_unit.Checked:=false;
  olah_data_lainnya.Checked:=false;
  olah_data_pengguna.Checked:=false;
  publish_rekening.Checked:=false;
  unpublish_rekening.Checked:=false;
  posting.Checked:=false;
end;

procedure Tuhakakses.noClick(Sender: TObject);
begin
close;
end;

procedure Tuhakakses.okClick(Sender: TObject);
var
  zakses_laporan,
  zakses_daftar_pelanggan,
  zakses_daftar_tunggu,
  zakses_daftar_rekening,
  zakses_daftar_sambunganbaru,
  zakses_daftar_angsuran,
  zakses_daftar_periode,
  zakses_upload_drd,
  zakses_download_transaksi,
  zakses_daftar_tarif,
  zakses_daftar_area,
  zakses_daftar_unitpelayanan,
  zakses_daftar_pengguna,
  zakses_daftar_lainnya,
  zakses_tools,
  zolah_data_pelanggan,
  zolah_daftar_tunggu,
  zolah_sambbaru,
  zolah_data_rekening,
  zpublish_rekening,
  zunpublish_rekening,
  zolah_data_angsuran,
  zolah_data_periode,
  zolah_data_tarif,
  zolah_data_area,
  zolah_data_unit,
  zolah_data_lainnya,
  zolah_data_pengguna,
  zlunasi_angsuran,
  zposting,
  zolah_penghapusan_piutang:String;
begin

IF(hakakses.Text<>'')then
begin


  zakses_laporan:='0';
  zakses_daftar_pelanggan:='0';
  zakses_daftar_tunggu:='0';
  zakses_daftar_rekening:='0';
  zakses_daftar_sambunganbaru:='0';
  zakses_daftar_angsuran:='0';
  zakses_upload_drd:='0';
  zakses_download_transaksi:='0';
  zakses_daftar_tarif:='0';
  zakses_daftar_area:='0';
  zakses_daftar_unitpelayanan:='0';
  zakses_daftar_pengguna:='0';
  zakses_daftar_lainnya:='0';
  zakses_tools:='0';
  zolah_data_pelanggan:='0';
  zolah_daftar_tunggu:='0';
  zolah_sambbaru:='0';
  zolah_data_rekening:='0';
  zpublish_rekening:='0';
  zunpublish_rekening:='0';
  zolah_data_angsuran:='0';
  zolah_data_periode:='0';
  zolah_data_tarif:='0';
  zolah_data_area:='0';
  zolah_data_unit:='0';
  zolah_data_lainnya:='0';
  zolah_data_pengguna:='0';
  zlunasi_angsuran:='0';
  zposting:='0';
  zolah_penghapusan_piutang:='0';

 if(akses_laporan.Checked=true)then
  zakses_laporan:='1';

  if(akses_daftar_pelanggan.Checked=true)then
  zakses_daftar_pelanggan:='1';

  if(akses_daftar_tunggu.Checked=true)then
  zakses_daftar_tunggu:='1';

  if(akses_daftar_rekening.Checked=true)then
  zakses_daftar_rekening:='1';

  if(akses_daftar_sambunganbaru.Checked=true)then
  zakses_daftar_sambunganbaru:='1';

  if(akses_daftar_angsuran.Checked=true)then
  zakses_daftar_angsuran:='1';

  if(akses_daftar_periode.Checked=true)then
  zakses_daftar_periode:='1';

  if(akses_upload_drd.Checked=true)then
  zakses_upload_drd:='1';

  if(akses_download_transaksi.Checked=true)then
  zakses_download_transaksi:='1';

  if(akses_daftar_tarif.Checked=true)then
  zakses_daftar_tarif:='1';

  if(akses_daftar_area.Checked=true)then
  zakses_daftar_area:='1';

  if(akses_daftar_unitpelayanan.Checked=true)then
  zakses_daftar_unitpelayanan:='1';

  if(akses_daftar_pengguna.Checked=true)then
  zakses_daftar_pengguna:='1';

  if(akses_daftar_lainnya.Checked=true)then
  zakses_daftar_lainnya:='1';

  if(akses_tools.Checked=true)then
  zakses_tools:='1';

  

  if(publish_rekening.Checked=true)then
  zpublish_rekening:='1';

  if(unpublish_rekening.Checked=true)then
  zunpublish_rekening:='1';

  if(olah_data_pelanggan.Checked=true)then
  zolah_data_pelanggan:='1';

  if(olah_daftar_tunggu.Checked=true)then
  zolah_daftar_tunggu:='1';

  if(olah_data_rekening.Checked=true)then
  zolah_data_rekening:='1';

   if(olah_data_angsuran.Checked=true)then
  zolah_data_angsuran:='1';

   if(olah_data_periode.Checked=true)then
  zolah_data_periode:='1';

   if(olah_data_tarif.Checked=true)then
  zolah_data_tarif:='1';

   if(olah_data_area.Checked=true)then
  zolah_data_area:='1';

   if(olah_data_unit.Checked=true)then
  zolah_data_unit:='1';

   if(olah_data_lainnya.Checked=true)then
  zolah_data_lainnya:='1';

   if(olah_data_pengguna.Checked=true)then
  zolah_data_pengguna:='1';

   if(olah_sambbaru.Checked=true)then
  zolah_sambbaru:='1';

  if(lunasi_angsuran.Checked=true)then
  zlunasi_angsuran:='1';

  if(posting.Checked=true)then
  zposting:='1';

  if(olah_penghapusan_piutang.Checked=true)then
  zolah_penghapusan_piutang:='1';



 IF(DM.Xkey='Tambah')then
 begin 
  

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add(Qexec.SQLInsert.Text);
     DM.QExec.parambyname('hak_akses').asstring:= hakakses.Text; ;
     DM.QExec.parambyname('akses_laporan').asstring:=zakses_laporan ;
     DM.QExec.parambyname('akses_daftar_pelanggan').asstring:= zakses_daftar_pelanggan ;
     DM.QExec.parambyname('akses_daftar_tunggu').asstring:= zakses_daftar_tunggu ;
     DM.QExec.parambyname('akses_daftar_rekening').asstring:=zakses_daftar_rekening ;
     DM.QExec.parambyname('akses_daftar_sambunganbaru').asstring:=zakses_daftar_sambunganbaru;
     DM.QExec.parambyname('akses_daftar_angsuran').asstring:=  zakses_daftar_angsuran ;
     DM.QExec.parambyname('akses_daftar_periode').asstring:=  zakses_daftar_periode ;
     DM.QExec.parambyname('akses_upload_drd').asstring:=  zakses_upload_drd ;
     DM.QExec.parambyname('akses_download_transaksi').asstring:=zakses_download_transaksi ;
     DM.QExec.parambyname('akses_daftar_tarif').asstring:= zakses_daftar_tarif;
     DM.QExec.parambyname('akses_daftar_area').asstring:=   zakses_daftar_area ;
     DM.QExec.parambyname('akses_daftar_unitpelayanan').asstring:=  zakses_daftar_unitpelayanan ;
     DM.QExec.parambyname('akses_daftar_pengguna').asstring:= zakses_daftar_pengguna;
     DM.QExec.parambyname('akses_daftar_lainnya').asstring:=  zakses_daftar_lainnya ;
     DM.QExec.parambyname('akses_tools').asstring:= zakses_tools;
     DM.QExec.parambyname('olah_data_pelanggan').asstring:=  zolah_data_pelanggan ;
     DM.QExec.parambyname('olah_daftar_tunggu').asstring:=  zolah_daftar_tunggu ;
     DM.QExec.parambyname('olah_sambbaru').asstring:=  zolah_sambbaru ;
     DM.QExec.parambyname('olah_data_rekening').asstring:= zolah_data_rekening ;
     DM.QExec.parambyname('publish_rekening').asstring:=   zpublish_rekening   ;
     DM.QExec.parambyname('unpublish_rekening').asstring:=  zunpublish_rekening;
     DM.QExec.parambyname('olah_data_angsuran').asstring:=  zolah_data_angsuran ;
     DM.QExec.parambyname('olah_data_periode').asstring:=  zolah_data_periode ;
     DM.QExec.parambyname('olah_data_tarif').asstring:=    zolah_data_tarif ;
     DM.QExec.parambyname('olah_data_area').asstring:=    zolah_data_area;
     DM.QExec.parambyname('olah_data_unit').asstring:= zolah_data_unit  ;
     DM.QExec.parambyname('olah_data_lainnya').asstring:=  zolah_data_lainnya  ;
     DM.QExec.parambyname('olah_data_pengguna').AsString:=zolah_data_pengguna  ;
     DM.QExec.parambyname('lunasi_angsuran').AsString:=zlunasi_angsuran  ;
     DM.QExec.parambyname('posting').AsString:=zposting  ;
     DM.QExec.parambyname('olah_penghapusan_piutang').AsString:=zolah_penghapusan_piutang  ;
     DM.Qexec.Execute;

     DM.uraianlogakses:='Tambah Hak Akses Baru '+hakakses.Text;
     DM.targetlogakses:= hakakses.Text;
     DM.logakses;

     ModalResult:=MrOk;

 end
 else
 begin
     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add(Qexec.SQLUpdate.Text);
     DM.QExec.parambyname('id').AsInteger:= DM.Xid;
     DM.QExec.parambyname('hak_akses').asstring:= hakakses.Text;
     DM.QExec.parambyname('akses_laporan').asstring:=zakses_laporan ;
     DM.QExec.parambyname('akses_daftar_pelanggan').asstring:= zakses_daftar_pelanggan ;
     DM.QExec.parambyname('akses_daftar_tunggu').asstring:= zakses_daftar_tunggu ;
     DM.QExec.parambyname('akses_daftar_rekening').asstring:=zakses_daftar_rekening ;
     DM.QExec.parambyname('akses_daftar_sambunganbaru').asstring:=zakses_daftar_sambunganbaru;
     DM.QExec.parambyname('akses_daftar_angsuran').asstring:=  zakses_daftar_angsuran ;
     DM.QExec.parambyname('akses_daftar_periode').asstring:=  zakses_daftar_periode ;
     DM.QExec.parambyname('akses_upload_drd').asstring:=  zakses_upload_drd ;
     DM.QExec.parambyname('akses_download_transaksi').asstring:=zakses_download_transaksi ;
     DM.QExec.parambyname('akses_daftar_tarif').asstring:= zakses_daftar_tarif;
     DM.QExec.parambyname('akses_daftar_area').asstring:=   zakses_daftar_area ;
     DM.QExec.parambyname('akses_daftar_unitpelayanan').asstring:=  zakses_daftar_unitpelayanan ;
     DM.QExec.parambyname('akses_daftar_pengguna').asstring:= zakses_daftar_pengguna;
     DM.QExec.parambyname('akses_daftar_lainnya').asstring:=  zakses_daftar_lainnya ;
     DM.QExec.parambyname('akses_tools').asstring:= zakses_tools;
     DM.QExec.parambyname('olah_data_pelanggan').asstring:=  zolah_data_pelanggan ;
     DM.QExec.parambyname('olah_daftar_tunggu').asstring:=  zolah_daftar_tunggu ;
     DM.QExec.parambyname('olah_sambbaru').asstring:=  zolah_sambbaru ;
     DM.QExec.parambyname('olah_data_rekening').asstring:= zolah_data_rekening ;
     DM.QExec.parambyname('publish_rekening').asstring:=   zpublish_rekening   ;
     DM.QExec.parambyname('unpublish_rekening').asstring:=  zunpublish_rekening;
     DM.QExec.parambyname('olah_data_angsuran').asstring:=  zolah_data_angsuran ;
     DM.QExec.parambyname('olah_data_periode').asstring:=  zolah_data_periode ;
     DM.QExec.parambyname('olah_data_tarif').asstring:=    zolah_data_tarif ;
     DM.QExec.parambyname('olah_data_area').asstring:=    zolah_data_area;
     DM.QExec.parambyname('olah_data_unit').asstring:= zolah_data_unit  ;
     DM.QExec.parambyname('olah_data_lainnya').asstring:=  zolah_data_lainnya  ;
     DM.QExec.parambyname('olah_data_pengguna').AsString:=zolah_data_pengguna  ;
     DM.QExec.parambyname('lunasi_angsuran').AsString:=zlunasi_angsuran  ;
     DM.QExec.parambyname('posting').AsString:=zposting  ;
     DM.QExec.parambyname('olah_penghapusan_piutang').AsString:=zolah_penghapusan_piutang  ;
     DM.Qexec.Execute;


     if(hakakses_awal<>hakakses.Text)then
     begin

        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('update userakses set hak_akses=:hak_akses where hak_akses=:hak_akses_lama');
        DM.Qexec.ParamByName('hak_akses_lama').AsString:=hakakses_awal;
        DM.Qexec.ParamByName('hak_akses').AsString:=hakakses.Text;
        DM.Qexec.Execute;
        
     end;


     DM.uraianlogakses:='Koreksi Hak Akses '+hakakses_awal;
     DM.targetlogakses:= hakakses_awal;
     DM.logakses;

     ModalResult:=MrOk;

 end;
END
ELSE
   MessageDlg('Harap Isi Nama Hak Akses ', mtInformation, [mbOK], 0);

end;

end.
