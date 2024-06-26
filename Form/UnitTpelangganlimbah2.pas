unit UnitTpelangganlimbah2;

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
  TUTpelangganlimbah2 = class(TForm)
    RzPanel1: TRzPanel;
    nama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
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
    koderayon: TcxComboBox;
    kodelimbah: TcxComboBox;
    tgldaftar: TcxDateEdit;
    golonganlimbah: TcxComboBox;
    kolektif: TcxComboBox;
    cxButton1: TcxButton;
    cxLabel14: TcxLabel;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    namarayon: TcxComboBox;
    kepemilikan: TcxComboBox;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    namapemilik: TcxTextEdit;
    cxLabel17: TcxLabel;
    noktp: TcxTextEdit;
    cxLabel21: TcxLabel;
    penghuni: TcxTextEdit;
    nomor: TcxTextEdit;
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
    nosamb: TcxTextEdit;
    cxLabel6: TcxLabel;
    procedure noClick(Sender: TObject);
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
    procedure kodelimbahPropertiesChange(Sender: TObject);
    procedure golonganlimbahPropertiesChange(Sender: TObject);
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
    zkodelimbah:String;
    

    znosambdaribshl:String;
    
  end;

var
  UTpelangganlimbah2: TUTpelangganlimbah2;

implementation

{$R *.dfm}  uses Module, UnitCombo,  UnitMain, StrUtils, unitloading;

procedure TUTpelangganlimbah2.noClick(Sender: TObject);
begin
close;
end;

procedure TUTpelangganlimbah2.koderayonPropertiesChange(Sender: TObject);
begin
namarayon.ItemIndex:=koderayon.ItemIndex;


   DM.Qcek.Close;
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


   kodeblok.Text:=zkodeblok;


end;

procedure TUTpelangganlimbah2.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TUTpelangganlimbah2.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure TUTpelangganlimbah2.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure TUTpelangganlimbah2.FormShow(Sender: TObject);
begin


      ucombo.isikombo();

      namarayon.properties.items:= Ucombo.namarayon.properties.items;
      koderayon.properties.items:= Ucombo.koderayon.properties.items;

      kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
      kolektif.properties.items:= Ucombo.kolektif.properties.items;
      kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;
      kelurahan.properties.items:= Ucombo.kelurahan.properties.items;
      kepemilikan.properties.items:= Ucombo.kepemilikan.properties.items;

      kodelimbah.properties.items:= Ucombo.kodelimbah.properties.items;
      golonganlimbah.properties.items:= Ucombo.namalimbah.properties.items;


      cekhanyamelengkapidata.Visible:=false;


      if(DM.Xflag='Pengaktifan')then
      begin


          kodekolektif.text:= zkodekolektif;
          koderayon.Text:=zkoderayon;
          kodekelurahan.Text:=zkodekelurahan;
          kepemilikan.Text:=Zkepemilikan;
          kodelimbah.Text:=zkodelimbah;


          if(nomor.Text='')then
          begin
          cxButton1.Visible:=true;
          nomor.Enabled:=true;
          end
          else
          begin
          cxButton1.Visible:=false;
          nomor.Enabled:=false;
          end;



      end;

     


end;

procedure TUTpelangganlimbah2.okClick(Sender: TObject);
var
j:integer;
lanjut:byte;
begin

  if nomor.Text='' then
  begin
      MessageDlg('Nomor Limbah harus diisi !!', mtWarning, [mbOK], 0);

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


   if kodelimbah.Text='' then
  begin
      MessageDlg('Golongan Limbah harus diisi !!', mtWarning, [mbOK], 0);
      exit;
  end;

    if koderayon.Text='' then
  begin
      MessageDlg('Rayon Limbah harus diisi !!', mtWarning, [mbOK], 0);

      exit;
  end;

    if kodekelurahan.Text='' then
  begin
      MessageDlg('Kelurahan Limbah harus diisi !!', mtWarning, [mbOK], 0);

      exit;
  end;




     if tgldaftar.Text='' then
  begin
      MessageDlg('tanggal daftar harus diisi !!', mtWarning, [mbOK], 0);

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






              Qnosamb.Close;
              Qnosamb.SQL.Clear;
              Qnosamb.SQL.add('select * FROm nosamb_limbah WHERE  nomor=:nomor');
              Qnosamb.ParamByName('nomor').AsString:=nomor.Text;
              Qnosamb.Open;


               if(Qnosamb.RecordCount>0) AND
               (DM.xflag<>'Pengaktifan')then
               begin
                MessageDlg('Nomor Limbah Sudah digunakan  !!!', mtWarning, [mbOK], 0);
                exit;
               end;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT into pelanggan_limbah (nomorlimbah,nosamb,nama,alamat,kodelimbah,koderayon,kodekelurahan,kodekolektif,status,flag,nopendaftaran,norab,waktuupdate,kodeblok,luasrumah,notelp,nohp,norumah,rt,rw)');
                    Umain.Qhost1.SQL.add('VALUES');
                    Umain.Qhost1.SQL.Add('(:nomorlimbah,:nosamb,:nama,:alamat,:kodelimbah,:koderayon,:kodekelurahan,:kodekolektif,:status,:flag,:nopendaftaran,:norab,NOW(),:kodeblok,:luasrumah,:notelp,:nohp,:norumah,:rt,:rw)');
                    Umain.Qhost1.ParamByName('nomorlimbah').AsString:=nomor.Text;
                    Umain.Qhost1.ParamByName('nosamb').AsString:=nosamb.Text;
                    Umain.Qhost1.ParamByName('nama').AsString:=nama.Text;
                    Umain.Qhost1.ParamByName('alamat').AsString:=alamat.Text;
                    Umain.Qhost1.ParamByName('kodelimbah').AsString:=kodelimbah.Text;
                    Umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                    Umain.Qhost1.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                    Umain.Qhost1.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                    Umain.Qhost1.ParamByName('status').AsInteger:=status.ItemIndex; 
                    Umain.Qhost1.ParamByName('flag').AsString:='1';
                    Umain.Qhost1.ParamByName('nopendaftaran').AsString:=znopendaftaran;
                    Umain.Qhost1.ParamByName('kodeblok').AsString:=kodeblok.Text;
                    Umain.Qhost1.ParamByName('luasrumah').AsCurrency:=luasrumah.Value;
                    Umain.Qhost1.ParamByName('norab').AsString:=znorab;
                    Umain.Qhost1.ParamByName('notelp').AsString:=telp.Text;
                    Umain.Qhost1.ParamByName('nohp').AsString:=gsmcdma.Text;
                    Umain.Qhost1.ParamByName('norumah').AsString:=norumah.Text;
                    Umain.Qhost1.ParamByName('rt').AsString:=rt.Text;
                    Umain.Qhost1.ParamByName('rw').AsString:=rw.Text;
                    Umain.Qhost1.Execute;

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('insert into pelanggan_limbah (nomorlimbah,nosamb,nama,alamat,kodelimbah,koderayon,kodekelurahan,kodekolektif,nohp,notelp,status,namapemilik,noktp,');
                    DM.Qexec.SQL.Add('penghuni,flag,keterangan,nopendaftaran,norab,kodeblok,luasrumah,email,norumah,rt,rw,tgldaftar) ');
                    DM.Qexec.SQL.add('VALUES');
                    DM.Qexec.SQL.Add('(:nomorlimbah,:nosamb,:nama,:alamat,:kodelimbah,:koderayon,:kodekelurahan,:kodekolektif,:nohp,:notelp,:status,:namapemilik,:noktp,:penghuni,');
                    DM.Qexec.SQL.Add(':flag,:keterangan,');
                    DM.Qexec.SQL.Add(':nopendaftaran,:norab,:kodeblok,:luasrumah,:email,:norumah,:rt,:rw,:tgldaftar)');
                    DM.Qexec.ParamByName('nomorlimbah').AsString:=nomor.Text;
                    DM.Qexec.ParamByName('nosamb').AsString:=nosamb.Text;
                    DM.Qexec.ParamByName('nama').AsString:=nama.Text;
                    DM.Qexec.ParamByName('alamat').AsString:=alamat.Text;
                    DM.Qexec.ParamByName('kodelimbah').AsString:=kodelimbah.Text;
                    DM.Qexec.ParamByName('koderayon').AsString:=koderayon.Text;
                    DM.Qexec.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                    DM.Qexec.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                    DM.Qexec.ParamByName('nohp').AsString:=gsmcdma.Text;
                    DM.Qexec.ParamByName('notelp').AsString:=telp.Text;
                    DM.Qexec.ParamByName('status').AsInteger:=status.ItemIndex;
                    DM.Qexec.ParamByName('noktp').AsString:=noktp.Text;
                    DM.Qexec.ParamByName('penghuni').AsString:=penghuni.Text;
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
                    DM.Qexec.ParamByName('tgldaftar').AsDate:=tgldaftar.date;
                    DM.Qexec.Execute;



                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('REPLACE INTO nosamb_limbah (nomor,nama,waktuupdate,uraian,koderayon) values (:nomor,:nama,NOW(),:uraian,:koderayon)');
                    Umain.Qhost1.ParamByName('nomor').AsString:=nomor.Text;
                    Umain.Qhost1.ParamByName('nama').AsString:=nama.Text;
                    Umain.Qhost1.ParamByName('uraian').AsString:='Didapat saat Pengaktifan Pelanggan di BSBS';
                    Umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                    Umain.Qhost1.Execute;

                 



                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
                    DM.Qexec.ParamByName('nosamb').AsString:=nomor.Text;
                    DM.Qexec.ParamByName('tanggal').AsDate:=tgldaftar.date;
                    DM.Qexec.ParamByName('tipe').AsString:='Pelanggan Baru Limbah';
                    DM.Qexec.ParamByName('uraian').AsString:='Pendaftaran pelanggan Limbah';
                    DM.Qexec.Execute;

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
                    DM.Qexec.ParamByName('nosamb').AsString:=nomor.Text;
                    DM.Qexec.ParamByName('tanggal').AsDate:=tgldaftar.date;
                    DM.Qexec.ParamByName('tipe').AsString:='Aktif Limbah' ;
                    DM.Qexec.ParamByName('uraian').AsString:='Pengaktifan pelanggan Limbah';
                    DM.Qexec.Execute;  




                         umain.Qhost1.close;
                         umain.Qhost1.SQL.Clear;
                         umain.Qhost1.SQL.Add('update rab_limbah set nosambyangdiberikan=:nosambyangdiberikan,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,kodekelurahan=:kodekelurahan,flagaktif="1",waktupengaktifan=NOW(),flagprosesdata="1",nosamb=:nosamb WHERE norab=:norab');
                         umain.Qhost1.ParamByName('norab').AsString:=znorab;
                         umain.Qhost1.ParamByName('nosambyangdiberikan').AsString:=nomor.Text;
                         umain.Qhost1.ParamByName('kodegol').AsString:=kodelimbah.Text;
                         umain.Qhost1.ParamByName('koderayon').AsString:=koderayon.Text;
                         umain.Qhost1.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                         umain.Qhost1.ParamByName('kodediameter').AsString:='';
                         umain.Qhost1.ParamByName('nosamb').AsString:=nosamb.Text;
                         umain.Qhost1.Execute;

                         umain.Qhost1.close;
                         umain.Qhost1.SQL.Clear;
                         umain.Qhost1.SQL.Add('update nonair set dibebankankepada=:dibebankankepada,waktuupdate=NOW() WHERE nomor=:nomor');
                         umain.Qhost1.ParamByName('nomor').AsString:=znorab;
                         umain.Qhost1.ParamByName('dibebankankepada').AsString:=nosamb.Text;
                         umain.Qhost1.Execute;


                    DM.uraianlogakses:='Menambahkan Pelanggan Baru Limbah '+nomor.Text;
                    DM.targetlogakses:=nosamb.text;
                    DM.logakses;




           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;



           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           ModalResult:=MrOk;



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

procedure TUTpelangganlimbah2.cxButton1Click(Sender: TObject);
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
        Qnosamb.SQL.Add('SELECT LPAD(MAX( CAST(RIGHT(p.nomor,5) AS UNSIGNED))+1,5,0) as urutan FROM nosamb_limbah p  WHERE LEFT(p.nomor,2)=:kodewil');
        Qnosamb.ParamByName('kodewil').AsString := QcekVPS.fieldbyname('kodewil').AsString;
        Qnosamb.Open;

        if (Qnosamb.fieldbyname('urutan').AsString='NULL') or (Qnosamb.fieldbyname('urutan').AsString='') then
        nomor.Text:=QcekVPS.fieldbyname('kodewil').AsString+'00001'
        else
        nomor.Text:=QcekVPS.fieldbyname('kodewil').AsString+Qnosamb.fieldbyname('urutan').AsString;


        {Qnosamb.Close;
        Qnosamb.SQL.Clear;
        Qnosamb.SQL.Add('SELECT LPAD(MAX( CAST(p.nosamb AS UNSIGNED))+1,6,0) as urutan FROM nosamb p ');
        Qnosamb.Open;

        nosamb.Text:=Qnosamb.fieldbyname('urutan').AsString;}

end;

procedure TUTpelangganlimbah2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  nosamb.Clear;
  nomor.Clear;
  kodelimbah.Clear;
  

  nama.Clear;


  koderayon.Clear;
  namarayon.Clear;
  alamat.Clear;

  kodekolektif.Clear;
  kolektif.Clear;
  gsmcdma.Clear;
  telp.Clear;
  tgldaftar.Clear;

  status.ItemIndex:=1;
  //nosamb.SetFocus;
  kodekelurahan.Clear;
  kelurahan.Clear; 

  kepemilikan.Clear;
  namapemilik.Clear;

  noktp.Clear;
  penghuni.Clear;

  kodeblok.Clear;
  luasrumah.Value:=0;
  email.Clear;

  norumah.Clear;
  rt.Clear;
  rw.Clear;


end;

procedure TUTpelangganlimbah2.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure TUTpelangganlimbah2.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure TUTpelangganlimbah2.kodeblokPropertiesChange(Sender: TObject);
begin
namablok.ItemIndex:=kodeblok.ItemIndex;
end;

procedure TUTpelangganlimbah2.namablokPropertiesChange(Sender: TObject);
begin
kodeblok.ItemIndex:=namablok.ItemIndex;
end;

procedure TUTpelangganlimbah2.RzPanel8MouseDown(Sender: TObject;
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

procedure TUTpelangganlimbah2.cekhanyamelengkapidataClick(Sender: TObject);
begin
if(cekhanyamelengkapidata.Checked=true)then
begin
    alamat.Enabled:=true;
    norumah.Enabled:=true;
    rt.Enabled:=true;
    rw.Enabled:=true;
    nosamb.Enabled:=true;

end
else
begin

    alamat.Enabled:=false;
    norumah.Enabled:=false;
    rt.Enabled:=false;
    rw.Enabled:=false;
    nosamb.Enabled:=false;
    



end;
end;

procedure TUTpelangganlimbah2.kodelimbahPropertiesChange(Sender: TObject);
begin
golonganlimbah.ItemIndex:=kodelimbah.ItemIndex;
end;

procedure TUTpelangganlimbah2.golonganlimbahPropertiesChange(
  Sender: TObject);
begin
kodelimbah.ItemIndex:=golonganlimbah.ItemIndex;
end;

end.
