unit drd_koreksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, frxClass, frxDBSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White, Menus, StdCtrls,
  cxButtons, ComCtrls, RzDTP, cxLabel, ActnList, ExtCtrls, RzPanel,
  cxRadioGroup;

type
  Tudrd_koreksi = class(TForm)
    Qrek: TMyQuery;
    report: TfrxReport;
    rek: TfrxDBDataset;
    Drek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RzPanel8: TRzPanel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udrd_koreksi: Tudrd_koreksi;

implementation

{$R *.dfm}  uses Module, UnitMain,DateUtils;

procedure Tudrd_koreksi.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudrd_koreksi.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tudrd_koreksi.cxButton1Click(Sender: TObject);
begin


 if (cxRadioButton1.Checked=true) then
 begin


  
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('show tables like "drd'+FormatDateTime('YYYYMM',periode.date)+'" ');
    DM.Qcek.Open;

    if(DM.Qcek.RecordCount=0)then
    begin
       MessageDlg('DRD '+FormatDateTime('MMMM YYYY',periode.date)+' tidak ada  !!!', mtInformation, [mbOK], 0);
       exit;
    end;

  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.SQL.Add(' LEFT JOIN drd:periode h ');
  Qrek.SQL.Add('ON c.nosamb = h.nosamb WHERE c.`periode` = :periode AND h.`tglpublish` IS NOT NULL AND h.flagpublish="1" ORDER BY c.nosamb ASC');
  Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  Qrek.Open;

  TfrxMemoView(report.FindObject('judul')).Memo.Text:= 'LAPORAN KOREKSI DRD REAL';

 end
 else if (cxRadioButton2.Checked=true) then
 begin


 
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',periode.date)+'" ');
    DM.Qcek.Open;

    if(DM.Qcek.RecordCount=0)then
    begin
       MessageDlg('DRD '+FormatDateTime('MMMM YYYY',periode.date)+' belum di posting  !!!', mtInformation, [mbOK], 0);
       exit;
    end;

  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQllock.Text);
  Qrek.SQL.Add(' LEFT JOIN drdposting:periode h ');
  Qrek.SQL.Add('ON c.nosamb = h.nosamb WHERE c.`flagpublish` = "1" AND h.flagpublish="1" AND c.tglkoreksi<>h.tglkoreksi ORDER BY c.nosamb ASC');
  Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  Qrek.Open;

  TfrxMemoView(report.FindObject('judul')).Memo.Text:= 'LAPORAN KOREKSI DRD POSTING';

 end;


  DM.Qpejabat.close;
  DM.Qpejabat.SQL.Clear;
  DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
  DM.Qpejabat.ParamByName('kode').AsString:='DRD';
  DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
  DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
  DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
  DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
  DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
  DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
  DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
  DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
  DM.Qpejabat.Open;

            

  TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);



report.ShowReport();
end;

end.
