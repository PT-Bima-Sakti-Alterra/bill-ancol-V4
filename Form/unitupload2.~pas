unit unitupload2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore,  StdCtrls, cxButtons, DB, MemDS, DBAccess,
  MyAccess, RzPrgres, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxLabel, ComCtrls, RzDTP, dxSkinOffice2013White, ActnList, cxCheckBox,
  RzLabel, ExtCtrls, RzPanel, dxSkiniMaginary, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxmdaset, cxCurrencyEdit;

type
  Tuupload2 = class(TForm)
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    periode2: TRzDateTimePicker;
    Qexec: TMyQuery;
    Qrek: TMyQuery;
    Qcek: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Qtabel: TMyQuery;
    Qhost1: TMyQuery;
    Qceklunas: TMyQuery;
    Qexec2: TMyQuery;
    Progress: TRzProgressBar;
    cekpiutang: TcxCheckBox;
    cekpelanggan: TcxCheckBox;
    ceksingkron: TcxCheckBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    lblPanelInfo: TRzPanel;
    data_: TdxMemData;
    data_kode: TStringField;
    data_jumlah: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    ceklimbah: TcxCheckBox;
    ceklltt: TcxCheckBox;
    cekpelangganlimbah: TcxCheckBox;
    cekpelangganlltt: TcxCheckBox;
    Qcektabel: TMyQuery;
    QcekRek: TMyQuery;
    cekOtomatisLunas: TcxCheckBox;
    QcekParam: TMyQuery;
    Qlunasair: TMyQuery;
    Qexecsend: TMyQuery;
    Qcek_: TMyQuery;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cekpiutangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure upload();
  end;

var
  uupload2: Tuupload2;

implementation

{$R *.dfm}   uses module, UnitMain,StrUtils,DateUtils, unitloading,RzStatus;





procedure Tuupload2.upload();
var
i,j,x:integer;
periodeakhir,_periodemulaitagih,_nolpp:String;

begin


     {  if(cekpelanggan.Checked=true)then
      begin


          TRY


          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('START TRANSACTION');
          Qexec.Execute;



          DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('SELECT p.koderayon AS kode,COUNT(p.nosamb) AS jumlah FROM pelanggan p GROUP BY p.koderayon ASC');
          Dm.Qcek.Open;


          data_.Close;
          data_.Open;

          Application.ProcessMessages;

          for i:=1 to DM.Qcek.RecordCount do
          begin

            data_.Append;
            data_kode.AsString:=DM.Qcek.fieldbyname('kode').AsString;
            data_jumlah.AsInteger:=DM.Qcek.fieldbyname('jumlah').AsInteger;   
            data_.Post;

            Application.ProcessMessages;
            DM.Qcek.Next;
          end;



            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_dump');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('repair table pelanggan_dump');
            Qhost1.Execute;


            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('optimize table pelanggan_dump');
            Qhost1.Execute;



            data_.First; 

            Caption:='Sinkron Pelanggan';
            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=data_.RecordCount;
            Application.ProcessMessages;
            for i:=1 to data_.RecordCount do
            begin

                data_.First;



                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select p.* FROM pelanggan p WHERE p.koderayon="'+data_kode.AsString+'" ORDER BY p.nosamb ASC');
                Dm.Qcek.Open;



                  for j:=1 to DM.Qcek.RecordCount do
                  begin


                    

                    Umain.openkoneksi_host;

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into pelanggan_dump (nosamb,norekening,nama,alamat,kodegol,kodediameter,koderayon,kodekelurahan,kodekolektif,sumberair,status,flag,nopendaftaran,norab,waktuupdate,adaangsuran,');
                    Qhost1.SQL.Add('kodeblok,luasrumah,notelp,nohp,adatunggakan,serimeter,merkmeter,norumah,rt,rw,keterangan,tglmeter)');
                    Qhost1.SQL.Add('values (:nosamb,:norekening,:nama,:alamat,:kodegol,:kodediameter,:koderayon,:kodekelurahan,:kodekolektif,:sumberair,:status,:flag,:nopendaftaran,:norab,NOW(),:adaangsuran,');
                    Qhost1.SQL.Add(':kodeblok,:luasrumah,:notelp,:nohp,:adatunggakan,:serimeter,:merkmeter,:norumah,:rt,:rw,:keterangan,:tglmeter)');
                    Qhost1.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                    Qhost1.ParamByName('norekening').AsString:=DM.Qcek.fieldbyname('norekening').AsString;
                    Qhost1.ParamByName('nama').AsString:=DM.Qcek.fieldbyname('nama').AsString;
                    Qhost1.ParamByName('alamat').AsString:=DM.Qcek.fieldbyname('alamat').AsString;
                    Qhost1.ParamByName('kodegol').AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
                    Qhost1.ParamByName('kodediameter').AsString:=DM.Qcek.fieldbyname('kodediameter').AsString;
                    Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                    Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
                    Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
                    Qhost1.ParamByName('sumberair').AsString:=DM.Qcek.fieldbyname('sumberair').AsString;
                    Qhost1.ParamByName('status').AsString:=DM.Qcek.fieldbyname('status').AsString;
                    Qhost1.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                    Qhost1.ParamByName('nopendaftaran').AsString:=DM.Qcek.fieldbyname('nopendaftaran').AsString;
                    Qhost1.ParamByName('norab').AsString:=DM.Qcek.fieldbyname('norab').AsString;
                    Qhost1.ParamByName('adaangsuran').AsString:=DM.Qcek.fieldbyname('adaangsuran').AsString;
                    Qhost1.ParamByName('kodeblok').AsString:=DM.Qcek.fieldbyname('kodeblok').AsString;
                    Qhost1.ParamByName('luasrumah').AsCurrency:=DM.Qcek.fieldbyname('luasrumah').AsCurrency;
                    Qhost1.ParamByName('notelp').AsString:=DM.Qcek.fieldbyname('notelp').AsString;
                    Qhost1.ParamByName('nohp').AsString:=DM.Qcek.fieldbyname('nohp').AsString;
                    Qhost1.ParamByName('adatunggakan').AsString:='0';
                    Qhost1.ParamByName('serimeter').AsString:=DM.Qcek.fieldbyname('serimeter').AsString;
                    Qhost1.ParamByName('merkmeter').AsString:=DM.Qcek.fieldbyname('merk').AsString;
                    Qhost1.ParamByName('norumah').AsString:=DM.Qcek.fieldbyname('norumah').AsString;
                    Qhost1.ParamByName('rt').AsString:=DM.Qcek.fieldbyname('rt').AsString;
                    Qhost1.ParamByName('rw').AsString:=DM.Qcek.fieldbyname('rw').AsString;
                    Qhost1.ParamByName('keterangan').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
                    Qhost1.ParamByName('tglmeter').AsDate:=DM.Qcek.fieldbyname('tglmeter').AsDateTime;
                    Qhost1.Execute;

                    DM.Qcek.Next;
                  end;


              data_.Delete;

              Progress.IncPartsByOne;
              Application.ProcessMessages;
              data_.Next;


            end;




            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into pelanggan SELECT * FROM pelanggan_dump ORDER BY nosamb ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into nosamb SELECT nosamb,nama,waktuupdate,"Hasil Sinkron",koderayon FROM pelanggan_dump WHERE nosamb NOT IN (select nosamb FROM nosamb) ORDER BY nosamb ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_dump');
            Qhost1.Execute;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('COMMIT');
            Qexec.Execute;



          EXCEPT ON E:Exception DO
          BEGIN

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('ROLLBACK');
               Qexec.Execute;

               MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
          END;
          END;


      end; }




     {    if(cekpelangganlimbah.Checked=true)then
      begin


          TRY


          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('START TRANSACTION');
          Qexec.Execute;



          DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('SELECT p.koderayon AS kode,COUNT(p.nomorlimbah) AS jumlah FROM pelanggan_limbah p GROUP BY p.koderayon ASC');
          Dm.Qcek.Open;


          data_.Close;
          data_.Open;

          Application.ProcessMessages;

          for i:=1 to DM.Qcek.RecordCount do
          begin

            data_.Append;
            data_kode.AsString:=DM.Qcek.fieldbyname('kode').AsString;
            data_jumlah.AsInteger:=DM.Qcek.fieldbyname('jumlah').AsInteger;   
            data_.Post;

            Application.ProcessMessages;
            DM.Qcek.Next;
          end;



            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_limbahdump');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('repair table pelanggan_limbahdump');
            Qhost1.Execute;


            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('optimize table pelanggan_limbahdump');
            Qhost1.Execute;



            data_.First; 

            Caption:='Sinkron Pelanggan';
            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=data_.RecordCount;
            Application.ProcessMessages;
            for i:=1 to data_.RecordCount do
            begin

                data_.First;



                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select p.* FROM pelanggan_limbah p WHERE p.koderayon="'+data_kode.AsString+'" ORDER BY p.nomorlimbah ASC');
                Dm.Qcek.Open;



                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Umain.openkoneksi_host;

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into pelanggan_limbahdump (nomorlimbah,nosamb,nama,alamat,kodelimbah,koderayon,kodekelurahan,kodekolektif,status,flag,nopendaftaran,norab,waktuupdate,');
                    Qhost1.SQL.Add('kodeblok,luasrumah,notelp,nohp,adatunggakan,norumah,rt,rw,keterangan)');
                    Qhost1.SQL.Add('values (:nomorlimbah,:nosamb,:nama,:alamat,:kodelimbah,:koderayon,:kodekelurahan,:kodekolektif,:status,:flag,:nopendaftaran,:norab,NOW(),');
                    Qhost1.SQL.Add(':kodeblok,:luasrumah,:notelp,:nohp,:adatunggakan,:norumah,:rt,:rw,:keterangan)');
                    Qhost1.ParamByName('nomorlimbah').AsString:=DM.Qcek.fieldbyname('nomorlimbah').AsString;
                    Qhost1.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                    Qhost1.ParamByName('nama').AsString:=DM.Qcek.fieldbyname('nama').AsString;
                    Qhost1.ParamByName('alamat').AsString:=DM.Qcek.fieldbyname('alamat').AsString;
                    Qhost1.ParamByName('kodelimbah').AsString:=DM.Qcek.fieldbyname('kodelimbah').AsString;
                    Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                    Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
                    Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
                    Qhost1.ParamByName('status').AsString:=DM.Qcek.fieldbyname('status').AsString;
                    Qhost1.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                    Qhost1.ParamByName('nopendaftaran').AsString:=DM.Qcek.fieldbyname('nopendaftaran').AsString;
                    Qhost1.ParamByName('norab').AsString:=DM.Qcek.fieldbyname('norab').AsString;
                    Qhost1.ParamByName('kodeblok').AsString:=DM.Qcek.fieldbyname('kodeblok').AsString;
                    Qhost1.ParamByName('luasrumah').AsCurrency:=DM.Qcek.fieldbyname('luasrumah').AsCurrency;
                    Qhost1.ParamByName('notelp').AsString:=DM.Qcek.fieldbyname('notelp').AsString;
                    Qhost1.ParamByName('nohp').AsString:=DM.Qcek.fieldbyname('nohp').AsString;
                    Qhost1.ParamByName('adatunggakan').AsString:='0';
                    Qhost1.ParamByName('norumah').AsString:=DM.Qcek.fieldbyname('norumah').AsString;
                    Qhost1.ParamByName('rt').AsString:=DM.Qcek.fieldbyname('rt').AsString;
                    Qhost1.ParamByName('rw').AsString:=DM.Qcek.fieldbyname('rw').AsString;
                    Qhost1.ParamByName('keterangan').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;    
                    Qhost1.Execute;

                    DM.Qcek.Next;
                  end;


              data_.Delete;

              Progress.IncPartsByOne;
              Application.ProcessMessages;
              data_.Next;


            end;




            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_limbah');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into pelanggan_limbah SELECT * FROM pelanggan_limbahdump ORDER BY nomorlimbah ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into nosamb_limbah SELECT nomorlimbah,nama,waktuupdate,"Hasil Sinkron",koderayon FROM pelanggan_limbahdump WHERE nomorlimbah NOT IN (select nomor FROM nosamb_limbah) ORDER BY nomorlimbah ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_limbahdump');
            Qhost1.Execute;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('COMMIT');
            Qexec.Execute;



          EXCEPT ON E:Exception DO
          BEGIN

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('ROLLBACK');
               Qexec.Execute;

               MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
          END;
          END;


      end;  }




      
     {    if(cekpelangganlltt.Checked=true)then
      begin


          TRY


          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('START TRANSACTION');
          Qexec.Execute;



          DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('SELECT p.koderayon AS kode,COUNT(p.nomorlltt) AS jumlah FROM pelanggan_lltt p GROUP BY p.koderayon ASC');
          Dm.Qcek.Open;


          data_.Close;
          data_.Open;

          Application.ProcessMessages;

          for i:=1 to DM.Qcek.RecordCount do
          begin

            data_.Append;
            data_kode.AsString:=DM.Qcek.fieldbyname('kode').AsString;
            data_jumlah.AsInteger:=DM.Qcek.fieldbyname('jumlah').AsInteger;   
            data_.Post;

            Application.ProcessMessages;
            DM.Qcek.Next;
          end;



            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_llttdump');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('repair table pelanggan_llttdump');
            Qhost1.Execute;


            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('optimize table pelanggan_llttdump');
            Qhost1.Execute;



            data_.First; 

            Caption:='Sinkron Pelanggan';
            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=data_.RecordCount;
            Application.ProcessMessages;
            for i:=1 to data_.RecordCount do
            begin

                data_.First;



                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select p.* FROM pelanggan_lltt p WHERE p.koderayon="'+data_kode.AsString+'" ORDER BY p.nomorlltt ASC');
                Dm.Qcek.Open;



                  for j:=1 to DM.Qcek.RecordCount do
                  begin


                    

                    Umain.openkoneksi_host;

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into pelanggan_llttdump (nomorlltt,nosamb,nama,alamat,kodelltt,koderayon,kodekelurahan,kodekolektif,status,flag,nopendaftaran,norab,waktuupdate,');
                    Qhost1.SQL.Add('kodeblok,luasrumah,notelp,nohp,adatunggakan,norumah,rt,rw,keterangan)');
                    Qhost1.SQL.Add('values (:nomorlltt,:nosamb,:nama,:alamat,:kodelltt,:koderayon,:kodekelurahan,:kodekolektif,:status,:flag,:nopendaftaran,:norab,NOW(),');
                    Qhost1.SQL.Add(':kodeblok,:luasrumah,:notelp,:nohp,:adatunggakan,:norumah,:rt,:rw,:keterangan)');
                    Qhost1.ParamByName('nomorlltt').AsString:=DM.Qcek.fieldbyname('nomorlltt').AsString;
                    Qhost1.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                    Qhost1.ParamByName('nama').AsString:=DM.Qcek.fieldbyname('nama').AsString;
                    Qhost1.ParamByName('alamat').AsString:=DM.Qcek.fieldbyname('alamat').AsString;
                    Qhost1.ParamByName('kodelltt').AsString:=DM.Qcek.fieldbyname('kodelltt').AsString;
                    Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                    Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
                    Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
                    Qhost1.ParamByName('status').AsString:=DM.Qcek.fieldbyname('status').AsString;
                    Qhost1.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                    Qhost1.ParamByName('nopendaftaran').AsString:=DM.Qcek.fieldbyname('nopendaftaran').AsString;
                    Qhost1.ParamByName('norab').AsString:=DM.Qcek.fieldbyname('norab').AsString;
                    Qhost1.ParamByName('kodeblok').AsString:=DM.Qcek.fieldbyname('kodeblok').AsString;
                    Qhost1.ParamByName('luasrumah').AsCurrency:=DM.Qcek.fieldbyname('luasrumah').AsCurrency;
                    Qhost1.ParamByName('notelp').AsString:=DM.Qcek.fieldbyname('notelp').AsString;
                    Qhost1.ParamByName('nohp').AsString:=DM.Qcek.fieldbyname('nohp').AsString;
                    Qhost1.ParamByName('adatunggakan').AsString:='0';
                    Qhost1.ParamByName('norumah').AsString:=DM.Qcek.fieldbyname('norumah').AsString;
                    Qhost1.ParamByName('rt').AsString:=DM.Qcek.fieldbyname('rt').AsString;
                    Qhost1.ParamByName('rw').AsString:=DM.Qcek.fieldbyname('rw').AsString;
                    Qhost1.ParamByName('keterangan').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;    
                    Qhost1.Execute;

                    DM.Qcek.Next;
                  end;


              data_.Delete;

              Progress.IncPartsByOne;
              Application.ProcessMessages;
              data_.Next;


            end;




            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_lltt');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into pelanggan_lltt SELECT * FROM pelanggan_llttdump ORDER BY nomorlltt ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('replace into nosamb_lltt SELECT nomorlltt,nama,waktuupdate,"Hasil Sinkron",koderayon FROM pelanggan_llttdump WHERE nomorlltt NOT IN (select nomor FROM nosamb_lltt) ORDER BY nomorlltt ASC');
            Qhost1.Execute;

            Qhost1.close;
            Qhost1.SQL.Clear;
            Qhost1.SQL.Add('truncate table pelanggan_llttdump');
            Qhost1.Execute;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('COMMIT');
            Qexec.Execute;



          EXCEPT ON E:Exception DO
          BEGIN

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('ROLLBACK');
               Qexec.Execute;

               MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
          END;
          END;


      end; }



      if (ceklimbah.Checked=true) or (ceklltt.Checked=true) or (cekpiutang.Checked=true) then
      begin
        Umain.Qcek.close;
        Umain.Qcek.SQL.Clear;
        Umain.Qcek.SQL.Add('SELECT nosamb FROM permohonan_rubah_rayon WHERE flaghapus="0" AND  flagprosesdata="0"');
        Umain.Qcek.Open;
        if(Umain.Qcek.RecordCount>0)then
        begin
          MessageDlg('Proses Upload Tagihan belum bisa dilakukan karena masih terdapat aduan Pindah Alamat yang belum diverifikasi.'+#13+
                     'Harap menghubungi bagian terkait untuk menyelesaikan proses pindah alamat terlebih dahulu!',mtInformation,[mbOK],0);
          exit;
        end;


        if (ceklimbah.Checked=true)then
        begin

                  Qexec.close;
                  Qexec.SQL.Clear;
                  Qexec.SQL.Add('TRUNCATE TABLE piutanglimbahdump');
                  Qexec.Execute;



                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select c.* FROM piutanglimbah c WHERE c.flagkirim="0" ORDER BY c.periode,c.nomorlimbah ASC');
                  Dm.Qcek.Open;


                  if DM.Qcek.RecordCount>0 then
                  begin

                      TRY



                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('START TRANSACTION');
                      Qexec.Execute;


                      Application.ProcessMessages;


                      Progress.Visible:=true;
                      Progress.PartsComplete:=0;
                      Progress.TotalParts:=DM.Qcek.RecordCount;


                      for  i:=1  to DM.Qcek.RecordCount  do
                      begin


                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('REPLACE INTO piutanglimbahdump (kode,periode,bulan,nomorlimbah,nosamb,kodelimbahyangberlaku,kodelimbah,koderayon,total,flagaktif,flag) VALUES (:kode,:periode,:bulan,:nomorlimbah,:nosamb,:kodelimbahyangberlaku,');
                         Qexec.SQL.Add(':kodelimbah,:koderayon,:total,:flagaktif,:flag)');
                         Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                         Qexec.ParamByName('periode').AsString:=DM.Qcek.fieldbyname('periode').AsString;
                         Qexec.ParamByName('nomorlimbah').AsString:=DM.Qcek.fieldbyname('nomorlimbah').AsString;
                         Qexec.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                         Qexec.ParamByName('kodelimbahyangberlaku').AsString:=DM.Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                         Qexec.ParamByName('kodelimbah').AsString:=DM.Qcek.fieldbyname('kodelimbah').AsString;
                         Qexec.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                         Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('total').AsCurrency;
                         Qexec.ParamByName('flagaktif').AsString:=DM.Qcek.fieldbyname('flagaktif').AsString;
                         Qexec.ParamByName('bulan').AsString:=DM.Qcek.fieldbyname('bulan').AsString;
                         Qexec.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                         Qexec.Execute;


                         Qcektabel.Close;
                         Qcektabel.SQL.Clear;
                         Qcektabel.SQL.Add('SHOW TABLES LIKE "drdlimbah'+DM.Qcek.fieldbyname('periode').AsString+'"');
                         Qcektabel.Open;


                         if Qcektabel.RecordCount>0 then
                         begin

                          DM.Qexec.close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('UPDATE drdlimbah'+DM.Qcek.fieldbyname('periode').AsString+' SET flagkirim="1" WHERE nomorlimbah=:nomorlimbah');
                          DM.Qexec.ParamByName('nomorlimbah').AsString:=DM.Qcek.fieldbyname('nomorlimbah').AsString;
                          DM.Qexec.Execute;

                         end;

                          DM.Qexec.close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('UPDATE piutanglimbah SET flagkirim="1" WHERE kode=:kode');
                          DM.Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                          DM.Qexec.Execute;

                          Application.ProcessMessages;
                          Progress.IncPartsByOne;
                          DM.Qcek.Next;


                      end;



                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('REPLACE INTO piutanglimbah SELECT * FROM piutanglimbahdump');
                         Qexec.Execute;

                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('TRUNCATE TABLE piutanglimbahdump');
                         Qexec.Execute;


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('COMMIT');
                      Qexec.Execute;


                    EXCEPT ON E:Exception DO
                    BEGIN


                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('ROLLBACK');
                         DM.Qexec.Execute;


                         Qexec.close;
                         Qexec.SQL.Clear;
                         Qexec.SQL.Add('ROLLBACK');
                         Qexec.Execute;

                         MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);

                    END;
                    END;




                  end;



        end;




          if (ceklltt.Checked=true)then
        begin

                   Qexec.close;
                   Qexec.SQL.Clear;
                   Qexec.SQL.Add('TRUNCATE TABLE piutangllttdump');
                   Qexec.Execute;



                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select c.* FROM piutanglltt c WHERE c.flagkirim="0" ORDER BY c.periode,c.nomorlltt ASC');
                  Dm.Qcek.Open;


                  if DM.Qcek.RecordCount>0 then
                  begin

                      TRY



                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('START TRANSACTION');
                      Qexec.Execute;


                      Application.ProcessMessages;


                      Progress.Visible:=true;
                      Progress.PartsComplete:=0;
                      Progress.TotalParts:=DM.Qcek.RecordCount;


                      for  i:=1  to DM.Qcek.RecordCount  do
                      begin


                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('REPLACE INTO piutangllttdump (kode,periode,bulan,nomorlltt,nosamb,kodellttyangberlaku,kodelltt,koderayon,total,flagaktif,flag) VALUES (:kode,:periode,:bulan,:nomorlltt,:nosamb,:kodellttyangberlaku,:kodelltt,:koderayon,:total,:flagaktif,:flag)');
                         Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                         Qexec.ParamByName('periode').AsString:=DM.Qcek.fieldbyname('periode').AsString;
                         Qexec.ParamByName('nomorlltt').AsString:=DM.Qcek.fieldbyname('nomorlltt').AsString;
                         Qexec.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                         Qexec.ParamByName('kodellttyangberlaku').AsString:=DM.Qcek.fieldbyname('kodellttyangberlaku').AsString;
                         Qexec.ParamByName('kodelltt').AsString:=DM.Qcek.fieldbyname('kodelltt').AsString;
                         Qexec.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                         Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('total').AsCurrency;
                         Qexec.ParamByName('flagaktif').AsString:=DM.Qcek.fieldbyname('flagaktif').AsString;
                         Qexec.ParamByName('bulan').AsString:=DM.Qcek.fieldbyname('bulan').AsString;
                         Qexec.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                         Qexec.Execute;


                         Qcektabel.Close;
                         Qcektabel.SQL.Clear;
                         Qcektabel.SQL.Add('SHOW TABLES LIKE "drdlltt'+DM.Qcek.fieldbyname('periode').AsString+'"');
                         Qcektabel.Open;


                         if Qcektabel.RecordCount>0 then
                         begin


                          DM.Qexec.close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('UPDATE drdlltt'+DM.Qcek.fieldbyname('periode').AsString+' SET flagkirim="1" WHERE nomorlltt=:nomorlltt');
                          DM.Qexec.ParamByName('nomorlltt').AsString:=DM.Qcek.fieldbyname('nomorlltt').AsString;
                          DM.Qexec.Execute;

                         end;

                          DM.Qexec.close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('UPDATE piutanglltt SET flagkirim="1" WHERE kode=:kode');
                          DM.Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                          DM.Qexec.Execute;

                          Application.ProcessMessages;
                          Progress.IncPartsByOne;
                          DM.Qcek.Next;


                      end;



                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('REPLACE INTO piutanglltt SELECT * FROM piutangllttdump');
                         Qexec.Execute;

                         Qexec.close;
                         Qexec.SQl.Clear;
                         Qexec.SQL.Add('TRUNCATE TABLE piutangllttdump');
                         Qexec.Execute;


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('COMMIT');
                      Qexec.Execute;


                    EXCEPT ON E:Exception DO
                    BEGIN


                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('ROLLBACK');
                         DM.Qexec.Execute;


                         Qexec.close;
                         Qexec.SQL.Clear;
                         Qexec.SQL.Add('ROLLBACK');
                         Qexec.Execute;

                         MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);

                    END;
                    END;




                  end;



        end;




        if (cekpiutang.Checked=true)then
        begin


                       Qcek.Close;
                       Qcek.SQL.Clear;
                       Qcek.SQL.Add('select * FROm piutang WHERE flagkirim="0" AND nosamb NOT IN(SELECT nosamb FROM pelanggan WHERE flaghapus="1") limit 1');
                       Qcek.Open;

                       if(Qcek.RecordCount>0)then
                       begin


                           TRY

  {                            DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('START TRANSACTION');
                              DM.Qexec.Execute;

                              Qexec.close;
                              Qexec.SQL.Clear;
                              Qexec.SQL.Add('START TRANSACTION');
                              Qexec.Execute;
  }

                              Qcek.close;
                              Qcek.SQL.Clear;
                              Qcek.SQL.Add('select koderayon FROM piutang WHERE flagkirim="0" AND nosamb NOT IN(SELECT nosamb FROM pelanggan WHERE flaghapus="1") GROUp BY koderayon ASC');
                              Qcek.Open;


                              for i:=1 to Qcek.RecordCount do
                              begin

                                    Umain.openkoneksi_host;

                                    lblPanelInfo.Caption:='UPLOAD DATA RAYON '+Qcek.fieldbyname('koderayon').AsString;

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('START TRANSACTION');
                                    DM.Qexec.Execute;

                                    Qexec.close;
                                    Qexec.SQL.Clear;
                                    Qexec.SQL.Add('START TRANSACTION');
                                    Qexec.Execute;

                                    Qexec.Close;
                                    Qexec.SQL.Clear;
                                    Qexec.SQL.Add('TRUNCATE TABLE drddump');
                                    Qexec.Execute;

                                    Qrek.close;
                                    Qrek.SQL.Clear;
                                    Qrek.SQL.Add('select c.*,p.nama,p.alamat  ,COALESCE(g.ppn,0) as persenppn,coalesce(g.trf_denda_berdasarkan_persen,0) as trf_denda_berdasarkan_persen FROm piutang ');
                                    Qrek.SQL.Add('c LEFT JOIn pelanggan p On c.nosamb=p.nosamb LEFT JOIN golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku ');
                                    Qrek.SQL.Add('WHERE c.flagkirim="0" AND c.koderayon=:koderayon AND p.flaghapus<>"1" order by c.nosamb,c.periode ASC');
                                    Qrek.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                    Qrek.Open;

                                    if(Qrek.RecordCount>0)then
                                    begin

                                          Application.ProcessMessages;


                                          Progress.Visible:=true;
                                          Progress.PartsComplete:=0;
                                          Progress.TotalParts:=Qrek.RecordCount;
                                          for j:=1 to Qrek.RecordCount do
                                          begin

                                                Umain.openkoneksi_host;

                                                Caption:='Upload Rekening '+Qrek.fieldbyname('bulan').AsString;
                                                Qexec.Close;
                                                Qexec.SQL.Clear;
                                                Qexec.SQL.Add(Qexec.SQLInsert.Text);
                                                Qexec.ParamByName('kode').AsString:=Qrek.Fieldbyname('kode').AsString;
                                                Qexec.ParamByName('periode').AsString:=Qrek.Fieldbyname('periode').AsString;
                                                Qexec.ParamByName('nosamb').AsString:=Qrek.Fieldbyname('nosamb').AsString;
                                                Qexec.ParamByName('nama').AsString:=Qrek.Fieldbyname('nama').AsString;
                                                Qexec.ParamByName('alamat').AsString:=Qrek.Fieldbyname('alamat').AsString;
                                                Qexec.ParamByName('kodegolyangberlaku').AsString:=Qrek.Fieldbyname('kodegolyangberlaku').AsString;
                                                Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qrek.Fieldbyname('kodediameteryangberlaku').AsString;
                                                Qexec.ParamByName('kodegol').AsString:=Qrek.Fieldbyname('kodegol').AsString;
                                                Qexec.ParamByName('kodediameter').AsString:=Qrek.Fieldbyname('kodediameter').AsString;
                                                Qexec.ParamByName('koderayon').AsString:=Qrek.Fieldbyname('koderayon').AsString;
                                                //Qexec.ParamByName('kodekelurahan').AsString:=Qrek.Fieldbyname('kodekelurahan').AsString;
                                                Qexec.ParamByName('kodekolektif').AsString:=Qrek.Fieldbyname('kodekolektif').AsString;
                                                Qexec.ParamByName('stanlalu').AsCurrency:=Qrek.Fieldbyname('stanlalu').AsCurrency;
                                                Qexec.ParamByName('stanskrg').AsCurrency:=Qrek.Fieldbyname('stanskrg').AsCurrency;
                                                Qexec.ParamByName('stanangkat').AsCurrency:=Qrek.Fieldbyname('stanangkat').AsCurrency;
                                                Qexec.ParamByName('pakai').AsCurrency:=Qrek.Fieldbyname('pakai').AsCurrency;
                                                Qexec.ParamByName('biayapemakaian').AsCurrency:=Qrek.Fieldbyname('biayapemakaian').AsCurrency;
                                                Qexec.ParamByName('administrasi').AsCurrency:=Qrek.Fieldbyname('administrasi').AsCurrency;
                                                Qexec.ParamByName('pemeliharaan').AsCurrency:=Qrek.Fieldbyname('pemeliharaan').AsCurrency;
                                                Qexec.ParamByName('retribusi').AsCurrency:=Qrek.Fieldbyname('retribusi').AsCurrency;
                                                Qexec.ParamByName('meterai').AsCurrency:=Qrek.Fieldbyname('meterai').AsCurrency;
                                                Qexec.ParamByName('dendatunggakan').AsCurrency:=Qrek.Fieldbyname('dendatunggakan').AsCurrency;
                                                Qexec.ParamByName('rekair').AsCurrency:=Qrek.Fieldbyname('rekair').AsCurrency;
                                                Qexec.ParamByName('total').AsCurrency:=Qrek.Fieldbyname('total').AsCurrency;
                                                Qexec.ParamByName('tglmulaidenda').AsDate:=Qrek.Fieldbyname('tglmulaidenda').AsDateTime;
                                                Qexec.ParamByName('tglmulaidenda2').AsDate:=Qrek.Fieldbyname('tglmulaidenda2').AsDateTime;
                                                Qexec.ParamByName('tglmulaidenda3').AsDate:=Qrek.Fieldbyname('tglmulaidenda3').AsDateTime;
                                                Qexec.ParamByName('tglmulaidenda4').AsDate:=Qrek.Fieldbyname('tglmulaidenda4').AsDateTime;
                                                Qexec.ParamByName('tglmulaidendaperbulan').AsDate:=Qrek.Fieldbyname('tglmulaidendaperbulan').AsDateTime;
                                                Qexec.ParamByName('bulan').AsString:=Qrek.Fieldbyname('bulan').AsString;
                                                Qexec.ParamByName('prog1').AsCurrency:=Qrek.Fieldbyname('prog1').AsCurrency;
                                                Qexec.ParamByName('prog2').AsCurrency:=Qrek.Fieldbyname('prog2').AsCurrency;
                                                Qexec.ParamByName('prog3').AsCurrency:=Qrek.Fieldbyname('prog3').AsCurrency;
                                                Qexec.ParamByName('prog4').AsCurrency:=Qrek.Fieldbyname('prog4').AsCurrency;
                                                Qexec.ParamByName('prog5').AsCurrency:=Qrek.Fieldbyname('prog5').AsCurrency;
                                                //Qexec.ParamByName('tglupload').AsDateTime:=now;
                                                Qexec.ParamByName('flag').AsString:=Qrek.Fieldbyname('flag').AsString;
                                                //Qexec.ParamByName('angsuran').AsCurrency:=Qrek.Fieldbyname('angsuran').AsCurrency;
                                                Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qrek.Fieldbyname('trf_dendatunggakan').AsCurrency;
                                                Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qrek.Fieldbyname('trf_dendatunggakan2').AsCurrency;
                                                Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qrek.Fieldbyname('trf_dendatunggakan3').AsCurrency;
                                                Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qrek.Fieldbyname('trf_dendatunggakan4').AsCurrency;
                                                Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qrek.Fieldbyname('trf_dendatunggakanperbulan').AsCurrency;
                                                Qexec.ParamByName('dendatunggakan').AsCurrency:=Qrek.Fieldbyname('dendatunggakan').AsCurrency;
                                                Qexec.ParamByName('kodeadministrasilain').AsString:=Qrek.Fieldbyname('kodeadministrasilain').AsString;
                                                Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qrek.Fieldbyname('kodepemeliharaanlain').AsString;
                                                Qexec.ParamByName('koderetribusilain').AsString:=Qrek.Fieldbyname('koderetribusilain').AsString;
                                                Qexec.ParamByName('administrasilain').AsCurrency:=Qrek.Fieldbyname('administrasilain').AsCurrency;
                                                Qexec.ParamByName('pemeliharaanlain').AsCurrency:=Qrek.Fieldbyname('pemeliharaanlain').AsCurrency;
                                                Qexec.ParamByName('retribusilain').AsCurrency:=Qrek.Fieldbyname('retribusilain').AsCurrency;
                                                Qexec.ParamByName('pelayanan').AsCurrency:=Qrek.Fieldbyname('pelayanan').AsCurrency;
                                                Qexec.ParamByName('airlimbah').AsCurrency:=Qrek.Fieldbyname('airlimbah').AsCurrency;
                                                Qexec.ParamByName('dendapakai0').AsCurrency:=Qrek.Fieldbyname('dendapakai0').AsCurrency;
                                                Qexec.ParamByName('persenppn').AsCurrency:=Qrek.Fieldbyname('persenppn').AsCurrency;
                                                Qexec.ParamByName('ppn').AsCurrency:=Qrek.Fieldbyname('ppn').AsCurrency;
                                                Qexec.ParamByName('flagangsur').AsString:=Qrek.Fieldbyname('flagangsur').AsString;
                                                Qexec.ParamByName('noangsuran').AsString:=Qrek.Fieldbyname('noangsuran').AsString;
                                                Qexec.ParamByName('blok1').AsCurrency:=Qrek.Fieldbyname('blok1').AsCurrency;
                                                Qexec.ParamByName('blok2').AsCurrency:=Qrek.Fieldbyname('blok2').AsCurrency;
                                                Qexec.ParamByName('blok3').AsCurrency:=Qrek.Fieldbyname('blok3').AsCurrency;
                                                Qexec.ParamByName('blok4').AsCurrency:=Qrek.Fieldbyname('blok4').AsCurrency;
                                                Qexec.ParamByName('blok5').AsCurrency:=Qrek.Fieldbyname('blok5').AsCurrency;
                                                Qexec.ParamByName('kelainan').AsString:=Qrek.Fieldbyname('kelainan').AsString;
                                                Qexec.ParamByName('pembacameter').AsString:=Qrek.Fieldbyname('pembacameter').AsString;
                                                Qexec.ParamByName('trf_denda_berdasarkan_persen').AsString:=Qrek.Fieldbyname('trf_denda_berdasarkan_persen').AsString;
                                                Qexec.Execute;

                                                Qcek_.Close;
                                                Qcek_.SQL.Clear;
                                                Qcek_.SQL.Add('SELECT norekening,waktuupdate FROM norekening WHERE kode=:kode');
                                                Qcek_.ParamByName('kode').AsString:=Qrek.Fieldbyname('kode').AsString;
                                                Qcek_.Open;

                                                Qexec.close;
                                                Qexec.SQL.Clear;
                                                Qexec.SQL.Add('REPLACE into norekening values (:kode,:norekening,:waktuupdate)');
                                                Qexec.ParamByName('kode').AsString:=Qrek.Fieldbyname('kode').AsString;
                                                Qexec.ParamByName('norekening').AsString:=Qcek_.Fieldbyname('norekening').AsString;
                                                Qexec.ParamByName('waktuupdate').AsDateTime:=Qcek_.Fieldbyname('waktuupdate').AsDateTime;
                                                Qexec.Execute;

                                                 Qcektabel.Close;
                                                 Qcektabel.SQL.Clear;
                                                 Qcektabel.SQL.Add('SHOW TABLES LIKE "drd'+Qrek.fieldbyname('periode').AsString+'"');
                                                 Qcektabel.Open;


                                                 if Qcektabel.RecordCount>0 then
                                                 begin

                                                  DM.Qexec.close;
                                                  DM.Qexec.SQL.Clear;
                                                  DM.Qexec.SQL.Add('update drd'+Qrek.fieldbyname('periode').AsString+' set flagkirim="1",userkirim=:user,tglkirim=NOW() WHERE nosamb=:nosamb');
                                                  DM.Qexec.ParamByName('nosamb').AsString:=Qrek.Fieldbyname('nosamb').AsString;
                                                  DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                                                  DM.Qexec.Execute;

                                                 end;

                                                DM.Qexec.close;
                                                DM.Qexec.SQL.Clear;
                                                DM.Qexec.SQL.Add('update piutang set flagkirim="1",userkirim=:user,tglkirim=NOW() WHERE kode=:kode');
                                                DM.Qexec.ParamByName('kode').AsString:=Qrek.Fieldbyname('kode').AsString;
                                                DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                                                DM.Qexec.Execute;

                                            Progress.IncPartsByOne;
                                            Application.ProcessMessages;
                                            Qrek.Next;


                                          end;  /// end for

                                          Progress.Visible:=False;


                                       //restore
                                       ///hanya restore drd yang belum lunas......



                                        Qexec.Close;
                                        Qexec.SQL.Clear;
                                        Qexec.SQL.Add('REPLACE INTO piutang SELECT c.* FROM drddump c LEFT JOIN bayar b ON c.kode=b.kode WHERE b.kode IS NULL');
                                        Qexec.Execute;


                                        Qexec.Close;
                                        Qexec.SQL.Clear;
                                        Qexec.SQL.Add('TRUNCATE TABLE drddump');
                                        Qexec.Execute;

                                        Qexec.close;
                                        Qexec.SQL.Clear;
                                        Qexec.SQL.Add('COMMIT');
                                        Qexec.Execute;

                                        DM.Qexec.close;
                                        DM.Qexec.SQL.Clear;
                                        DM.Qexec.SQL.Add('COMMIT');
                                        DM.Qexec.Execute;


                                end;

                              Qcek.Next;

                        end;

                       DM.uraianlogakses:='Upload Tagihan';
                       DM.targetlogakses:=umain.user.Caption;
                       DM.logakses;

                       lblPanelInfo.Caption:='UPLOAD DATA SUKSES';

  {                     Qexec.close;
                       Qexec.SQL.Clear;
                       Qexec.SQL.Add('COMMIT');
                       Qexec.Execute;

                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('COMMIT');
                       DM.Qexec.Execute;

  }

                      EXCEPT ON E:Exception DO
                      BEGIN

                           DM.Qexec.close;
                           DM.Qexec.SQL.Clear;
                           DM.Qexec.SQL.Add('ROLLBACK');
                           DM.Qexec.Execute;
                           MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
                      END;
                      END;


                end;




        end;

      end;

      if(cekOtomatisLunas.Checked=true)then
      begin

         TRY

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('START TRANSACTION');
            Qexec.Execute;

            QcekParam.close;
            QcekParam.SQL.Clear;
            QcekParam.SQL.Add('select metode_penagihan FROM pengaturan WHERE idx="1"');
            QcekParam.Open;

            if QcekParam.FieldByName('metode_penagihan').AsString='0' then
              _periodemulaitagih:=FormatDateTime('yyyymm',Date)
            else
              _periodemulaitagih:=FormatDateTime('yyyymm',IncMonth(Date,-1));



            QcekParam.Close;
            QcekParam.SQL.Clear;
            QcekParam.SQL.Add('SELECT p.*,u.namauser,u.kodeloket FROM param_diskon p LEFT JOIN userloket u ON p.keterangan=u.nama WHERE p.jenis=:jenis AND :periode>=p.periodeawal AND :periode<=p.periodeakhir AND ');
            QcekParam.SQL.Add('((:tanggal>=p.tglmulaiberlaku AND :tanggal<=p.tglberakhir) OR (p.tglmulaiberlaku IS NULL AND p.tglberakhir IS NULL)) AND p.keterangan IS NOT NULL AND p.keterangan<>"" AND nosamb<>""');
            QcekParam.ParamByName('jenis').AsString:= 'REK.AIR';
            QcekParam.ParamByName('periode').AsString:=_periodemulaitagih;
            QcekParam.ParamByName('tanggal').AsDate:=Date;
            QcekParam.Open;

            if QcekParam.RecordCount>0 then
            begin
              Application.ProcessMessages;

              Progress.Visible:=true;
              Progress.PartsComplete:=0;
              Progress.TotalParts:=QcekParam.RecordCount;
              Caption:='Pelunasan Otomatis';

              for x:=1 to  QcekParam.RecordCount do
              begin
                if QcekParam.FieldByName('nosamb').AsString<>'' then
                begin
                  QcekRek.Close;
                  QcekRek.SQL.Clear;
                  QcekRek.SQL.Add('SELECT * FROM piutang WHERE kode=:kode');
                  QcekRek.ParamByName('kode').AsString:=_periodemulaitagih+'.'+QcekParam.FieldByName('nosamb').AsString;
                  QcekRek.Open;

                  if (QcekRek.RecordCount>0) and ((QcekParam.FieldByName('persendiskon').AsCurrency=100) or ((QcekParam.FieldByName('nominaldiskon').AsCurrency>=QcekRek.Fieldbyname('rekair').AsCurrency) and (QcekParam.FieldByName('nominaldiskon').AsCurrency>0)) or ((QcekParam.FieldByName('kubikasidiskon').AsCurrency>=QcekRek.Fieldbyname('pakai').AsCurrency) and (QcekParam.FieldByName('kubikasidiskon').AsCurrency>0))) then
                  begin

                    lblPanelInfo.Caption:='PELUNASAN OTOMATIS '+QcekRek.fieldbyname('kode').AsString;

                    _nolpp := QcekParam.Fieldbyname('namauser').AsString+'-'+QcekParam.Fieldbyname('kodeloket').AsString+'-'+FormatDateTime('DDMMYYYYhhmmss',Now);

                    Qexec.close;
                    Qexec.SQL.Clear;
                    Qexec.SQL.Add(Qlunasair.SQLUpdate.Text);
                    Qexec.ParamByName('kode').AsString:=QcekRek.FieldByName('kode').AsString;
                    Qexec.ParamByName('loketupdate').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                    Qexec.ParamByName('kasir').AsString:=QcekParam.Fieldbyname('keterangan').AsString;
                    Qexec.ParamByName('loketbayar').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                    Qexec.ParamByName('nolpp').AsString:=_nolpp;
                    Qexec.ParamByName('terbilang').AsString:=DM.EjaAngkasen(FormatCurr('#.#0',QcekRek.Fieldbyname('rekair').AsCurrency));
                    Qexec.Execute;

                    Qexecsend.Close;
                    Qexecsend.SQL.Clear;
                    Qexecsend.SQL.Add(Qexecsend.SQLRefresh.Text);
                    Qexecsend.ParamByName('nolpp').AsString:=_nolpp;
                    Qexecsend.Execute;

                    if QcekParam.FieldByName('nominaldiskon').AsCurrency>0 then
                    begin
                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add(Qlunasair.SQLRefresh.Text);
                      Qexec.ParamByName('nominaldiskon').AsCurrency:= QcekParam.FieldByName('nominaldiskon').AsCurrency-QcekRek.Fieldbyname('rekair').AsCurrency;
                      Qexec.ParamByName('periodeawal').AsString:= FormatDateTime('YYYYMM',Now);
                      Qexec.ParamByName('periodeakhir').AsString:= FormatDateTime('YYYYMM',Now);

                      Qexec.ParamByName('jenis').AsString:= 'REK.AIR';
                      Qexec.ParamByName('kodegol').AsString:=QcekRek.Fieldbyname('kodegol').AsString;
                      Qexec.ParamByName('nosamb').AsString:=QcekRek.Fieldbyname('nosamb').AsString;
                      //Qcek.ParamByName('tanggal').AsDate:=Date;
                      Qexec.ParamByName('periode').AsString:=_periodemulaitagih;
                      Qexec.Execute;

                    end;

                    DM.uraianlogakses:='Pelunasan Otomatis '+QcekRek.Fieldbyname('nosamb').AsString+'/'+QcekRek.Fieldbyname('kodegol').AsString+' untuk Bulan '+QcekRek.Fieldbyname('bulan').AsString;
                    DM.targetlogakses:=_nolpp;
                    DM.logakses;
                  end;
                end
                else
                if QcekParam.FieldByName('kodegol').AsString<>'' then
                begin
                  if ((QcekParam.FieldByName('persendiskon').AsCurrency=100) or (QcekParam.FieldByName('nominaldiskon').AsCurrency>0) or ((QcekParam.FieldByName('kubikasidiskon').AsCurrency>0))) then
                  begin

                    lblPanelInfo.Caption:='PELUNASAN OTOMATIS '+QcekParam.fieldbyname('kodegol').AsString;

                    _nolpp := QcekParam.Fieldbyname('namauser').AsString+'-'+QcekParam.Fieldbyname('kodeloket').AsString+'-'+FormatDateTime('DDMMYYYYhhmmss',Now);

                    if QcekParam.FieldByName('persendiskon').AsCurrency=100 then
                    begin
                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add(Qlunasair.SQLInsert.Text);
                      Qexec.ParamByName('kodegol').AsString:=QcekParam.FieldByName('kodegol').AsString;
                      Qexec.ParamByName('periode').AsString:=_periodemulaitagih;
                      Qexec.ParamByName('loketupdate').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('kasir').AsString:=QcekParam.Fieldbyname('keterangan').AsString;
                      Qexec.ParamByName('loketbayar').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('nolpp').AsString:=_nolpp;
                      Qexec.Execute;
                    end
                    else
                    if QcekParam.FieldByName('nominaldiskon').AsCurrency>0 then
                    begin
                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add(Qlunasair.SQLDelete.Text);
                      Qexec.ParamByName('kodegol').AsString:=QcekParam.FieldByName('kodegol').AsString;
                      Qexec.ParamByName('periode').AsString:=_periodemulaitagih;
                      Qexec.ParamByName('rekair').AsCurrency:= QcekParam.FieldByName('nominaldiskon').AsCurrency;
                      Qexec.ParamByName('loketupdate').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('kasir').AsString:=QcekParam.Fieldbyname('keterangan').AsString;
                      Qexec.ParamByName('loketbayar').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('nolpp').AsString:=_nolpp;
                      Qexec.Execute;
                    end
                    else
                    if QcekParam.FieldByName('pakai').AsCurrency>0 then
                    begin
                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add(Qlunasair.SQLDelete.Text);
                      Qexec.ParamByName('kodegol').AsString:=QcekParam.FieldByName('kodegol').AsString;
                      Qexec.ParamByName('periode').AsString:=_periodemulaitagih;
                      Qexec.ParamByName('pakai').AsCurrency:= QcekParam.FieldByName('pakai').AsCurrency;
                      Qexec.ParamByName('loketupdate').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('kasir').AsString:=QcekParam.Fieldbyname('keterangan').AsString;
                      Qexec.ParamByName('loketbayar').AsString:=QcekParam.Fieldbyname('kodeloket').AsString;
                      Qexec.ParamByName('nolpp').AsString:=_nolpp;
                      Qexec.Execute;
                    end;
                    Qexecsend.Close;
                    Qexecsend.SQL.Clear;
                    Qexecsend.SQL.Add(Qexecsend.SQLRefresh.Text);
                    Qexecsend.ParamByName('nolpp').AsString:=_nolpp;
                    Qexecsend.Execute;

                    DM.uraianlogakses:='Pelunasan Otomatis '+_nolpp+'/'+QcekParam.FieldByName('kodegol').AsString+' untuk Bulan '+_periodemulaitagih;
                    DM.targetlogakses:=_nolpp;
                    DM.logakses;
                  end;
                end;

                Progress.IncPartsByOne;
                Application.ProcessMessages;
                QcekParam.Next;
              end;

              lblPanelInfo.Caption:='PELUNASAN SELESAI';

            end;

           Qexec.close;
           Qexec.SQL.Clear;
           Qexec.SQL.Add('COMMIT');
           Qexec.Execute;


        EXCEPT ON E:Exception DO
        BEGIN

             Qexec.close;
             Qexec.SQL.Clear;
             Qexec.SQL.Add('ROLLBACK');
             Qexec.Execute;
             MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
        END;
        END;
      end;



      if(ceksingkron.Checked=true)then
      begin


         Progress.Visible:=true;
         Progress.PartsComplete:=0;
         Progress.TotalParts:=15;



        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM golongan ORDER BY kodegol,periodemulaiberlaku ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Golongan...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into golongan (kodegolyangberlaku,periodemulaiberlaku,kodegol,golongan,kategori,uraian,administrasi,pemeliharaan,pelayanan,retribusi,');
          Qhost1.SQL.Add('dendapakai0,dendatunggakan,dendatunggakan2,dendatunggakan3,dendatunggakan4,dendatunggakanperbulan,airlimbah,minpakai,ppn,bb1,ba1,bb2,ba2,bb3,ba3,');
          Qhost1.SQL.Add('bb4,ba4,bb5,ba5,t1,t2,t3,t4,t5,t1_tetap,t2_tetap,t3_tetap,t4_tetap,t5_tetap,nomorba,aktif,retribusi_pakai,mindenda,trf_denda_berdasarkan_persen) ');
          Qhost1.SQL.Add('values (:kodegolyangberlaku,:periodemulaiberlaku,:kodegol,:golongan,:kategori,:uraian,:administrasi,:pemeliharaan,:pelayanan,:retribusi,:dendapakai0,');
          Qhost1.SQL.Add(':dendatunggakan,:dendatunggakan2,:dendatunggakan3,:dendatunggakan4,:dendatunggakanperbulan,:airlimbah,:minpakai,:ppn,:bb1,:ba1,:bb2,:ba2,:bb3,:ba3,:bb4,');
          Qhost1.SQL.Add(':ba4,:bb5,:ba5,:t1,:t2,:t3,:t4,:t5,:t1_tetap,:t2_tetap,:t3_tetap,:t4_tetap,:t5_tetap,:nomorba,:aktif,:retribusi_pakai,:mindenda,:trf_denda_berdasarkan_persen)');
          Qhost1.ParamByName('kodegolyangberlaku').AsString:=DM.Qcek.fieldbyname('kodegolyangberlaku').AsString;
          Qhost1.ParamByName('periodemulaiberlaku').AsInteger:=DM.Qcek.fieldbyname('periodemulaiberlaku').AsInteger;
          Qhost1.ParamByName('kodegol').AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
          Qhost1.ParamByName('golongan').AsString:=DM.Qcek.fieldbyname('golongan').AsString;
          Qhost1.ParamByName('kategori').AsString:=DM.Qcek.fieldbyname('kategori').AsString;
          Qhost1.ParamByName('uraian').AsString:=DM.Qcek.fieldbyname('uraian').AsString;
          Qhost1.ParamByName('administrasi').AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
          Qhost1.ParamByName('pemeliharaan').AsCurrency:=DM.Qcek.fieldbyname('pemeliharaan').AsCurrency;
          Qhost1.ParamByName('pelayanan').AsCurrency:=DM.Qcek.fieldbyname('pelayanan').AsCurrency;
          Qhost1.ParamByName('retribusi').AsCurrency:=DM.Qcek.fieldbyname('retribusi').AsCurrency;
          Qhost1.ParamByName('dendapakai0').AsCurrency:=DM.Qcek.fieldbyname('dendapakai0').AsCurrency;

          Qhost1.ParamByName('dendatunggakan').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan').AsCurrency;
          Qhost1.ParamByName('dendatunggakan2').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan2').AsCurrency;
          Qhost1.ParamByName('dendatunggakan3').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan3').AsCurrency;
          Qhost1.ParamByName('dendatunggakan4').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan4').AsCurrency;
          Qhost1.ParamByName('dendatunggakanperbulan').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakanperbulan').AsCurrency;

          Qhost1.ParamByName('airlimbah').AsCurrency:=DM.Qcek.fieldbyname('airlimbah').AsCurrency;
          Qhost1.ParamByName('minpakai').AsCurrency:=DM.Qcek.fieldbyname('minpakai').AsCurrency;
          Qhost1.ParamByName('ppn').AsCurrency:=DM.Qcek.fieldbyname('ppn').AsCurrency;


          Qhost1.ParamByName('bb1').AsCurrency:=DM.Qcek.fieldbyname('bb1').AsCurrency;
          Qhost1.ParamByName('ba1').AsCurrency:=DM.Qcek.fieldbyname('ba1').AsCurrency;
          Qhost1.ParamByName('bb2').AsCurrency:=DM.Qcek.fieldbyname('bb2').AsCurrency;
          Qhost1.ParamByName('ba2').AsCurrency:=DM.Qcek.fieldbyname('ba2').AsCurrency;
          Qhost1.ParamByName('bb3').AsCurrency:=DM.Qcek.fieldbyname('bb3').AsCurrency;
          Qhost1.ParamByName('ba3').AsCurrency:=DM.Qcek.fieldbyname('ba3').AsCurrency;
          Qhost1.ParamByName('bb4').AsCurrency:=DM.Qcek.fieldbyname('bb4').AsCurrency;
          Qhost1.ParamByName('ba4').AsCurrency:=DM.Qcek.fieldbyname('ba4').AsCurrency;
          Qhost1.ParamByName('bb5').AsCurrency:=DM.Qcek.fieldbyname('bb5').AsCurrency;
          Qhost1.ParamByName('ba5').AsCurrency:=DM.Qcek.fieldbyname('ba5').AsCurrency;

          Qhost1.ParamByName('t1').AsCurrency:=DM.Qcek.fieldbyname('t1').AsCurrency;
          Qhost1.ParamByName('t2').AsCurrency:=DM.Qcek.fieldbyname('t2').AsCurrency;
          Qhost1.ParamByName('t3').AsCurrency:=DM.Qcek.fieldbyname('t3').AsCurrency;
          Qhost1.ParamByName('t4').AsCurrency:=DM.Qcek.fieldbyname('t4').AsCurrency;
          Qhost1.ParamByName('t5').AsCurrency:=DM.Qcek.fieldbyname('t5').AsCurrency;

          Qhost1.ParamByName('t1_tetap').AsString:=DM.Qcek.fieldbyname('t1_tetap').AsString;
          Qhost1.ParamByName('t2_tetap').AsString:=DM.Qcek.fieldbyname('t2_tetap').AsString;
          Qhost1.ParamByName('t3_tetap').AsString:=DM.Qcek.fieldbyname('t3_tetap').AsString;
          Qhost1.ParamByName('t4_tetap').AsString:=DM.Qcek.fieldbyname('t4_tetap').AsString;
          Qhost1.ParamByName('t5_tetap').AsString:=DM.Qcek.fieldbyname('t5_tetap').AsString;

          Qhost1.ParamByName('nomorba').AsString:=DM.Qcek.fieldbyname('nomorba').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.ParamByName('retribusi_pakai').AsCurrency:=DM.Qcek.fieldbyname('retribusi_pakai').AsCurrency;
          Qhost1.ParamByName('mindenda').AsCurrency:=DM.Qcek.fieldbyname('mindenda').AsCurrency;
          Qhost1.ParamByName('trf_denda_berdasarkan_persen').AsString:=DM.Qcek.fieldbyname('trf_denda_berdasarkan_persen').AsString;
          Qhost1.Execute;
          
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

       Progress.IncPartsByOne;

        //diameter

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM diameter ORDER BY kodediameter,periodemulaiberlaku ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Diameter...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into diameter (kodediameteryangberlaku,periodemulaiberlaku,kodediameter,ukuran,administrasi,pemeliharaan,retribusi,aktif) values (:kodediameteryangberlaku,:periodemulaiberlaku,:kodediameter,:ukuran,:administrasi,:pemeliharaan,:retribusi,:aktif)');
          Qhost1.ParamByName('kodediameteryangberlaku').AsString:=DM.Qcek.fieldbyname('kodediameteryangberlaku').AsString;
          Qhost1.ParamByName('periodemulaiberlaku').AsInteger:=DM.Qcek.fieldbyname('periodemulaiberlaku').AsInteger;
          Qhost1.ParamByName('kodediameter').AsString:=DM.Qcek.fieldbyname('kodediameter').AsString;
          Qhost1.ParamByName('ukuran').AsString:=DM.Qcek.fieldbyname('ukuran').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.ParamByName('administrasi').AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
          Qhost1.ParamByName('pemeliharaan').AsCurrency:=DM.Qcek.fieldbyname('pemeliharaan').AsCurrency;
          Qhost1.ParamByName('retribusi').AsCurrency:=DM.Qcek.fieldbyname('retribusi').AsCurrency;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne;

         //rayon

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM rayon ORDER BY koderayon ASC');
        Dm.Qcek.Open;

        Application.ProcessMessages;
        Caption:='Sinkron Rayon...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into rayon (koderayon,namarayon,kodearea,area,kodewil,wilayah,kodeloket) values (:koderayon,:namarayon,:kodearea,:area,:kodewil,:wilayah,:kodeloket)');
          Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
          Qhost1.ParamByName('namarayon').AsString:=DM.Qcek.fieldbyname('namarayon').AsString;
          Qhost1.ParamByName('kodearea').AsString:=DM.Qcek.fieldbyname('kodearea').AsString;
          Qhost1.ParamByName('area').AsString:=DM.Qcek.fieldbyname('area').AsString;
          Qhost1.ParamByName('kodewil').AsString:=DM.Qcek.fieldbyname('kodewil').AsString;
          Qhost1.ParamByName('wilayah').AsString:=DM.Qcek.fieldbyname('wilayah').AsString;
          Qhost1.ParamByName('kodeloket').AsString:=DM.Qcek.fieldbyname('kodeloket').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne;



         //wilayah

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM wilayah ORDER BY kodewil ASC');
        Dm.Qcek.Open;

        Application.ProcessMessages;
        Caption:='Sinkron Wilayah...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into wilayah (kodewil,wilayah) values (:kodewil,:wilayah)');
          Qhost1.ParamByName('kodewil').AsString:=DM.Qcek.fieldbyname('kodewil').AsString;
          Qhost1.ParamByName('wilayah').AsString:=DM.Qcek.fieldbyname('wilayah').AsString;
          Qhost1.Execute;

          Application.ProcessMessages;
          DM.Qcek.Next;
          
        end;


        Progress.IncPartsByOne;



         //kelurahan

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kelurahan ORDER BY kodekelurahan ASC');
        Dm.Qcek.Open;




        Application.ProcessMessages;
        Caption:='Sinkron Kelurahan...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kelurahan (kodekelurahan,kelurahan,kodekecamatan,kecamatan,kodecabang,cabang,kodekelurahan2) values (:kodekelurahan,:kelurahan,:kodekecamatan,:kecamatan,:kodecabang,:cabang,:kodekelurahan2)');
          Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
          Qhost1.ParamByName('kelurahan').AsString:=DM.Qcek.fieldbyname('kelurahan').AsString;
          Qhost1.ParamByName('kodekecamatan').AsString:=DM.Qcek.fieldbyname('kodekecamatan').AsString;
          Qhost1.ParamByName('kecamatan').AsString:=DM.Qcek.fieldbyname('kecamatan').AsString;
          Qhost1.ParamByName('kodecabang').AsString:=DM.Qcek.fieldbyname('kodecabang').AsString;
          Qhost1.ParamByName('cabang').AsString:=DM.Qcek.fieldbyname('cabang').AsString;
          Qhost1.ParamByName('kodekelurahan2').AsString:=DM.Qcek.fieldbyname('kodekelurahan2').AsString;
          Qhost1.Execute;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;



        
         //kecamatan

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kecamatan ORDER BY kodekecamatan ASC');
        Dm.Qcek.Open;




        Application.ProcessMessages;
        Caption:='Sinkron Kelurahan...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kecamatan (kodekecamatan,kecamatan,kodecabang) values (:kodekecamatan,:kecamatan,:kodecabang)');
          Qhost1.ParamByName('kodekecamatan').AsString:=DM.Qcek.fieldbyname('kodekecamatan').AsString;
          Qhost1.ParamByName('kecamatan').AsString:=DM.Qcek.fieldbyname('kecamatan').AsString;
          Qhost1.ParamByName('kodecabang').AsString:=DM.Qcek.fieldbyname('kodecabang').AsString;
          Qhost1.Execute;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


        //kolektif
        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kolektif ORDER BY kodekolektif ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Kolektif...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kolektif (kodekolektif,kolektif,ket,alamat) values (:kodekolektif,:kolektif,:ket,:alamat)');
          Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
          Qhost1.ParamByName('kolektif').AsString:=DM.Qcek.fieldbyname('kolektif').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('ket').AsString;
          Qhost1.ParamByName('alamat').AsString:=DM.Qcek.fieldbyname('alamat').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne;

         //Loket

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM loket ORDER BY kodeloket ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Loket...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into loket (kodeloket,loket,kodewillokasi,aktif,flagmitra,admmitra) values (:kodeloket,:loket,:kodewillokasi,:aktif,:flagmitra,:admmitra)');
          Qhost1.ParamByName('kodeloket').AsString:=DM.Qcek.fieldbyname('kodeloket').AsString;
          Qhost1.ParamByName('loket').AsString:=DM.Qcek.fieldbyname('loket').AsString;        
          Qhost1.ParamByName('kodewillokasi').AsString:=DM.Qcek.fieldbyname('kodewillokasi').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.ParamByName('flagmitra').AsString:=DM.Qcek.fieldbyname('flagmitra').AsString;
          Qhost1.ParamByName('admmitra').AsCurrency:=DM.Qcek.fieldbyname('admmitra').AsCurrency;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


        //flag

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM flag ORDER BY kodeflag ASC');
        Dm.Qcek.Open;



        Application.ProcessMessages;
        Caption:='Sinkron Flag...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into flag (kodeflag,uraian) values (:kodeflag,:uraian)');
          Qhost1.ParamByName('kodeflag').AsString:=DM.Qcek.fieldbyname('kodeflag').AsString;
          Qhost1.ParamByName('uraian').AsString:=DM.Qcek.fieldbyname('uraian').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne;



        //jenisnonair
        {DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM jenisnonair ORDER BY jenis ASC');
        Dm.Qcek.Open;



        Application.ProcessMessages;
        Caption:='Sinkron Jenis N.A...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into jenisnonair (jenis,biaya,jaminan,administrasi,persenppn,drdnonairkhusus,inisial,kodeperkiraan,fieldnonair) values (:jenis,:biaya,:jaminan,:administrasi,:persenppn,:drdnonairkhusus,:inisial,:kodeperkiraan,:fieldnonair)');
          Qhost1.ParamByName('jenis').AsString:=DM.Qcek.fieldbyname('jenis').AsString;
          Qhost1.ParamByName('biaya').AsCurrency:=DM.Qcek.fieldbyname('biaya').AsCurrency;
          Qhost1.ParamByName('jaminan').AsCurrency:=DM.Qcek.fieldbyname('jaminan').AsCurrency;
          Qhost1.ParamByName('administrasi').AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
          Qhost1.ParamByName('persenppn').AsCurrency:=DM.Qcek.fieldbyname('persenppn').AsCurrency;
          Qhost1.ParamByName('drdnonairkhusus').AsString:=DM.Qcek.fieldbyname('drdnonairkhusus').AsString;
          Qhost1.ParamByName('inisial').AsString:=DM.Qcek.fieldbyname('inisial').AsString;
          Qhost1.ParamByName('kodeperkiraan').AsString:=DM.Qcek.fieldbyname('kodeperkiraan').AsString;
          Qhost1.ParamByName('fieldnonair').AsString:=DM.Qcek.fieldbyname('fieldnonair').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne; }  




          //kepemilikan

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kepemilikan ORDER BY kepemilikanbangunan ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Kepemilikan...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kepemilikan (kepemilikanbangunan) values (:kepemilikan)');
          Qhost1.ParamByName('kepemilikan').AsString:=DM.Qcek.fieldbyname('kepemilikanbangunan').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


          //merk

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM merkmeter ORDER BY merk ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Merk Meter...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into merkmeter (merk) values (:merk)');
          Qhost1.ParamByName('merk').AsString:=DM.Qcek.fieldbyname('merk').AsString;
          Qhost1.Execute;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


          //sumberair

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM sumberair ORDER BY sumberair ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron Sumber Air...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into sumberair (sumberair) values (:sumberair)');
          Qhost1.ParamByName('sumberair').AsString:=DM.Qcek.fieldbyname('sumberair').AsString;
          Qhost1.Execute;


          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;



        //----------

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM byadministrasi_lain ORDER BY kode ASC');
        Dm.Qcek.Open;




        Application.ProcessMessages;
        Caption:='Sinkron ADM.Lain...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into byadministrasi_lain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM bypemeliharaan_lain ORDER BY kode ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron PEM.Lain...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into bypemeliharaan_lain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

        Progress.IncPartsByOne;


        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM byretribusi_lain ORDER BY kode ASC');
        Dm.Qcek.Open;


        Application.ProcessMessages;
        Caption:='Sinkron RET.Lain...';

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into byretribusi_lain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        Progress.IncPartsByOne;

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM paraf ORDER BY kode ASC');
        Dm.Qcek.Open;

{
        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table paraf');
        Qhost1.Execute;
}

        Application.ProcessMessages;
        Caption:='Sinkron Paraf...';
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into paraf (kode,ket1,jab1,nama1,nik1,ket2,jab2,nama2,nik2,ket3,jab3,nama3,nik3) values (:kode,:ket1,:jab1,:nama1,:nik1,:ket2,:jab2,:nama2,:nik2,:ket3,:jab3,:nama3,:nik3)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('jab1').AsString:=DM.Qcek.fieldbyname('jab1').AsString;
          Qhost1.ParamByName('nama1').AsString:=DM.Qcek.fieldbyname('nama1').AsString;
          Qhost1.ParamByName('nik1').AsString:=DM.Qcek.fieldbyname('nik1').AsString;
          Qhost1.ParamByName('jab2').AsString:=DM.Qcek.fieldbyname('jab2').AsString;
          Qhost1.ParamByName('nama2').AsString:=DM.Qcek.fieldbyname('nama2').AsString;
          Qhost1.ParamByName('nik2').AsString:=DM.Qcek.fieldbyname('nik2').AsString;
          Qhost1.ParamByName('jab3').AsString:=DM.Qcek.fieldbyname('jab3').AsString;
          Qhost1.ParamByName('nama3').AsString:=DM.Qcek.fieldbyname('nama3').AsString;
          Qhost1.ParamByName('nik3').AsString:=DM.Qcek.fieldbyname('nik3').AsString;
          Qhost1.ParamByName('ket1').AsString:=DM.Qcek.fieldbyname('ket1').AsString;
          Qhost1.ParamByName('ket2').AsString:=DM.Qcek.fieldbyname('ket2').AsString;
          Qhost1.ParamByName('ket3').AsString:=DM.Qcek.fieldbyname('ket3').AsString;
          Qhost1.Execute;
          
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


      end; //cek singkron




      {Qexec.Close;
      Qexec.SQL.Clear;
      Qexec.SQL.Add('REPAIR TABLE drddump ;');
      Qexec.SQL.Add('REPAIR TABLE pelanggan ;');
      Qexec.SQL.Add('REPAIR TABLE drd ;');
      Qexec.SQL.Add('OPTIMIZE TABLE drddump ;');
      Qexec.SQL.Add('OPTIMIZE TABLE pelanggan ;');
      Qexec.SQL.Add('OPTIMIZE TABLE drd ;');    
      Qexec.Execute;}




      Progress.Visible:=False;
      Caption:='Selesai...';

      MessageDlg('Upload Rekening Selesai'+char(13)+
                       'Harap Lakukan Pengecekan ', mtinformation, [mbOk], 0);

     




end;

procedure Tuupload2.cxButton1Click(Sender: TObject);
var
lembar1,lembar2:Integer;

begin

     if(cekpiutang.Checked=true) or (ceklimbah.Checked=true)  or (ceklltt.Checked=true) or (cekpelanggan.Checked=true) or (cekpelangganlimbah.Checked=true) or (cekpelangganlltt.Checked=true) or (ceksingkron.Checked=true) or (cekOtomatisLunas.Checked=true) then
     begin
     
        if MessageDlg('Apakah Anda Yakin Untuk Upload Data ? ', mtConfirmation, [mbYes,MbNo], 0)=mrYes then
        begin

            TRY

                TRY

                  Umain.Enabled:=false;
                  Enabled:=false;

                  Umain.openkoneksi_host;

                  upload;

                  

                EXCEPT
                ON E : Exception do
                BEGIN

                   MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                              E.Message, mtError, [MbOk], 0);
                END;
                END;

            FINALLY
               Enabled:=true;
               Umain.Enabled:=true;
               Umain.host.close;

            END;
                   

        end
        else
          exit;

     end
     else
       MessageDlg('Harap centang pilihan sinkron !!', mtInformation, [MbOk], 0);


     
end;

procedure Tuupload2.FormShow(Sender: TObject);
begin




  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select count(kode) as jumlah FROm piutang WHERE flagkirim="0" AND nosamb NOT IN (SELECT nosamb FROM pelanggan WHERE flaghapus="1")');
  DM.Qcek.Open;


  cekpiutang.Caption:='Upload Tagihan Air Belum Terkirim ( '+IntToStr(DM.Qcek.fieldbyname('jumlah').AsInteger)+' )';



   if DM._fitur_airlimbah='0' THEN
  begin
    ceklimbah.Checked:=false;
    ceklimbah.Visible:=false;
  end
  else
  begin
  
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select count(kode) as jumlah FROm piutanglimbah WHERE flagkirim="0"');
    DM.Qcek.Open;

    ceklimbah.Caption:='Upload Tagihan Limbah Belum Terkirim ( '+IntToStr(DM.Qcek.fieldbyname('jumlah').AsInteger)+' )';
    
  end;


  if DM._fitur_lltt='0' THEN
  begin
    ceklltt.Checked:=false;
    ceklltt.Visible:=false;
  end
  else
  begin
  
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select count(kode) as jumlah FROm piutanglltt WHERE flagkirim="0"');
    DM.Qcek.Open;

    ceklltt.Caption:='Upload Tagihan l2T2 Belum Terkirim ( '+IntToStr(DM.Qcek.fieldbyname('jumlah').AsInteger)+' )';

  end;



  periode.Date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  periode2.Date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);




end;

procedure Tuupload2.Action1Execute(Sender: TObject);
begin
close;
end;

procedure Tuupload2.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tuupload2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
umain.host.close;
Caption:='TRANSFER DATA KE BSPAY';
end;

procedure Tuupload2.cekpiutangClick(Sender: TObject);
begin
if(cekpiutang.Checked=true) then
begin
    periode.Enabled:=true;
    periode2.Enabled:=true;

end
else
begin
    periode.Enabled:=false;
    periode2.Enabled:=false;


end;
end;

end.
