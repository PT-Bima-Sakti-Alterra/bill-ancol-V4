unit unitlpp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, ComCtrls, dxCore, cxDateUtils, Menus, StdCtrls,
  cxButtons, cxDropDownEdit, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxCalendar, cxLabel, frxClass, frxDBSet, DB, MemDS, DBAccess, MyAccess,
  ActnList, RzLabel;

type
  Tulpp = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    tanggal1: TcxDateEdit;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cekwilloket: TcxCheckBox;
    kodewillokasi: TcxComboBox;
    DSrek: TMyDataSource;
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    Qnonair: TMyQuery;
    MyDataSource1: TMyDataSource;
    na: TfrxDBDataset;
    Qreknosamb: TStringField;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    Qrekkodegol: TStringField;
    Qrekkodediameter: TStringField;
    Qrekkoderayon: TStringField;
    Qrekwilayah: TStringField;
    Qrekstanlalu: TFloatField;
    Qrekstanskrg: TFloatField;
    Qrekpakai: TFloatField;
    Qrekbiayapemakaian: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekretribusi: TFloatField;
    Qrekppn: TFloatField;
    Qrekmeterai: TFloatField;
    Qrekdendatunggakan: TFloatField;
    Qrekrekair: TFloatField;
    Qrektotal: TFloatField;
    Qrektglbayar: TDateTimeField;
    Qrekkasir: TStringField;
    Qrekloketbayar: TStringField;
    Qrekloket: TStringField;
    Qrekkodewillokasi: TStringField;
    Qrekwilayahlokasi: TStringField;
    report: TfrxReport;
    Qrekbulan: TStringField;
    Qnonairnomor: TStringField;
    Qnonairjenis: TStringField;
    Qnonairketjenis: TStringField;
    Qnonairwaktubayar: TDateTimeField;
    Qnonairkasir: TStringField;
    Qnonairloketbayar: TStringField;
    Qnonairloket: TStringField;
    Qnonairkodewillokasi: TStringField;
    Qnonairwilayahlokasi: TStringField;
    Qnonairtotal: TFloatField;
    Qnonairnama: TStringField;
    Qnonairalamat: TStringField;
    wilayahlokasi: TcxComboBox;
    loket: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qangsurantunggakan: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    ang: TfrxDBDataset;
    MyDataSource2: TMyDataSource;
    RzPanel20: TRzPanel;
    cxLabel2: TcxLabel;
    tanggal2: TcxDateEdit;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekgol: TcxCheckBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    Qgol: TMyQuery;
    gol: TfrxDBDataset;
    Dgol: TMyDataSource;
    Qgolkodegol: TStringField;
    Qgolgolongan: TStringField;
    Qgollembar: TLargeintField;
    Qgolpakai: TFloatField;
    Qgolbiayapemakaian: TFloatField;
    Qgoladministrasi: TFloatField;
    Qgolpemeliharaan: TFloatField;
    Qgolretribusi: TFloatField;
    Qgolrekair: TFloatField;
    Qgoldenda: TFloatField;
    Qgoltotal: TFloatField;
    Qper: TMyQuery;
    Dper: TMyDataSource;
    per: TfrxDBDataset;
    Qperperiode: TStringField;
    Qperbulan: TStringField;
    Qperlembar: TLargeintField;
    Qperpakai: TFloatField;
    Qperbiayapemakaian: TFloatField;
    Qperadministrasi: TFloatField;
    Qperpemeliharaan: TFloatField;
    Qperretribusi: TFloatField;
    Qperrekair: TFloatField;
    Qperdenda: TFloatField;
    Qpertotal: TFloatField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cekwilloketClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodewillokasiPropertiesChange(Sender: TObject);
    procedure wilayahlokasiPropertiesChange(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    keterangan:String;
    procedure cekair();
    procedure ceknonair();
    procedure cekangsurantunggakan();
    procedure cekrekapair();
    procedure cekbulan();
    
  end;

var
  ulpp: Tulpp;

implementation

{$R *.dfm}uses Module, UnitMain, Math, RzStatus, UnitCombo;


procedure Tulpp.cekair();
begin


  Qrek.Close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);


  if(cekwilloket.Checked=true)then
  begin
      Qrek.SQL.Add('AND l.kodewillokasi="'+kodewillokasi.Text+'"');
      keterangan:='WILAYAH LOKET : '+wilayahlokasi.Text+char(13)+
                  keterangan;
  end;


  if(cekloket.Checked=true)then
  begin
      Qrek.SQL.Add('AND b.loketbayar="'+kodeloket.Text+'"');
      keterangan:='LOKET : '+loket.Text+char(13)+
                  keterangan;
  end;


  if(cekkasir.Checked=true)then
  begin
      Qrek.SQL.Add('AND b.kasir="'+kasir.Text+'"');
      keterangan:='KASIR : '+kasir.Text+char(13)+
                  keterangan;
  end;

   if(cekwil.Checked=true)then
  begin
      Qrek.SQL.Add('AND r.kodewil="'+kodewil.Text+'"');
      keterangan:='WILAYAH PELANGGAN : '+wilayah.Text+char(13)+
                  keterangan;
  end;

   if(cekgol.Checked=true)then
  begin
      Qrek.SQL.Add('AND b.kodegol="'+kodegol.Text+'"');
      keterangan:='GOLONGAN : '+golongan.Text+char(13)+
                  keterangan;
  end;

  Qrek.ParamByName('tanggal1').AsDate:=tanggal1.date;
  Qrek.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qrek.SQL.Add(' ORDER BY b.nosamb ,b.periode ASC');
  Qrek.Open;

end;

procedure Tulpp.ceknonair();
begin

  Qnonair.Close;
  Qnonair.SQL.Clear;
  Qnonair.SQL.Add(Qnonair.SQLRefresh.Text);

   if(cekwilloket.Checked=true)then
  begin
      Qnonair.SQL.Add('AND l.kodewillokasi="'+kodewillokasi.Text+'"');
  end;


  if(cekloket.Checked=true)then
  begin
      Qnonair.SQL.Add('AND b.loketbayar="'+kodeloket.Text+'"');
  end;


  if(cekkasir.Checked=true)then
  begin
      Qnonair.SQL.Add('AND b.kasir="'+kasir.Text+'"'); 
  end;


    if(cekwil.Checked=true)then
  begin
      Qnonair.SQL.Add('AND b.kodewil="'+kodewil.Text+'"');
  end;

   if(cekgol.Checked=true)then
  begin
      Qnonair.SQL.Add('AND b.kodegol="'+kodegol.Text+'"');
  end;

  Qnonair.SQL.Add('ORDER BY b.jenis,b.nomor,b.`termin`  ASC');
  Qnonair.ParamByName('tanggal1').AsDate:=tanggal1.date;
  Qnonair.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qnonair.Open;


end;


procedure Tulpp.cekangsurantunggakan();
begin

  Qangsurantunggakan.Close;
  Qangsurantunggakan.SQL.Clear;
  Qangsurantunggakan.SQL.Add(Qangsurantunggakan.SQLRefresh.Text);

   if(cekwilloket.Checked=true)then
  begin
      Qangsurantunggakan.SQL.Add('AND l.kodewillokasi="'+kodewillokasi.Text+'"');
  end;


  if(cekloket.Checked=true)then
  begin
      Qangsurantunggakan.SQL.Add('AND b.loketbayar="'+kodeloket.Text+'"');
  end;


  if(cekkasir.Checked=true)then
  begin
      Qangsurantunggakan.SQL.Add('AND b.kasir="'+kasir.Text+'"');
  end;


  
   if(cekwil.Checked=true)then
  begin
      Qangsurantunggakan.SQL.Add('AND b.kodewil="'+kodewil.Text+'"');
  end;

   if(cekgol.Checked=true)then
  begin
      Qangsurantunggakan.SQL.Add('AND b.kodegol="'+kodegol.Text+'"');
  end;

  Qangsurantunggakan.SQL.Add('ORDER BY b.jenis,b.nomor,b.`termin`  ASC');
  Qangsurantunggakan.ParamByName('tanggal1').AsDate:=tanggal1.date;
  Qangsurantunggakan.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qangsurantunggakan.Open;


end;


procedure Tulpp.cekrekapair();
begin


  Qgol.Close;
  Qgol.SQL.Clear;
  Qgol.SQL.Add(Qgol.SQLRefresh.Text);


  if(cekwilloket.Checked=true)then
  begin
      Qgol.SQL.Add('AND l.kodewillokasi="'+kodewillokasi.Text+'"');
  end;


  if(cekloket.Checked=true)then
  begin
      Qgol.SQL.Add('AND c.loketbayar="'+kodeloket.Text+'"');
  end;


  if(cekkasir.Checked=true)then
  begin
      Qgol.SQL.Add('AND c.kasir="'+kasir.Text+'"');
  end;

   if(cekwil.Checked=true)then
  begin
      Qgol.SQL.Add('AND r.kodewil="'+kodewil.Text+'"');
  end;

   if(cekgol.Checked=true)then
  begin
      Qgol.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');
  end;

  Qgol.ParamByName('tanggal1').AsDate:=tanggal1.date;
  Qgol.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qgol.SQL.Add(' GROUP BY c.kodegol ASC');
  Qgol.Open;

end;


procedure Tulpp.cekbulan();
begin


  Qper.Close;
  Qper.SQL.Clear;
  Qper.SQL.Add(Qper.SQLRefresh.Text);


  if(cekwilloket.Checked=true)then
  begin
      Qper.SQL.Add('AND l.kodewillokasi="'+kodewillokasi.Text+'"');
  end;


  if(cekloket.Checked=true)then
  begin
      Qper.SQL.Add('AND c.loketbayar="'+kodeloket.Text+'"');
  end;


  if(cekkasir.Checked=true)then
  begin
      Qper.SQL.Add('AND c.kasir="'+kasir.Text+'"');
  end;

   if(cekwil.Checked=true)then
  begin
      Qper.SQL.Add('AND r.kodewil="'+kodewil.Text+'"');
  end;

   if(cekgol.Checked=true)then
  begin
      Qper.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');
  end;

  Qper.ParamByName('tanggal1').AsDate:=tanggal1.date;
  Qper.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qper.SQL.Add(' GROUP BY c.periode ASC');
  Qper.Open;

end;



procedure Tulpp.cxButton1Click(Sender: TObject);
begin
close;
end;



procedure Tulpp.FormCreate(Sender: TObject);
begin
tanggal1.date:=date;
tanggal2.date:=date;
end;

procedure Tulpp.cxButton2Click(Sender: TObject);
begin


   if (cekwilloket.Checked=true) and (kodewillokasi.Text='')then
 begin
     MessageDlg('Harap pilih Wilayah Loket !!', mtWarning, [mbOK], 0);
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

  if (cekwil.Checked=true) and (kodewil.Text='')then
 begin
     MessageDlg('Harap pilih Wilayah Pelanggan !!', mtWarning, [mbOK], 0);
     exit;
 end;

  if (cekgol.Checked=true) and (kodegol.Text='')then
 begin
     MessageDlg('Harap pilih Golongan !!', mtWarning, [mbOK], 0);
     exit;
 end;

 TRY

  keterangan:='';

   umain.Enabled:=false;
   Enabled:=false;




        cekair;
        cekangsurantunggakan;
        ceknonair;
        cekrekapair;
        cekbulan;



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


        if tanggal1.date<>tanggal2.date then

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=UpperCase(FormatDateTime('DD MMMM YYYY',tanggal1.date) +' - '+FormatDateTime('DD MMMM YYYY',tanggal2.date)   )

        else

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=UpperCase(FormatDateTime('DD MMMM YYYY',tanggal1.date));
          
        TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);

        report.ShowReport(true);
        
   

 FINALLY
      umain.Enabled:=true;
      Enabled:=true;

 END;
end;

procedure Tulpp.cekwilloketClick(Sender: TObject);
begin
  if(cekwilloket.Checked=true)then
  begin
      kodewillokasi.Enabled:=true;
      wilayahlokasi.Enabled:=true;
      kodewillokasi.SetFocus;

  end
  else
  begin
     kodewillokasi.Enabled:=false;
     wilayahlokasi.Enabled:=false;
  end;
end;

procedure Tulpp.cekloketClick(Sender: TObject);
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

procedure Tulpp.cekkasirClick(Sender: TObject);
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

procedure Tulpp.FormShow(Sender: TObject);
begin

  ucombo.isikombo();

kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;

wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;

kodewillokasi.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayahlokasi.Properties.Items:=ucombo.wilayah.Properties.Items;
kasir.Properties.Items:=ucombo.kasir.Properties.Items;



end;

procedure Tulpp.kodewillokasiPropertiesChange(Sender: TObject);
begin
wilayahlokasi.ItemIndex:=kodewillokasi.ItemIndex;
end;

procedure Tulpp.wilayahlokasiPropertiesChange(Sender: TObject);
begin
kodewillokasi.ItemIndex:=wilayahlokasi.ItemIndex;
end;

procedure Tulpp.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tulpp.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tulpp.cekwilClick(Sender: TObject);
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

procedure Tulpp.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tulpp.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure Tulpp.cekgolClick(Sender: TObject);
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

procedure Tulpp.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tulpp.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

end.
