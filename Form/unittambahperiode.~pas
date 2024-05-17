unit unittambahperiode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls,
  cxContainer, cxEdit, ComCtrls, RzDTP, cxLabel, RzPrgres, ExtCtrls,
  RzPanel, StdCtrls, cxButtons, DB, MemDS, DBAccess, MyAccess, ActnList,StrUtils,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxSkinOffice2013White, cxCheckBox;

type
  TUbuatperiode = class(TForm)
    Qcek: TMyQuery;
    Qpelanggan: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qper: TMyQuery;
    Qangsuran: TMyQuery;
    Qexec: TMyQuery;
    ActionList2: TActionList;
    Action3: TAction;
    Action4: TAction;
    RzPanel1: TRzPanel;
    l1: TcxLabel;
    periode: TRzDateTimePicker;
    l2: TcxLabel;
    tanggal1: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    l3: TcxLabel;
    tanggal2: TcxDateEdit;
    l4: TcxLabel;
    tanggal3: TcxDateEdit;
    tanggal4: TcxDateEdit;
    l5: TcxLabel;
    l6: TcxLabel;
    tanggal5: TcxDateEdit;
    cxCheckBox1: TcxCheckBox;
    Progress: TRzProgressBar;
    RzPanel8: TRzPanel;
    Qgol: TMyQuery;
    Qdiameter: TMyQuery;
    cekair: TcxCheckBox;
    ceklimbah: TcxCheckBox;
    ceklltt: TcxCheckBox;
    QcekHost: TMyQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure periodeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ubuatperiode: TUbuatperiode;

implementation

uses DateUtils, module, unitloading, UnitMain;

{$R *.dfm}

procedure TUbuatperiode.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TUbuatperiode.FormShow(Sender: TObject);
begin


  if DM._fitur_airlimbah='0' THEN
  begin
    ceklimbah.Checked:=True;
    ceklimbah.Visible:=false;
  end;

  if DM._fitur_lltt='0' THEN
  begin
    ceklltt.Checked:=True;
    ceklltt.Visible:=false;
  end;

  periode.Date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  tanggal1.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+1)));
  tanggal2.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+2)));
  tanggal3.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+3)));
  tanggal4.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+4)));
  tanggal5.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+1)));
  cxCheckBox1.Checked:=false;
  
end;

procedure TUbuatperiode.cxButton1Click(Sender: TObject);
var
j:integer;
i:integer;
namatabel:String;
bln1,bln2,bln3,bln4,bln5,bln6:String;
waktu:TDateTime;
administrasi,pemeliharaan,retribusi,pelayanan,airlimbah,administrasilain,pemeliharaanlain,retribusilain,pelanggan,pelanggan_limbah,pelanggan_lltt:Currency;
kodegolyangberlaku,kodediameteryangberlaku:string;


_administrasi1, _administrasi2,
_pemeliharaan1, _pemeliharaan2,
_retribusi1, _retribusi2,
_airlimbah1, _airlimbah2,
_pelayanan1, _pelayanan2 :currency;
_trf_dendatunggakan , _trf_dendatunggakan2, _trf_dendatunggakan3, _trf_dendatunggakan4, _trf_dendatunggakanperbulan:currency;


_kodelimbahyangerlaku,_kodellttyangberlaku:String;
_biayalimbah,_biayalltt:Currency;



begin


if(cxCheckBox1.Checked=false)then
begin
   MessageDlg('Harap centang pernyataan...  !', mtWarning, [mbOK], 0);
   exit;
end;


TRY

 try

  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('SELECT COUNT(*) FROM periode WHERE periode=:periode');
  Qcek.ParamByName('periode').AsString:=FormatDateTime('yyyymm',IncMonth(periode.Date,-1));
  Qcek.Open;

  if (Qcek.RecordCount=0) or (Qcek.Fields[0].AsInteger=0) then
  begin
    MessageDlg('Tidak dapat diproses karena Periode bulan sebelumnya belum tersedia.',mtInformation,[mbOk],0);
    exit;
  end;

  Qcek.Close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('select * from periode where periode=:periode');
  Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qcek.open;


  if(qcek.RecordCount=0)then
  begin


    {Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm pelanggan');
    Qcek.Open;}

   if MessageDlg('Mulai Proses Pembuatan Periode DRD '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
   begin


        Enabled:=false;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('TRUNCATE TABLE drd_dump');
       DM.Qexec.Execute;



        administrasi:=0;
        pemeliharaan:=0;
        retribusi:=0;
        pelanggan:=0;


       if cekair.Checked=true then
       begin

          

           bln1:=FormatDateTime('YYYYMM',IncMonth(periode.date,-1));
           bln2:=FormatDateTime('YYYYMM',IncMonth(periode.date,-2));
           bln3:=FormatDateTime('YYYYMM',IncMonth(periode.date,-3));
           bln4:=FormatDateTime('YYYYMM',IncMonth(periode.date,-4));
           bln5:=FormatDateTime('YYYYMM',IncMonth(periode.date,-5));
           bln6:=FormatDateTime('YYYYMM',IncMonth(periode.date,-6));


           waktu:=now;

            //INSERT REKENING

              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%bayar'+FormatDateTime('YYYY',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE bayar'+FormatDateTime('YYYY',periode.date)+' like bayar');
                DM.Qexec.Execute;

              end;

              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%drd'+FormatDateTime('YYYYMM',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE drd'+FormatDateTime('YYYYMM',periode.date)+' like drd');
                DM.Qexec.Execute;

              end;


              Progress.Visible:=true;
              Progress.PartsComplete:=0;
              Progress.TotalParts:=10;
              application.ProcessMessages;

              Progress.PartsComplete:=1;

              Dm.Qexec.Close;
              Dm.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('REPLACE INTO drd_dump (nosamb,serimeter,kodegolyangberlaku,kodediameteryangberlaku,kodegol,kodediameter,koderayon,');
              Dm.Qexec.SQL.add('kodekelurahan,stanlalu,administrasi,pemeliharaan,pelayanan,retribusi,airlimbah,administrasilain,pemeliharaanlain,retribusilain,flagaktif,kodekolektif,tglmulaidenda,tglmulaidenda2,');
              Dm.Qexec.SQL.add('tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan,trf_dendatunggakan,');
              Dm.Qexec.SQL.add('trf_dendatunggakan2,trf_dendatunggakan3,trf_dendatunggakan4,trf_dendatunggakanperbulan,kodeadministrasilain,kodepemeliharaanlain,koderetribusilain,waktu,kodeblok,luasrumah) ');
              DM.Qexec.SQL.Add(Qpelanggan.SQLRefresh.Text);

              Dm.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);

              Dm.Qexec.ParamByName('tglmulaidenda').AsDate := tanggal1.Date;
              Dm.Qexec.ParamByName('tglmulaidenda2').AsDate := tanggal2.Date;
              Dm.Qexec.ParamByName('tglmulaidenda3').AsDate := tanggal3.Date;
              Dm.Qexec.ParamByName('tglmulaidenda4').AsDate := tanggal4.Date;
              Dm.Qexec.ParamByName('tglmulaidendaperbulan').AsDate := tanggal5.Date;

              Dm.Qexec.ParamByName('waktu').AsDateTime := waktu;
              Dm.Qexec.Execute;


            {
              for j:=1 to Qcek.RecordCount do
              begin


                kodegolyangberlaku:='-';
                kodediameteryangberlaku:='-';


                  _administrasi1:=0;
                  _pemeliharaan1:= 0;
                  _retribusi1:= 0;
                  _pelayanan1:= 0;
                  _airlimbah1:= 0;

                  _administrasi2:=0;
                  _pemeliharaan2:= 0;
                  _retribusi2:= 0;
                  _pelayanan2:= 0;
                  _airlimbah2:= 0;


                Qgol.close;
                Qgol.SQL.Clear;
                Qgol.SQL.Add('SELECT * FROM golongan WHERE kodegol=:kodegol AND aktif="1" ORDER BY periodemulaiberlaku DESC LIMIT 1');
                Qgol.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                Qgol.Open;

                 if(Qgol.RecordCount>0)then
                 begin
                    kodegolyangberlaku:=Qgol.fieldbyname('kodegolyangberlaku').asstring;
                    _administrasi1:= Qgol.fieldbyname('administrasi').AsCurrency;
                    _pemeliharaan1:= Qgol.fieldbyname('pemeliharaan').AsCurrency;
                    _retribusi1:= Qgol.fieldbyname('retribusi').AsCurrency;
                    _pelayanan1:= Qgol.fieldbyname('pelayanan').AsCurrency;
                    _airlimbah1:= Qgol.fieldbyname('airlimbah').AsCurrency;
                    _trf_dendatunggakan:= Qgol.fieldbyname('dendatunggakan').AsCurrency;
                    _trf_dendatunggakan2:= Qgol.fieldbyname('dendatunggakan2').AsCurrency;
                    _trf_dendatunggakan3:= Qgol.fieldbyname('dendatunggakan3').AsCurrency;
                    _trf_dendatunggakan4:= Qgol.fieldbyname('dendatunggakan4').AsCurrency;
                    _trf_dendatunggakanperbulan:= Qgol.fieldbyname('dendatunggakanperbulan').AsCurrency;  
                  end;


                Qdiameter.close;
                Qdiameter.SQL.Clear;
                Qdiameter.SQL.Add('SELECT * FROM diameter WHERE kodediameter=:kodediameter AND aktif="1" ORDER BY periodemulaiberlaku DESC LIMIT 1');
                Qdiameter.ParamByName('kodediameter').AsString:=Qcek.fieldbyname('kodediameter').AsString;
                Qdiameter.Open;

                 if(Qdiameter.RecordCount>0)then
                 begin
                    kodediameteryangberlaku:=Qdiameter.fieldbyname('kodediameteryangberlaku').asstring;
                    _administrasi2:= Qdiameter.fieldbyname('administrasi').AsCurrency;
                    _pemeliharaan2:= Qdiameter.fieldbyname('pemeliharaan').AsCurrency;
                    _retribusi2:= Qdiameter.fieldbyname('retribusi').AsCurrency;
                    _pelayanan2:= Qdiameter.fieldbyname('pelayanan').AsCurrency;
                    _airlimbah2:= Qdiameter.fieldbyname('airlimbah').AsCurrency;
                  end;





                Dm.Qexec.Close;
                Dm.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('REPLACE INTO drd_dump (nosamb,serimeter,kodegolyangberlaku,kodediameteryangberlaku,kodegol,kodediameter,koderayon,');
                Dm.Qexec.SQL.add('kodekelurahan,stanlalu,administrasi,pemeliharaan,pelayanan,retribusi,airlimbah,administrasilain,pemeliharaanlain,retribusilain,flagaktif,kodekolektif,tglmulaidenda,tglmulaidenda2,');
                Dm.Qexec.SQL.add('tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan,trf_dendatunggakan,');
                Dm.Qexec.SQL.add('trf_dendatunggakan2,trf_dendatunggakan3,trf_dendatunggakan4,trf_dendatunggakanperbulan,kodeadministrasilain,kodepemeliharaanlain,koderetribusilain,waktu,kodeblok,luasrumah) VALUES ');
                Dm.Qexec.SQL.Add('(:nosamb,:serimeter,:kodegolyangberlaku,:kodediameteryangberlaku,:kodegol,:kodediameter,:koderayon,:kodekelurahan,');
                Dm.Qexec.SQL.add(':stanlalu,:administrasi,:pemeliharaan,:pelayanan,:retribusi,:airlimbah,:administrasilain,:pemeliharaanlain,:retribusilain,:flagaktif,:kodekolektif,:tglmulaidenda,:tglmulaidenda2,');
                Dm.Qexec.SQL.add(':tglmulaidenda3,:tglmulaidenda4,:tglmulaidendaperbulan,:trf_dendatunggakan,');
                Dm.Qexec.SQL.add(':trf_dendatunggakan2,:trf_dendatunggakan3,:trf_dendatunggakan4,:trf_dendatunggakanperbulan,:kodeadministrasilain,:kodepemeliharaanlain,:koderetribusilain,:waktu,:kodeblok,:luasrumah)');
                Dm.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                Dm.Qexec.ParamByName('serimeter').AsString:= Qcek.fieldbyname('serimeter').AsString;
                Dm.Qexec.ParamByName('kodegolyangberlaku').AsString:= kodegolyangberlaku;
                Dm.Qexec.ParamByName('kodediameteryangberlaku').AsString:= kodediameteryangberlaku;
                Dm.Qexec.ParamByName('kodegol').AsString:= Qcek.fieldbyname('kodegol').AsString;
                Dm.Qexec.ParamByName('kodediameter').AsString:= Qcek.fieldbyname('kodediameter').AsString;
                Dm.Qexec.ParamByName('koderayon').AsString:= Qcek.fieldbyname('koderayon').AsString;
                Dm.Qexec.ParamByName('kodekelurahan').AsString:= Qcek.fieldbyname('kodekelurahan').AsString;
                Dm.Qexec.ParamByName('kodekolektif').AsString:= Qcek.fieldbyname('kodekolektif').AsString;
                Dm.Qexec.ParamByName('stanlalu').AsCurrency:= 0;

                Dm.Qexec.ParamByName('administrasi').AsCurrency:= _administrasi1 + _administrasi2;
                Dm.Qexec.ParamByName('pemeliharaan').AsCurrency:= _pemeliharaan1 + _pemeliharaan2;
                Dm.Qexec.ParamByName('pelayanan').AsCurrency:= _pelayanan1 + _pelayanan2;
                Dm.Qexec.ParamByName('retribusi').AsCurrency:= _retribusi1 + _retribusi2;
                Dm.Qexec.ParamByName('airlimbah').AsCurrency:= _airlimbah1 + _airlimbah2;
                Dm.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:= _trf_dendatunggakan;
                Dm.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:= _trf_dendatunggakan2;
                Dm.Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:= _trf_dendatunggakan3;
                Dm.Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:= _trf_dendatunggakan4;
                Dm.Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:= _trf_dendatunggakanperbulan;  

                Dm.Qexec.ParamByName('administrasilain').AsCurrency:= Qcek.fieldbyname('administrasilain').AsCurrency;
                Dm.Qexec.ParamByName('pemeliharaanlain').AsCurrency:= Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                Dm.Qexec.ParamByName('retribusilain').AsCurrency:= Qcek.fieldbyname('retribusilain').AsCurrency;
                Dm.Qexec.ParamByName('flagaktif').AsString:= Qcek.fieldbyname('status').AsString;
                Dm.Qexec.ParamByName('tglmulaidenda').AsDate := tanggal1.Date;
                Dm.Qexec.ParamByName('tglmulaidenda2').AsDate := tanggal2.Date;
                Dm.Qexec.ParamByName('tglmulaidenda3').AsDate := tanggal3.Date;
                Dm.Qexec.ParamByName('tglmulaidenda4').AsDate := tanggal4.Date;
                Dm.Qexec.ParamByName('tglmulaidendaperbulan').AsDate := tanggal5.Date;  

                Dm.Qexec.ParamByName('kodeadministrasilain').AsString:= Qcek.fieldbyname('kodeadministrasilain').AsString;
                Dm.Qexec.ParamByName('kodepemeliharaanlain').AsString:= Qcek.fieldbyname('kodepemeliharaanlain').AsString;
                Dm.Qexec.ParamByName('koderetribusilain').AsString:= Qcek.fieldbyname('koderetribusilain').AsString;  
                Dm.Qexec.ParamByName('waktu').AsDateTime := waktu;
                Dm.Qexec.ParamByName('kodeblok').AsString:= Qcek.fieldbyname('kodeblok').AsString;
                Dm.Qexec.ParamByName('luasrumah').AsString:= Qcek.fieldbyname('luasrumah').AsString;
                Dm.Qexec.Execute;

                pelanggan:=pelanggan+1;
                administrasi:=administrasi+_administrasi1 + _administrasi2;
                pemeliharaan:=pemeliharaan+_pemeliharaan1 + _pemeliharaan2;
                retribusi:=retribusi+ _retribusi1 + _retribusi2;
                pelayanan:=pelayanan+_pelayanan1 + _pelayanan2;
                airlimbah:=airlimbah+_airlimbah1 + _airlimbah2;
                administrasilain:=administrasilain+Qcek.fieldbyname('administrasilain').AsCurrency;
                pemeliharaanlain:=pemeliharaanlain+Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                retribusilain:=retribusilain+Qcek.fieldbyname('retribusilain').AsCurrency;

                Progress.IncPartsByOne;
                Application.ProcessMessages;
                Qcek.Next;
              end;

             }


               Progress.PartsComplete:=2;
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('update drd_dump c, stan s set c.stanlalu=s.stan where c.nosamb=s.nosamb');
               DM.Qexec.Execute;


               Progress.PartsComplete:=3;
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('delete from stan where nosamb in (select nosamb from drd_dump )');
               DM.Qexec.Execute;



               Progress.PartsComplete:=4;
               Qper.close;
               Qper.SQL.Clear;
               Qper.SQL.Add('show tables like "drd'+bln5+'"');
               Qper.Open;

               if(Qper.RecordCount>0)then
               begin
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('update drd_dump c, drd'+bln5+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" ');
               DM.Qexec.Execute;
               end;



               Progress.PartsComplete:=5;
               Qper.close;
               Qper.SQL.Clear;
               Qper.SQL.Add('show tables like "drd'+bln4+'"');
               Qper.Open;

               if(Qper.RecordCount>0)then
               begin
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('update drd_dump c, drd'+bln4+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" ');
               DM.Qexec.Execute;
               end;


               Progress.PartsComplete:=6;
               Qper.close;
               Qper.SQL.Clear;
               Qper.SQL.Add('show tables like "drd'+bln3+'"');
               Qper.Open;

               if(Qper.RecordCount>0)then
               begin
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('update drd_dump c, drd'+bln3+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" ');
               DM.Qexec.Execute;
               end;

               Progress.PartsComplete:=7;
               Qper.close;
               Qper.SQL.Clear;
               Qper.SQL.Add('show tables like "drd'+bln2+'"');
               Qper.Open;

               if(Qper.RecordCount>0)then
               begin


               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('update drd_dump c, drd'+bln2+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" ');
               DM.Qexec.Execute;
              end;

               Progress.PartsComplete:=8;
               Qper.close;
               Qper.SQL.Clear;
               Qper.SQL.Add('show tables like "drd'+bln1+'"');
               Qper.Open;

               if(Qper.RecordCount>0)then
               begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update drd_dump c, drd'+bln1+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" ');
                 DM.Qexec.Execute;


                 //ambil dari sambungan baru
                 QcekHost.close;
                 QcekHost.SQL.Clear;
                 QcekHost.SQL.Add('SELECT stanawalpasang,stanskrg,nosambyangdiberikan FROM rab WHERE flagpasang="1" AND DATE_FORMAT(tglpasang,"%Y%m")=:periode AND flaghapus="0"');
                 QcekHost.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                 QcekHost.Open;

                 for i:=1  to QcekHost.RecordCount  do
                 begin
                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('update drd_dump set stanlalu=:stanlalu,stanskrg=:stanskrg where nosamb=:nosamb');
                   DM.Qexec.ParamByName('stanlalu').AsCurrency:=QcekHost.FieldByName('stanawalpasang').AsCurrency;
                   DM.Qexec.ParamByName('stanskrg').AsCurrency:=QcekHost.FieldByName('stanskrg').AsCurrency;
                   DM.Qexec.ParamByName('nosamb').AsString:=QcekHost.FieldByName('nosambyangdiberikan').AsString;
                   DM.Qexec.Execute;

                   QcekHost.Next;
                 end;

                 //ambil dari sambung Kembali
                 QcekHost.close;
                 QcekHost.SQL.Clear;
                 QcekHost.SQL.Add('SELECT stanawalpasang,angkameterskrg,nosamb FROM rab_sambung_kembali WHERE flagprosesdata="1" AND DATE_FORMAT(tglpasang,"%Y%m")=:periode AND flaghapus="0"');
                 QcekHost.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                 QcekHost.Open;

                 for i:=1  to QcekHost.RecordCount  do
                 begin
                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('update drd_dump set stanlalu=:stanlalu,stanskrg=:stanskrg where nosamb=:nosamb');
                   DM.Qexec.ParamByName('stanlalu').AsCurrency:=QcekHost.FieldByName('stanawalpasang').AsCurrency;
                   DM.Qexec.ParamByName('stanskrg').AsCurrency:=QcekHost.FieldByName('angkameterskrg').AsCurrency;
                   DM.Qexec.ParamByName('nosamb').AsString:=QcekHost.FieldByName('nosamb').AsString;
                   DM.Qexec.Execute;

                   QcekHost.Next;
                 end

               end;

             Progress.PartsComplete:=9;
             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('REPLACE INTO drd'+FormatDateTime('YYYYMM',periode.date)+' select * FROM drd_dump');
             DM.Qexec.Execute;


             


             /////////////////////////

              Progress.PartsComplete:=10;

              Qcek.Close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add(Qpelanggan.SQLInsert.Text);
              Qcek.SQL.Add('FROM pelanggan p LEFT JOIN drd:periode c ON p.nosamb=c.nosamb ');
              Qcek.SQL.Add('WHERE p.nosamb NOT IN (SELECT nosamb FROM pelanggan WHERE flaghapus="1" AND DATE_FORMAT(tanggal_hapus,"%Y%m")<=:periode) ');
              Qcek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
              Qcek.Open;

              Dm.Qexec.Close;
              Dm.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('REPLACE INTO periode (periode,waktu,user,tglmulaidenda,tglmulaidenda2,tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan,nama,pelanggan,nonaktif,administrasi,pemeliharaan,retribusi,status,pelayanan,airlimbah) ');
              DM.Qexec.SQL.add('VALUES (:periode,:waktu,:user,:tglmulaidenda,:tglmulaidenda2,:tglmulaidenda3,:tglmulaidenda4,:tglmulaidendaperbulan,:nama,:pelanggan,:nonaktif,:administrasi,:pemeliharaan,:retribusi,"1",:pelayanan,:airlimbah)');
              Dm.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Dm.Qexec.ParamByName('tglmulaidenda').asdate:=tanggal1.date;
              Dm.Qexec.ParamByName('tglmulaidenda2').asdate:=tanggal2.date;
              Dm.Qexec.ParamByName('tglmulaidenda3').asdate:=tanggal3.date;
              Dm.Qexec.ParamByName('tglmulaidenda4').asdate:=tanggal4.date;
              Dm.Qexec.ParamByName('tglmulaidendaperbulan').asdate:=tanggal5.date;
              Dm.Qexec.ParamByName('user').AsString:=Umain.User.caption;
              Dm.Qexec.ParamByName('nama').AsString:=FormatDateTime('MMM YYYY',periode.date);
              Dm.Qexec.ParamByName('pelanggan').AsCurrency:= Qcek.fieldbyname('pelanggan').AsInteger;
              Dm.Qexec.ParamByName('nonaktif').AsCurrency:= Qcek.fieldbyname('nonaktif').AsInteger;
              Dm.Qexec.ParamByName('administrasi').AsCurrency:= Qcek.fieldbyname('administrasi').AsCurrency;
              Dm.Qexec.ParamByName('pemeliharaan').AsCurrency:= Qcek.fieldbyname('pemeliharaan').AsCurrency;
              Dm.Qexec.ParamByName('retribusi').AsCurrency:= Qcek.fieldbyname('retribusi').AsCurrency;
              Dm.Qexec.ParamByName('pelayanan').AsCurrency:= Qcek.fieldbyname('pelayanan').AsCurrency;
              Dm.Qexec.ParamByName('airlimbah').AsCurrency:= Qcek.fieldbyname('airlimbah').AsCurrency;
              Dm.Qexec.ParamByName('waktu').AsDateTime := waktu;
              Dm.Qexec.Execute;



             DM.uraianlogakses:='Sukses tambah periode baru '+Formatdatetime('MMMM YYYY',periode.date)+' , & menyatakan bahwa sudah menginput data dengan benar ... ['+tanggal1.Text+' , '+tanggal2.Text+' ,'+tanggal3.Text+' ,'+tanggal4.Text+' ,'+tanggal5.Text+']';
             DM.targetlogakses:=Formatdatetime('MMMM YYYY',periode.date);
             DM.logakses;




           end;


             ///////////////////////////////////

             if ceklimbah.Checked=true then
           begin
              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%bayarlimbah'+FormatDateTime('YYYY',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE bayarlimbah'+FormatDateTime('YYYY',periode.date)+' like bayarlimbah');
                DM.Qexec.Execute;

              end;


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%drdlimbah'+FormatDateTime('YYYYMM',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE drdlimbah'+FormatDateTime('YYYYMM',periode.date)+' like drdlimbah');
                DM.Qexec.Execute;

              end;


             Qpelanggan.close;
             Qpelanggan.SQl.clear;
             Qpelanggan.SQL.Add('select * FROM pelanggan_limbah WHERE status<>"0" ORDER By nomorlimbah ASC');
             Qpelanggan.Open;

            pelanggan_limbah:=0;

            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=Qpelanggan.RecordCount;
            application.ProcessMessages;
            for j :=1  to Qpelanggan.RecordCount  do
             begin


              _kodelimbahyangerlaku:='-';
              _biayalimbah:=0;  

              Qgol.close;
              Qgol.SQL.Clear;
              Qgol.SQL.Add('SELECT * FROM golongan_limbah WHERE kodelimbah=:kodelimbah AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
              Qgol.ParamByName('kodelimbah').AsString:=Qpelanggan.fieldbyname('kodelimbah').AsString;
              Qgol.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qgol.Open;

              if Qgol.RecordCount>0 then
              begin

                  _kodelimbahyangerlaku:=Qgol.fieldbyname('kodelimbahyangberlaku').AsString;
                  _biayalimbah:=Qgol.fieldbyname('biaya').AsCurrency;

              end;



              Dm.Qexec.Close;
              Dm.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('REPLACE INTO drdlimbah'+FormatDateTime('YYYYMM',periode.date)+' (nomorlimbah,nosamb,kodelimbahyangberlaku,kodelimbah,koderayon,total,flagpublish,flagaktif) ');
              DM.Qexec.SQL.add('VALUES (:nomorlimbah,:nosamb,:kodelimbahyangberlaku,:kodelimbah,:koderayon,:total,"0",:flagaktif)');
              Dm.Qexec.ParamByName('nomorlimbah').AsString:=Qpelanggan.fieldbyname('nomorlimbah').AsString;
              Dm.Qexec.ParamByName('nosamb').AsString:=Qpelanggan.fieldbyname('nosamb').AsString;
              Dm.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=_kodelimbahyangerlaku;
              Dm.Qexec.ParamByName('kodelimbah').AsString:=Qpelanggan.fieldbyname('kodelimbah').AsString;
              Dm.Qexec.ParamByName('total').AsCurrency:=_biayalimbah;
              Dm.Qexec.ParamByName('koderayon').AsString:=Qpelanggan.fieldbyname('koderayon').AsString;
              Dm.Qexec.ParamByName('flagaktif').AsString:=Qpelanggan.fieldbyname('status').AsString;
              Dm.Qexec.Execute;


                 pelanggan_limbah:=pelanggan_limbah+1;


                 Application.ProcessMessages;
                 Progress.IncPartsByOne;
                 Qpelanggan.Next;
             end;



              if pelanggan_limbah>0 then
              begin


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE periode set pelanggan_limbah=:pelanggan_limbah WHERE periode=:periode');
              Dm.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Dm.Qexec.ParamByName('pelanggan_limbah').AsCurrency:=pelanggan_limbah;
              DM.Qexec.Execute;

              end;


           end;





              ///////////////////////////////////

           if ceklltt.Checked=true then
           begin

              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%bayarlltt'+FormatDateTime('YYYY',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE bayarlltt'+FormatDateTime('YYYY',periode.date)+' like bayarlltt');
                DM.Qexec.Execute;

              end;

              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('show tables like "%drdlltt'+FormatDateTime('YYYYMM',periode.date)+'%"');
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount=0)then
              begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('CREATE TABLE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' like drdlltt');
                DM.Qexec.Execute;

              end;


             Qpelanggan.close;
             Qpelanggan.SQl.clear;
             Qpelanggan.SQL.Add('select * FROM pelanggan_lltt WHERE status<>"0" ORDER By nomorlltt ASC');
             Qpelanggan.Open;

            pelanggan_lltt:=0;

            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=Qpelanggan.RecordCount;
            application.ProcessMessages;
            for j :=1  to Qpelanggan.RecordCount  do
             begin


              _kodellttyangberlaku:='-';
              _biayalltt:=0;  

              Qgol.close;
              Qgol.SQL.Clear;
              Qgol.SQL.Add('SELECT * FROM golongan_lltt WHERE kodelltt=:kodelltt AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
              Qgol.ParamByName('kodelltt').AsString:=Qpelanggan.fieldbyname('kodelltt').AsString;
              Qgol.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qgol.Open;

              if Qgol.RecordCount>0 then
              begin

                  _kodellttyangberlaku:=Qgol.fieldbyname('kodellttyangberlaku').AsString;
                  _biayalltt:=Qgol.fieldbyname('biaya').AsCurrency;

              end;



              Dm.Qexec.Close;
              Dm.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('REPLACE INTO drdlltt'+FormatDateTime('YYYYMM',periode.date)+' (nomorlltt,nosamb,kodellttyangberlaku,kodelltt,koderayon,total,flagpublish,flagaktif) ');
              DM.Qexec.SQL.add('VALUES (:nomorlltt,:nosamb,:kodellttyangberlaku,:kodelltt,:koderayon,:total,"0",:flagaktif)');
              Dm.Qexec.ParamByName('nomorlltt').AsString:=Qpelanggan.fieldbyname('nomorlltt').AsString;
              Dm.Qexec.ParamByName('nosamb').AsString:=Qpelanggan.fieldbyname('nosamb').AsString;
              Dm.Qexec.ParamByName('kodellttyangberlaku').AsString:=_kodellttyangberlaku;
              Dm.Qexec.ParamByName('kodelltt').AsString:=Qpelanggan.fieldbyname('kodelltt').AsString;
              Dm.Qexec.ParamByName('total').AsCurrency:=_biayalltt;
              Dm.Qexec.ParamByName('koderayon').AsString:=Qpelanggan.fieldbyname('koderayon').AsString;
              Dm.Qexec.ParamByName('flagaktif').AsString:=Qpelanggan.fieldbyname('status').AsString;
              Dm.Qexec.Execute;



                 pelanggan_lltt:=pelanggan_lltt+1;

                 Application.ProcessMessages;
                 Progress.IncPartsByOne;
                 Qpelanggan.Next;
             end;


             if pelanggan_lltt>0 then
              begin


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE periode set pelanggan_lltt=:pelanggan_lltt WHERE periode=:periode');
              Dm.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Dm.Qexec.ParamByName('pelanggan_lltt').AsCurrency:=pelanggan_lltt;
              DM.Qexec.Execute;

              end;


           end;




       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('COMMIT');
       DM.Qexec.Execute;
       ModalResult:=mrOK;

       
      end
      else
        exit;
    end
    else
     MessageDlg('Periode '+Formatdatetime('MMMM YYYY',periode.date)+' Sudah Ada !!', mtwarning, [mbok], 0);

   
  except
  on E : Exception do
  begin

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('ROLLBACK');
       DM.Qexec.Execute;

     Enabled:=true;
     MessageDlg('Terjadi Kesalahan !!, Harap hubungi vendor terkait '+char(13)+E.Message, mtError, [mbok], 0);
  end;
  end;

 FINALLY

  
       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('TRUNCATE TABLE drd_dump');
       DM.Qexec.Execute;

  Enabled:=true;
  Progress.Visible:=false;
 END;

end;

procedure TUbuatperiode.periodeChange(Sender: TObject);
begin
  tanggal1.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+1)));
  tanggal2.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+2)));
  tanggal3.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+3)));
  tanggal4.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+4)));
  tanggal5.date:=StrToDate('21/'+FormatDateTime('MM/YYYY',IncMonth(periode.date,+1)));
end;

end.
