unit rekapgolongan3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  Menus, frxClass, DB, DBAccess, MyAccess, frxDBSet,
  MemDS, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RzDTP, cxCurrencyEdit, ActnList,
 cxCheckBox, dxSkinOffice2013White, dxSkiniMaginary, RzLabel, ExtCtrls,
  RzPanel;

type
  Turekapgolongan3 = class(TForm)
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
    report: TfrxReport;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel8: TRzPanel;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    kodegol: TcxComboBox;
    cekkodegol: TcxCheckBox;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    namarayon: TcxComboBox;
    golongan: TcxComboBox;
    wilayah: TcxComboBox;
    periode: TRzDateTimePicker;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
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
    procedure cekkodegolClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekapgolongan3: Turekapgolongan3;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Turekapgolongan3.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin

if(kodeparaf.Text='')then
     MessageDlg('Harap Pilih Kode Paraf !! ', mtInformation, [mbOK], 0)

 else
 begin 


keterangan:='';


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount>0)then
  begin

    

    Qrek.close;
    Qrek.SQL.clear;
    Qrek.SQL.Add(Qrek.SQLRefresh.Text);

    Qrek.SQL.Add('(SELECT CONCAT(r.kodewil,c.kodegol) AS kode,c.kodegol,r.kodewil,COUNT(c.nosamb) AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS biayapemakaian,SUM(c.administrasi)+SUM(administrasilain) AS administrasi,');
    Qrek.SQL.Add('SUM(c.retribusi)+SUM(retribusilain) AS retribusi,');
    Qrek.SQL.Add('SUM(c.pemeliharaan)+SUM(pemeliharaanlain) AS pemeliharaan,SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain)+SUM(c.retribusi)+SUM(c.retribusilain) AS beban,SUM(c.rekair) AS rekair FROM drdposting'+FormatDateTime('YYYYMM',periode.date)+' c ');
    Qrek.SQL.Add('LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN kelurahan k On c.kodekelurahan=k.kodekelurahan WHERE c.flagpublish="1" ');


       if(cekkodegol.Checked=true)then
        begin
          Qrek.SQL.Add('AND c.kodegol=:kodegol');
          Qrek.ParamByName('kodegol').AsString:=kodegol.Text;
          keterangan:='Gol : '+golongan.Text+'   '+keterangan;
        end;

        if(cekrayon.Checked=true)then
        begin
          Qrek.SQL.Add('AND c.koderayon=:koderayon');
          Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
           keterangan:='Rayon : '+namarayon.Text+'   '+keterangan;
        end;

         if(cekwil.Checked=true)then
        begin
          Qrek.SQL.Add('AND r.kodewil=:kodewil');
          Qrek.ParamByName('kodewil').AsString:=kodewil.Text;
           keterangan:='Wil : '+wilayah.Text+'   '+keterangan;
        end;


          if(cekkelurahan.Checked=true)then
          begin
            Qrek.SQL.Add('AND c.kodekelurahan=:kodekelurahan');
            Qrek.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
            keterangan:='Kelurahan : '+kelurahan.Text+'   '+keterangan;
          end;

           if(cekcabang.Checked=true)then
          begin
            Qrek.SQL.Add('AND k.kodecabang=:kodecabang');
            Qrek.ParamByName('kodecabang').AsString:=kodecabang.Text;
            keterangan:='Cabang : '+cabang.Text+'   '+keterangan;
          end;



    Qrek.SQL.Add('GROUP BY CONCAT(r.kodewil,c.kodegol) ) kini');
    Qrek.SQL.Add('LEFT JOIN (SELECT CONCAT(r.kodewil,c.kodegol) AS kode,COUNT(c.nosamb) AS lembar,SUM(c.pakai) AS pakai,SUM(c.biayapemakaian) AS biayapemakaian,SUM(c.administrasi)+SUM(administrasilain) AS administrasi,SUM(c.retribusi)+SUM(retribusilain) AS retribusi,');
    Qrek.SQL.Add('SUM(c.pemeliharaan)+SUM(pemeliharaanlain) AS pemeliharaan,SUM(c.pemeliharaan)+SUM(c.pemeliharaanlain)+SUM(c.retribusi)+SUM(c.retribusilain) AS beban,SUM(c.rekair) AS rekair FROM drdposting'+FormatDateTime('YYYYMM',IncMonth(periode.date,-1))+' c LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN kelurahan k On c.kodekelurahan=k.kodekelurahan WHERE c.flagpublish="1" ');

       if(cekkodegol.Checked=true)then
        begin
          Qrek.SQL.Add('AND c.kodegol=:kodegol');
          Qrek.ParamByName('kodegol').AsString:=kodegol.Text;

        end;

        if(cekrayon.Checked=true)then
        begin
          Qrek.SQL.Add('AND c.koderayon=:koderayon');
          Qrek.ParamByName('koderayon').AsString:=koderayon.Text;

        end;

         if(cekwil.Checked=true)then
        begin
          Qrek.SQL.Add('AND r.kodewil=:kodewil');
          Qrek.ParamByName('kodewil').AsString:=kodewil.Text;

        end;


          if(cekkelurahan.Checked=true)then
          begin
            Qrek.SQL.Add('AND c.kodekelurahan=:kodekelurahan');
            Qrek.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;

          end;

           if(cekcabang.Checked=true)then
          begin
            Qrek.SQL.Add('AND k.kodecabang=:kodecabang');
            Qrek.ParamByName('kodecabang').AsString:=kodecabang.Text;

          end;



    Qrek.SQL.add(' GROUP BY CONCAT(r.kodewil,c.kodegol) ) lalu');
    Qrek.SQL.Add('ON kini.kode=lalu.kode  LEFT JOIN wilayah w ON kini.kodewil=w.kodewil  LEFT JOIN golongan g ON kini.kodegol=g.kodegol LEFT JOIN paraf f ON w.kodewil=f.kode');

    Qrek.SQL.Add('ORDER BY kini.kode ASC');
    Qrek.ParamByName('footer').AsString:=DM.Xfooter1;
    Qrek.Open;



   if(Qrek.RecordCount>0)then
   begin

        DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:=kodeparaf.Text;
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;





          TfrxMemoView(report.FindObject('keterangan')).Memo.Text:= keterangan;
           TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date); 
          

         
         report.ShowReport();

   end
   else
     MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);

   end
   else
     MessageDlg('Rekening Tidak Tersedia !!!', mtInformation, [mbOK], 0);

end;


end;

procedure Turekapgolongan3.FormShow(Sender: TObject);
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

kodeparaf.Text:='PUSAT';
end;

procedure Turekapgolongan3.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Turekapgolongan3.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Turekapgolongan3.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Turekapgolongan3.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Turekapgolongan3.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Turekapgolongan3.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Turekapgolongan3.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Turekapgolongan3.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Turekapgolongan3.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Turekapgolongan3.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Turekapgolongan3.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Turekapgolongan3.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Turekapgolongan3.cekkodegolClick(Sender: TObject);
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

procedure Turekapgolongan3.cekrayonClick(Sender: TObject);
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

procedure Turekapgolongan3.cekwilClick(Sender: TObject);
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

end.
