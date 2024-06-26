unit unitpenggunaloket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, StdCtrls,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxLabel, ExtCtrls,
  RzPanel, ActnList, DB, MemDS, DBAccess, MyAccess, cxCurrencyEdit,
  dxSkinOffice2013White, cxCheckBox;

type
  Tupenggunaloket = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qhost1: TMyQuery;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    nama: TcxTextEdit;
    username: TcxTextEdit;
    peran: TcxTextEdit;
    status: TcxComboBox;
    password: TcxTextEdit;
    cxLabel6: TcxLabel;
    loket: TcxComboBox;
    jasa: TcxCurrencyEdit;
    kodeloket: TcxComboBox;
    pihakke2: TcxCheckBox;
    _boleh_transaksi: TcxCheckBox;
    _boleh_buka_lock_bulan: TcxCheckBox;
    _langganan: TcxCheckBox;
    _pembatalan: TcxCheckBox;
    _data: TcxCheckBox;
    cxLabel7: TcxLabel;
    _cetakrekening: TcxCheckBox;
    _bolehhapusdenda: TcxCheckBox;
    _pelunasanmanual: TcxCheckBox;
    cxLabel8: TcxLabel;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure pihakke2Click(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     zpihakke2,
    z_boleh_transaksi ,
    z_boleh_buka_lock_bulan,
    z_langganan,
    z_pembatalan ,
    z_data,z_cetakrekening,
    z_bolehhapusdenda,
    z_pelunasanmanual:String;

  end;

var
  upenggunaloket: Tupenggunaloket;

implementation

{$R *.dfm}  uses Module,unitmain;

procedure Tupenggunaloket.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tupenggunaloket.cxButton1Click(Sender: TObject);
begin

 if (nama.Text<>'') and ( username.Text<>'') and (password.Text<>'') and (peran.Text<>'') and (loket.Text<>'') and ( status.Text<>'') and (kodewil.Text<>'') then
 begin


    zpihakke2:='0';
    z_boleh_transaksi:='0';
    z_boleh_buka_lock_bulan:='0';
    z_langganan:='0';
    z_pembatalan :='0';
    z_data:='0';
    z_cetakrekening:='0';
    z_bolehhapusdenda:='0';
    z_pelunasanmanual:='0';

   if(pihakke2.Checked=true)then
      zpihakke2:='1';

   if(_boleh_transaksi.Checked=true)then
      z_boleh_transaksi:='1';

   if(_boleh_buka_lock_bulan.Checked=true)then
      z_boleh_buka_lock_bulan:='1';

   if(_langganan.Checked=true)then
      z_langganan:='1';

   if(_pembatalan.Checked=true)then
      z_pembatalan:='1';

   if(_data.Checked=true)then
      z_data:='1';

    if(_cetakrekening.Checked=true)then
      z_cetakrekening:='1';

    if(_bolehhapusdenda.Checked=true)then
      z_bolehhapusdenda:='1';

    if(_pelunasanmanual.Checked=true)then
      z_pelunasanmanual:='1';


     TRY
     Umain.openkoneksi_host;


          if DM.Xflag='Tambah' then
          begin
            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('select * from userakses where nama=:nama or namauser=:namauser');
            Qhost1.ParamByName('nama').AsString:=UpperCase(nama.Text);
            Qhost1.ParamByName('namauser').AsString:=LowerCase(username.Text);
            Qhost1.Open;

            if Qhost1.RecordCount=0 then
            begin
                Qhost1.close;
                Qhost1.SQL.Clear;
                Qhost1.SQL.Add('insert into userakses values (null,:nama,:namauser,md5(:password),:peran,:aktif,:waktu,:kodeloket,:jasa,:pihakke2,:bayar,:lock,:langganan,:pembatalan,:data,:cetakrekening,:bolehhapusdenda,:pelunasanmanual,:hanyakodewil)');
                Qhost1.ParamByName('nama').AsString:=UpperCase(nama.Text);
                Qhost1.ParamByName('namauser').AsString:=LowerCase(username.Text);
                Qhost1.ParamByName('password').AsString:=LowerCase(password.Text);
                Qhost1.ParamByName('peran').AsString:=UpperCase(peran.Text);
                Qhost1.ParamByName('aktif').AsString:=IntToStr(status.ItemIndex);
                Qhost1.ParamByName('kodeloket').AsString:=kodeloket.Text;
                Qhost1.ParamByName('pihakke2').AsString:=zpihakke2;
                Qhost1.ParamByName('jasa').AsCurrency:=jasa.Value;
                Qhost1.ParamByName('bayar').AsString:=z_boleh_transaksi;
                Qhost1.ParamByName('lock').AsString:=z_boleh_buka_lock_bulan;
                Qhost1.ParamByName('langganan').AsString:=z_langganan;
                Qhost1.ParamByName('pembatalan').AsString:=z_pembatalan;
                Qhost1.ParamByName('data').AsString:=z_data;
                Qhost1.ParamByName('cetakrekening').AsString:=z_cetakrekening;
                Qhost1.ParamByName('bolehhapusdenda').AsString:=z_bolehhapusdenda;
                Qhost1.ParamByName('pelunasanmanual').AsString:=z_pelunasanmanual;

                if(kodewil.Text='[SEMUA]')then
                  Qhost1.ParamByName('hanyakodewil').AsString:='%'
                else
                  Qhost1.ParamByName('hanyakodewil').AsString:=kodewil.Text;

                  
                Qhost1.ParamByName('waktu').AsDateTime:=now;
                Qhost1.Execute;

               DM.uraianlogakses:='Tambah Pengguna Loket '+nama.Text;
               DM.targetlogakses:= nama.Text;
               DM.logakses;

                ModalResult:=mrok;

            end
            else
              MessageDlg('Pengguna Sudah Ada !! ', mtInformation, [mbOK], 0);
          end
          else
            begin

              Qhost1.close;
              Qhost1.SQL.Clear;
              Qhost1.SQL.Add('select * from userakses where nama=:nama and id<>:id or namauser=:namauser and id<>:id');
              Qhost1.ParamByName('nama').AsString:=UpperCase(nama.Text);
              Qhost1.ParamByName('id').AsInteger:=DM.Xid;
              Qhost1.ParamByName('namauser').AsString:=LowerCase(username.Text);

              Qhost1.Open;

              if Qhost1.RecordCount=0 then
              begin
                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('update userakses set nama=:nama,namauser=:namauser,peran=:peran,aktif=:aktif,kodeloket=:kodeloket,jasa=:jasa,pihakke2=:pihakke2,');  
                  Qhost1.SQL.Add('`_boleh_transaksi`=:bayar, ');
                  Qhost1.SQL.Add('`_boleh_buka_lock_bulan`=:lock,  ');
                  Qhost1.SQL.Add('`_langganan`=:langganan,_pembatalan=:pembatalan,_data=:data,_cetakrekening=:cetakrekening,_bolehhapusdenda=:bolehhapusdenda,_pelunasanmanual=:pelunasanmanual,_hanyakodewil=:hanyakodewil    ');
                  Qhost1.SQL.Add('where id=:id');
                  Qhost1.ParamByName('nama').AsString:=UpperCase(nama.Text);
                  Qhost1.ParamByName('namauser').AsString:=LowerCase(username.Text);
                  Qhost1.ParamByName('id').AsInteger:=DM.Xid;
                  Qhost1.ParamByName('peran').AsString:=UpperCase(peran.Text);
                  Qhost1.ParamByName('aktif').AsString:=IntToStr(status.ItemIndex);
                  Qhost1.ParamByName('kodeloket').AsString:=kodeloket.Text;
                  Qhost1.ParamByName('pihakke2').AsString:=zpihakke2;
                  Qhost1.ParamByName('jasa').AsCurrency:=jasa.Value;
                  Qhost1.ParamByName('bayar').AsString:=z_boleh_transaksi;
                  Qhost1.ParamByName('lock').AsString:=z_boleh_buka_lock_bulan;
                  Qhost1.ParamByName('langganan').AsString:=z_langganan;
                  Qhost1.ParamByName('pembatalan').AsString:=z_pembatalan;
                  Qhost1.ParamByName('data').AsString:=z_data;
                  Qhost1.ParamByName('cetakrekening').AsString:=z_cetakrekening;
                  Qhost1.ParamByName('bolehhapusdenda').AsString:=z_bolehhapusdenda;
                  Qhost1.ParamByName('pelunasanmanual').AsString:=z_pelunasanmanual;

                  if(kodewil.Text='[SEMUA]')then
                  Qhost1.ParamByName('hanyakodewil').AsString:='%'
                  else
                  Qhost1.ParamByName('hanyakodewil').AsString:=kodewil.Text;

                  Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update d_userakses set nama=:nama,namauser=:namauser,peran=:peran,aktif=:aktif,kodeloket=:kodeloket,jasa=:jasa,pihakke2=:pihakke2,');
                  DM.Qexec.SQL.Add('`_boleh_transaksi`=:bayar, ');
                  DM.Qexec.SQL.Add('`_boleh_buka_lock_bulan`=:lock,  ');
                  DM.Qexec.SQL.Add('`_langganan`=:langganan,_pembatalan=:pembatalan,_data=:data,_cetakrekening=:cetakrekening,_bolehhapusdenda=:bolehhapusdenda,_pelunasanmanual=:pelunasanmanual,_hanyakodewil=:hanyakodewil    ');
                  DM.Qexec.SQL.Add('where id=:id');
                  DM.Qexec.ParamByName('nama').AsString:=UpperCase(nama.Text);
                  DM.Qexec.ParamByName('namauser').AsString:=LowerCase(username.Text);
                  DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
                  DM.Qexec.ParamByName('peran').AsString:=UpperCase(peran.Text);
                  DM.Qexec.ParamByName('aktif').AsString:=IntToStr(status.ItemIndex);
                  DM.Qexec.ParamByName('kodeloket').AsString:=kodeloket.Text;
                  DM.Qexec.ParamByName('pihakke2').AsString:=zpihakke2;
                  DM.Qexec.ParamByName('jasa').AsCurrency:=jasa.Value;
                  DM.Qexec.ParamByName('bayar').AsString:=z_boleh_transaksi;
                  DM.Qexec.ParamByName('lock').AsString:=z_boleh_buka_lock_bulan;
                  DM.Qexec.ParamByName('langganan').AsString:=z_langganan;
                  DM.Qexec.ParamByName('pembatalan').AsString:=z_pembatalan;
                  DM.Qexec.ParamByName('data').AsString:=z_data;
                  DM.Qexec.ParamByName('cetakrekening').AsString:=z_cetakrekening;
                  DM.Qexec.ParamByName('bolehhapusdenda').AsString:=z_bolehhapusdenda;
                  DM.Qexec.ParamByName('pelunasanmanual').AsString:=z_pelunasanmanual;

                   if(kodewil.Text='[SEMUA]')then
                   DM.Qexec.ParamByName('hanyakodewil').AsString:='%'
                  else
                   DM.Qexec.ParamByName('hanyakodewil').AsString:=kodewil.Text;

                  DM.Qexec.Execute;


                 DM.uraianlogakses:='Koreksi Pengguna Loket '+nama.Text;
                 DM.targetlogakses:= nama.Text;
                 DM.logakses;

                  ModalResult:=mrok;

              end
              else
                MessageDlg('Pengguna Sudah Ada !! ', mtInformation, [mbOK], 0);


            end;

            Umain.host.close;
    
        except ON E:Exception do
        begin
                Umain.host.close;
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;



  end
  else
   MessageDlg('Harap Lengkapi Data !! ', mtInformation, [mbOK], 0);

  Umain.host.close;


end;

procedure Tupenggunaloket.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    nama.Clear;
    username.Clear;
    password.Clear;
    peran.Clear;
    password.Enabled:=true;
    status.ItemIndex:=1;
    loket.Clear;
    jasa.Value:=0;
    pihakke2.Checked:=false;
    _boleh_transaksi.Checked:=false;
    _boleh_buka_lock_bulan.Checked:=false;
    _langganan.Checked:=false;
    _pembatalan.Checked:=false;
    _data.Checked:=false;
    _cetakrekening.Checked:=false;
    _bolehhapusdenda.Checked:=false;
    kodeloket.Clear;
    _pelunasanmanual.Checked:=false;
    kodewil.Clear;
    wilayah.Clear;

end;

procedure Tupenggunaloket.FormShow(Sender: TObject);
begin

   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT kodeloket,loket FROM loket ORDER BY kodeloket ASC ');
   DM.Qcek.Open;
   loket.Properties.Items.Clear;
   kodeloket.Properties.Items.Clear;
   while not DM.Qcek.Eof do
   begin
            kodeloket.Properties.Items.Add(DM.Qcek.FieldByName('kodeloket').ASstring);
            loket.Properties.Items.Add(DM.Qcek.FieldByName('loket').ASstring);
            DM.Qcek.Next;
   end;


   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT kodewil,wilayah FROM wilayah ORDER BY kodewil ASC ');
   DM.Qcek.Open;
   kodewil.Properties.Items.Clear;
   wilayah.Properties.Items.Clear;

    kodewil.Properties.Items.Add('[SEMUA]');
    wilayah.Properties.Items.Add('[SEMUA WIL]');

   while not DM.Qcek.Eof do
   begin
            kodewil.Properties.Items.Add(DM.Qcek.FieldByName('kodewil').ASstring);
            wilayah.Properties.Items.Add(DM.Qcek.FieldByName('wilayah').ASstring);
            DM.Qcek.Next;
   end;


   kodeloket.Text:=DM.Xkodeloket;
   kodewil.Text:=DM.Xkodewil;
  

end;

procedure Tupenggunaloket.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tupenggunaloket.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tupenggunaloket.pihakke2Click(Sender: TObject);
begin
  if(pihakke2.Checked=true)then
  begin
    jasa.Enabled:=true;
    jasa.Value:=0;
  end
  else
  begin
    jasa.Enabled:=false;
    jasa.Value:=0;
  end;
end;

procedure Tupenggunaloket.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tupenggunaloket.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

end.
