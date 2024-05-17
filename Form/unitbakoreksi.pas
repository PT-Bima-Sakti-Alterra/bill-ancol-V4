unit unitbakoreksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, ActnList, StdCtrls, cxButtons,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, ComCtrls, RzDTP, cxLabel, DB,
  DBAccess, MyAccess, frxClass, frxDesgn, MemDS, frxDBSet;

type
  Tubakoreksi = class(TForm)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    cxLabel1: TcxLabel;
    alasan: TcxComboBox;
    rek: TfrxDBDataset;
    Qrek: TMyQuery;
    frxDesigner1: TfrxDesigner;
    ba1: TfrxReport;
    DSrek: TMyDataSource;
    cxLabel2: TcxLabel;
    nosamb: TcxTextEdit;
    periode: TRzDateTimePicker;
    Qdrd: TMyQuery;
    Qrekberitaacara: TStringField;
    Qrektglinput: TDateField;
    Qrekalasan: TStringField;
    Qrekbulan: TStringField;
    Qrekkodegol: TStringField;
    Qrekkodediameter: TStringField;
    Qrekstanlalu: TFloatField;
    Qrekstanangkat: TFloatField;
    Qrekstanskrg: TFloatField;
    Qrekpakai: TFloatField;
    Qrekbiayapemakaian: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekretribusi: TFloatField;
    Qrekmeterai: TFloatField;
    Qrekrekair: TFloatField;
    Qrekkodegol2: TStringField;
    Qrekkodediameter2: TStringField;
    Qrekstanlalu2: TFloatField;
    Qrekstanangkat2: TFloatField;
    Qrekstanskrg2: TFloatField;
    Qrekpakai2: TFloatField;
    Qrekbiayapemakaian2: TFloatField;
    Qrekadministrasi2: TFloatField;
    Qrekpemeliharaan2: TFloatField;
    Qrekretribusi2: TFloatField;
    Qrekmeterai2: TFloatField;
    Qrekrekair2: TFloatField;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    Qrekgolongan: TStringField;
    Qreknosamb: TStringField;
    F5: TAction;
    ba2: TfrxReport;
    Qrekperhitungan: TStringField;
    cxButton3: TcxButton;
    ceknosamb: TcxCheckBox;
    procedure Action2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ubakoreksi: Tubakoreksi;

implementation

{$R *.dfm}  uses Module,StrUtils,DateUtils;

procedure Tubakoreksi.Action2Execute(Sender: TObject);
begin
Close;
end;

procedure Tubakoreksi.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tubakoreksi.cxButton2Click(Sender: TObject);
var
I:integer;
begin


        if (ceknosamb.Checked=true) and (nosamb.Text='')then
        begin
            MessageDlg('No.Samb Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
            nosamb.SetFocus;
            Exit;
        end;


       if(alasan.Text='')then
        begin
            MessageDlg('Alasan Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
            alasan.SetFocus;
            Exit;
        end;


  DM.Qexec.close;
  DM.Qexec.SQL.Clear;
  DM.Qexec.SQL.Add('TRUNCATE TABLE drdkoreksidump');
  DM.Qexec.Execute;



  DM.Qcek.Close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('SELECT * FROM beritaacarakoreksi WHERE DATE_FORMAT(tglinput,"%Y%m")=:periode ');


  if(ceknosamb.Checked=true)then
  begin
      DM.Qcek.SQL.Add(' AND nosamb=:nosamb');
      DM.Qcek.ParamByName('nosamb').AsString:=nosamb.Text;
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
  Qrek.SQL.Add('AND c.alasan="'+alasan.Text+'"');
  Qrek.SQL.Add('ORDER BY c.nosamb ASC');
  Qrek.Open;


  if(alasan.ItemIndex=0) then
  begin
    ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksi1.fr3');
    ba1.ShowReport(true);

  end
  else
  begin
    ba2.LoadFromFile(GetCurrentDir+'\report\bakoreksi2.fr3');
    ba2.ShowReport(true);
  end;










end;

procedure Tubakoreksi.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure Tubakoreksi.cxButton3Click(Sender: TObject);
begin

  
  if(alasan.Text='')then
  begin
      MessageDlg('Alasan Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
      alasan.SetFocus;
      Exit;
  end;


  if alasan.ItemIndex=0 then
  begin
      ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksi1.fr3');
      ba1.DesignReport(true);

  end
  else
  begin
     ba2.LoadFromFile(GetCurrentDir+'\report\bakoreksi2.fr3');
      ba2.DesignReport(true);
  end;
end;

procedure Tubakoreksi.ceknosambClick(Sender: TObject);
begin
 if(ceknosamb.Checked=true)then
  begin
      nosamb.Enabled:=true;
      nosamb.SetFocus;
  end
  else
  begin
      nosamb.Enabled:=false; 
  end;
end;

end.
