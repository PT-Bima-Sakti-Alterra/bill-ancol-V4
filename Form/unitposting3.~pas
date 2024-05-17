unit unitposting3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinOffice2013White, StdCtrls, cxButtons, ActnList, cxControls,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, DB, MemDS, DBAccess,
  MyAccess, RzPrgres, RzDTP, cxMemo, cxCheckBox;

type
  Tupostingdrd = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    btnno: TcxButton;
    btnok: TcxButton;
    cxLabel1: TcxLabel;
    periode: TRzDateTimePicker;
    memo: TcxMemo;
    cxLabel2: TcxLabel;
    RzPanel4: TRzPanel;
    cek1: TcxCheckBox;
    cek2: TcxCheckBox;
    QpostingPel: TMyQuery;
    Qcek: TMyQuery;
    Progress: TRzProgressBar;
    QExec: TMyQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnnoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  upostingdrd: Tupostingdrd;

implementation

{$R *.dfm}   uses Module,StrUtils, DateUtils, UnitMain;

procedure Tupostingdrd.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tupostingdrd.btnokClick(Sender: TObject);
var
  i : integer;
  waktu : Tdatetime;
  lanjut:byte;
  postingulang:byte;
  totalpart:integer;
begin



  TRY



    if (cek1.Checked=false) and (cek2.Checked=false) then
        begin
            MessageDlg('HARAP CENTANG PILIHAN POSTING !!', mtWarning, [mbOK], 0);
            exit;
    end;



  lanjut:=1;
  postingulang:=0;


  if(cek1.Checked=true) or (cek2.Checked=true)then
  begin


      DM.Qcek.Close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('SHOW TABLES LIKE "drdposting'+FormatDateTime('YYYYMM',periode.date)+'"');
      DM.Qcek.open;

      if(Dm.Qcek.RecordCount=0)then
      begin
        if MessageDlg('Posting DRD '+FormatDateTime('MMMM YYYY',periode.date)+' ??',mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin
            lanjut:=1;

            DM.QExec.Close;
            DM.QExec.SQL.Clear;
            DM.QExec.SQL.Add('CREATE TABLE drdposting'+FormatDateTime('YYYYMM',periode.date)+' LIKE drdposting');
            DM.QExec.Execute;

           end
          else
            lanjut:=0;
      end
      else
      begin
         if MessageDlg('Anda yakin untuk posting ulang DRD '+FormatDateTime('MMMM YYYY',periode.date)+' ??',mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin
            lanjut:=1;
            postingulang:=1;
           end
          else
            lanjut:=0;
      end;

  end;

  IF lanjut=1 THEN
  BEGIN
      totalpart:=0;
      if cek1.Checked=True then totalpart:=totalpart+1;
      if cek2.Checked=True then totalpart:=totalpart+9;
      Progress.TotalParts:=totalpart;
      Progress.PartsComplete:=0;
      Progress.Show;

      if (postingulang=1) and (Trim(memo.Text)='') then
      begin
          MessageDlg('Catatan harus diisi alasan posting ulang !!', mtWarning, [mbOK], 0);
          exit;
      end;


      TRY   

         TRY


         waktu:=now;

         Enabled:=False;


          DM.QExec.Close;
          DM.QExec.SQL.Clear;
          DM.QExec.SQL.Add('START TRANSACTION');
          DM.QExec.Execute;


          if(cek1.Checked=true)then
          begin

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('TRUNCATE drdposting'+FormatDateTime('YYYYMM',periode.date)+'');
              DM.QExec.Execute;

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('REPLACE INTO drdposting'+FormatDateTime('YYYYMM',periode.date)+' select c.*,coalesce(n.total,0)+coalesce(nangs.total,0) as nonair,');
              DM.QExec.SQL.Add('IF(p.flag="6",IF(c.rekair<coalesce(gk.dibayarperusahaan,0),c.rekair,coalesce(gk.dibayarperusahaan,0)),0) as potongan,p.flag FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN (select dibebankankepada,SUm(total) as total FROm nonair WHERE jenis NOT IN ("JNS-38") AND flaghapus="0" and flagangsur="0" AND DATE_FORMAT(waktuinput,"%Y%m")='+FormatDateTime('YYYYMM',periode.date)+' GROUP BY dibebankankepada ) n ON c.nosamb=n.dibebankankepada');
              DM.QExec.SQL.Add('LEFT JOIN (select dibebankankepada,SUm(total) as total FROm nonair WHERE flaghapus="0" and flagangsur="1" AND DATE_FORMAT(tglmulaitagih,"%Y%m")='+FormatDateTime('YYYYMM',IncMonth(periode.date,+1))+' GROUP BY dibebankankepada ) nangs ON c.nosamb=nangs.dibebankankepada');
              DM.QExec.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb LEFT JOIN golkaryawan gk ON c.kodegol=gk.kodegol WHERE (p.tanggal_hapus IS NULL OR DATE_FORMAT(p.tanggal_hapus,"%Y%m")>=:periode)');
              DM.QExec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              DM.QExec.Execute;

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE LEFT(kode,6)=:periode AND beritaacara LIKE "%DRD-KOREKSI%"');
              DM.QExec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              DM.QExec.Execute;

              QExec.Close;
              QExec.SQL.Clear;
              QExec.SQL.Add('UPDATE ba_koreksi_rekening SET flaghapus="1" WHERE periode=:periode AND nomorba LIKE "%DRD-KOREKSI%"');
              QExec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              QExec.Execute;

              Progress.IncPartsByOne;

          end;

            if (cek2.Checked=true)then
            begin  


              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('DELETE FROM `pelanggan_posting` WHERE periode=:periode;');
              DM.QExec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              DM.QExec.Execute;

              ///SEMUA PELANGGAN YG TERDAFTAR DI PDAM

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) (SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb,p.nama,p.alamat, p.koderayon, p.kodegol, ');
              DM.QExec.SQL.Add('IF(STATUS="0","NON AKTIF",IF(STATUS="1","AKTIF",IF(STATUS="2","SEGEL",IF(STATUS="3","PUTUS SEMENTARA","TIDAK JELAS")))) FROM pelanggan p WHERE (p.tanggal_hapus IS NULL OR DATE_FORMAT(p.tanggal_hapus,"%Y%m")>:periode))');
              DM.QExec.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
              DM.QExec.Execute;
              Progress.IncPartsByOne;

              ///PELANGGAN AIR TIDAK MENGALIR & TIDAK DIREKENINGKAN DARI BSBS

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) (SELECT CONCAT(:periode,".",p.nosamb), :periode, p.nosamb,pl.nama,pl.alamat, p.koderayon, p.kodegol, "AIR TIDAK MENGALIR / TIDAK DIREKENINGKAN"');
              DM.Qexec.SQL.Add('FROM drdposting:periode p LEFT JOIN pelanggan pl ON p.nosamb=pl.nosamb');
              DM.Qexec.SQL.Add('WHERE p.flag IN ("3","5") AND (pl.tanggal_hapus IS NULL OR DATE_FORMAT(pl.tanggal_hapus,"%Y%m")>:periode));');
              DM.QExec.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
              DM.QExec.Execute;
              Progress.IncPartsByOne;

              ///PELANGGAN SEGEL DARI BSBS

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) (SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS periode, p.nosamb,pl.nama,pl.alamat, p.koderayon, p.kodegol,"SEGEL" ');
              DM.Qexec.SQL.Add('FROM drdposting:periode p LEFT JOIN pelanggan pl ON p.nosamb=pl.nosamb WHERE p.flagaktif="2" AND (pl.tanggal_hapus IS NULL OR DATE_FORMAT(pl.tanggal_hapus,"%Y%m")>:periode));');
              DM.QExec.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
              DM.QExec.Execute;    
              Progress.IncPartsByOne;

              ///PELANGGAN SEGEL DARI BA SEGEL

              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS periode, c.nosamb,c.nama,c.alamat, c.koderayon, c.kodegol,"SEGEL" as ket  FROM ba_pemutusan_sementara p  ');
              Qcek.SQL.Add('LEFT JOIN permohonan_pemutusan_sementara c ON p.nomorpermohonan=c.nomor WHERE p.flagprosesdata="1" AND c.segel="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  AND c.flaghapus="0" AND ');
              Qcek.SQL.Add('c.nosamb NOT IN (SELECT nosamb FROM ba_bukasegel WHERE flaghapus="0" AND flagprosesdata="1" AND DATE_FORMAT(tanggalba,"%Y%m")=:periode) ORDER BY c.`nosamb` ASC );');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;

              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true; }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;      
              Progress.IncPartsByOne;


              ///PELANGGAN BUKA SEGEL DARI BA BUKA SEGEL KET AIR TIDAK MENGALIR / TIDAK DIREKENINGKAN

              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('SELECT CONCAT(:periode,".",nosamb) AS kode,:periode AS periode,nosamb,b.nama,b.alamat,koderayon, kodegol,"AIR TIDAK MENGALIR / TIDAK DIREKENINGKAN" AS ket');
              Qcek.SQL.Add('FROM ba_bukasegel a LEFT JOIN `permohonan_bukasegel` b ON a.`nomorpermohonan`=b.`nomor`  WHERE b.flaghapus="0" AND flagprosesdata="1" AND DATE_FORMAT(tanggalba,"%Y%m")=:periode ');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;

              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true;    }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;        
              Progress.IncPartsByOne;



               ///PELANGGAN NON AKTIF DARI BA PUTUS

              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS periode, c.nosamb, c.koderayon, c.kodegol,"NON AKTIF" as ket  FROM ba_pemutusan_sementara p  ');
              Qcek.SQL.Add('LEFT JOIN permohonan_pemutusan_sementara c ON p.nomorpermohonan=c.nomor WHERE c.segel="0" AND p.flagprosesdata="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  AND c.flaghapus="0" ORDER BY c.`nosamb` ASC );');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;


              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true; }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;  
              Progress.IncPartsByOne;



            
               ///PELANGGAN NON AKTIF DARI BA PUTUS TUNGGAKAN

              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('(SELECT CONCAT(:periode,".",c.nosamb) AS kode, :periode AS periode, c.nosamb,c.nama,c.alamat, c.koderayon, c.kodegol,"NON AKTIF" as ket  FROM ba_pemutusan_tunggakan p  ');
              Qcek.SQL.Add('LEFT JOIN spk_pemutusan_tunggakan c ON p.nomorspk=c.nomorspk WHERE p.flagprosesdata="1" AND DATE_FORMAT(p.tanggalba,"%Y%m")=:periode  AND c.flaghapus="0" ORDER BY c.`nosamb` ASC );');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;


              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true;  }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;   
              Progress.IncPartsByOne;








               ///PELANGGAN SAMBUNG KEMBALI DARI BA SAMBUNG KEMBALI

              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('(SELECT CONCAT(:periode,".",p.nosamb) as kode, :periode as periode, p.nosamb,p.nama,p.alamat, p.koderayon, p.kodegol, "SAMBUNG KEMBALI" as ket   FROM rab_sambung_kembali p  ');
              Qcek.SQL.Add('WHERE DATE_FORMAT(p.waktupengaktifan,"%Y%m")=:periode AND p.flaghapus="0" AND p.flagaktif="1" ORDER BY p.`nosamb` ASC );');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;


              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true;    }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;    
              Progress.IncPartsByOne;





               //// SAMBUNGAN BARU


              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('(SELECT CONCAT(:periode,".",p.nosambyangdiberikan) as kode, :periode as periode, p.nosambyangdiberikan as nosamb,p.nama,p.alamat, p.koderayon, p.kodegol, "AKTIVASI SAMBUNGAN BARU" as ket  FROM rab p ');
              Qcek.SQL.Add('WHERE DATE_FORMAT(p.waktupengaktifan,"%Y%m")=:periode AND p.flagaktif="1" AND p.flaghapus="0" ORDER BY p.`nosambyangdiberikan` ASC );');
              Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
              Qcek.Open;


              {Progress.PartsComplete:=0;
              Progress.TotalParts:=Qcek.RecordCount;
              Progress.Visible:=true;        }


              for i := 1 to Qcek.RecordCount do
              begin

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) VALUES (:kode,:periode,:nosamb,:nama,:alamat,:koderayon,:kodegol,:ket)');
                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                    DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                    DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                    DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
                    DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;
                    DM.Qexec.ParamByName('ket').AsString:=Qcek.fieldbyname('ket').AsString;
                    DM.Qexec.Execute;


                    Progress.IncPartsByOne;

                  Qcek.Next;
              end;   
              Progress.IncPartsByOne;



              ///PELANGGAN AKTIF

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('REPLACE INTO pelanggan_posting (kode,periode,nosamb,nama,alamat,koderayon,kodegol,ket) (SELECT CONCAT(:periode,".",p.nosamb) AS kode, :periode AS periode, p.nosamb,pl.nama,pl.alamat, p.koderayon, p.kodegol,"AKTIF" ');
              DM.Qexec.SQL.Add('FROM drdposting:periode p LEFT JOIN pelanggan pl ON p.nosamb=pl.nosamb WHERE p.flagpublish="1" AND p.flagaktif="1" AND (pl.tanggal_hapus IS NULL OR DATE_FORMAT(pl.tanggal_hapus,"%Y%m")>:periode));');
              DM.QExec.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
              DM.QExec.Execute;     
              Progress.IncPartsByOne;

              {if(DM.Qexec.RecordCount=0)then
              begin
                MessageDlg('Rekening belum ada dipublish !!!',mtWarning,[mbOK],0);
                Exit;
              end;}


            end;



          DM.QExec.Close;
          DM.QExec.SQL.Clear;
          DM.QExec.SQL.Add('UPDATE periode set waktuposting=:waktu,userposting="'+Umain.user.Caption+'",posting="1" WHERE periode="'+FormatDateTime('YYYYMM',periode.date)+'"');
          DM.Qexec.ParamByName('waktu').AsDateTime:=waktu;
          DM.QExec.Execute;


          DM.QExec.Close;
          DM.QExec.SQL.Clear;
          DM.QExec.SQL.Add('REPLACE INTO histori_posting_drd VALUES (null,:waktu,:periode,:user,:catatan) ');
          DM.Qexec.ParamByName('waktu').AsDateTime:=waktu;
          DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
          DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
          DM.Qexec.ParamByName('catatan').AsString:=memo.Text;
          DM.QExec.Execute;



          Dm.QExec.Close;
          Dm.QExec.SQL.Clear;
          Dm.QExec.SQL.Add('COMMIT');
          Dm.QExec.Execute;


            memo.Clear;
            MessageDlg('Posting selesai..', mtInformation, [mbOK], 0);



          EXCEPT ON E:Exception do
          begin  

             MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);

          end;
          END;

     FINALLY
       Enabled:=true;
       Umain.host.close;
       Progress.Visible:=false;
     END;


  END;




  FINALLY
      Umain.host.close;
  END;





 
end;


procedure Tupostingdrd.btnnoClick(Sender: TObject);
begin
close;
end;

procedure Tupostingdrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
memo.Clear;
end;

end.
