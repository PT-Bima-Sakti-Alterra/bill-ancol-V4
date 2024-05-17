unit unitlppharian5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxDesgn,
  frxClass, ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, cxTextEdit,
  ComCtrls, RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, dxCore, cxDateUtils, cxCalendar;

type
  Tulppharian5 = class(TForm)
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
    cekketerangan: TcxCheckBox;
    xketerangan: TcxComboBox;
    cekwilloket: TcxCheckBox;
    kodewil2: TcxComboBox;
    wilayah2: TcxComboBox;
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
    procedure cekketeranganClick(Sender: TObject);
    procedure cekwilloketClick(Sender: TObject);
    procedure kodewil2PropertiesChange(Sender: TObject);
    procedure wilayah2PropertiesChange(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulppharian5: Tulppharian5;

implementation

uses Module, UnitMain, DateUtils, UnitCombo;

{$R *.dfm}

procedure Tulppharian5.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tulppharian5.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin

  report.LoadFromFile(GetCurrentDir+'\Report\rekaplppair.fr3');


  keterangan:='';


   if (cekwil.Checked=true) and (wilayah.Text='')then
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
 end;




  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);


  if(cekwil.Checked=true)then
  begin
      Qrek.SQL.Add('AND r.kodewil="'+kodewil.Text+'"');
      keterangan:='WILAYAH PELANGGAN : '+wilayah.Text+char(13)+keterangan;   
  end;


   if(cekwilloket.Checked=true)then
  begin
      Qrek.SQL.Add('AND l.kodewillokasi="'+kodewil2.Text+'"');
      keterangan:='WILAYAH LOKET : '+wilayah2.Text+char(13)+keterangan;   
  end;
  

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


   if(cekketerangan.Checked=true)then
  begin


    if(xketerangan.Text='Hanya Bulan Berjalan') then

      Qrek.SQL.Add('AND c.periode='+FormatDateTime('YYYYMM',IncMonth( periode.date,-1))+'');

      keterangan:='HANYA BULAN BERJALAN'+char(13)+keterangan;


  end;







  Qrek.SQL.Add('GROUP BY DATE(c.tglbayar) ASC');
  Qrek.ParamByName('tahun').asinteger:= YearOf(periode.date);
  Qrek.ParamByName('periodebayar').AsString:=FormatDateTime('YYYYMM',periode.date);  
  Qrek.Open;


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
  TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='Bulan '+UpperCase(FormatDateTime('MMMM',periode.date)+'')+' Tahun '+UpperCase(FormatDateTime('YYYY',periode.date)+'');
  report.ShowReport();

  
end;

procedure Tulppharian5.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tulppharian5.F5Execute(Sender: TObject);
begin
report.LoadFromFile(GetCurrentDir+'\report\rekaplppair.fr3');
  report.DesignReport(true);
end;

procedure Tulppharian5.cekkasirClick(Sender: TObject);
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

procedure Tulppharian5.cekshiftClick(Sender: TObject);
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

procedure Tulppharian5.FormShow(Sender: TObject);
begin
ucombo.isikombo();



kasir.Properties.Items:=ucombo.kasir.Properties.Items;
kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kodewil2.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayah2.Properties.Items:=ucombo.wilayah.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;

end;

procedure Tulppharian5.cekgolClick(Sender: TObject);
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

procedure Tulppharian5.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tulppharian5.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;



procedure Tulppharian5.cekwilClick(Sender: TObject);
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

procedure Tulppharian5.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tulppharian5.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure Tulppharian5.cekloketClick(Sender: TObject);
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

procedure Tulppharian5.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tulppharian5.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tulppharian5.cekketeranganClick(Sender: TObject);
begin
 if(cekketerangan.Checked=true)then
  begin
      xketerangan.Enabled:=true;
      xketerangan.SetFocus;
  end
  else
  begin
     xketerangan.Enabled:=false;
  end;
end;

procedure Tulppharian5.cekwilloketClick(Sender: TObject);
begin
if(cekwilloket.Checked=true)then
  begin
      kodewil2.Enabled:=true;
      wilayah2.Enabled:=true;
      kodewil2.SetFocus;
  end
  else
  begin
      kodewil2.Enabled:=false;
      wilayah2.Enabled:=false;
  end;
end;

procedure Tulppharian5.kodewil2PropertiesChange(Sender: TObject);
begin
wilayah2.ItemIndex:=kodewil2.ItemIndex;
end;

procedure Tulppharian5.wilayah2PropertiesChange(Sender: TObject);
begin
kodewil2.ItemIndex:=wilayah2.ItemIndex;
end;

end.
