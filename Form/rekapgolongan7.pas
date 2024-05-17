unit rekapgolongan7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  Menus, frxClass, DB, DBAccess, MyAccess, frxDBSet,
  MemDS, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RzDTP, cxCurrencyEdit, ActnList,
 cxCheckBox, dxSkinOffice2013White, RzLabel, ExtCtrls,
  RzPanel;

type
  Turekapgolongan7 = class(TForm)
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
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cekpemakaian: TcxCheckBox;
    cekkodegol: TcxCheckBox;
    cekrayon: TcxCheckBox;
    cekwil: TcxCheckBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    kodewil: TcxComboBox;
    koderayon: TcxComboBox;
    kodegol: TcxComboBox;
    pemakaian1: TcxComboBox;
    pemakaian2: TcxTextEdit;
    golongan: TcxComboBox;
    namarayon: TcxComboBox;
    wilayah: TcxComboBox;
    loket: TcxComboBox;
    periode: TRzDateTimePicker;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RzPanel8: TRzPanel;
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
    procedure cekpemakaianClick(Sender: TObject);
    procedure cekkodegolClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekapgolongan7: Turekapgolongan7;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Turekapgolongan7.cxButton1Click(Sender: TObject);
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

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('Anda belum melakukan posting DRD untuk bulan '+FormatDateTime('MMMM YYYY',periode.date)+' !! '+char(13)+char(13)+
        'Harap lakukan posting terlebih dahulu untuk melihat laporan....', mtInformation, [mbOK], 0);
     exit;
  end;

    Qrek.close;
    Qrek.SQL.clear;
    Qrek.SQL.Add(Qrek.SQLRefresh.Text);
    Qrek.SQL.Add('FROm drdposting'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan p On c.nosamb=p.nosamb  LEFT JOIN golongan g ON c.kodegol=g.kodegol');
    Qrek.SQL.add('LEFT JOIN rayon r On c.koderayon=r.koderayon left join kelurahan k On c.kodekelurahan=k.kodekelurahan LEFT JOIN paraf f ON r.kodewil=f.kode WHERE c.flagpublish="1" ');


     
        if(cekpemakaian.Checked=true)then
          begin
            Qrek.SQL.Add('AND c.pakai '+pemakaian1.Text+' '+pemakaian2.Text+'');
            keterangan:='Pemakaian '+pemakaian1.Text+' '+pemakaian2.Text+'   '+keterangan;
          end;

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


          if(ceksumberair.Checked=true)then
        begin
          Qrek.SQL.Add('AND p.sumberair=:sumberair');
          Qrek.ParamByName('sumberair').AsString:=sumberair.Text;
           keterangan:='Sumber Air : '+sumberair.Text+'   '+keterangan;
        end;


           if(cekloket.Checked=true)then
                begin
                  Qrek.SQL.Add('AND r.kodeloket=:kodeloket');
                  Qrek.ParamByName('kodeloket').AsString:=kodeloket.Text;
                   keterangan:='Loket Penagihan : '+kodeloket.Text+'   '+keterangan;
                end;

              



Qrek.SQL.add('GROUP BY CONCAT(r.kodeloket, c.kodegol) ASC');
Qrek.ParamByName('footer').AsString:=DM.Xfooter1;
Qrek.Open;



   if(Qrek.RecordCount>0)then
   begin


          

            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='PUSAT';
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

end;


end;

procedure Turekapgolongan7.FormShow(Sender: TObject);
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

kodeparaf.ItemIndex:=0;
end;

procedure Turekapgolongan7.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Turekapgolongan7.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Turekapgolongan7.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Turekapgolongan7.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Turekapgolongan7.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Turekapgolongan7.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Turekapgolongan7.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Turekapgolongan7.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Turekapgolongan7.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Turekapgolongan7.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Turekapgolongan7.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Turekapgolongan7.cekpemakaianClick(Sender: TObject);
begin
 if(cekpemakaian.Checked=true)then
  begin
      pemakaian1.Enabled:=true;
      pemakaian2.Enabled:=true;
      pemakaian1.SetFocus;
  end
  else
  begin
      pemakaian1.Enabled:=false;
      pemakaian2.Enabled:=false;
  end;
end;

procedure Turekapgolongan7.cekkodegolClick(Sender: TObject);
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

procedure Turekapgolongan7.cekrayonClick(Sender: TObject);
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

procedure Turekapgolongan7.cekwilClick(Sender: TObject);
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
procedure Turekapgolongan7.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Turekapgolongan7.cekloketClick(Sender: TObject);
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

procedure Turekapgolongan7.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Turekapgolongan7.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

end.
