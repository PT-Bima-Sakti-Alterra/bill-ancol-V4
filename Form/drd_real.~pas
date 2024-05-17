unit drd_real;

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
  Tudrd_real = class(TForm)
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
    frxReport1: TfrxReport;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udrd_real: Tudrd_real;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Tudrd_real.cxButton1Click(Sender: TObject);
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




    TfrxMemoView(frxReport1.FindObject('kol1')).Memo.Text:='';
    TfrxMemoView(frxReport1.FindObject('kol2')).Memo.Text:='';
    TfrxMemoView(frxReport1.FindObject('kol3')).Memo.Text:='';



  keterangan:='';

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drd'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin

        MessageDlg('DRD '+FormatDateTime('MMMM YYYY',periode.date)+' tidak ada !! ', mtWarning, [mbOK], 0);

        exit;

  end;





        Qrek.close;
        Qrek.SQL.clear;
        Qrek.SQL.Add('select p.nama,p.kodegol,p.kodediameter,p.alamat,p.norekening,c.*,g.golongan,r.namarayon,r.kodewil,r.wilayah,c.pemeliharaan+c.pemeliharaanlain+c.retribusi+c.retribusilain AS beban,c.administrasi+c.administrasilain AS cadministrasi,');
        Qrek.SQL.Add('c.retribusi+c.retribusilain as Cretribusi,c.pemeliharaan+c.pemeliharaanlain AS cpemeliharaan,coalesce( na.nonair ,0) as nonair,c.rekair+coalesce( na.nonair ,0) as jumlah2');
        Qrek.SQL.Add('FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan p On c.nosamb=p.nosamb  LEFT JOIN golongan g ON c.kodegol=g.kodegol');
        Qrek.SQL.Add('LEFT JOIN (select dibebankankepada,SUm(total) as nonair FROM nonair WHERE jenis NOT IN("DENDA","OTS") AND flaghapus="0" AND DATE_FORMAT(tglmulaitagih,"%Y%m")='+FormatDateTime('YYYYMM',periode.date)+' GROUP BY dibebankankepada ) na ON c.nosamb=na.dibebankankepada');
        Qrek.SQL.add('LEFT JOIN rayon r On c.koderayon=r.koderayon WHERE c.nosamb IS NOT NULL and c.flagpublish="1" ');



              if(cekpemakaian.Checked=true)then
                begin
                  Qrek.SQL.Add('AND c.pakai '+pemakaian1.Text+' '+pemakaian2.Text+'');
                  keterangan:='Pemakaian '+pemakaian1.Text+' '+pemakaian2.Text+'   '+char(13)+char(13)+keterangan;
                end;

                if(cekkodegol.Checked=true)then
                begin
                  Qrek.SQL.Add('AND c.kodegol=:kodegol');
                  Qrek.ParamByName('kodegol').AsString:=kodegol.Text;
                  keterangan:='Gol : '+golongan.Text+'   '+char(13)+char(13)+keterangan;
                end;

                if(cekrayon.Checked=true)then
                begin
                  Qrek.SQL.Add('AND c.koderayon=:koderayon');
                  Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
                   keterangan:='Rayon : '+namarayon.Text+'   '+char(13)+char(13)+keterangan;
                end;

                 if(cekwil.Checked=true)then
                begin
                  Qrek.SQL.Add('AND r.kodewil=:kodewil');
                  Qrek.ParamByName('kodewil').AsString:=kodewil.Text;
                   keterangan:='Wil : '+wilayah.Text+'   '+char(13)+char(13)+keterangan;
                end;


                  if(cekkelurahan.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND c.kodekelurahan=:kodekelurahan');
                    Qrek.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                    keterangan:='Kelurahan : '+kelurahan.Text+'   '+char(13)+char(13)+keterangan;
                  end;

                   if(cekcabang.Checked=true)then
                  begin
                    Qrek.SQL.Add('AND k.kodecabang=:kodecabang');
                    Qrek.ParamByName('kodecabang').AsString:=kodecabang.Text;
                    keterangan:='Cabang : '+cabang.Text+'   '+char(13)+char(13)+keterangan;
                  end;


                  if(ceksumberair.Checked=true)then
                begin
                  Qrek.SQL.Add('AND p.sumberair=:sumberair');
                  Qrek.ParamByName('sumberair').AsString:=sumberair.Text;
                   keterangan:='Sumber Air : '+sumberair.Text+'   '+char(13)+char(13)+keterangan;
                end;

                  if(cekloket.Checked=true)then
                begin
                  Qrek.SQL.Add('AND r.kodeloket=:kodeloket');
                  Qrek.ParamByName('kodeloket').AsString:=kodeloket.Text;
                   keterangan:='Loket Penagihan : '+kodeloket.Text+'   '+char(13)+char(13)+keterangan;
                end;

                  if(cekbayar.Checked=true)then
                begin
                  Qrek.SQL.Add('AND c.flaglunas=:flaglunas');
                  Qrek.ParamByName('flaglunas').AsString:= IntToStr(bayar.ItemIndex);
                   keterangan:=bayar.Text+'   '+char(13)+char(13)+keterangan;
                end;


                
                if(cekkolektif.Checked=true)then
                begin
                  Qrek.SQL.Add('AND c.kodekolektif=:kodekolektif');
                  Qrek.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
                   keterangan:='KOLEKTIF : '+kolektif.Text+char(13)+char(13)+
                  keterangan;


                  TfrxMemoView(frxReport1.FindObject('kol1')).Memo.Text:='PETUGAS KOLEKTIF';
                  TfrxMemoView(frxReport1.FindObject('kol2')).Memo.Text:=UpperCase(kolektif.Text);
                  TfrxMemoView(frxReport1.FindObject('kol3')).Memo.Text:='_______________';
                end;





        Qrek.SQL.add('ORDER BY CAST(c.koderayon AS UNSIGNED),CAST(c.nosamb AS UNSIGNED) asc');
        Qrek.Open;


          if(Qrek.RecordCount>0)then
          begin
                 { Qgol.close;
                  Qgol.SQL.Clear;
                  Qgol.SQL.Add(Qgol.SQLRefresh.Text);
                  Qgol.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
                  Qgol.SQL.Add('LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN kelurahan k ON c.kodekelurahan=k.kodekelurahan');
                  Qgol.SQL.Add('LEFT JOIN golongan g ON c.kodegol=g.kodegol');
                  Qgol.SQL.Add('WHERE c.flagpublish="1"');

                         if(cekpemakaian.Checked=true)then
                          begin
                           Qgol.SQL.Add('AND c.pakai '+pemakaian1.Text+' '+pemakaian2.Text+'');
                          end;


                          if(cekkodegol.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND c.kodegol=:kodegol');
                          Qgol.ParamByName('kodegol').AsString:=kodegol.Text;
                        end;

                        if(cekrayon.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND c.koderayon=:koderayon');
                          Qgol.ParamByName('koderayon').AsString:=koderayon.Text;
                        end;

                         if(cekwil.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND r.kodewil=:kodewil');
                          Qgol.ParamByName('kodewil').AsString:=kodewil.Text;
                        end;

                         if(cekkelurahan.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND c.kodekelurahan=:kodekelurahan');
                          Qgol.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
                        end;

                         if(cekcabang.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND k.kodecabang=:kodecabang');
                          Qgol.ParamByName('kodecabang').AsString:=kodecabang.Text;
                        end;

                         if(ceksumberair.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND p.sumberair=:sumberair');
                          Qgol.ParamByName('sumberair').AsString:=sumberair.Text;
                        end;


                          if(cekloket.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND r.kodeloket=:kodeloket');
                          Qgol.ParamByName('kodeloket').AsString:=kodeloket.Text;
                        end;

                          if(cekbayar.Checked=true)then
                        begin
                          Qgol.SQL.Add('AND c.flaglunas=:flaglunas');
                          Qgol.ParamByName('flaglunas').AsString:= IntToStr(bayar.ItemIndex);
                        end;




                  Qgol.SQL.Add('GROUP BY c.kodegol ASC');
                  Qgol.Open; }


          
            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='DRD';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;

            
                  {TfrxMemoView(report.FindObject('keterangan')).Memo.Text:= keterangan;
                  TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);
                  TfrxMemoView(report.FindObject('keterangan2')).Memo.Text:= keterangan;
                  TfrxMemoView(report.FindObject('bulan2')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);
                 

                 report.ShowReport();}


                 
                 TfrxMemoView(frxReport1.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
                 TfrxMemoView(frxReport1.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
                 frxReport1.ShowReport();

          end
          else
            MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
                 
  

end;

procedure Tudrd_real.FormShow(Sender: TObject);
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

procedure Tudrd_real.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudrd_real.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tudrd_real.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Tudrd_real.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Tudrd_real.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tudrd_real.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Tudrd_real.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Tudrd_real.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Tudrd_real.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Tudrd_real.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Tudrd_real.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Tudrd_real.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tudrd_real.cekpemakaianClick(Sender: TObject);
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
      pemakaian2.Enabled:=true;
  end;
end;

procedure Tudrd_real.cekkodegolClick(Sender: TObject);
begin
 if(cekkodegol.Checked=true)then
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

procedure Tudrd_real.cekrayonClick(Sender: TObject);
begin
if(cekrayon.Checked=true)then
  begin
      koderayon.Enabled:=true;
      namarayon.Enabled:=true;
      koderayon.SetFocus;
  end
  else
  begin
      koderayon.Enabled:=false;
      namarayon.Enabled:=false;
  end;
end;

procedure Tudrd_real.cekwilClick(Sender: TObject);
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

procedure Tudrd_real.cekloketClick(Sender: TObject);
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

procedure Tudrd_real.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tudrd_real.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tudrd_real.cekbayarClick(Sender: TObject);
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

procedure Tudrd_real.cekkolektifClick(Sender: TObject);
begin
  if(cekkolektif.Checked=true)then
  begin
      kodekolektif.Enabled:=true;
      kolektif.Enabled:=true;
      kodekolektif.SetFocus;
  end
  else
  begin
      kodekolektif.Enabled:=false;
      kolektif.Enabled:=false;
  end;
end;

procedure Tudrd_real.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure Tudrd_real.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

end.
