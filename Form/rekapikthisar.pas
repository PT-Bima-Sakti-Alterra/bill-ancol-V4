unit rekapikthisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  Menus, frxClass, DB, DBAccess, MyAccess, frxDBSet,
  MemDS, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RzDTP, cxCurrencyEdit, ActnList,
 cxCheckBox, dxSkinOffice2013White, RzLabel, ExtCtrls,
  RzPanel, cxRadioGroup;

type
  Turekapikthisar = class(TForm)
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    pemakaian: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cekpemakaian: TcxCheckBox;
    sumberair: TcxComboBox;
    ceksumberair: TcxCheckBox;
    kodegol: TcxComboBox;
    cekkodegol: TcxCheckBox;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    namarayon: TcxComboBox;
    golongan: TcxComboBox;
    wilayah: TcxComboBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    cekcabang: TcxCheckBox;
    kodecabang: TcxComboBox;
    kelurahan: TcxComboBox;
    cabang: TcxComboBox;
    report: TfrxReport;
    cxLabel2: TcxLabel;
    kodeparaf: TcxComboBox;
    cxLabel3: TcxLabel;
    Qexec: TMyQuery;
    Qcek: TMyQuery;
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
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
  urekapikthisar: Turekapikthisar;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Turekapikthisar.cxButton1Click(Sender: TObject);
var
keterangan:String;
j:integer;
begin


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


  Qexec.close;
  Qexec.SQL.Clear;
  Qexec.SQL.Add('TRUNCATE TABLE `dumpikthisar`;');
  Qexec.SQL.Add('TRUNCATE TABLE `dumpikthisar1`;');
  Qexec.Execute;

  Qexec.close;
  Qexec.SQL.Clear;
  Qexec.SQL.Add('REPLACE INTO dumpikthisar');
  Qexec.SQL.Add(Qexec.SQLInsert.Text);
  Qexec.SQL.Add('FROM ');
  Qexec.SQL.Add('(SELECT ');
  Qexec.SQL.Add('CONCAT(r.kodewil, ".", c.kodegol) AS kode,  ');
  Qexec.SQL.Add('r.kodewil, ');
  Qexec.SQL.Add('r.wilayah,  ');
  Qexec.SQL.Add('c.kodegol,  ');
  Qexec.SQL.Add(' g.golongan  ');
  Qexec.SQL.Add('FROM      ');
  Qexec.SQL.Add('drdposting'+FormatDateTime('YYYYMM',periode.date)+' c   ');
  Qexec.SQL.Add(' LEFT JOIN rayon r   ');
  Qexec.SQL.Add(' ON c.koderayon = r.koderayon   ');
  Qexec.SQL.Add(' LEFT JOIN golongan g    ');
  Qexec.SQL.Add('   ON c.kodegol = g.kodegol  ');
  Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) c ');
  Qexec.SQL.Add('LEFT JOIN   ');
  Qexec.SQL.Add('(SELECT CONCAT(r.kodewil, ".", c.kodegol) AS kode,');
  Qexec.SQL.Add(' COUNT(c.nosamb) AS pelanggankini      ');
  Qexec.SQL.Add('FROM      ');
  Qexec.SQL.Add('  drdposting'+FormatDateTime('YYYYMM',periode.date)+' c    ');
  Qexec.SQL.Add('  LEFT JOIN rayon r    ');
  Qexec.SQL.Add('    ON c.koderayon = r.koderayon  ');
  Qexec.SQL.Add('  LEFT JOIN golongan g  ');
  Qexec.SQL.Add('    ON c.kodegol = g.kodegol  ');
  Qexec.SQL.Add('    WHERE c.`flagaktif`="1"  ');
  Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) l ON c.kode=l.kode ');
  Qexec.SQL.Add('LEFT JOIN  ');
  Qexec.SQL.Add('(SELECT CONCAT(r.kodewil, ".", c.kodegol) AS kode,  ');
  Qexec.SQL.Add(' COUNT(c.nosamb) AS lembarkini ,   ');
  Qexec.SQL.Add(' SUM(c.pakai) AS pakaikini, ');
  Qexec.SQL.Add(' SUM(c.rekair) AS rekairkini,');
  Qexec.SQL.Add(' SUM(c.biayapemakaian) AS biayapakaikini, ');
  Qexec.SQL.Add(' SUM(c.administrasi+ c.administrasilain) AS administrasikini, ');
  Qexec.SQL.Add(' SUM(C.pemeliharaan+c.pemeliharaanlain) AS pemeliharaankini, ');
  Qexec.SQL.Add(' SUM(C.retribusi+c.retribusilain) AS retribusikini  ');
  Qexec.SQL.Add('FROM ');
  Qexec.SQL.Add('  drdposting'+FormatDateTime('YYYYMM',periode.date)+' c ');
  Qexec.SQL.Add('  LEFT JOIN rayon r  ');
  Qexec.SQL.Add('    ON c.koderayon = r.koderayon ');
  Qexec.SQL.Add('  LEFT JOIN golongan g   ');
  Qexec.SQL.Add('    ON c.kodegol = g.kodegol ');
  Qexec.SQL.Add('    WHERE c.`flagpublish`="1"  ');
  Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) f ON c.kode=f.kode ');
  Qexec.SQL.Add('ORDER BY  CAST( c.kodewil AS UNSIGNED ),c.kodegol ASC ');
  Qexec.Execute;



  Qcek.close;
  Qcek.SQL.Clear;
  Qcek.SQL.Add('select nama,periode FROM periode WHERE LEFT(periode,4)=:tahun AND periode<:periode ORDER BY periode ASC');
  Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qcek.ParamByName('tahun').AsString:=FormatDateTime('YYYY',periode.date);
  Qcek.Open;


  if(Qcek.RecordCount>0)then
  begin

    for j:=1 to Qcek.RecordCount do
    begin


          DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('show tables like "drdposting'+Qcek.fieldbyname('periode').AsString+'" ');
          DM.Qcek.Open;

          if(DM.Qcek.RecordCount=0)then
          begin
             MessageDlg('DRD '+Qcek.fieldbyname('nama').AsString+' belum di posting !!!', mtInformation, [mbOK], 0);
             exit;
          end;


        Qexec.close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('REPLACE INTO dumpikthisar1');
        Qexec.SQL.Add(Qexec.SQLInsert.Text);
        Qexec.SQL.Add('FROM ');
        Qexec.SQL.Add('(SELECT ');
        Qexec.SQL.Add(' CONCAT('+Qcek.fieldbyname('periode').AsString+',".",r.kodewil, ".", c.kodegol) AS kodeperiode,');
        Qexec.SQL.Add('CONCAT(r.kodewil, ".", c.kodegol) AS kode,  ');
        Qexec.SQL.Add('r.kodewil, ');
        Qexec.SQL.Add('r.wilayah,  ');
        Qexec.SQL.Add('c.kodegol,  ');
        Qexec.SQL.Add(' g.golongan  ');
        Qexec.SQL.Add('FROM      ');
        Qexec.SQL.Add('drdposting'+Qcek.fieldbyname('periode').AsString+' c   ');
        Qexec.SQL.Add(' LEFT JOIN rayon r   ');
        Qexec.SQL.Add(' ON c.koderayon = r.koderayon   ');
        Qexec.SQL.Add(' LEFT JOIN golongan g    ');
        Qexec.SQL.Add('   ON c.kodegol = g.kodegol  ');
        Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) c ');
        Qexec.SQL.Add('LEFT JOIN   ');
        Qexec.SQL.Add('(SELECT CONCAT(r.kodewil, ".", c.kodegol) AS kode,');
        Qexec.SQL.Add(' COUNT(c.nosamb) AS pelanggankini      ');
        Qexec.SQL.Add('FROM      ');
        Qexec.SQL.Add('  drdposting'+Qcek.fieldbyname('periode').AsString+' c    ');
        Qexec.SQL.Add('  LEFT JOIN rayon r    ');
        Qexec.SQL.Add('    ON c.koderayon = r.koderayon  ');
        Qexec.SQL.Add('  LEFT JOIN golongan g  ');
        Qexec.SQL.Add('    ON c.kodegol = g.kodegol  ');
        Qexec.SQL.Add('    WHERE c.`flagaktif`="1"  ');
        Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) l ON c.kode=l.kode ');
        Qexec.SQL.Add('LEFT JOIN  ');
        Qexec.SQL.Add('(SELECT CONCAT(r.kodewil, ".", c.kodegol) AS kode,  ');
        Qexec.SQL.Add(' COUNT(c.nosamb) AS lembarkini ,   ');
        Qexec.SQL.Add(' SUM(c.pakai) AS pakaikini, ');
        Qexec.SQL.Add(' SUM(c.rekair) AS rekairkini,');
        Qexec.SQL.Add(' SUM(c.biayapemakaian) AS biayapakaikini, ');
        Qexec.SQL.Add(' SUM(c.administrasi+ c.administrasilain) AS administrasikini, ');
        Qexec.SQL.Add(' SUM(C.pemeliharaan+c.pemeliharaanlain) AS pemeliharaankini, ');
        Qexec.SQL.Add(' SUM(C.retribusi+c.retribusilain) AS retribusikini  ');
        Qexec.SQL.Add('FROM ');
        Qexec.SQL.Add('  drdposting'+Qcek.fieldbyname('periode').AsString+' c ');
        Qexec.SQL.Add('  LEFT JOIN rayon r  ');
        Qexec.SQL.Add('    ON c.koderayon = r.koderayon ');
        Qexec.SQL.Add('  LEFT JOIN golongan g   ');
        Qexec.SQL.Add('    ON c.kodegol = g.kodegol ');
        Qexec.SQL.Add('    WHERE c.`flagpublish`="1"  ');
        Qexec.SQL.Add('GROUP BY CONCAT(r.kodewil, ".", c.kodegol) ASC ) f ON c.kode=f.kode ');
        Qexec.SQL.Add('ORDER BY  CAST( c.kodewil AS UNSIGNED ),c.kodegol ASC ');
        Qexec.Execute;

      Qcek.Next;
    end;
  end; 

   Qexec.close;
   Qexec.SQL.Clear;
   Qexec.SQL.Add('truncate table dumpikthisar2;');
   Qexec.SQL.Add('REPLACE INTO dumpikthisar2 SELECT kode,kodewil,kodegol,wilayah,golongan FROm dumpikthisar GROUP BY kode;');
   Qexec.SQL.Add('REPLACE INTO dumpikthisar2 SELECT kode,kodewil,kodegol,wilayah,golongan FROm dumpikthisar1 GROUP BY kode;');
   Qexec.Execute;


  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qrek.Open;


   if(Qrek.RecordCount>0)then
   begin


           //TfrxMemoView(report.FindObject('keterangan')).Memo.Text:= keterangan;
           TfrxMemoView(report.FindObject('bulan')).Memo.Text:='BULAN : '+ UpperCase( FormatDateTime('MMMM YYYY',periode.date)); 

            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='IKTHISAR';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;


         
         report.ShowReport();

   end
   else
     MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);



end;

procedure Turekapikthisar.FormShow(Sender: TObject);
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

procedure Turekapikthisar.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Turekapikthisar.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Turekapikthisar.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Turekapikthisar.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Turekapikthisar.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Turekapikthisar.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Turekapikthisar.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Turekapikthisar.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Turekapikthisar.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Turekapikthisar.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Turekapikthisar.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Turekapikthisar.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Turekapikthisar.cekkodegolClick(Sender: TObject);
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

procedure Turekapikthisar.cekrayonClick(Sender: TObject);
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

procedure Turekapikthisar.cekwilClick(Sender: TObject);
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
