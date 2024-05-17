unit tagihanbelumdibayar;

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
  Tutagbelumbayar = class(TForm)
    cxLabel1: TcxLabel;
    rek: TfrxDBDataset;
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
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel20: TRzPanel;
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cekpemakaian: TcxCheckBox;
    kodegol: TcxComboBox;
    cekkodegol: TcxCheckBox;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    namarayon: TcxComboBox;
    wilayah: TcxComboBox;
    cekkodekolektif: TcxCheckBox;
    kodekolektif: TcxComboBox;
    kolektif: TcxComboBox;
    status: TcxComboBox;
    cxLabel4: TcxLabel;
    op: TcxComboBox;
    pemakaian: TcxCurrencyEdit;
    cekdrd: TcxCheckBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    golongan: TcxComboBox;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    report: TfrxReport;
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
    procedure cekkelurahanClick(Sender: TObject);
    procedure cekcabangClick(Sender: TObject);
    procedure cekpemakaianClick(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure cekkodekolektifClick(Sender: TObject);
    procedure cekdrdClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  utagbelumbayar: Tutagbelumbayar;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Tutagbelumbayar.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin





 if(status.Text='')then
     MessageDlg('Harap Pilih Status Pelanggan !! ', mtInformation, [mbOK], 0)

 else
 if(cekpemakaian.Checked=true) and (pemakaian.Text='')then
     MessageDlg('Harap Isi Jumlah Lembar !! ', mtInformation, [mbOK], 0)
 else
 begin

        keterangan:='';



        Qrek.close;
        Qrek.SQL.clear;
        Qrek.SQL.Add(Qrek.SQLRefresh.Text);
        Qrek.SQL.Add('AND p.status="'+IntToStr(status.ItemIndex)+'"  ');


        keterangan:='STATUS PEL : '+status.Text+'   '+keterangan;


               if(cekpemakaian.Checked=true)then
                begin

                  if(op.Text='=')then

                  Qrek.SQL.Add('AND b.jum = '+pemakaian.Text+'');

                 if(op.Text='>')then

                  Qrek.SQL.Add('AND b.jum > '+pemakaian.Text+'');

                  if(op.Text='<')then

                  Qrek.SQL.Add('AND b.jum < '+pemakaian.Text+'');

                  if(op.Text='<>')then

                  Qrek.SQL.Add('AND b.jum <> '+pemakaian.Text+'');


                  keterangan:='Lembar '+op.Text+' '+pemakaian.Text+'   '+keterangan;
                end;


                 if(cekdrd.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND c.periode=:periode');
                    Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                    keterangan:='DRD : '+FormatDateTime('MMM YYYY',periode.date)+'   '+keterangan;
                  end;

                   if(cekcabang.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND k.kodecabang=:kodecabang');
                    Qrek.ParamByName('kodecabang').AsString:=kodecabang.Text;
                    keterangan:='Cabang : '+cabang.Text+'   '+keterangan;
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


                  if(cekkodekolektif.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND p.kodekolektif=:kodekolektif');
                    Qrek.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                    keterangan:='Kolektif : '+kolektif.Text+'   '+keterangan;
                  end;


                  if(cekloket.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND r.kodeloket=:kodeloket');
                    Qrek.ParamByName('kodeloket').AsString:=kodeloket.Text;
                    keterangan:='Loket Penagihan : '+loket.Text+'   '+keterangan;
                  end;

          Qrek.SQL.add('ORDER BY c.koderayon,c.nosamb,c.periode asc');
          Qrek.Open;


          if(Qrek.RecordCount>0)then
          begin




            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='PUSAT';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:='0';//DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;

            
                  TfrxMemoView(report.FindObject('keterangan')).Memo.Text:= keterangan;
                  //TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);
                  //TfrxMemoView(report.FindObject('keterangan2')).Memo.Text:= keterangan;
                  //TfrxMemoView(report.FindObject('bulan2')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);}
                 
         
                 report.ShowReport();

          end
          else
            MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);



 end;


end;

procedure Tutagbelumbayar.FormShow(Sender: TObject);
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
kodekolektif.Properties.Items:=ucombo.kodekolektif.Properties.Items;
kolektif.Properties.Items:=ucombo.kolektif.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;
end;

procedure Tutagbelumbayar.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tutagbelumbayar.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tutagbelumbayar.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Tutagbelumbayar.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Tutagbelumbayar.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tutagbelumbayar.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Tutagbelumbayar.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Tutagbelumbayar.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Tutagbelumbayar.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Tutagbelumbayar.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Tutagbelumbayar.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Tutagbelumbayar.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
status.ItemIndex:=1;
end;

procedure Tutagbelumbayar.cekkodegolClick(Sender: TObject);
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

procedure Tutagbelumbayar.cekrayonClick(Sender: TObject);
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

procedure Tutagbelumbayar.cekwilClick(Sender: TObject);
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

procedure Tutagbelumbayar.cekkelurahanClick(Sender: TObject);
begin
if(cekkelurahan.Checked=true)then
    begin
    kodekelurahan.Enabled:=true;
    kelurahan.Enabled:=true;
    end
    else
    begin
    kodekelurahan.Enabled:=false;
    kelurahan.Enabled:=false;
    end;
end;

procedure Tutagbelumbayar.cekcabangClick(Sender: TObject);
begin
if(cekcabang.Checked=true)then
    begin
    kodecabang.Enabled:=true;
    cabang.Enabled:=true;
    end
    else
    begin
    kodecabang.Enabled:=false;
    cabang.Enabled:=false;
    end;
end;

procedure Tutagbelumbayar.cekpemakaianClick(Sender: TObject);
begin
if(cekpemakaian.Checked=true)then
    begin
    pemakaian.Enabled:=true;
    op.Enabled:=true;

    end
    else
    begin
    pemakaian.Enabled:=false;
    op.Enabled:=false;
    end;
end;

procedure Tutagbelumbayar.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure Tutagbelumbayar.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure Tutagbelumbayar.cekkodekolektifClick(Sender: TObject);
begin
if(cekkodekolektif.Checked=true)then
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

procedure Tutagbelumbayar.cekdrdClick(Sender: TObject);
begin
if(cekdrd.Checked=true)then
    begin
    periode.Enabled:=true;
    end
    else
    begin
    periode.Enabled:=false;  
    end;
end;

procedure Tutagbelumbayar.cekloketClick(Sender: TObject);
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

procedure Tutagbelumbayar.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tutagbelumbayar.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

end.
