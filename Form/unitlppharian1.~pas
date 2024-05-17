unit unitlppharian1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxDesgn,
  frxClass, ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, cxTextEdit,
  ComCtrls, RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, dxCore, cxDateUtils, cxCalendar;

type
  Tulppharian1 = class(TForm)
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
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    F5: TAction;
    report: TfrxReport;
    frxDesigner1: TfrxDesigner;
    tanggal: TcxDateEdit;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cekshift: TcxCheckBox;
    shift: TcxComboBox;
    cekgol: TcxCheckBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure cekshiftClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulppharian1: Tulppharian1;

implementation

uses Module, UnitMain, DateUtils, UnitCombo;

{$R *.dfm}

procedure Tulppharian1.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tulppharian1.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin

  report.LoadFromFile(GetCurrentDir+'\Report\lppharianair.fr3');


  keterangan:='';


  

 if (cekloket.Checked=true) and (kodeloket.Text='')then
 begin
     MessageDlg('Harap pilih Loket !!', mtWarning, [mbOK], 0);
     exit;
 end;

  if (cekkasir.Checked=true) and (kasir.Text='')then
 begin
     MessageDlg('Harap pilih kasir !!', mtWarning, [mbOK], 0);
     exit;
 end;

  if (cekgol.Checked=true) and (kodegol.Text='')then
 begin
     MessageDlg('Harap pilih Golongan !!', mtWarning, [mbOK], 0);
     exit;
 end;

   if (cekshift.Checked=true) and (shift.Text='')then
 begin
     MessageDlg('Harap pilih Shift !!', mtWarning, [mbOK], 0);
     exit;
 end;




  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);

  
  if(cekloket.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.loketbayar="'+kodeloket.Text+'"');
      keterangan:='LOKET : '+loket.Text+char(13)+keterangan;
  end;


  if(cekkasir.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.kasir="'+kasir.Text+'"');
      keterangan:='KASIR : '+kasir.Text+char(13)+keterangan;
  end;

  if(cekgol.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');
      keterangan:='GOLONGAN : '+golongan.Text+char(13)+keterangan;

  end;


   if(cekshift.Checked=true)then
  begin

     
      Qrek.SQL.Add('AND c.shift="'+shift.Text+'"');

      keterangan:='SHIFT : '+shift.Text+char(13)+keterangan;

  end;







  Qrek.SQL.Add('ORDER BY CAST(c.loketbayar AS UNSIGNED),CAST(c.nosamb AS UNSIGNED),c.periode ASC');
  Qrek.ParamByName('tanggal').AsDate:=tanggal.date;
  Qrek.ParamByName('tahun').AsInteger:=YearOf(tanggal.date);
  Qrek.Open;


  DM.Qpejabat.close;
  DM.Qpejabat.SQL.Clear;
  DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
  DM.Qpejabat.ParamByName('kode').AsString:='LPPPUSAt';
  DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
  DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
  DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
  DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
  DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
  DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
  DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
  DM.Qpejabat.Open;

            


  TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
  TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD MMMM YYYY',tanggal.date));
  report.ShowReport();

  
end;

procedure Tulppharian1.FormCreate(Sender: TObject);
begin
tanggal.date:=date;
end;

procedure Tulppharian1.F5Execute(Sender: TObject);
begin
report.LoadFromFile(GetCurrentDir+'\report\lppharianair.fr3');
  report.DesignReport(true);
end;

procedure Tulppharian1.cekloketClick(Sender: TObject);
begin

  if(cekloket.Checked=true)then
  begin
      kodeloket.Enabled:=true;
      loket.Enabled:=true;
      kodeloket.SetFocus;

  end
  else
  begin
     kodeloket.Enabled:=false;
     loket.Enabled:=false;
  end;

end;

procedure Tulppharian1.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tulppharian1.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tulppharian1.cekkasirClick(Sender: TObject);
begin
  if(cekkasir.Checked=true)then
  begin
      kasir.Enabled:=true; 
      kasir.SetFocus; 
  end
  else
  begin
     kasir.Enabled:=false;
  end;
end;

procedure Tulppharian1.cekshiftClick(Sender: TObject);
begin
 if(cekshift.Checked=true)then
  begin
      shift.Enabled:=true; 
      shift.SetFocus;
  end
  else
  begin
     shift.Enabled:=false;
  end;
end;

procedure Tulppharian1.FormShow(Sender: TObject);
begin
ucombo.isikombo();


kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;
kasir.Properties.Items:=ucombo.kasir.Properties.Items;
kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
end;

procedure Tulppharian1.cekgolClick(Sender: TObject);
begin
 if(cekgol.Checked=true)then
  begin
      kodegol.Enabled:=true;
      golongan.Enabled:=true;
      kodegol.SetFocus;

  end
  else
  begin
     kodegol.Enabled:=false;
     golongan.Enabled:=false;
  end;
end;

procedure Tulppharian1.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tulppharian1.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

end.
