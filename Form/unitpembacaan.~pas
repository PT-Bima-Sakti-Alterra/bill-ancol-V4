unit unitpembacaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, ComCtrls,
  dxCore, cxDateUtils, ActnList, frxClass, DB, DBAccess, MyAccess,
  frxDBSet, MemDS, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxCheckBox, StdCtrls, cxButtons, cxLabel, ExtCtrls, RzPanel, dxmdaset,
  RzDTP;

type
  Tupembacaan = class(TForm)
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    report: TfrxReport;
    Qcek: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    mem: TdxMemData;
    memstanskrg: TCurrencyField;
    mempakai: TCurrencyField;
    nosamb: TcxTextEdit;
    cxLabel2: TcxLabel;
    memkelainan: TStringField;
    Qcek2: TMyQuery;
    Qtabel: TMyQuery;
    membulan: TStringField;
    memstanlalu: TCurrencyField;
    memketerangan: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  upembacaan: Tupembacaan;

implementation

{$R *.dfm}  uses Module,DateUtils;

procedure Tupembacaan.cxButton1Click(Sender: TObject);
var
j:integer;
begin




  if  (nosamb.Text='') then
  begin
      MessageDlg('Nosamb masih kosong !!', mtWarning, [mbOK], 0);
      nosamb.SetFocus;
      exit;
  end;



  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select p.*,IF(p.status="1","AKTIF",IF(p.status="2","SEGEL SMTRA","NON AKTIF")) as statuspel FROm pelanggan p WHERE p.nosamb=:nosamb' );
  DM.Qcek.ParamByName('nosamb').AsString:=nosamb.Text;
  DM.Qcek.Open;




  if(DM.Qcek.RecordCount>0)then
  begin

   TfrxMemoView(report.FindObject('nosamb')).Memo.Text:= DM.Qcek.fieldbyname('nosamb').AsString;
   TfrxMemoView(report.FindObject('nama')).Memo.Text:= DM.Qcek.fieldbyname('nama').AsString;
   TfrxMemoView(report.FindObject('alamat')).Memo.Text:= DM.Qcek.fieldbyname('alamat').AsString;
   TfrxMemoView(report.FindObject('kodegol')).Memo.Text:= DM.Qcek.fieldbyname('kodegol').AsString;
   TfrxMemoView(report.FindObject('status')).Memo.Text:= DM.Qcek.fieldbyname('statuspel').AsString;
   TfrxMemoView(report.FindObject('norekening')).Memo.Text:= DM.Qcek.fieldbyname('norekening').AsString;

      mem.Close;
      mem.Open;





      Qcek2.close;
      Qcek2.SQL.Clear;
      Qcek2.SQL.Add('select * FROm periode WHERE LEFT(periode,4)=:tahun ORDER BY periode ASC' );
      Qcek2.ParamByName('tahun').AsString:=FormatDateTime('YYYY',periode.date);
      Qcek2.Open;


      for j:=1 to Qcek2.RecordCount do
      begin

          Qtabel.close;
          Qtabel.SQL.Clear;
          Qtabel.SQL.Add('SHOW TABLES LIKE "drd'+Qcek2.fieldbyname('periode').AsString+'"');
          Qtabel.Open;

          if(Qtabel.RecordCount>0)then
          begin



              Qcek.close;
              Qcek.SQL.Clear;
              Qcek.SQL.Add('select * FROm drd'+Qcek2.fieldbyname('periode').AsString+' WHERE nosamb=:nosamb' );
              Qcek.ParamByName('nosamb').AsString:=nosamb.Text;
              Qcek.Open;

               mem.Append;
               membulan.AsString:= Qcek2.fieldbyname('nama').AsString;

              if(Qcek.RecordCount>0)then
              begin

                  memstanlalu.AsCurrency:=Qcek.fieldbyname('stanlalu').AsCurrency;
                  memstanskrg.AsCurrency:=Qcek.fieldbyname('stanskrg').AsCurrency;
                  mempakai.AsCurrency:=Qcek.fieldbyname('pakai').AsCurrency;
                  memkelainan.AsString:= Qcek.fieldbyname('kelainan').AsString;
                  memketerangan.AsString:= Qcek.fieldbyname('pembacameter').AsString;
              end;

              mem.Post;
          end;

          Qcek2.Next;
      end;



      report.ShowReport();  

  end
  else
     MessageDlg('Pelanggan tidak ditemukan !!', mtWarning, [mbOK], 0);

end;

procedure Tupembacaan.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tupembacaan.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
