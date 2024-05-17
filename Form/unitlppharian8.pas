unit unitlppharian8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxDesgn,
  frxClass, ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, cxTextEdit,
  ComCtrls, RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, dxCore, cxDateUtils, cxCalendar;

type
  Tulppharian8 = class(TForm)
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
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cekshift: TcxCheckBox;
    shift: TcxComboBox;
    cekgol: TcxCheckBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    periode: TRzDateTimePicker;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    rek2: TfrxDBDataset;
    Qadm: TMyQuery;
    DSadm: TMyDataSource;
    DSpem: TMyDataSource;
    rek3: TfrxDBDataset;
    Qpem: TMyQuery;
    rek4: TfrxDBDataset;
    DSdenda: TMyDataSource;
    Qdenda: TMyQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure cekshiftClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulppharian8: Tulppharian8;

implementation

uses Module, UnitMain, DateUtils, UnitCombo;

{$R *.dfm}

procedure Tulppharian8.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tulppharian8.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin

  report.LoadFromFile(GetCurrentDir+'\Report\rekaplppairmenuruttahun.fr3');


  keterangan:='';


 {  if (cekwil.Checked=true) and (wilayah.Text='')then
 begin
     MessageDlg('Harap pilih Wilayah !!', mtWarning, [mbOK], 0);
     exit;
 end;


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
 end;}




  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.SQL.Add('ORDER BY g.kodegol ASC');
  Qrek.ParamByName('tahun').asinteger:= YearOf(periode.date);
  Qrek.ParamByName('periodebayar').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qrek.ParamByName('tahun1').AsString:=FormatDateTime('YYYY',IncMonth(periode.date,-1));
  Qrek.ParamByName('tahun2').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-1));
  Qrek.ParamByName('tahun3').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-2));
  Qrek.ParamByName('tahun4').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-3));
  Qrek.ParamByName('tahun5').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-4));
  Qrek.ParamByName('tahun6').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-5));
  Qrek.Open;




  Qadm.close;
  Qadm.SQL.Clear;
  Qadm.SQL.Add(Qadm.SQLRefresh.Text);
  Qadm.ParamByName('tahun').asinteger:= YearOf(periode.date);
  Qadm.ParamByName('periodebayar').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qadm.ParamByName('tahun1').AsString:=FormatDateTime('YYYY',IncMonth(periode.date,-1));
  Qadm.ParamByName('tahun2').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-1));
  Qadm.ParamByName('tahun3').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-2));
  Qadm.ParamByName('tahun4').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-3));
  Qadm.ParamByName('tahun5').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-4));
  Qadm.ParamByName('tahun6').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-5));
  Qadm.Open;


  Qpem.close;
  Qpem.SQL.Clear;
  Qpem.SQL.Add(Qpem.SQLRefresh.Text);
  Qpem.ParamByName('tahun').asinteger:= YearOf(periode.date);
  Qpem.ParamByName('periodebayar').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qpem.ParamByName('tahun1').AsString:=FormatDateTime('YYYY',IncMonth(periode.date,-1));
  Qpem.ParamByName('tahun2').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-1));
  Qpem.ParamByName('tahun3').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-2));
  Qpem.ParamByName('tahun4').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-3));
  Qpem.ParamByName('tahun5').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-4));
  Qpem.ParamByName('tahun6').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-5));
  Qpem.Open;


  Qdenda.close;
  Qdenda.SQL.Clear;
  Qdenda.SQL.Add(Qdenda.SQLRefresh.Text);
  Qdenda.ParamByName('tahun').asinteger:= YearOf(periode.date);
  Qdenda.ParamByName('periodebayar').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qdenda.ParamByName('tahun1').AsString:=FormatDateTime('YYYY',IncMonth(periode.date,-1));
  Qdenda.ParamByName('tahun2').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-1));
  Qdenda.ParamByName('tahun3').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-2));
  Qdenda.ParamByName('tahun4').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-3));
  Qdenda.ParamByName('tahun5').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-4));
  Qdenda.ParamByName('tahun6').AsString:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-5));
  Qdenda.Open;


  DM.Qpejabat.close;
  DM.Qpejabat.SQL.Clear;
  DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
  DM.Qpejabat.ParamByName('kode').AsString:='REKAPLPP';
  DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
  DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
  DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
  DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
  DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
  DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
  DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
  DM.Qpejabat.Open;

            


  TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
  TfrxMemoView(report.FindObject('tahun6')).Memo.Text:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-5))+' Kebawah';
  TfrxMemoView(report.FindObject('tahun5')).Memo.Text:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-4));
  TfrxMemoView(report.FindObject('tahun4')).Memo.Text:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-3));
  TfrxMemoView(report.FindObject('tahun3')).Memo.Text:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-2));
  TfrxMemoView(report.FindObject('tahun2')).Memo.Text:=FormatDateTime('YYYY',IncYear(IncMonth(periode.date,-1),-1));
  TfrxMemoView(report.FindObject('tahun1')).Memo.Text:=FormatDateTime('YYYY',IncMonth(periode.date,-1));
  TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='Pembayaran Bulan '+UpperCase(FormatDateTime('MMMM',periode.date)+'')+' Tahun '+UpperCase(FormatDateTime('YYYY',periode.date)+'');
  report.ShowReport();

  
end;

procedure Tulppharian8.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tulppharian8.F5Execute(Sender: TObject);
begin
report.LoadFromFile(GetCurrentDir+'\report\rekaplppairmenuruttahun.fr3');
  report.DesignReport(true);
end;

procedure Tulppharian8.cekkasirClick(Sender: TObject);
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

procedure Tulppharian8.cekshiftClick(Sender: TObject);
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

procedure Tulppharian8.FormShow(Sender: TObject);
begin
ucombo.isikombo();



kasir.Properties.Items:=ucombo.kasir.Properties.Items;
kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;

end;

procedure Tulppharian8.cekgolClick(Sender: TObject);
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

procedure Tulppharian8.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tulppharian8.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;



procedure Tulppharian8.cekwilClick(Sender: TObject);
begin
if(cekwil.Checked=true)then
  begin
      kodewil.Enabled:=true;
      wilayah.Enabled:=true;
      kodewil.SetFocus;
  end
  else
  begin
      kodewil.Enabled:=false;
      wilayah.Enabled:=false;
  end;
end;

procedure Tulppharian8.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tulppharian8.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure Tulppharian8.cekloketClick(Sender: TObject);
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

procedure Tulppharian8.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tulppharian8.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

end.
