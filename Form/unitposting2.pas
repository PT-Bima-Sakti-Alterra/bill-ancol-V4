unit unitposting2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinOffice2013White, StdCtrls, cxButtons, ActnList, cxControls,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, DB, MemDS, DBAccess,
  MyAccess, RzPrgres;

type
  Tupostingsaldo = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    BillQCek: TMyQuery;
    Qposting: TMyQuery;
    RzPanel1: TRzPanel;
    btnno: TcxButton;
    btnok: TcxButton;
    tanggal: TcxDateEdit;
    cxLabel1: TcxLabel;
    RzPanel4: TRzPanel;
    Progress: TRzProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnnoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  upostingsaldo: Tupostingsaldo;

implementation

{$R *.dfm}   uses Module,StrUtils, unitloading;

procedure Tupostingsaldo.FormCreate(Sender: TObject);
begin
tanggal.date:=date;
end;

procedure Tupostingsaldo.btnokClick(Sender: TObject);
var
  thns,thn,thnbln,ejabulantahun : string;
  i : integer;
begin






      if MessageDlg('Proses saldo piutang s/d tanggal '+FormatDateTime('DD MMMM YYYY',tanggal.date)+' ??',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin


      TRY   

         TRY

         Enabled:=False; 
         cxLabel1.Visible:=false;
         tanggal.Visible:=false;
         btnok.Visible:=false;
         btnno.Visible:=false;





          thnbln := FormatDateTime('YYYYMM',tanggal.date);
          ejabulantahun := FormatDateTime('MMMM YYYY',tanggal.date);
          thn  := LeftStr(thnbln,4);
          thns := IntToStr(StrToInt(thn)-1);

          DM.QExec.Close;
          DM.QExec.SQL.Clear;
          DM.QExec.SQL.Add('START TRANSACTION');
          DM.QExec.Execute;


          DM.Qcek.Close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('SHOW TABLES LIKE "saldopiutang'+thnbln+'"');
          DM.Qcek.open;

          if(Dm.Qcek.RecordCount=0)then
          begin

              DM.QExec.Close;
              DM.QExec.SQL.Clear;
              DM.QExec.SQL.Add('CREATE TABLE saldopiutang'+thnbln+' LIKE saldopiutang');
              DM.QExec.Execute;


          end;



          DM.QExec.Close;
          DM.QExec.SQL.Clear;
          DM.QExec.SQL.Add('TRUNCATE saldopiutang'+thnbln+'');
          DM.QExec.Execute;


          BillQCek.Close;
          BillQCek.SQL.Clear;
          BillQCek.SQL.Add('SELECT u.*,p.nama,p.alamat,p.status FROM piutang u,pelanggan p WHERE u.nosamb=p.nosamb AND u.periode<=:periode');
          BillQCek.ParamByName('periode').AsString:=thnbln;
          BillQCek.Open;
          BillQCek.First;


          Progress.TotalParts:=BillQCek.RecordCount;
          Progress.PartsComplete:=0;
          Progress.Visible:=true;
          Application.ProcessMessages;
          for i:=1 to BillQCek.RecordCount do
          begin
            Dm.Qexec.Close;
            Dm.Qexec.SQL.Clear;
            Dm.Qexec.SQL.Add(Qposting.SQLInsert.Text);
            Dm.Qexec.ParamByName('thnbln').AsInteger:=StrToInt(thnbln);
            Dm.Qexec.ParamByName('kode').AsString:=BillQCek.FieldByName('kode').AsString;
            Dm.Qexec.ParamByName('periode').AsString:=BillQCek.FieldByName('periode').AsString;
            Dm.Qexec.ParamByName('bulan').AsString:=BillQCek.FieldByName('bulan').AsString;
            Dm.Qexec.ParamByName('nosamb').AsString:=BillQCek.FieldByName('nosamb').AsString;
            Dm.Qexec.ParamByName('nama').AsString:=BillQCek.FieldByName('nama').AsString;
            Dm.Qexec.ParamByName('alamat').AsString:=BillQCek.FieldByName('alamat').AsString;
            Dm.Qexec.ParamByName('kodegol').AsString:=BillQCek.FieldByName('kodegol').AsString;
            Dm.Qexec.ParamByName('kodediameter').AsString:=BillQCek.FieldByName('kodediameter').AsString;
            Dm.Qexec.ParamByName('kodekelurahan').AsString:=BillQCek.FieldByName('kodekelurahan').AsString;
            Dm.Qexec.ParamByName('koderayon').AsString:=BillQCek.FieldByName('koderayon').AsString;
            Dm.Qexec.ParamByName('kodekolektif').AsString:=BillQCek.FieldByName('kodekolektif').AsString;
            Dm.Qexec.ParamByName('stanlalu').AsCurrency:=BillQCek.FieldByName('stanlalu').AsCurrency;
            Dm.Qexec.ParamByName('stanskrg').AsCurrency:=BillQCek.FieldByName('stanskrg').AsCurrency;
            Dm.Qexec.ParamByName('stanangkat').AsCurrency:=BillQCek.FieldByName('stanangkat').AsCurrency;
            Dm.Qexec.ParamByName('pakai').AsCurrency:=BillQCek.FieldByName('pakai').AsCurrency;
            Dm.Qexec.ParamByName('biayapemakaian').AsCurrency:=BillQCek.FieldByName('biayapemakaian').AsCurrency;
            Dm.Qexec.ParamByName('administrasi').AsCurrency:=BillQCek.FieldByName('administrasi').AsCurrency;
            Dm.Qexec.ParamByName('pemeliharaan').AsCurrency:=BillQCek.FieldByName('pemeliharaan').AsCurrency;
            Dm.Qexec.ParamByName('pelayanan').AsCurrency:=BillQCek.FieldByName('pelayanan').AsCurrency;
            Dm.Qexec.ParamByName('retribusi').AsCurrency:=BillQCek.FieldByName('retribusi').AsCurrency;
            Dm.Qexec.ParamByName('airlimbah').AsCurrency:=BillQCek.FieldByName('airlimbah').AsCurrency;
            Dm.Qexec.ParamByName('dendapakai0').AsCurrency:=BillQCek.FieldByName('dendapakai0').AsCurrency;
            Dm.Qexec.ParamByName('pemeliharaanlain').AsCurrency:=BillQCek.FieldByName('pemeliharaanlain').AsCurrency;
            Dm.Qexec.ParamByName('administrasilain').AsCurrency:=BillQCek.FieldByName('administrasilain').AsCurrency;
            Dm.Qexec.ParamByName('retribusilain').AsCurrency:=BillQCek.FieldByName('retribusilain').AsCurrency;
            Dm.Qexec.ParamByName('meterai').AsCurrency:=BillQCek.FieldByName('meterai').AsCurrency;
            Dm.Qexec.ParamByName('rekair').AsCurrency:=BillQCek.FieldByName('rekair').AsCurrency;
            Dm.Qexec.ParamByName('dendatunggakan').AsCurrency:=BillQCek.FieldByName('dendatunggakan').AsCurrency;
            Dm.Qexec.ParamByName('ppn').AsCurrency:=BillQCek.FieldByName('ppn').AsCurrency;
            Dm.Qexec.ParamByName('total').AsCurrency:=BillQCek.FieldByName('total').AsCurrency;
            //Dm.Qexec.ParamByName('tglkoreksi').AsDateTime:=NULL;
            //Dm.Qexec.ParamByName('tglpublish').AsDateTime:=NULL;
            //Dm.Qexec.ParamByName('tglbayar').AsDateTime:=NULL;
            Dm.Qexec.ParamByName('userkoreksi').AsString:=BillQCek.FieldByName('userkoreksi').AsString;
            Dm.Qexec.ParamByName('userpublish').AsString:=BillQCek.FieldByName('userpublish').AsString;
            Dm.Qexec.ParamByName('flagpublish').AsString:=BillQCek.FieldByName('flagpublish').AsString;
            //Dm.Qexec.ParamByName('flaglunas').AsString:='0';
            Dm.Qexec.ParamByName('blok1').AsCurrency:=BillQCek.FieldByName('blok1').AsCurrency;
            Dm.Qexec.ParamByName('blok2').AsCurrency:=BillQCek.FieldByName('blok2').AsCurrency;
            Dm.Qexec.ParamByName('blok3').AsCurrency:=BillQCek.FieldByName('blok3').AsCurrency;
            Dm.Qexec.ParamByName('blok4').AsCurrency:=BillQCek.FieldByName('blok4').AsCurrency;
            Dm.Qexec.ParamByName('blok5').AsCurrency:=BillQCek.FieldByName('blok5').AsCurrency;
            Dm.Qexec.ParamByName('prog1').AsCurrency:=BillQCek.FieldByName('prog1').AsCurrency;
            Dm.Qexec.ParamByName('prog2').AsCurrency:=BillQCek.FieldByName('prog2').AsCurrency;
            Dm.Qexec.ParamByName('prog3').AsCurrency:=BillQCek.FieldByName('prog3').AsCurrency;
            Dm.Qexec.ParamByName('prog4').AsCurrency:=BillQCek.FieldByName('prog4').AsCurrency;
            Dm.Qexec.ParamByName('prog5').AsCurrency:=BillQCek.FieldByName('prog5').AsCurrency;
            Dm.Qexec.ParamByName('kelainan').AsString:=BillQCek.FieldByName('kelainan').AsString;
            Dm.Qexec.ParamByName('kasir').AsString:=BillQCek.FieldByName('kasir').AsString;
            Dm.Qexec.ParamByName('nolpp').AsString:=BillQCek.FieldByName('nolpp').AsString;
            Dm.Qexec.ParamByName('flagkoreksi').AsString:=BillQCek.FieldByName('flagkoreksi').AsString;
            Dm.Qexec.ParamByName('flagbatal').AsString:=BillQCek.FieldByName('flagbatal').AsString;
            Dm.Qexec.ParamByName('flagcetak').AsString:='0';
            //Dm.Qexec.ParamByName('tglcetak').AsDateTime:=BillQCek.FieldByName('tglcetak').AsDateTime;
            Dm.Qexec.ParamByName('flagaktif').AsString:=BillQCek.FieldByName('status').AsString;
            Dm.Qexec.ParamByName('loketbayar').AsString:=BillQCek.FieldByName('loketbayar').AsString;
            Dm.Qexec.ParamByName('flagkirim').AsString:=BillQCek.FieldByName('flagkirim').AsString;
            Dm.Qexec.ParamByName('tglkirim').AsDateTime:=BillQCek.FieldByName('tglkirim').AsDateTime;
            Dm.Qexec.ParamByName('tglmulaidenda').AsDate:=BillQCek.FieldByName('tglmulaidenda').AsDateTime;
            Dm.Qexec.ParamByName('tglmulaidenda2').AsDate:=BillQCek.FieldByName('tglmulaidenda2').AsDateTime;
            Dm.Qexec.ParamByName('userkirim').AsString:=BillQCek.FieldByName('userkirim').AsString;
            Dm.Qexec.ParamByName('flagdownload').AsString:=BillQCek.FieldByName('flagdownload').AsString;
            Dm.Qexec.ParamByName('tgldownload').AsDateTime:=BillQCek.FieldByName('tgldownload').AsDateTime;
            Dm.Qexec.ParamByName('userdownload').AsString:=BillQCek.FieldByName('userdownload').AsString;
            Dm.Qexec.ParamByName('tglbatal').AsDateTime:=BillQCek.FieldByName('tglbatal').AsDateTime;
            Dm.Qexec.ParamByName('pembacameter').AsString:=BillQCek.FieldByName('pembacameter').AsString;   
            Dm.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=BillQCek.FieldByName('trf_dendatunggakan').AsCurrency;
            Dm.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=BillQCek.FieldByName('trf_dendatunggakan2').AsCurrency;
            Dm.Qexec.ParamByName('kodeadministrasilain').AsString:=BillQCek.FieldByName('kodeadministrasilain').AsString;
            Dm.Qexec.ParamByName('kodepemeliharaanlain').AsString:=BillQCek.FieldByName('kodepemeliharaanlain').AsString;
            Dm.Qexec.ParamByName('koderetribusilain').AsString:=BillQCek.FieldByName('koderetribusilain').AsString;
            Dm.Qexec.ParamByName('flag').AsString:=BillQCek.FieldByName('flag').AsString;
            Dm.Qexec.Execute;

            Progress.PartsComplete:=i;
            Application.ProcessMessages;
            BillQCek.Next;
          end;



          BillQCek.Close;
          BillQCek.SQL.Clear;
          BillQCek.SQL.Add('select b.*,p.nama,p.alamat,p.status from bayar b,pelanggan p where b.nosamb=p.nosamb AND date(b.tglbayar)>:tglbayar and b.periode<=:periode and b.flaglunas=:flaglunas');
          BillQCek.ParamByName('tglbayar').AsDate:=tanggal.date;
          BillQCek.ParamByName('periode').AsString:=thnbln;
          BillQCek.ParamByName('flaglunas').AsString:='1';
          BillQCek.Open;
          BillQCek.First;

          Progress.TotalParts:=BillQCek.RecordCount;
          Progress.PartsComplete:=0;
          Application.ProcessMessages;
          for i:=1 to BillQCek.RecordCount do
          begin
            Dm.Qexec.Close;
            Dm.Qexec.SQL.Clear;
            Dm.Qexec.SQL.Add(Qposting.SQLUpdate.Text);
            Dm.Qexec.ParamByName('thnbln').AsInteger:=StrToInt(thnbln);
            Dm.Qexec.ParamByName('kode').AsString:=BillQCek.FieldByName('kode').AsString;
            Dm.Qexec.ParamByName('periode').AsString:=BillQCek.FieldByName('periode').AsString;
            Dm.Qexec.ParamByName('bulan').AsString:=BillQCek.FieldByName('bulan').AsString;
            Dm.Qexec.ParamByName('nosamb').AsString:=BillQCek.FieldByName('nosamb').AsString;
            Dm.Qexec.ParamByName('nama').AsString:=BillQCek.FieldByName('nama').AsString;
            Dm.Qexec.ParamByName('alamat').AsString:=BillQCek.FieldByName('alamat').AsString;
            Dm.Qexec.ParamByName('kodegol').AsString:=BillQCek.FieldByName('kodegol').AsString;
            Dm.Qexec.ParamByName('kodediameter').AsString:=BillQCek.FieldByName('kodediameter').AsString;
            Dm.Qexec.ParamByName('kodekelurahan').AsString:=BillQCek.FieldByName('kodekelurahan').AsString;
            Dm.Qexec.ParamByName('koderayon').AsString:=BillQCek.FieldByName('koderayon').AsString;
            Dm.Qexec.ParamByName('kodekolektif').AsString:=BillQCek.FieldByName('kodekolektif').AsString;
            Dm.Qexec.ParamByName('stanlalu').AsCurrency:=BillQCek.FieldByName('stanlalu').AsCurrency;
            Dm.Qexec.ParamByName('stanskrg').AsCurrency:=BillQCek.FieldByName('stanskrg').AsCurrency;
            Dm.Qexec.ParamByName('stanangkat').AsCurrency:=BillQCek.FieldByName('stanangkat').AsCurrency;
            Dm.Qexec.ParamByName('pakai').AsCurrency:=BillQCek.FieldByName('pakai').AsCurrency;
            Dm.Qexec.ParamByName('biayapemakaian').AsCurrency:=BillQCek.FieldByName('biayapemakaian').AsCurrency;
            Dm.Qexec.ParamByName('administrasi').AsCurrency:=BillQCek.FieldByName('administrasi').AsCurrency;
            Dm.Qexec.ParamByName('pemeliharaan').AsCurrency:=BillQCek.FieldByName('pemeliharaan').AsCurrency;
            Dm.Qexec.ParamByName('pelayanan').AsCurrency:=BillQCek.FieldByName('pelayanan').AsCurrency;
            Dm.Qexec.ParamByName('retribusi').AsCurrency:=BillQCek.FieldByName('retribusi').AsCurrency;
            Dm.Qexec.ParamByName('airlimbah').AsCurrency:=BillQCek.FieldByName('airlimbah').AsCurrency;
            Dm.Qexec.ParamByName('dendapakai0').AsCurrency:=BillQCek.FieldByName('dendapakai0').AsCurrency;
            Dm.Qexec.ParamByName('pemeliharaanlain').AsCurrency:=BillQCek.FieldByName('pemeliharaanlain').AsCurrency;
            Dm.Qexec.ParamByName('administrasilain').AsCurrency:=BillQCek.FieldByName('administrasilain').AsCurrency;
            Dm.Qexec.ParamByName('retribusilain').AsCurrency:=BillQCek.FieldByName('retribusilain').AsCurrency;
            Dm.Qexec.ParamByName('meterai').AsCurrency:=BillQCek.FieldByName('meterai').AsCurrency;
            Dm.Qexec.ParamByName('rekair').AsCurrency:=BillQCek.FieldByName('rekair').AsCurrency;
            Dm.Qexec.ParamByName('dendatunggakan').AsCurrency:=BillQCek.FieldByName('dendatunggakan').AsCurrency;
            Dm.Qexec.ParamByName('angsuran').AsCurrency:=BillQCek.FieldByName('angsuran').AsCurrency;
            Dm.Qexec.ParamByName('ppn').AsCurrency:=BillQCek.FieldByName('ppn').AsCurrency;
            Dm.Qexec.ParamByName('total').AsCurrency:=BillQCek.FieldByName('total').AsCurrency;
            Dm.Qexec.ParamByName('tglkoreksi').AsDateTime:=BillQCek.FieldByName('tglkoreksi').AsDateTime;
            Dm.Qexec.ParamByName('tglpublish').AsDateTime:=BillQCek.FieldByName('tglpublish').AsDateTime;
            Dm.Qexec.ParamByName('tglbayar').AsDateTime:=BillQCek.FieldByName('tglbayar').AsDateTime;
            Dm.Qexec.ParamByName('userkoreksi').AsString:=BillQCek.FieldByName('userkoreksi').AsString;
            Dm.Qexec.ParamByName('userpublish').AsString:=BillQCek.FieldByName('userpublish').AsString;
            Dm.Qexec.ParamByName('flagpublish').AsString:=BillQCek.FieldByName('flagpublish').AsString;
            Dm.Qexec.ParamByName('flaglunas').AsString:=BillQCek.FieldByName('flaglunas').AsString;
            Dm.Qexec.ParamByName('blok1').AsCurrency:=BillQCek.FieldByName('blok1').AsCurrency;
            Dm.Qexec.ParamByName('blok2').AsCurrency:=BillQCek.FieldByName('blok2').AsCurrency;
            Dm.Qexec.ParamByName('blok3').AsCurrency:=BillQCek.FieldByName('blok3').AsCurrency;
            Dm.Qexec.ParamByName('blok4').AsCurrency:=BillQCek.FieldByName('blok4').AsCurrency;
            Dm.Qexec.ParamByName('blok5').AsCurrency:=BillQCek.FieldByName('blok5').AsCurrency;
            Dm.Qexec.ParamByName('prog1').AsCurrency:=BillQCek.FieldByName('prog1').AsCurrency;
            Dm.Qexec.ParamByName('prog2').AsCurrency:=BillQCek.FieldByName('prog2').AsCurrency;
            Dm.Qexec.ParamByName('prog3').AsCurrency:=BillQCek.FieldByName('prog3').AsCurrency;
            Dm.Qexec.ParamByName('prog4').AsCurrency:=BillQCek.FieldByName('prog4').AsCurrency;
            Dm.Qexec.ParamByName('prog5').AsCurrency:=BillQCek.FieldByName('prog5').AsCurrency;
            Dm.Qexec.ParamByName('kelainan').AsString:=BillQCek.FieldByName('kelainan').AsString;
            Dm.Qexec.ParamByName('kasir').AsString:=BillQCek.FieldByName('kasir').AsString;
            Dm.Qexec.ParamByName('nolpp').AsString:=BillQCek.FieldByName('nolpp').AsString;
            Dm.Qexec.ParamByName('flagkoreksi').AsString:=BillQCek.FieldByName('flagkoreksi').AsString;
            Dm.Qexec.ParamByName('flagbatal').AsString:=BillQCek.FieldByName('flagbatal').AsString;
            Dm.Qexec.ParamByName('flagcetak').AsString:=BillQCek.FieldByName('flagcetak').AsString;
            Dm.Qexec.ParamByName('tglcetak').AsDateTime:=BillQCek.FieldByName('tglcetak').AsDateTime;
            Dm.Qexec.ParamByName('flagaktif').AsString:=BillQCek.FieldByName('status').AsString;
            Dm.Qexec.ParamByName('loketbayar').AsString:=BillQCek.FieldByName('loketbayar').AsString;
            Dm.Qexec.ParamByName('flagkirim').AsString:=BillQCek.FieldByName('flagkirim').AsString;
            Dm.Qexec.ParamByName('tglkirim').AsDateTime:=BillQCek.FieldByName('tglkirim').AsDateTime;
            Dm.Qexec.ParamByName('tglmulaidenda').AsDate:=BillQCek.FieldByName('tglmulaidenda').AsDateTime;
            Dm.Qexec.ParamByName('tglmulaidenda2').AsDate:=BillQCek.FieldByName('tglmulaidenda2').AsDateTime;
            Dm.Qexec.ParamByName('userkirim').AsString:=BillQCek.FieldByName('userkirim').AsString;
            Dm.Qexec.ParamByName('flagdownload').AsString:=BillQCek.FieldByName('flagdownload').AsString;
            Dm.Qexec.ParamByName('tgldownload').AsDateTime:=BillQCek.FieldByName('tgldownload').AsDateTime;
            Dm.Qexec.ParamByName('userdownload').AsString:=BillQCek.FieldByName('userdownload').AsString;
            Dm.Qexec.ParamByName('tglbatal').AsDateTime:=BillQCek.FieldByName('tglbatal').AsDateTime;
            Dm.Qexec.ParamByName('pembacameter').AsString:=BillQCek.FieldByName('pembacameter').AsString;
            Dm.Qexec.ParamByName('flagbuatfilepos').AsString:=BillQCek.FieldByName('flagbuatfilepos').AsString;
            Dm.Qexec.ParamByName('waktubuatfilepos').AsDateTime:=BillQCek.FieldByName('waktubuatfilepos').AsDateTime;
            Dm.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=BillQCek.FieldByName('trf_dendatunggakan').AsCurrency;
            Dm.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=BillQCek.FieldByName('trf_dendatunggakan2').AsCurrency;
            Dm.Qexec.ParamByName('kodeadministrasilain').AsString:=BillQCek.FieldByName('kodeadministrasilain').AsString;
            Dm.Qexec.ParamByName('kodepemeliharaanlain').AsString:=BillQCek.FieldByName('kodepemeliharaanlain').AsString;
            Dm.Qexec.ParamByName('koderetribusilain').AsString:=BillQCek.FieldByName('koderetribusilain').AsString;
            Dm.Qexec.ParamByName('flag').AsString:=BillQCek.FieldByName('flag').AsString;
            Dm.Qexec.Execute;

            Progress.PartsComplete:=i;
            Application.ProcessMessages;
            BillQCek.Next;
          end;



          Dm.QExec.Close;
          Dm.QExec.SQL.Clear;
          Dm.QExec.SQL.Add('COMMIT');
          Dm.QExec.Execute;

          MessageDlg('Posting saldo selesai..', mtInformation, [mbOK], 0);



          EXCEPT ON E:Exception do
          begin




             MessageDlg('Terjadi kesalahan : '+E.Message, mtInformation, [mbOK], 0);

          end;
          END;

      FINALLY

       Progress.Visible:=false;
       cxLabel1.Visible:=true;
       tanggal.Visible:=true;
       btnok.Visible:=true;
       btnno.Visible:=true;
       Enabled:=true;

      END;


        
      end
      else
        exit;




 
end;


procedure Tupostingsaldo.btnnoClick(Sender: TObject);
begin
close;
end;

end.
