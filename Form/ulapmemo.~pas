unit ulapmemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, StdCtrls,
  cxButtons, cxLabel, ComCtrls, RzDTP, ExtCtrls, RzPanel, DB, DBAccess,
  MyAccess, frxClass, frxDBSet, MemDS, ActnList, frxDesgn;

type
  Tlapmemo = class(TForm)
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Qpel: TMyQuery;
    report: TfrxReport;
    pel: TfrxDBDataset;
    Drek: TMyDataSource;
    Qpelnosamb: TStringField;
    Qpelnama: TStringField;
    Qpelalamat: TStringField;
    Qpeltanggal: TDateTimeField;
    Qpeluraian: TMemoField;
    Qpeltipe: TStringField;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    frxDesigner1: TfrxDesigner;
    F5: TAction;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F5Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lapmemo: Tlapmemo;

implementation

{$R *.dfm} uses Module, UnitMain,Dateutils;

procedure Tlapmemo.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tlapmemo.cxButton1Click(Sender: TObject);
begin


    report.LoadFromFile(GetCurrentDir+'\Report\memo.fr3');


    Qpel.close;
    Qpel.SQL.Clear;
    Qpel.SQL.add(Qpel.SQLRefresh.Text);
    Qpel.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
    Qpel.Open;

    if (Qpel.RecordCount=0)then
    begin
         MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
        exit;
    end;



            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='MEMO';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1;
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;


            TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);

            report.ShowReport();

            
end;

procedure Tlapmemo.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tlapmemo.F5Execute(Sender: TObject);
begin
  report.LoadFromFile(GetCurrentDir+'\report\memo.fr3');
  report.DesignReport(true);
end;

end.
