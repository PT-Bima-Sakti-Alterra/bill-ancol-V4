unit unitlpp2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, DB, frxDBSet, DBAccess, MyAccess, MemDS, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinOffice2013White, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxCheckBox, ExtCtrls, RzPanel,
  ActnList;

type
  Tulpp2 = class(TForm)
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    rek: TfrxDBDataset;
    Qreknosamb: TStringField;
    Qreknorekening: TStringField;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    Qrekperiode: TStringField;
    Qrekbiayapemakaian: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekrekair: TFloatField;
    report: TfrxReport;
    Qrekkodegol: TStringField;
    RzPanel1: TRzPanel;
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
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qna: TMyQuery;
    DSna: TMyDataSource;
    rek2: TfrxDBDataset;
    Qnajenis: TStringField;
    Qnanomor: TStringField;
    Qnanama: TStringField;
    Qnaalamat: TStringField;
    Qnatotal: TFloatField;
    Qnanorekening: TStringField;
    report2: TfrxReport;
    Qnaperiode: TStringField;
    Qnakodegol: TStringField;
    Qnaketjenis: TStringField;
    kodeloket2: TcxComboBox;
    loket2: TcxComboBox;
    cxLabel3: TcxLabel;
    RzPanel20: TRzPanel;
    btnOK: TRzPanel;
    btnNo: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure kodeloket2PropertiesChange(Sender: TObject);
    procedure loket2PropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulpp2: Tulpp2;

implementation

uses  Module, UnitMain;

{$R *.dfm}

procedure Tulpp2.FormCreate(Sender: TObject);
begin
tanggal1.date:=date;
tanggal2.date:=date;
end;

procedure Tulpp2.cekkasirClick(Sender: TObject);
begin
{  if(cekkasir.Checked=true)then
  begin
      kasir.Enabled:=true;
      kasir.SetFocus;
  end
  else
  begin
     kasir.Enabled:=false;
  end;}
end;

procedure Tulpp2.cekgolClick(Sender: TObject);
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

procedure Tulpp2.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tulpp2.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Tulpp2.FormShow(Sender: TObject);
var
i:integer;
begin


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROM loket ORDER BY CAST(kodeloket AS UNSIGNED) ASC');
  DM.Qcek.Open;

  kodeloket.Properties.Items.Clear;
  loket.Properties.Items.Clear;
  kodeloket2.Properties.Items.Clear;
  loket2.Properties.Items.Clear;
  Application.ProcessMessages;

  for i:=1 to DM.Qcek.RecordCount do
  begin


      kodeloket.Properties.Items.Add(DM.Qcek.fieldbyname('kodeloket').AsString);
      loket.Properties.Items.Add(DM.Qcek.fieldbyname('loket').AsString);

       kodeloket2.Properties.Items.Add(DM.Qcek.fieldbyname('kodeloket').AsString);
      loket2.Properties.Items.Add(DM.Qcek.fieldbyname('loket').AsString);


   Application.ProcessMessages;
   DM.Qcek.Next;
  end;


   DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROM golongan ORDER BY kodegol ASC');
  DM.Qcek.Open;

  kodegol.Properties.Items.Clear;
  golongan.Properties.Items.Clear;
  
  Application.ProcessMessages;

  for i:=1 to DM.Qcek.RecordCount do
  begin


      kodegol.Properties.Items.Add(DM.Qcek.fieldbyname('kodegol').AsString);
      golongan.Properties.Items.Add(DM.Qcek.fieldbyname('golongan').AsString);

      


   Application.ProcessMessages;
   DM.Qcek.Next;
  end;



 { DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROM userloket ORDER BY nama ASC');
  DM.Qcek.Open;

  kasir.Properties.Items.Clear;
  
  Application.ProcessMessages;

  for i:=1 to DM.Qcek.RecordCount do
  begin



      kasir.Properties.Items.Add(DM.Qcek.fieldbyname('nama').AsString);

      


   Application.ProcessMessages;
   DM.Qcek.Next;
  end; }



  cekkasir.Checked:=true;
  kasir.Text:=umain.user.Caption;


end;

procedure Tulpp2.cekloketClick(Sender: TObject);
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

procedure Tulpp2.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tulpp2.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tulpp2.kodeloket2PropertiesChange(Sender: TObject);
begin
loket2.ItemIndex:=kodeloket2.ItemIndex;
end;

procedure Tulpp2.loket2PropertiesChange(Sender: TObject);
begin
kodeloket2.ItemIndex:=loket2.ItemIndex;
end;

procedure Tulpp2.btnOKClick(Sender: TObject);
var
keterangan:String;
begin



  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);

  if(cekkasir.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.kasir="'+kasir.Text+'"');
      keterangan:='KASIR : '+kasir.Text;
  end
  else
     keterangan:='KASIR : SEMUA KASIR';

  { if(cekloket.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.loketbayar>="'+kodeloket.Text+'" and c.loketbayar<="'+kodeloket2.Text+'"');


      if(kodeloket.Text=kodeloket2.Text)then

          keterangan:=keterangan+'     LOKET : '+kodeloket.Text
      else
         keterangan:=keterangan+'     LOKET : '+kodeloket.Text+' S/D '+kodeloket2.Text;

  end
  else
     keterangan:=keterangan+'     LOKET : SEMUA LOKET';

   if(cekgol.Checked=true)then
  begin
      Qrek.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');
      keterangan:=keterangan+'     GOLONGAN : '+kodegol.Text+'/'+golongan.Text;
  end
  else
    keterangan:=keterangan+'     GOLONGAN : SEMUA GOLONGAN'; }


  


  Qrek.SQL.Add('ORDER BY CAST(c.nosamb AS UNSIGNED),c.periode ASC');
  Qrek.ParamByName('tanggal1').AsDate:=tanggal1.date;
  //Qrek.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qrek.Open;



  //na

  Qna.close;
  Qna.SQL.Clear;
  Qna.SQL.Add(Qna.SQLRefresh.Text);

  if(cekkasir.Checked=true)then
  begin
      Qna.SQL.Add('AND c.kasir="'+kasir.Text+'"');

  end;


   {if(cekloket.Checked=true)then
  begin
       Qna.SQL.Add('AND c.loketbayar>="'+kodeloket.Text+'" and c.loketbayar<="'+kodeloket2.Text+'"');

  end;


   if(cekgol.Checked=true)then
  begin
      Qna.SQL.Add('AND c.kodegol="'+kodegol.Text+'"');    
  end; }



  


  Qna.SQL.Add('ORDER BY c.jenis,c.nomor,c.periode ASC');
  Qna.ParamByName('tanggal1').AsDate:=tanggal1.date;
  //Qna.ParamByName('tanggal2').AsDate:=tanggal2.date;
  Qna.Open;



        {DM.Qttd.close;
        DM.Qttd.SQL.Clear;
        DM.Qttd.SQL.Add(DM.Qttd.SQLRefresh.Text);
        DM.Qttd.ParamByName('kode').AsString:='LPP';
        DM.Qttd.Open; }

  { if tanggal1.date<>tanggal2.date then
   begin

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date) +' - '+FormatDateTime('DD/MM/YYYY',tanggal2.date)   ) ;
          TfrxMemoView(report2.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date) +' - '+FormatDateTime('DD/MM/YYYY',tanggal2.date)   )
   end
   else
   begin}

          TfrxMemoView(report.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date));
          TfrxMemoView(report2.FindObject('tanggal')).Memo.Text:='TANGGAL : '+UpperCase(FormatDateTime('DD/MM/YYYY',tanggal1.date));

  // end;

  TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=keterangan;
  TfrxMemoView(report2.FindObject('keterangan')).Memo.Text:=keterangan;
  TfrxMemoView(report.FindObject('footer')).Memo.Text:=DM.xfooter1+', '+FormatDateTime('DD MMMM YYYY',date);
  TfrxMemoView(report2.FindObject('footer')).Memo.Text:=DM.xfooter1+', '+FormatDateTime('DD MMMM YYYY',date);
  TfrxMemoView(report.FindObject('namauser')).Memo.Text:=umain.user.Caption;
  TfrxMemoView(report2.FindObject('namauser')).Memo.Text:=umain.user.Caption;
  TfrxMemoView(report.FindObject('namauser2')).Memo.Text:=umain.user.Caption;
  TfrxMemoView(report2.FindObject('namauser2')).Memo.Text:=umain.user.Caption;


  report.ShowReport();
  report2.ShowReport();
  
end;
procedure Tulpp2.btnNoClick(Sender: TObject);
begin
close;
end;

end.
