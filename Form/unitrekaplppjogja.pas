unit unitrekaplppjogja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, frxClass, frxDBSet, DB,
  DBAccess, MyAccess, MemDS, cxDropDownEdit, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxCalendar, cxLabel, StdCtrls, cxButtons, ExtCtrls, RzPanel;

type
  Turekaplppjogja = class(TForm)
    RzPanel1: TRzPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    tanggal1: TcxDateEdit;
    cxLabel2: TcxLabel;
    tanggal2: TcxDateEdit;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cekgol: TcxCheckBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    kodeloket2: TcxComboBox;
    loket2: TcxComboBox;
    cxLabel3: TcxLabel;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    rek: TfrxDBDataset;
    report: TfrxReport;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qrekkodeloket: TStringField;
    Qreklembarair: TLargeintField;
    Qrekbiayapemakaianair: TFloatField;
    Qrekadministrasiair: TFloatField;
    Qrekpemeliharaanair: TFloatField;
    Qrekmeteraiair: TFloatField;
    Qrektotalair: TFloatField;
    Qreklembarna: TLargeintField;
    Qrektotalna: TFloatField;
    Qreklembarangs: TLargeintField;
    Qrektotalangs: TFloatField;
    RzPanel20: TRzPanel;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure kodeloket2PropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure loket2PropertiesChange(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekaplppjogja: Turekaplppjogja;

implementation

uses UnitCombo, Module, UnitMain,DateUtils;

{$R *.dfm}

procedure Turekaplppjogja.FormShow(Sender: TObject);
begin
ucombo.isikombo();

kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
golongan.Properties.Items:=ucombo.golongan.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;
kodeloket2.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket2.Properties.Items:=ucombo.loket.Properties.Items;
kasir.Properties.Items:=ucombo.kasir.Properties.Items;
end;

procedure Turekaplppjogja.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Turekaplppjogja.cxButton2Click(Sender: TObject);
var
keterangan:String;
begin

  
 if(YearOf(tanggal1.date)<>YearOf(tanggal2.date)) then
  begin
    MessageDlg('TAHUN PEMBAYARAN HARUS SAMA...!!',mtwarning, [MbOk], 0);
    exit;
  end; 


    keterangan:='';

    Qrek.close;
    Qrek.SQL.Clear;
    Qrek.SQL.Add(Qrek.SQLRefresh.Text);
    Qrek.SQL.Add('LEFT JOIN  ');
    Qrek.SQL.Add('(            ');
    Qrek.SQL.Add('SELECT c.loketbayar AS kodeloket , ');
    Qrek.SQL.Add('COUNT(c.kode) AS lembar,          ');
    Qrek.SQL.Add('SUM(c.biayapemakaian) AS biayapemakaian,     ');
    Qrek.SQL.Add('SUM(c.administrasi) AS administrasi, ');
    Qrek.SQL.Add('SUM(c.pemeliharaan) AS pemeliharaan, ');
    Qrek.SQL.Add('SUM(c.meterai) AS meterai        ');
    Qrek.SQL.Add('FROM bayar:tahun c WHERE c.flaglunas="1" AND c.flagangsur="0" AND DATE(c.tglbayar)>=:tanggal1 AND DATE(c.tglbayar)<=:tanggal2');

      if(cekloket.Checked=true)then
    begin

          Qrek.SQL.Add('AND CAST(c.loketbayar AS UNSIGNED)>="'+kodeloket.Text+'" AND CAST(c.loketbayar AS UNSIGNED)<="'+kodeloket2.Text+'"');

        if(kodeloket.Text=kodeloket2.Text)then

          keterangan:='LOKET : '+kodeloket.Text
        else
         keterangan:='LOKET : '+kodeloket.Text+' S/D '+kodeloket2.Text; 
    end
    else
       keterangan:='LOKET : SEMUA LOKET';



    if(cekgol.Checked=true)then
    begin
        Qrek.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');
        keterangan:=keterangan+'     GOLONGAN : '+kodegol.Text+'/'+golongan.Text;
    end
    else
      keterangan:=keterangan+'     GOLONGAN : SEMUA GOLONGAN';


    Qrek.SQL.Add('GROUP BY c.loketbayar  ');
    Qrek.SQL.Add(') a ON l.kodeloket=a.kodeloket ');




    Qrek.SQL.Add('LEFT JOIN ');
    Qrek.SQL.Add('(       ');
    Qrek.SQL.Add('SELECT c.loketbayar AS kodeloket , ');
    Qrek.SQL.Add('COUNT(c.urutan) AS lembar,  ');
    Qrek.SQL.Add('SUM(c.total) AS total    ');
    Qrek.SQL.Add('FROM nonair c LEFT JOIN pelanggan p ON c.nomor=p.nosamb WHERE c.flaglunas="1" AND c.flagangsur="0"   AND DATE(c.waktubayar)>=:tanggal1 AND DATE(c.waktubayar)<=:tanggal2');

    if(cekloket.Checked=true)then
    begin

          Qrek.SQL.Add('AND CAST(c.loketbayar AS UNSIGNED)>="'+kodeloket.Text+'" AND CAST(c.loketbayar AS UNSIGNED)<="'+kodeloket2.Text+'"');
    end;

    if(cekgol.Checked=true)then
    begin
        Qrek.SQL.Add('AND p.kodegol="'+kodegol.Text+'"');
    end;



    Qrek.SQL.Add('GROUP BY c.loketbayar  ');
    Qrek.SQL.Add(') b ON l.kodeloket=b.kodeloket  ');


    Qrek.SQL.Add('LEFT JOIN ');
    Qrek.SQL.Add('(      ');
    Qrek.SQL.Add('SELECT c.loketbayar AS kodeloket , ');
    Qrek.SQL.Add('COUNT(c.urutan) AS lembar,  ');
    Qrek.SQL.Add('SUM(c.total) AS total     ');
    Qrek.SQL.Add('FROM nonair c LEFT JOIN pelanggan p ON c.nomor=p.nosamb WHERE flaglunas="1" AND flagangsur="1"  AND DATE(c.waktubayar)>=:tanggal1 AND DATE(c.waktubayar)<=:tanggal2 ');


    if(cekloket.Checked=true)then
    begin

          Qrek.SQL.Add('AND CAST(c.loketbayar AS UNSIGNED)>="'+kodeloket.Text+'" AND CAST(c.loketbayar AS UNSIGNED)<="'+kodeloket2.Text+'"');
    end;

    if(cekgol.Checked=true)then
    begin
        Qrek.SQL.Add('AND p.kodegol="'+kodegol.Text+'"');
    end;



    Qrek.SQL.Add('GROUP BY c.loketbayar  ');
    Qrek.SQL.Add(') c ON l.kodeloket=c.kodeloket  ');




    Qrek.SQL.Add('ORDER BY CAST(l.kodeloket AS UNSIGNED) ASC');
    Qrek.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',tanggal1.date));
    Qrek.parambyname('tanggal1').AsDate:=tanggal1.date;
    Qrek.parambyname('tanggal2').AsDate:=tanggal2.date;
    Qrek.Open;



        DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='LPP';
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
   begin

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date) +' - '+FormatDateTime('DD/MM/YYYY',tanggal2.date)   ) ;
        
   end
   else
   begin

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date));

   end;

 TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=keterangan;



    report.ShowReport();



end;

procedure Turekaplppjogja.cekloketClick(Sender: TObject);
begin
if(cekloket.Checked=true)then
  begin
      kodeloket.Enabled:=true;
      loket.Enabled:=true;
       kodeloket2.Enabled:=true;
      loket2.Enabled:=true;
      kodeloket.SetFocus;

  end
  else
  begin
     kodeloket.Enabled:=false;
     loket.Enabled:=false;
     kodeloket2.Enabled:=false;
     loket2.Enabled:=false;
  end;
end;

procedure Turekaplppjogja.cekgolClick(Sender: TObject);
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

procedure Turekaplppjogja.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Turekaplppjogja.kodeloket2PropertiesChange(Sender: TObject);
begin
loket2.ItemIndex:=kodeloket2.ItemIndex;
end;

procedure Turekaplppjogja.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Turekaplppjogja.loket2PropertiesChange(Sender: TObject);
begin
kodeloket2.ItemIndex:=loket2.ItemIndex;
end;

procedure Turekaplppjogja.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Turekaplppjogja.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Turekaplppjogja.FormCreate(Sender: TObject);
begin
tanggal1.date:=date;
tanggal2.date:=date;
end;

end.
