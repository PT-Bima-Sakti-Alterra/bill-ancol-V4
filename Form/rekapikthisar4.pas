unit rekapikthisar4;

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
  Turekapikthisar4 = class(TForm)
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
    cxLabel2: TcxLabel;
    kodeparaf: TcxComboBox;
    cxLabel3: TcxLabel;
    Qrek2: TMyQuery;
    DSrek2: TMyDataSource;
    rek2: TfrxDBDataset;
    report: TfrxReport;
    RzPanel8: TRzPanel;
    RzPanel1: TRzPanel;
    kodewil: TcxComboBox;
    cekwilayah: TcxCheckBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cxLabel1: TcxLabel;
    periode: TRzDateTimePicker;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    
    procedure FormCreate(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure cekwilayahClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekapikthisar4: Turekapikthisar4;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Turekapikthisar4.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin



{if(kodeparaf.Text='')then
     MessageDlg('Harap Pilih Kode Paraf !! ', mtInformation, [mbOK], 0)

 else
 begin}

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

    if(cekwilayah.Checked=true)then
    begin

      Qrek.SQL.Add('AND c.kodewil=:kodewil');
      Qrek.ParamByName('kodewil').AsString:=kodewil.Text;
      keterangan:='WILAYAH '+wilayah.Text;

    end;

    if(cekloket.Checked=true)then
    begin

      Qrek.SQL.Add('AND c.kodeloket=:kodeloket');
      Qrek.ParamByName('kodeloket').AsString:=kodeloket.Text;
      keterangan:='LOKET PENAGIHAN : '+loket.Text;

    end;
    
    Qrek2.SQL.Add('order by C.koderayon asc');
    Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
    Qrek.Open;



    Qrek2.close;
    Qrek2.SQL.clear;
    Qrek2.SQL.Add(Qrek2.SQLRefresh.Text);

        if(cekwilayah.Checked=true)then
        begin
          Qrek2.SQL.Add(' AND c.kodewil=:kodewil');
          Qrek2.ParamByName('kodewil').AsString:=kodewil.Text;  
        end;

        if(cekloket.Checked=true)then
        begin

          Qrek2.SQL.Add('AND c.kodeloket=:kodeloket');
          Qrek2.ParamByName('kodeloket').AsString:=kodeloket.Text;
        end;

    Qrek2.SQL.Add('order by c.wilayah asc');    
    Qrek2.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
    Qrek2.Open;



   if(Qrek.RecordCount>0)then
   begin

            if(Qrek2.RecordCount=0)then
            begin    
              report.Pages[2].Visible:=false;
            end;

           TfrxMemoView(report.FindObject('keterangan')).Memo.Text:= keterangan;
           TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);

           TfrxMemoView(report.FindObject('keterangan2')).Memo.Text:= keterangan;
           TfrxMemoView(report.FindObject('bulan2')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);


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

         
         report.ShowReport();

   end
   else
     MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
 end
      else
        MessageDlg('Rekening Belum Tersedia !! ', mtInformation, [mbOK], 0);
 //end;

end;

procedure Turekapikthisar4.FormShow(Sender: TObject);
begin
ucombo.isikombo();

kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kodeparaf.Properties.Items:=ucombo.kodeparaf.Properties.Items;
kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
loket.Properties.Items:=ucombo.loket.Properties.Items;

kodeparaf.Text:='PUSAT';
end;

procedure Turekapikthisar4.cxButton2Click(Sender: TObject);
begin
close;
end;


procedure Turekapikthisar4.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Turekapikthisar4.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Turekapikthisar4.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure Turekapikthisar4.cekwilayahClick(Sender: TObject);
begin
  if(cekwilayah.Checked=true)then
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

procedure Turekapikthisar4.cekloketClick(Sender: TObject);
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

procedure Turekapikthisar4.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Turekapikthisar4.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

end.
