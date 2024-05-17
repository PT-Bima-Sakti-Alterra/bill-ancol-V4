unit unitlapkoreksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, ActnList, StdCtrls, cxButtons,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, ComCtrls, RzDTP, cxLabel, DB,
  DBAccess, MyAccess, frxClass, frxDesgn, MemDS, frxDBSet;

type
  Tulapkoreksi = class(TForm)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    cxLabel1: TcxLabel;
    rek: TfrxDBDataset;
    Qrek: TMyQuery;
    frxDesigner1: TfrxDesigner;
    report: TfrxReport;
    DSrek: TMyDataSource;
    periode: TRzDateTimePicker;
    Qdrd: TMyQuery;
    F5: TAction;
    cxButton2: TcxButton;
    cekalasan: TcxCheckBox;
    alasan: TcxComboBox;
    procedure Action2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure cekalasanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulapkoreksi: Tulapkoreksi;

implementation

{$R *.dfm}  uses Module,StrUtils,DateUtils;

procedure Tulapkoreksi.Action2Execute(Sender: TObject);
begin
Close;
end;

procedure Tulapkoreksi.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tulapkoreksi.cxButton2Click(Sender: TObject);
var
I:integer;
begin





  DM.Qexec.close;
  DM.Qexec.SQL.Clear;
  DM.Qexec.SQL.Add('TRUNCATE TABLE drdkoreksidump');
  DM.Qexec.Execute;



  DM.Qcek.Close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('SELECT * FROM beritaacarakoreksi WHERE DATE_FORMAT(tglinput,"%Y%m")=:periode ');

  if(cekalasan.Checked=true)then
  begin
      DM.Qcek.SQL.Add(' AND alasan=:alasan');
      DM.Qcek.ParamByName('alasan').AsString:=alasan.Text;
  end;

  DM.Qcek.SQL.Add(' ORDER BY tglinput ASC;');
  DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);

  DM.Qcek.Open;


  for I:=1 to DM.Qcek.RecordCount do
  begin

      Qdrd.Close;
      Qdrd.SQl.Clear;
      Qdrd.SQL.Add('select * FROm drd'+LeftStr(DM.Qcek.fieldbyname('kode').AsString,6)+' WHERE nosamb=:nosamb ');
      Qdrd.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
      Qdrd.Open;

      if Qdrd.RecordCount>0 then
      begin


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('REPLACE INTO drdkoreksidump (kode,nosamb,periode,kodegol,kodediameter,stanlalu,stanangkat,stanskrg,pakai,biayapemakaian,administrasi,pemeliharaan,retribusi,meterai,rekair,beritaacara,alasan)');
        DM.Qexec.SQL.Add('VALUES (:kode,:nosamb,:periode,:kodegol,:kodediameter,:stanlalu,:stanangkat,:stanskrg,:pakai,:biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:meterai,:rekair,:beritaacara,:alasan)');
        DM.Qexec.ParamByName('kode').AsString:=LeftStr(DM.Qcek.fieldbyname('kode').AsString,6)+'.'+Qdrd.fieldbyname('nosamb').AsString;
        DM.Qexec.ParamByName('nosamb').AsString:=Qdrd.fieldbyname('nosamb').AsString;
        DM.Qexec.ParamByName('periode').AsString:=LeftStr(DM.Qcek.fieldbyname('kode').AsString,6);
        DM.Qexec.ParamByName('kodegol').AsString:=Qdrd.fieldbyname('kodegol').AsString;
        DM.Qexec.ParamByName('kodediameter').AsString:=Qdrd.fieldbyname('kodediameter').AsString;
        DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qdrd.fieldbyname('stanlalu').AsCurrency;
        DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qdrd.fieldbyname('stanangkat').AsCurrency;
        DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qdrd.fieldbyname('stanskrg').AsCurrency;
        DM.Qexec.ParamByName('pakai').AsCurrency:=Qdrd.fieldbyname('pakai').AsCurrency;
        DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qdrd.fieldbyname('biayapemakaian').AsCurrency;
        DM.Qexec.ParamByName('administrasi').AsCurrency:=Qdrd.fieldbyname('administrasi').AsCurrency;
        DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qdrd.fieldbyname('pemeliharaan').AsCurrency;
        DM.Qexec.ParamByName('retribusi').AsCurrency:=Qdrd.fieldbyname('retribusi').AsCurrency;
        DM.Qexec.ParamByName('meterai').AsCurrency:=Qdrd.fieldbyname('meterai').AsCurrency;
        DM.Qexec.ParamByName('rekair').AsCurrency:=Qdrd.fieldbyname('rekair').AsCurrency;
        DM.Qexec.ParamByName('beritaacara').AsString:=DM.Qcek.fieldbyname('beritaacara').AsString;
        DM.Qexec.ParamByName('alasan').AsString:=DM.Qcek.fieldbyname('alasan').AsString;
        DM.Qexec.Execute;

      end;



      DM.Qcek.Next;
  end;



  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);


   if(cekalasan.Checked=true)then
  begin
      DM.Qcek.SQL.Add(' AND c.alasan=:alasan');
      DM.Qcek.ParamByName('alasan').AsString:=alasan.Text;
  end;

  Qrek.SQL.Add('ORDER BY c.periode,b.tglinput ASC');
  Qrek.Open;


  report.LoadFromFile(GetCurrentDir+'\report\laporankoreksi.fr3');

  TfrxMemoView(report.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));

  report.ShowReport(true)











end;

procedure Tulapkoreksi.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure Tulapkoreksi.F5Execute(Sender: TObject);
begin
      report.LoadFromFile(GetCurrentDir+'\report\laporankoreksi.fr3');
      report.DesignReport(true);

end;

procedure Tulapkoreksi.cekalasanClick(Sender: TObject);
begin
if(cekalasan.Checked=true)then
  begin
      alasan.Enabled:=true;
      alasan.SetFocus;
  end
  else
  begin
      alasan.Enabled:=false; 
  end;
end;

end.
