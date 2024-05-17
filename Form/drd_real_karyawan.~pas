unit drd_real_karyawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  Menus, frxClass, DB, DBAccess, MyAccess, frxDBSet,
  MemDS, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RzDTP, cxCurrencyEdit, ActnList,
 cxCheckBox, dxSkinOffice2013White, RzLabel, ExtCtrls,
  RzPanel, frxDesgn;

type
  Tudrd_real_karyawan = class(TForm)
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    sumberair: TcxComboBox;
    ceksumberair: TcxCheckBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    cekcabang: TcxCheckBox;
    kodecabang: TcxComboBox;
    kelurahan: TcxComboBox;
    cabang: TcxComboBox;
    Qgol: TMyQuery;
    gol: TfrxDBDataset;
    DSgol: TMyDataSource;
    report: TfrxReport;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    periode: TRzDateTimePicker;
    pemakaian2: TcxTextEdit;
    cekpemakaian: TcxCheckBox;
    kodegol: TcxComboBox;
    cekkodegol: TcxCheckBox;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    namarayon: TcxComboBox;
    golongan: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    pemakaian1: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    kodekolektif: TcxComboBox;
    kolektif: TcxComboBox;
    cekkolektif: TcxCheckBox;
    RzPanel8: TRzPanel;
    frxDesigner1: TfrxDesigner;
    F5: TAction;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure kodekelurahanPropertiesChange(Sender: TObject);
    procedure kelurahanPropertiesChange(Sender: TObject);
    procedure kodecabangPropertiesChange(Sender: TObject);
    procedure cabangPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cekpemakaianClick(Sender: TObject);
    procedure cekkodegolClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure cekbayarClick(Sender: TObject);
    procedure cekkolektifClick(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure F5Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udrd_real_karyawan: Tudrd_real_karyawan;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Tudrd_real_karyawan.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin


   if (cekpemakaian.Checked=true) and (pemakaian2.Text='') then
  begin
      MessageDlg('M3 masih kosong !!', mtWarning, [mbOK], 0);
      pemakaian2.SetFocus;
      exit;
  end;


  
  if (cekkodegol.Checked=true) and (kodegol.Text='') then
  begin
      MessageDlg('Golongan masih kosong !!', mtWarning, [mbOK], 0);
      kodegol.SetFocus;
      exit;
  end;


  if (cekrayon.Checked=true) and (koderayon.Text='') then
  begin
      MessageDlg('Rayon masih kosong !!', mtWarning, [mbOK], 0);
      koderayon.SetFocus;
      exit;
  end;


  if (cekwil.Checked=true) and (kodewil.Text='') then
  begin
      MessageDlg('Wilayah masih kosong !!', mtWarning, [mbOK], 0);
      kodewil.SetFocus;
      exit;
  end;

  if (cekloket.Checked=true) and (kodeloket.Text='') then
  begin
      MessageDlg('Loket Penagihan masih kosong !!', mtWarning, [mbOK], 0);
      kodeloket.SetFocus;
      exit;
  end;

    if (cekkolektif.Checked=true) and (kodekolektif.Text='') then
  begin
      MessageDlg('Kolektif masih kosong !!', mtWarning, [mbOK], 0);
      kodekolektif.SetFocus;
      exit;
  end;


  report.LoadFromFile(GetCurrentDir+'\Report\drdkaryawan.fr3');

   

  keterangan:='';
  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('DATA POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROM histori_posting_drd WHERE periode=:periode ORDER BY waktuposting DESC LIMIT 1 ');
  DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('HISTORI POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;


         keterangan:='KARYAWAN PDAM';

         TfrxMemoView(report.FindObject('waktuposting')).Memo.Text:='Data Posting <'+FormatDateTime('DD MMM YYYY hh:mm:ss',DM.Qcek.fieldbyname('waktuposting').AsDateTime)+'> oleh <'+DM.Qcek.fieldbyname('user').AsString+'>';
   

        Qrek.close;
        Qrek.SQL.clear;
        Qrek.SQL.Add('select p.nama,p.kodegol,p.kodediameter,p.alamat,p.norekening,p.norumah,c.*,g.golongan,r.namarayon,r.kodewil,r.wilayah,c.pemeliharaan+c.pemeliharaanlain+c.retribusi+c.retribusilain AS beban,c.administrasi+c.administrasilain AS cadministrasi,');
        Qrek.SQL.Add('c.retribusi+c.retribusilain as Cretribusi,c.pemeliharaan+c.pemeliharaanlain AS cpemeliharaan,c.nonair as nonair,c.rekair+c.nonair as jumlah2');
        Qrek.SQL.Add('FROm drdposting'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan p On c.nosamb=p.nosamb  LEFT JOIN golongan g ON c.kodegol=g.kodegol');  
        Qrek.SQL.add('LEFT JOIN rayon r On c.koderayon=r.koderayon WHERE c.nosamb IS NOT NULL and c.flagpublish="1" ');
        Qrek.SQL.Add('AND c.flag="1"');


        Qrek.SQL.add('ORDER BY CAST(c.koderayon AS UNSIGNED),CAST(c.nosamb AS UNSIGNED) asc ');
        Qrek.Open;


          if(Qrek.RecordCount>0)then
          begin   

            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='DRD';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;

   
            TfrxMemoView(report.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
            report.ShowReport();  

          end
          else
            MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
                 
  

end;

procedure Tudrd_real_karyawan.FormShow(Sender: TObject);
begin
ucombo.isikombo();

kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
namarayon.Properties.Items:=ucombo.namarayon.Properties.Items;
wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kelurahan.Properties.Items:=ucombo.kelurahan.Properties.Items;
cabang.Properties.Items:=ucombo.cabang.Properties.Items;
sumberair.Properties.Items:=ucombo.sumberair.Properties.Items;
kodekelurahan.Properties.Items:=ucombo.kodekelurahan.Properties.Items;
kodecabang.Properties.Items:=ucombo.kodecabang.Properties.Items;
kodeparaf.Properties.Items:=ucombo.kodeparaf.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;
kodekolektif.Properties.Items:=ucombo.kodekolektif.Properties.Items;
kolektif.Properties.Items:=ucombo.kolektif.Properties.Items;
kodeparaf.Text:='PUSAT';
end;

procedure Tudrd_real_karyawan.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudrd_real_karyawan.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tudrd_real_karyawan.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Tudrd_real_karyawan.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Tudrd_real_karyawan.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tudrd_real_karyawan.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Tudrd_real_karyawan.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Tudrd_real_karyawan.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Tudrd_real_karyawan.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Tudrd_real_karyawan.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Tudrd_real_karyawan.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Tudrd_real_karyawan.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tudrd_real_karyawan.cekpemakaianClick(Sender: TObject);
begin
  if(cekpemakaian.Checked=true)then
  begin
      pemakaian1.Enabled:=true;
      pemakaian2.Enabled:=true;
  end
  else
  begin
      pemakaian1.Enabled:=false;
      pemakaian2.Enabled:=true;
  end;
end;

procedure Tudrd_real_karyawan.cekkodegolClick(Sender: TObject);
begin
 if(cekkodegol.Checked=true)then
  begin
      kodegol.Enabled:=true;
      golongan.Enabled:=true;
  end
  else
  begin
      kodegol.Enabled:=false;
      golongan.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.cekrayonClick(Sender: TObject);
begin
if(cekrayon.Checked=true)then
  begin
      koderayon.Enabled:=true;
      namarayon.Enabled:=true;
  end
  else
  begin
      koderayon.Enabled:=false;
      namarayon.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.cekwilClick(Sender: TObject);
begin
if(cekwil.Checked=true)then
  begin
      kodewil.Enabled:=true;
      wilayah.Enabled:=true;
  end
  else
  begin
      kodewil.Enabled:=false;
      wilayah.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.cekloketClick(Sender: TObject);
begin
if(cekloket.Checked=true)then
  begin
      kodeloket.Enabled:=true;
      loket.Enabled:=true;
  end
  else
  begin
      kodeloket.Enabled:=false;
      loket.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tudrd_real_karyawan.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tudrd_real_karyawan.cekbayarClick(Sender: TObject);
begin
  if(cekbayar.Checked=true)then
  begin
      bayar.Enabled:=true;
  end
  else
  begin
      bayar.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.cekkolektifClick(Sender: TObject);
begin
  if(cekkolektif.Checked=true)then
  begin
      kodekolektif.Enabled:=true;
      kolektif.Enabled:=true;
  end
  else
  begin
      kodekolektif.Enabled:=false;
      kolektif.Enabled:=false;
  end;
end;

procedure Tudrd_real_karyawan.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure Tudrd_real_karyawan.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure Tudrd_real_karyawan.F5Execute(Sender: TObject);
begin
  report.LoadFromFile(GetCurrentDir+'\report\drdkaryawan.fr3');
  report.DesignReport(true);
end;

end.
