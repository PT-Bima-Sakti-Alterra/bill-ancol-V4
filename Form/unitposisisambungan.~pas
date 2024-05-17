unit unitposisisambungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxClass,
  ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, ComCtrls, RzDTP,
  StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit;

type
  Tuposisisambungan = class(TForm)
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
    Qrekperiode: TStringField;
    Qrekkodegol: TStringField;
    Qrekgolongan: TStringField;
    Qrekkategori: TStringField;
    Qrekpelangganawal: TIntegerField;
    Qrekmemopemutusan: TIntegerField;
    Qrekpemutusan: TIntegerField;
    Qrekaktifkembali: TIntegerField;
    Qreksambbaru: TIntegerField;
    Qrekrubahgolbaru: TIntegerField;
    Qrekrubahgollama: TIntegerField;
    Qrekpelangganakhir: TIntegerField;
    Qrekgantimeter: TIntegerField;
    Qrekpelangganawal_1: TIntegerField;
    Qrekmemopemutusan2: TFloatField;
    Qrekpemutusan2: TFloatField;
    Qrekaktifkembali2: TFloatField;
    Qreksambbaru2: TFloatField;
    Qrekrubahgolbaru2: TFloatField;
    Qrekrubahgollama2: TFloatField;
    Qrekgantimeter2: TFloatField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uposisisambungan: Tuposisisambungan;

implementation

{$R *.dfm}  uses Dateutils, Module, UnitMain;

procedure Tuposisisambungan.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tuposisisambungan.cxButton1Click(Sender: TObject);
begin
  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qrek.ParamByName('periodeawal').AsString:=FormatDateTime('YYYY',periode.date)+'01';
  Qrek.Open;



  if(Qrek.RecordCount=0)then
  begin
     MessageDlg('DATA POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;


            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='LANGGANAN';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;



  TfrxMemoView(frxReport1.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
  TfrxMemoView(frxReport1.FindObject('ket1')).Memo.Text:=FormatDateTime('MMMM',periode.date);
  TfrxMemoView(frxReport1.FindObject('ket2')).Memo.Text:=FormatDateTime('YYYY',incYear(periode.date,-1));
  frxReport1.ShowReport();
end;

procedure Tuposisisambungan.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
