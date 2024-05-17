unit unitikthisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxClass,
  ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, ComCtrls, RzDTP,
  StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit;

type
  Tuikthisar = class(TForm)
    sumberair: TcxComboBox;
    ceksumberair: TcxCheckBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    cekcabang: TcxCheckBox;
    kodecabang: TcxComboBox;
    kelurahan: TcxComboBox;
    cabang: TcxComboBox;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    periode: TRzDateTimePicker;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    Qrek: TMyQuery;
    frxDBDataset3: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    frxReport1: TfrxReport;
    Qcek: TMyQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uikthisar: Tuikthisar;

implementation

{$R *.dfm}  uses Dateutils, Module, UnitMain;

procedure Tuikthisar.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tuikthisar.cxButton1Click(Sender: TObject);
var
_lembar,_pakai,_rekair,_adm,_pem,_biayapemakaian:Currency;
_lembar2,_pakai2,_rekair2,_adm2,_pem2,_biayapemakaian2:Currency;
j:integer;
begin

  _lembar:=0;
  _pakai:=0;
  _rekair:=0;
  _adm:=0;
  _pem:=0;
  _biayapemakaian:=0;


   _lembar2:=0;
  _pakai2:=0;
  _rekair2:=0;
  _adm2:=0;
  _pem2:=0;
  _biayapemakaian2:=0;


  Qcek.close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('select * FROm histori_posting_drd WHERE periode>=:periode1 AND periode<=:periode2 GROUP BY periode ASC');
  Qcek.ParamByName('periode2').AsString:=FormatDateTime('YYYYMM',IncMonth(periode.date,-1));
  Qcek.ParamByName('periode1').AsString:=FormatDateTime('YYYY',periode.date)+'01';
  Qcek.Open;

  if(Qcek.RecordCount>0)then
  begin


    for j:=1 to Qcek.RecordCount do
    begin

        DM.Qcek.close;
        DM.Qcek.SQL.clear;
        DM.Qcek.SQL.Add('SELECT COUNT(nosamb) AS lembar, SUM(pakai) AS pakai,SUM(biayapemakaian) AS biayapemakaian, SUM(administrasi) AS administrasi,SUM(pemeliharaan) AS pemeliharaan,SUM(rekair) AS rekair FROM drdposting:periode WHERE flagpublish="1"');
        DM.Qcek.ParamByName('periode').AsInteger:=StrToInt(Qcek.fieldbyname('periode').AsString);
        Dm.Qcek.Open;

        _lembar:=_lembar+Dm.Qcek.fieldbyname('lembar').AsCurrency;
        _pakai:=_pakai+Dm.Qcek.fieldbyname('pakai').AsCurrency;
        _rekair:=_rekair+Dm.Qcek.fieldbyname('rekair').AsCurrency;
        _adm:=_adm+Dm.Qcek.fieldbyname('administrasi').AsCurrency;
        _pem:=_pem+Dm.Qcek.fieldbyname('pemeliharaan').AsCurrency;
        _biayapemakaian:=_biayapemakaian+Dm.Qcek.fieldbyname('biayapemakaian').AsCurrency;



        Qcek.Next;
    end;


  end
  else
  begin
    _lembar:=0;
    _pakai:=0;
    _rekair:=0;
    _adm:=0;
    _pem:=0;
    _biayapemakaian:=0; 
  end;



  DM.Qcek.close;
  DM.Qcek.SQL.clear;
  DM.Qcek.SQL.Add('SELECT COUNT(nosamb) AS lembar, SUM(pakai) AS pakai,SUM(biayapemakaian) AS biayapemakaian, SUM(administrasi) AS administrasi,SUM(pemeliharaan) AS pemeliharaan,SUM(rekair) AS rekair FROM drdposting:periode WHERE flagpublish="1"');
  DM.Qcek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  Dm.Qcek.Open;


        _lembar2:=_lembar+Dm.Qcek.fieldbyname('lembar').AsCurrency;
        _pakai2:=_pakai+Dm.Qcek.fieldbyname('pakai').AsCurrency;
        _rekair2:=_rekair+Dm.Qcek.fieldbyname('rekair').AsCurrency;
        _adm2:=_adm+Dm.Qcek.fieldbyname('administrasi').AsCurrency;
        _pem2:=_pem+Dm.Qcek.fieldbyname('pemeliharaan').AsCurrency;
        _biayapemakaian2:=_biayapemakaian+Dm.Qcek.fieldbyname('biayapemakaian').AsCurrency;





  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  Qrek.ParamByName('periodelalu').AsInteger:=StrToInt(FormatDateTime('YYYYMM',IncMonth(periode.date,-1)));
  Qrek.Open;


  TfrxMemoView(frxReport1.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
  TfrxMemoView(frxReport1.FindObject('lembar')).Memo.Text:=FormatCurr('#,##0.##',_lembar);
  TfrxMemoView(frxReport1.FindObject('pakai')).Memo.Text:=FormatCurr('#,##0.##',_pakai);
  TfrxMemoView(frxReport1.FindObject('biayapemakaian')).Memo.Text:=FormatCurr('#,##0.##',_biayapemakaian);
  TfrxMemoView(frxReport1.FindObject('administrasi')).Memo.Text:=FormatCurr('#,##0.##',_adm);
  TfrxMemoView(frxReport1.FindObject('pemeliharaan')).Memo.Text:=FormatCurr('#,##0.##',_pem);
  TfrxMemoView(frxReport1.FindObject('rekair')).Memo.Text:=FormatCurr('#,##0.##',_rekair);
  TfrxMemoView(frxReport1.FindObject('rekair2')).Memo.Text:=FormatCurr('#,##0.##',_rekair);


  TfrxMemoView(frxReport1.FindObject('lembar2')).Memo.Text:=FormatCurr('#,##0.##',_lembar2);
  TfrxMemoView(frxReport1.FindObject('pakai2')).Memo.Text:=FormatCurr('#,##0.##',_pakai2);
  TfrxMemoView(frxReport1.FindObject('biayapemakaian2')).Memo.Text:=FormatCurr('#,##0.##',_biayapemakaian2);
  TfrxMemoView(frxReport1.FindObject('administrasi2')).Memo.Text:=FormatCurr('#,##0.##',_adm2);
  TfrxMemoView(frxReport1.FindObject('pemeliharaan2')).Memo.Text:=FormatCurr('#,##0.##',_pem2);
  TfrxMemoView(frxReport1.FindObject('rekair3')).Memo.Text:=FormatCurr('#,##0.##',_rekair2);
  TfrxMemoView(frxReport1.FindObject('rekair4')).Memo.Text:=FormatCurr('#,##0.##',_rekair2);


  DM.Qpejabat.close;
  DM.Qpejabat.SQL.Clear;
  DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
  DM.Qpejabat.ParamByName('kode').AsString:='DRD';
  DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
  DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
  DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
  DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
  DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
  DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
  DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
  DM.Qpejabat.Open;


  
  frxReport1.ShowReport();


end;

procedure Tuikthisar.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
