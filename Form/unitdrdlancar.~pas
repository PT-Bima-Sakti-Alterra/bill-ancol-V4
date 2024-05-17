unit unitdrdlancar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxDesgn,
  frxClass, ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, ComCtrls,
  RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tudrdlancar = class(TForm)
    sumberair: TcxComboBox;
    ceksumberair: TcxCheckBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    periode: TRzDateTimePicker;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    cekcabang: TcxCheckBox;
    kodecabang: TcxComboBox;
    cabang: TcxComboBox;
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    F5: TAction;
    report: TfrxReport;
    frxDesigner1: TfrxDesigner;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udrdlancar: Tudrdlancar;

implementation

uses UnitMain, Module,DateUtils;

{$R *.dfm}

procedure Tudrdlancar.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudrdlancar.cxButton1Click(Sender: TObject);
begin

 TRY
  TRY   


     Enabled:=false;

     report.LoadFromFile(GetCurrentDir+'\Report\drdautodebet.fr3');

   


     DM.Qexec.close;
     DM.Qexec.SQl.Clear;
     DM.Qexec.SQL.Add('TRUNCATE TABLE pelanggantunggak;');
     DM.Qexec.SQL.Add('REPLACE INTO pelanggantunggak SELECT c.nosamb FROM piutang c WHERE c.flaglunas="0" AND c.flagangsur="0" AND c.periode<:periode GROUP BY c.nosamb; ');
     DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
     DM.Qexec.Execute;




     Qrek.close;
     Qrek.SQL.Clear;
     Qrek.SQL.Add('SELECT c.nosamb,p.nama,CONCAT(p.alamat," RT. ",p.rt," RW. ",p.rw, " NO. ",p.norumah) AS alamat,c.rekair FROM piutang c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.periode=:periode AND c.nosamb ');
     Qrek.SQL.Add('NOT IN (SELECT nosamb FROM pelanggantunggak) AND c.tglmulaidenda>current_date AND c.flaglunas="0" AND c.flagangsur="0" AND p.flag="7" ORDER BY CASt(c.nosamb AS UNSIGNED) ASC;');
     Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
     Qrek.Open;

     if(Qrek.RecordCount>0)then
     begin
     
            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='DRDLANCAR';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1;
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;

            


                 
                 TfrxMemoView(report.FindObject('bulan')).Memo.Text:='DRD : '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+char(13)+
                                                                     'DIBAYAR : '+UpperCase(FormatDateTime('MMMM YYYY',IncMonth(periode.date,+1)));

                 report.ShowReport();

     end
     else
        MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);



   EXCEPT
   ON E : Exception do
   BEGIN

             MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                        E.Message, mtError, [MbOk], 0);
   END;
   END;
   
  FINALLY

      Enabled:=true;
      
  END;

end;

procedure Tudrdlancar.F5Execute(Sender: TObject);
begin
  report.LoadFromFile(GetCurrentDir+'\report\drdautodebet.fr3');
  report.DesignReport(true);
end;

procedure Tudrdlancar.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tudrdlancar.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
