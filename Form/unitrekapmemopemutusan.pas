unit unitrekapmemopemutusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxImageComboBox, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, MyAccess,
  cxContainer, cxTextEdit, cxCheckBox, Menus, StdCtrls, cxButtons,
  ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, ActnList, frxClass, frxDBSet, RzLabel;

type
  Turekapmemopemutusan = class(TForm)
    RzPanel1: TRzPanel;
    cxGrid2: TcxGrid;
    gtv1: TcxGridDBTableView;
    gtv1RecId: TcxGridDBColumn;
    gtv1nosamb: TcxGridDBColumn;
    gtv1nama: TcxGridDBColumn;
    gtv1alamat: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gtv1Column7: TcxGridDBColumn;
    gtv1Column1: TcxGridDBColumn;
    gtv1Column2: TcxGridDBColumn;
    gtv1Column3: TcxGridDBColumn;
    Qcek: TMyQuery;
    MyDataSource1: TMyDataSource;
    gtv1Column4: TcxGridDBColumn;
    gtv1Column5: TcxGridDBColumn;
    gtv1Column6: TcxGridDBColumn;
    gtv1Column8: TcxGridDBColumn;
    gtv1Column9: TcxGridDBColumn;
    gtv1Column10: TcxGridDBColumn;
    gtv1Column11: TcxGridDBColumn;
    ActionList1: TActionList;
    Action2: TAction;
    Action1: TAction;
    report: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    RzPanel2: TRzPanel;
    cxLabel1: TcxLabel;
    tanggal1: TcxDateEdit;
    tanggal2: TcxDateEdit;
    cxLabel2: TcxLabel;
    ceknosamb: TcxCheckBox;
    nomor: TcxTextEdit;
    cxButton3: TcxButton;
    RzPanel3: TRzPanel;
    cxButton2: TcxButton;
    RzLabel1: TRzLabel;
    cxButton1: TcxButton;
    RzPanel20: TRzPanel;
    procedure cxButton3Click(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekapmemopemutusan: Turekapmemopemutusan;

implementation

{$R *.dfm}  uses Module, UnitMain;

procedure Turekapmemopemutusan.cxButton3Click(Sender: TObject);
begin

Qcek.close;
Qcek.SQL.Clear;

Qcek.SQL.Add('select c.*,p.nama,p.alamat,c.rekair1+c.rekair2+c.rekair3+c.rekairlain as rekair,c.denda+c.ots as dendaots,c.angsuran+c.lainnya+c.jaminan as jumlahlain FROM nosuratpemutusan c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.nomor>0  ');
Qcek.SQL.Add('AND DATE(tanggal)>=:tanggal1 AND DATE(tanggal)<=:tanggal2 ');


  if(ceknosamb.Checked=true)then
  begin
     Qcek.SQL.Add('AND c.nosamb=:nosamb');
     Qcek.ParamByName('nosamb').AsString:=nomor.Text;
  end;
  

Qcek.SQL.Add('ORDER BY c.nomor ASC');
Qcek.ParamByName('tanggal1').AsDate:=tanggal1.Date;
Qcek.ParamByName('tanggal2').AsDate:=tanggal2.Date;
Qcek.Open;
end;

procedure Turekapmemopemutusan.ceknosambClick(Sender: TObject);
begin
  if(ceknosamb.Checked=true)then
  begin
      nomor.Enabled:=true;
      nomor.SetFocus;
  end
  else
  begin
     nomor.Enabled:=false;
  end;
end;

procedure Turekapmemopemutusan.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Turekapmemopemutusan.cxButton2Click(Sender: TObject);
begin

  if(Qcek.RecordCount=0)then
  begin


  end;

            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='MEMOPEMUTUSAN';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:='0';//DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;
          


            

        if(tanggal1.date=tanggal2.date) then
          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=UpperCase(FormatDateTime('DD MMMM YYYY',tanggal1.date))
        else
          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=UpperCase(FormatDateTime('DD MMMM YYYY',tanggal1.date)) +' s/d '+UpperCase(FormatDateTime('DD MMMM YYYY',tanggal2.date));



          report.ShowReport();



end;

procedure Turekapmemopemutusan.FormCreate(Sender: TObject);
begin
tanggal1.Date:=date;
tanggal2.date:=date;
end;

end.
