unit unitlapakun1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, frxClass, frxDBSet, ExtCtrls,
  RzPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox, ComCtrls,
  dxCore, cxDateUtils, cxLabel, cxCalendar, ActnList;

type
  Tulapakun1 = class(TForm)
    report: TfrxReport;
    Qcek: TMyQuery;
    DScek: TMyDataSource;
    frxDBDataset1: TfrxDBDataset;
    RzPanel2: TRzPanel;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel20: TRzPanel;
    tanggal1: TcxDateEdit;
    cxLabel1: TcxLabel;
    tanggal2: TcxDateEdit;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulapakun1: Tulapakun1;

implementation

{$R *.dfm}    uses Module, UnitCombo,DAteUtils;

procedure Tulapakun1.FormCreate(Sender: TObject);
begin
tanggal1.date:=date;
tanggal2.date:=date;
end;

procedure Tulapakun1.cxButton1Click(Sender: TObject);
begin

     if YearOf(tanggal1.date)<>YearOf(tanggal2.date) then
  begin
     MessageDlg('HARUS TAHUN YANG SAMA !! ', mtInformation, [mbOK], 0);
     exit;

  end;


    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add(Qcek.SQLRefresh.Text);


   // TfrxMemoView(report.FindObject('kasir')).Memo.Text:='SELURUHNYA';


    {if(cekkasir.Checked=true)then
    begin

      Qcek.SQL.Add('AND c.kasir=:kasir');
      Qcek.ParamByName('kasir').AsString:=kasir.Text;
      TfrxMemoView(report.FindObject('kasir')).Memo.Text:=kasir.Text;

    end;}


    Qcek.SQL.Add(' GROUP BY CAST(loketbayar AS UNSIGNED) ASC');
    Qcek.ParamByName('tanggal1').AsDate:=tanggal1.date;
    Qcek.ParamByName('tanggal2').AsDate:=tanggal2.date;
    Qcek.Open;

    if(tanggal1.Date = tanggal2.date)then

     TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=FormatDateTime('DD/MM/YYYY',tanggal1.date)

     else

     TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=FormatDateTime('DD/MM/YYYY',tanggal1.date) +' S/D '+FormatDateTime('DD/MM/YYYY',tanggal2.date);

     report.ShowReport();

end;

procedure Tulapakun1.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tulapakun1.cekkasirClick(Sender: TObject);
begin
 if(cekkasir.Checked=true)then
  begin
      kasir.Enabled:=true;

  end
  else
  begin

      kasir.Enabled:=false;
  end;
end;

procedure Tulapakun1.FormShow(Sender: TObject);
begin
ucombo.isikombo();

kasir.Properties.Items:=ucombo.kasir.Properties.Items;
end;

end.
