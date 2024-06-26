unit UnitTpelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,
  ComCtrls, dxCore, cxDateUtils, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo, cxMaskEdit, cxLabel,
  cxTextEdit, ExtCtrls, RzPanel, ActnList, DB, MemDS, DBAccess, MyAccess,
  RzPrgres, dxSkinOffice2013White, cxCheckBox, RzDTP;

type
  TUTpelanggan = class(TForm)
    RzPanel1: TRzPanel;
    nama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    merkwm: TcxComboBox;
    serimeter: TcxTextEdit;
    cxLabel9: TcxLabel;
    gsmcdma: TcxTextEdit;
    cxLabel13: TcxLabel;
    telp: TcxTextEdit;
    cxLabel16: TcxLabel;
    alamat: TcxMemo;
    cxLabel23: TcxLabel;
    status: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel32: TcxLabel;
    kodekolektif: TcxComboBox;
    stan: TcxCurrencyEdit;
    labelstan: TcxLabel;
    koderayon: TcxComboBox;
    kodegol: TcxComboBox;
    kodediameter: TcxComboBox;
    tgldaftar: TcxDateEdit;
    golongan: TcxComboBox;
    kolektif: TcxComboBox;
    cxButton1: TcxButton;
    cxLabel14: TcxLabel;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    ukuran: TcxComboBox;
    namarayon: TcxComboBox;
    kepemilikan: TcxComboBox;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    namapemilik: TcxTextEdit;
    cxLabel17: TcxLabel;
    noktp: TcxTextEdit;
    cxLabel18: TcxLabel;
    pekerjaan: TcxTextEdit;
    cxLabel21: TcxLabel;
    penghuni: TcxTextEdit;
    sumberair: TcxComboBox;
    cxLabel22: TcxLabel;
    nosamb: TcxTextEdit;
    cxLabel31: TcxLabel;
    kodeadmlain: TcxComboBox;
    cxLabel33: TcxLabel;
    kodepemlain: TcxComboBox;
    cxLabel34: TcxLabel;
    koderetlain: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    Qnosamb: TMyQuery;
    cxLabel15: TcxLabel;
    kodeblok: TcxComboBox;
    namablok: TcxComboBox;
    cxLabel19: TcxLabel;
    luasrumah: TcxCurrencyEdit;
    ok: TcxButton;
    no: TcxButton;
    cxLabel10: TcxLabel;
    email: TcxTextEdit;
    cxLabel12: TcxLabel;
    norekening: TcxTextEdit;
    RzPanel8: TRzPanel;
    cxLabel24: TcxLabel;
    norumah: TcxTextEdit;
    cxLabel25: TcxLabel;
    rt: TcxTextEdit;
    cxLabel26: TcxLabel;
    rw: TcxTextEdit;
    QcekVPS: TMyQuery;
    cekhanyamelengkapidata: TcxCheckBox;
    cxLabel20: TcxLabel;
    kodekondisimeter: TcxComboBox;
    kondisimeter: TcxComboBox;
    cxLabel27: TcxLabel;
    tglmeter: TcxDateEdit;
    cxLabel35: TcxLabel;
    urutanbaca: TcxCurrencyEdit;
    procedure noClick(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure kodediameterPropertiesChange(Sender: TObject);
    procedure ukuranPropertiesChange(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure kodekelurahanPropertiesChange(Sender: TObject);
    procedure kelurahanPropertiesChange(Sender: TObject);
    procedure kodeblokPropertiesChange(Sender: TObject);
    procedure namablokPropertiesChange(Sender: TObject);
    procedure RzPanel8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cekhanyamelengkapidataClick(Sender: TObject);
    procedure kodekondisimeterPropertiesChange(Sender: TObject);
    procedure kondisimeterPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    zkoderayon,
    znamarayon,
    zkodegol,
    zgolongan,
    zkodediameter,
    zukuran,
    zkodekolektif,
    zkolektif,
    zkodeloket,
    zkodecabang,zcabang,
    zkodekelurahan,zkelurahan,
    zkodewil,zwilayah,Znosamb:String;
    zkodeadmlain,zkodepemlain,zkoderetlain:String;
    Znama,Znorekening,Zkepemilikan,Zsumberair,zmerk,zurutan:String;
    znopendaftaran,znorab,zkodeblok,zkodekondisimeter:String;
    

    znosambdaribshl:String;
    
  end;

var
  UTpelanggan: TUTpelanggan;

implementation

{$R *.dfm}  uses Module, UnitCombo,  UnitMain, StrUtils, unitloading;

procedure TUTpelanggan.noClick(Sender: TObject);
begin
close;
end;

procedure TUTpelanggan.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TUTpelanggan.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TUTpelanggan.kodediameterPropertiesChange(Sender: TObject);
begin
ukuran.ItemIndex:=kodediameter.ItemIndex;
end;

procedure TUTpelanggan.ukuranPropertiesChange(Sender: TObject);
begin
kodediameter.ItemIndex:=ukuran.ItemIndex;
end;

procedure TUTpelanggan.koderayonPropertiesChange(Sender: TObject);
begin
namarayon.ItemIndex:=koderayon.ItemIndex;


   {DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT * FROM blok WHERE koderayon="'+koderayon.Text+'" ORDER BY kodeblok ASC ');
   DM.Qcek.Open;
   kodeblok.Properties.Items.Clear;
   namablok.Properties.Items.Clear;


   while not DM.Qcek.Eof do
   begin
            kodeblok.Properties.Items.Add(DM.Qcek.FieldByName('kodeblok').ASstring);
            namablok.Properties.Items.Add(DM.Qcek.FieldByName('namablok').ASstring);

            DM.Qcek.Next;
   end;


   kodeblok.Text:=zkodeblok;}


end;

procedure TUTpelanggan.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TUTpelanggan.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure TUTpelanggan.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure TUTpelanggan.FormShow(Sender: TObject);
begin


      ucombo.isikombo();

      namarayon.properties.items:= Ucombo.namarayon.properties.items;
      koderayon.properties.items:= Ucombo.koderayon.properties.items;
      kodegol.properties.items:= Ucombo.kodegol.properties.items;
      golongan.properties.items:= Ucombo.golongan.properties.items;
      kodediameter.properties.items:= Ucombo.kodediameter.properties.items;
      ukuran.properties.items:= Ucombo.ukuran.properties.items;
      kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
      kolektif.properties.items:= Ucombo.kolektif.properties.items;
      kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;
      kelurahan.properties.items:= Ucombo.kelurahan.properties.items;
      kepemilikan.properties.items:= Ucombo.kepemilikan.properties.items;
      sumberair.properties.items:= Ucombo.sumberair.properties.items;
      kodeadmlain.properties.items:= Ucombo.kodeadmlain.properties.items;
      kodepemlain.properties.items:= Ucombo.kodepemlain.properties.items;
      koderetlain.properties.items:= Ucombo.koderetlain.properties.items;
      merkwm.properties.items:= Ucombo.merk.properties.items;
      kodekondisimeter.properties.items:= Ucombo.kodekondisi.properties.items;
      kondisimeter.properties.items:= Ucombo.kondisimeter.properties.items;


      cekhanyamelengkapidata.Visible:=false;


      if(DM.Xflag='Koreksi')then
      begin

          kodegol.Text:=zkodegol;
          golongan.text:= zgolongan;
          kodediameter.text:=  zkodediameter;
          ukuran.text:=   zukuran;
          kodekolektif.text:= zkodekolektif;
          kolektif.text:=   zkolektif;
          koderayon.Text:=zkoderayon;
          namarayon.Text:=znamarayon;
          kodekelurahan.Text:=zkodekelurahan;   
          kepemilikan.Text:=Zkepemilikan;
          sumberair.Text:=zsumberair;
          merkwm.Text:=zmerk;

          labelstan.Visible:=false;
          stan.Visible:=false;
          kodeadmlain.Text:=zkodeadmlain;
          kodepemlain.Text:=zkodepemlain;
          koderetlain.Text:=zkoderetlain;
          kodekondisimeter.Text:=zkodekondisimeter;

          cekhanyamelengkapidata.Checked:=false;
          cekhanyamelengkapidata.Visible:=true;



      end

      else if(DM.Xflag='Pengaktifan')then
      begin

          kodegol.Text:=zkodegol;
          kodediameter.text:=  zkodediameter;
          kodekolektif.text:= zkodekolektif;
          koderayon.Text:=zkoderayon;



          kodekelurahan.Text:=zkodekelurahan;
          kepemilikan.Text:=Zkepemilikan;
          sumberair.Text:=zsumberair;
          labelstan.Visible:=true;
          stan.Visible:=true;
          kodeadmlain.Text:=zkodeadmlain;
          kodepemlain.Text:=zkodepemlain;
          koderetlain.Text:=zkoderetlain;
          merkwm.Text:=zmerk;

          if(nosamb.Text='')then
          cxButton1.Visible:=true
          else
          cxButton1.Visible:=false;



      end
      else
      begin

      labelstan.Visible:=true;
      stan.Visible:=true;
      end;

     


end;

procedure TUTpelanggan.okClick(Sender: TObject);
var
j:integer;
lanjut:byte;
begin

  if nosamb.Text='' then
  begin
      MessageDlg('No.Samb harus diisi !!', mtWarning, [mbOK], 0);  
      exit;
  end;

   if nama.Text='' then
  begin
      MessageDlg('Nama harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


   if alamat.Text='' then
  begin
      MessageDlg('Alamat harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


   if kodegol.Text='' then
  begin
      MessageDlg('Golongan harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


   if koderayon.Text='' then
  begin
      MessageDlg('Rayon harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


  if kodekelurahan.Text='' then
  begin
      MessageDlg('Kelurahan harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;

   if kodediameter.Text='' then
  begin
      MessageDlg('Diameter harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


   if kodeadmlain.Text='' then
  begin
      MessageDlg('Kode Administrasi lain harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;

    if kodepemlain.Text='' then
  begin
      MessageDlg('Kode Pemeliharaan lain harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;

     if koderetlain.Text='' then
  begin
      MessageDlg('Kode Retribusi lain harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;

     if kodekolektif.Text='' then
  begin
      MessageDlg('Kolektif harus diisi !!', mtWarning, [mbOK], 0);

      exit;
  end;

     if tgldaftar.Text='' then
  begin
      MessageDlg('Tanggal Daftar harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;


      if tglmeter.Text='' then
  begin
      MessageDlg('Tanggal Meter harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;



    
    umain.openkoneksi_host;


    TRY
      Enabled:=false;

      TRY



       Umain.Qhost1.close;
       Umain.Qhost1.SQL.Clear;
       Umain.Qhost1.SQL.Add('START TRANSACTION');
       Umain.Qhost1.Execute; 

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;




          ////TAMBAH//----------------------------  
         if(DM.Xflag='Tambah') OR
         (DM.Xflag='Pengaktifan')then
         begin

              Qnosamb.Close;
              Qnosamb.SQL.Clear;
              Qnosamb.SQL.add('select * FROm nosamb WHERE  nosamb=:nosamb');
              Qnosamb.ParamByName('nosamb').AsString:=nosamb.Text;
              Qnosamb.Open;


               if(Qnosamb.RecordCount>0) AND
               (DM.xflag<>'Pengaktifan')then
               begin
                MessageDlg('No.Samb Sudah digunakan  !!!', mtWarning, [mbOK], 0);
                exit;
               end;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT into pelanggan (nosamb,norekening,nama,alamat,kodegol,kodediameter,koderayon,kodekelurahan,kodekolektif,sumberair,status,flag,nopendaftaran,norab,waktuupdate,kodeblok,luasrumah,notelp,nohp,merkmeter,serimeter,norumah,rt,rw,tglmeter)');
                    Umain.Qhost1.SQL.add('VALUES');
                    Umain.Qhost1.SQL.Add('(:nosamb,:norekening,:nama,:alamat,:kodegol,:kodediameter,:koderayon,:kodekelurahan,:kodekolektif,:sumberair,:status,:flag,:nopendaftaran,:norab,NOW(),:kodeblok,:luasrumah,:notelp,:nohp,:merkmeter,:serimeter,:norumah,:rt,:rw,:tglmeter)');
                    Umain.Qhost1.ParamByName('nosamb').AsString:=nosamb.Text;
                    Umain.Qhost1.ParamByName('norekening').AsString:=norekening.Text;
                    Umain.Qhost1.ParamByName('nama').AsString:=nama.Text;
                    Umain.Qhost1.ParamByName('alamat').AsString:=alamat.Text;
                    Umain.Qhost1.ParamByName('kodegol').AsString:=kodegol.Text;
                    Umain.Qhost1.ParamByName('kodediameter').AsString:=kodediameter.Text;
                    Umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                    Umain.Qhost1.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                    Umain.Qhost1.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                    Umain.Qhost1.ParamByName('sumberair').AsString:=sumberair.Text;
                    Umain.Qhost1.ParamByName('status').AsInteger:=status.ItemIndex; 
                    Umain.Qhost1.ParamByName('flag').AsString:='1';
                    Umain.Qhost1.ParamByName('nopendaftaran').AsString:=znopendaftaran;
                    Umain.Qhost1.ParamByName('kodeblok').AsString:=kodeblok.Text;
                    Umain.Qhost1.ParamByName('luasrumah').AsCurrency:=luasrumah.Value;
                    Umain.Qhost1.ParamByName('norab').AsString:=znorab;
                    Umain.Qhost1.ParamByName('notelp').AsString:=telp.Text;
                    Umain.Qhost1.ParamByName('nohp').AsString:=gsmcdma.Text;
                    Umain.Qhost1.ParamByName('merkmeter').AsString:=merkwm.Text;
                    Umain.Qhost1.ParamByName('serimeter').AsString:=serimeter.Text;
                    Umain.Qhost1.ParamByName('norumah').AsString:=norumah.Text;
                    Umain.Qhost1.ParamByName('rt').AsString:=rt.Text;
                    Umain.Qhost1.ParamByName('rw').AsString:=rw.Text;
                    Umain.Qhost1.ParamByName('tglmeter').AsDate:=tglmeter.Date;
                    Umain.Qhost1.Execute;

           

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('insert into pelanggan (nosamb,norekening,nama,alamat,kodegol,koderayon,kodekelurahan,kodediameter,kodekolektif,merk,nohp,notelp,serimeter,periodeterbitrekening,status,kepemilikanbangunan,namapemilik,pekerjaan,noktp,');
                    DM.Qexec.SQL.Add('penghuni,sumberair,kodeadministrasilain,kodepemeliharaanlain,koderetribusilain,flag,keterangan,nopendaftaran,norab,kodeblok,luasrumah,email,norumah,rt,rw,kodekondisimeter,tgldaftar,tglmeter,urutanbaca) ');
                    DM.Qexec.SQL.add('VALUES');
                    DM.Qexec.SQL.Add('(:nosamb,:norekening,:nama,:alamat,:kodegol,:koderayon,:kodekelurahan,:kodediameter,:kodekolektif,:merk,:nohp,:notelp,:serimeter,:periodeterbitrekening,:status,:kepemilikanbangunan,:namapemilik,:pekerjaan,:noktp,:penghuni,');
                    DM.Qexec.SQL.Add(':sumberair,:kodeadministrasilain,:kodepemeliharaanlain,:koderetribusilain,:flag,:keterangan,');
                    DM.Qexec.SQL.Add(':nopendaftaran,:norab,:kodeblok,:luasrumah,:email,:norumah,:rt,:rw,:kodekondisimeter,:tgldaftar,:tglmeter,:urutanbaca)');
                    DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                    DM.Qexec.ParamByName('norekening').AsString:=norekening.Text;
                    DM.Qexec.ParamByName('nama').AsString:=nama.Text;
                    DM.Qexec.ParamByName('alamat').AsString:=alamat.Text;
                    DM.Qexec.ParamByName('kodegol').AsString:=kodegol.Text;
                    DM.Qexec.ParamByName('koderayon').AsString:=koderayon.Text;
                    DM.Qexec.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                    DM.Qexec.ParamByName('kodediameter').AsString:=kodediameter.Text;
                    DM.Qexec.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                    DM.Qexec.ParamByName('merk').AsString:=merkwm.Text;
                    DM.Qexec.ParamByName('nohp').AsString:=gsmcdma.Text;
                    DM.Qexec.ParamByName('notelp').AsString:=telp.Text;
                    DM.Qexec.ParamByName('serimeter').AsString:=serimeter.Text;
                    DM.Qexec.ParamByName('status').AsInteger:=status.ItemIndex;
                    DM.Qexec.ParamByName('kepemilikanbangunan').AsString:=kepemilikan.Text;
                    DM.Qexec.ParamByName('namapemilik').AsString:=namapemilik.Text;
                    DM.Qexec.ParamByName('noktp').AsString:=noktp.Text;
                    DM.Qexec.ParamByName('penghuni').AsString:=penghuni.Text;
                    DM.Qexec.ParamByName('sumberair').AsString:=sumberair.Text;
                    DM.Qexec.ParamByName('pekerjaan').AsString:=pekerjaan.Text;
                    DM.Qexec.ParamByName('kodeadministrasilain').AsString:=kodeadmlain.Text;
                    DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=kodepemlain.Text;
                    DM.Qexec.ParamByName('koderetribusilain').AsString:=koderetlain.Text;
                    DM.Qexec.ParamByName('flag').AsString:='1'; 
                    DM.Qexec.ParamByName('keterangan').AsString:='-';
                    DM.Qexec.ParamByName('nopendaftaran').AsString:=znopendaftaran;
                    DM.Qexec.ParamByName('norab').AsString:=znorab;
                    DM.Qexec.ParamByName('kodeblok').AsString:=kodeblok.Text;
                    DM.Qexec.ParamByName('luasrumah').AsCurrency:=luasrumah.Value;
                    DM.Qexec.ParamByName('email').AsString:=email.Text;
                    DM.Qexec.ParamByName('norumah').AsString:=norumah.Text;
                    DM.Qexec.ParamByName('rt').AsString:=rt.Text;
                    DM.Qexec.ParamByName('rw').AsString:=rw.Text;
                    DM.Qexec.ParamByName('kodekondisimeter').AsString:=kodekondisimeter.Text;
                    DM.Qexec.ParamByName('tgldaftar').AsDate:=tgldaftar.date;
                    DM.Qexec.ParamByName('tglmeter').AsDate:=tglmeter.Date;
                    DM.Qexec.ParamByName('urutanbaca').Value:=urutanbaca.Value;
                    DM.Qexec.Execute;

              


                   if(znosambdaribshl='0')then
                   begin

                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('REPLACE INTO nosamb (nosamb,nama,waktuupdate,uraian,koderayon) values (:nosamb,:nama,NOW(),:uraian,:koderayon)');
                    Umain.Qhost1.ParamByName('nosamb').AsString:=nosamb.Text;
                    Umain.Qhost1.ParamByName('nama').AsString:=nama.Text;
                    Umain.Qhost1.ParamByName('uraian').AsString:='Didapat saat Pengaktifan Pelanggan di BSBS';
                    Umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                    Umain.Qhost1.Execute;

                   end;


                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO stan(nosamb,stan) values (:nosamb,:stan)');
                    DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                    DM.Qexec.ParamByName('stan').AsCurrency:=stan.Value;
                    DM.Qexec.Execute;


                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
                    DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                    DM.Qexec.ParamByName('tanggal').AsDate:=tgldaftar.date;
                    DM.Qexec.ParamByName('tipe').AsString:='Pelanggan Baru';
                    DM.Qexec.ParamByName('uraian').AsString:='Pendaftaran pelanggan baru';
                    DM.Qexec.Execute;

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
                    DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                    DM.Qexec.ParamByName('tanggal').AsDate:=tgldaftar.date;
                    DM.Qexec.ParamByName('tipe').AsString:='Aktif';
                    DM.Qexec.ParamByName('uraian').AsString:='Pengaktifan pelanggan baru';
                    DM.Qexec.Execute;  


                    IF(DM.Xflag='Pengaktifan')then
                    begin


                         umain.Qhost1.close;
                         umain.Qhost1.SQL.Clear;
                         umain.Qhost1.SQL.Add('update rab set nosambyangdiberikan=:nosambyangdiberikan,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,flagaktif="1",waktupengaktifan=NOW(),flagprosesdata="1" WHERE norab=:norab');
                         umain.Qhost1.ParamByName('norab').AsString:=znorab;
                         umain.Qhost1.ParamByName('nosambyangdiberikan').AsString:=nosamb.Text;
                         umain.Qhost1.ParamByName('kodegol').AsString:=kodegol.Text;
                         umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                         umain.Qhost1.ParamByName('kodediameter').AsString:=kodediameter.Text;
                         umain.Qhost1.Execute;

                         umain.Qhost1.close;
                         umain.Qhost1.SQL.Clear;
                         umain.Qhost1.SQL.Add('update nonair set dibebankankepada=:dibebankankepada,waktuupdate=NOW() WHERE nomor=:nomor');
                         umain.Qhost1.ParamByName('nomor').AsString:=znorab;
                         umain.Qhost1.ParamByName('dibebankankepada').AsString:=nosamb.Text;
                         umain.Qhost1.Execute;


                        Umain.Qhost1.close;
                        Umain.Qhost1.SQL.Clear;
                        Umain.Qhost1.SQL.Add('UPDATE pengaduan');
                        Umain.Qhost1.SQL.Add('SET tgldiselesaikan=CONCAT(:tanggal," ",current_time),uraianpenyelesaian=:uraianpenyelesaian,flag="1",tglpekerjaan1=:tglpekerjaan1,tglpekerjaan2=:tglpekerjaan2,petugasyangmengerjakan=:petugasyangmengerjakan');
                        Umain.Qhost1.SQL.Add('WHERE nomor=:nomor');
                        Umain.Qhost1.ParamByName('nomor').AsString:=znopendaftaran;
                        Umain.Qhost1.ParamByName('uraianpenyelesaian').AsString:='PENGAKTIFAN';
                        Umain.Qhost1.ParamByName('tanggal').AsDate:=Date;
                        Umain.Qhost1.ParamByName('tglpekerjaan1').AsDate:=Date;
                        Umain.Qhost1.ParamByName('tglpekerjaan2').AsDate:=Date;
                        Umain.Qhost1.ParamByName('petugasyangmengerjakan').AsString:='-';
                        Umain.Qhost1.Execute;



                    end;


                    DM.uraianlogakses:='Menambahkan Pelanggan Baru '+nosamb.Text;
                    DM.targetlogakses:=nosamb.text;
                    DM.logakses;

                    ModalResult:=MrOk;




            ////KOREKSI//----------------------------  
           end
           else
           begin

              lanjut:=0;

              Qnosamb.Close;
              Qnosamb.SQL.Clear;
              Qnosamb.SQL.add('select * FROm nosamb WHERE  nosamb=:nosamb and nama<>:nama');
              Qnosamb.ParamByName('nosamb').AsString:=nosamb.Text;
              Qnosamb.ParamByName('nama').AsString:=DM.Xnama;
              Qnosamb.Open;


              if(Qnosamb.RecordCount>0) then
              begin
                MessageDlg('No.Samb Sudah digunakan oleh pelanggan '+Qnosamb.fieldbyname('nama').AsString+' !!!', mtWarning, [mbOK], 0);
                exit;
             end;

                            Umain.Qhost1.close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQL.Add('update pelanggan set');
                            Umain.Qhost1.SQL.add('kodekolektif=:kodekolektif,sumberair=:sumberair,');
                            Umain.Qhost1.SQL.add('waktuupdate=NOW(),luasrumah=:luasrumah,notelp=:notelp,nohp=:nohp,norekening=:norekening,kodekelurahan=:kodekelurahan,tglmeter=:tglmeter');
                            Umain.Qhost1.SQL.add('where nosamb=:nosamb');
                            Umain.Qhost1.ParamByName('nosamb').AsString:=nosamb.Text;
                            Umain.Qhost1.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                            Umain.Qhost1.ParamByName('sumberair').AsString:=sumberair.Text;
                            Umain.Qhost1.ParamByName('luasrumah').AsCurrency:=luasrumah.Value;
                            Umain.Qhost1.ParamByName('notelp').AsString:=telp.Text;
                            Umain.Qhost1.ParamByName('nohp').AsString:=gsmcdma.Text;
                            Umain.Qhost1.ParamByName('norekening').AsString:=norekening.Text;
                            Umain.Qhost1.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                            Umain.Qhost1.ParamByName('tglmeter').AsDate:=tglmeter.Date;
                            Umain.Qhost1.Execute;  



                            DM.Qexec.close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQL.Add('update pelanggan set nosamb=:nosamb,norekening=:norekening,');
                            DM.Qexec.SQL.add('nama=:nama,alamat=:alamat,kodegol=:kodegol,');
                            DM.Qexec.SQL.add('koderayon=:koderayon,kodekelurahan=:kodekelurahan,kodediameter=:kodediameter,kodekolektif=:kodekolektif,');
                            DM.Qexec.SQL.add('merk=:merk,nohp=:nohp,notelp=:notelp,serimeter=:serimeter,status=:status,kepemilikanbangunan=:kepemilikanbangunan,namapemilik=:namapemilik,pekerjaan=:pekerjaan,noktp=:noktp,penghuni=:penghuni,');
                            DM.Qexec.SQL.add('kodeadministrasilain=:kodeadministrasilain,kodepemeliharaanlain=:kodepemeliharaanlain,koderetribusilain=:koderetribusilain,keterangan=:keterangan,kodeblok=:kodeblok,luasrumah=:luasrumah,email=:email,');
                            DM.Qexec.SQL.add('norumah=:norumah,rt=:rt,rw=:rw,kodekondisimeter=:kodekondisimeter,tglmeter=:tglmeter,urutanbaca=:urutanbaca');
                            DM.Qexec.SQL.add('where nosamb=:nosamblama');
                            DM.Qexec.ParamByName('nosamblama').AsString:=DM.Xnosamb;
                            DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                            DM.Qexec.ParamByName('norekening').AsString:=norekening.Text;
                            DM.Qexec.ParamByName('nama').AsString:=nama.Text;
                            DM.Qexec.ParamByName('alamat').AsString:=alamat.Text;
                            DM.Qexec.ParamByName('kodegol').AsString:=kodegol.Text;
                            DM.Qexec.ParamByName('koderayon').AsString:=koderayon.Text;
                            DM.Qexec.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                            DM.Qexec.ParamByName('kodediameter').AsString:=kodediameter.Text;
                            DM.Qexec.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                            DM.Qexec.ParamByName('merk').AsString:=merkwm.Text;
                            DM.Qexec.ParamByName('nohp').AsString:=gsmcdma.Text;
                            DM.Qexec.ParamByName('notelp').AsString:=telp.Text;
                            DM.Qexec.ParamByName('serimeter').AsString:=serimeter.Text;
                            DM.Qexec.ParamByName('status').AsInteger:=status.ItemIndex;
                            DM.Qexec.ParamByName('kepemilikanbangunan').AsString:=kepemilikan.Text;
                            DM.Qexec.ParamByName('namapemilik').AsString:=namapemilik.Text;
                            DM.Qexec.ParamByName('noktp').AsString:=noktp.Text;
                            DM.Qexec.ParamByName('penghuni').AsString:=penghuni.Text;
                            DM.Qexec.ParamByName('pekerjaan').AsString:=pekerjaan.Text;
                            DM.Qexec.ParamByName('kodeadministrasilain').AsString:=kodeadmlain.Text;
                            DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=kodepemlain.Text;
                            DM.Qexec.ParamByName('koderetribusilain').AsString:=koderetlain.Text;
                            DM.Qexec.ParamByName('keterangan').AsString:='-';
                            DM.Qexec.ParamByName('kodeblok').AsString:=kodeblok.Text;
                            DM.Qexec.ParamByName('luasrumah').AsCurrency:=luasrumah.Value;
                            DM.Qexec.ParamByName('email').AsString:=email.Text;
                            DM.Qexec.ParamByName('norumah').AsString:=norumah.Text;
                            DM.Qexec.ParamByName('rt').AsString:=rt.Text;
                            DM.Qexec.ParamByName('rw').AsString:=rw.Text;
                            DM.Qexec.ParamByName('kodekondisimeter').AsString:=kodekondisimeter.Text;
                            DM.Qexec.ParamByName('tglmeter').AsDate:=tglmeter.Date;
                            DM.Qexec.ParamByName('urutanbaca').Value:=urutanbaca.Value;
                            DM.Qexec.Execute;

                            DM.uraianlogakses:='Koreksi Pelanggan '+nosamb.Text;
                            DM.targetlogakses:=nosamb.text;
                            DM.logakses;

                            ModalResult:=MrOk;



          
          end;


           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute; 



           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;



          EXCEPT ON E:Exception DO
          BEGIN


               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('ROLLBACK');
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;


               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
          END;
          END;

      FINALLY            
          Enabled:=true;
          Umain.host.close;
      END;




  



end;

procedure TUTpelanggan.cxButton1Click(Sender: TObject);
begin


        {DM.Qcek.Close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('SELECT MAX( CAST(nosamb AS UNSIGNED))+1 as urutan FROM pelanggan');
        //DM.Qcek.ParamByName('koderayon').AsString:=koderayon.Text;
        DM.Qcek.Open;
        
        if (DM.Qcek.fieldbyname('urutan').AsString='NULL') or (DM.Qcek.fieldbyname('urutan').AsString='') then
        nosamb.Text:=''
        else
        nosamb.Text:=DM.Qcek.fieldbyname('urutan').AsString;
        }


        if koderayon.Text='' then
        begin
            MessageDlg('Rayon harus diisi !!', mtWarning, [mbOK], 0);
            koderayon.SetFocus;
            exit;
        end;


        QcekVPS.close;
        QcekVPS.SQL.Clear;
        Qcekvps.SQL.Add('select kodewil FROM rayon WHERE koderayon="'+koderayon.Text+'"');
        QcekVPS.Open;

        Qnosamb.Close;
        Qnosamb.SQL.Clear;
        Qnosamb.SQL.Add('SELECT LPAD(MAX( CAST(RIGHT(p.nosamb,5) AS UNSIGNED))+1,5,0) as urutan FROM nosamb p  WHERE LEFT(p.nosamb,2)=:kodewil');
        Qnosamb.ParamByName('kodewil').AsString := QcekVPS.fieldbyname('kodewil').AsString;
        Qnosamb.Open;

        if (Qnosamb.fieldbyname('urutan').AsString='NULL') or (Qnosamb.fieldbyname('urutan').AsString='') then
        nosamb.Text:=QcekVPS.fieldbyname('kodewil').AsString+'00001'
        else
        nosamb.Text:=QcekVPS.fieldbyname('kodewil').AsString+Qnosamb.fieldbyname('urutan').AsString;


        {Qnosamb.Close;
        Qnosamb.SQL.Clear;
        Qnosamb.SQL.Add('SELECT LPAD(MAX( CAST(p.nosamb AS UNSIGNED))+1,6,0) as urutan FROM nosamb p ');
        Qnosamb.Open;

        nosamb.Text:=Qnosamb.fieldbyname('urutan').AsString;}

end;

procedure TUTpelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  nosamb.Clear;

  nama.Clear;
  golongan.Clear;
  kodegol.Clear;
  ukuran.Clear;
  kodediameter.Clear;
  koderayon.Clear;
  namarayon.Clear;
  alamat.Clear;
  serimeter.Clear;
  merkwm.Clear;
  kodekolektif.Clear;
  kolektif.Clear;
  gsmcdma.Clear;
  telp.Clear;
  tgldaftar.Clear;
  stan.Value:=0;
  status.ItemIndex:=1;
  //nosamb.SetFocus;
  kodekelurahan.Clear;
  kelurahan.Clear; 
  labelstan.Visible:=true;
  stan.Visible:=true;
  kepemilikan.Clear;
  namapemilik.Clear;
  sumberair.Clear;
  noktp.Clear;
  penghuni.Clear;
  kodepemlain.Clear;
  kodeadmlain.Clear;
  koderetlain.Clear;
  kodeblok.Clear;
  luasrumah.Value:=0;
  email.Clear;
  norekening.Clear;
  norumah.Clear;
  rt.Clear;
  rw.Clear;
  kodekondisimeter.Clear;
  kondisimeter.Clear;

end;

procedure TUTpelanggan.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure TUTpelanggan.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure TUTpelanggan.kodeblokPropertiesChange(Sender: TObject);
begin
namablok.ItemIndex:=kodeblok.ItemIndex;
end;

procedure TUTpelanggan.namablokPropertiesChange(Sender: TObject);
begin
kodeblok.ItemIndex:=namablok.ItemIndex;
end;

procedure TUTpelanggan.RzPanel8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE=$F012;
begin

   if Button=mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND,SC_DRAGMOVE,0);
  end;

end;

procedure TUTpelanggan.cekhanyamelengkapidataClick(Sender: TObject);
begin
  if(cekhanyamelengkapidata.Checked=true)then
  begin
      alamat.Enabled:=true;
      norumah.Enabled:=true;
      rt.Enabled:=true;
      rw.Enabled:=true;
      koderayon.Enabled:=true;
      namarayon.Enabled:=true; 
  end
  else
  begin

      alamat.Enabled:=false;
      norumah.Enabled:=false;
      rt.Enabled:=false;
      rw.Enabled:=false;
      koderayon.Enabled:=false;
      namarayon.Enabled:=false;

  end;
end;

procedure TUTpelanggan.kodekondisimeterPropertiesChange(Sender: TObject);
begin
kondisimeter.ItemIndex:=kodekondisimeter.ItemIndex;
end;

procedure TUTpelanggan.kondisimeterPropertiesChange(Sender: TObject);
begin
kodekondisimeter.ItemIndex:=kondisimeter.ItemIndex;
end;

end.
