unit rekapgolongan5;

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
  Turekapgolongan5 = class(TForm)
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
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    report2: TfrxReport;
    report: TfrxReport;
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekapgolongan5: Turekapgolongan5;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Turekapgolongan5.cxButton1Click(Sender: TObject);
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


            Qrek.Close;
            Qrek.SQL.Clear;
            Qrek.SQL.Add(Qrek.SQLRefresh.Text);
            Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
            Qrek.Open;





   if(Qrek.RecordCount>0)then
   begin    


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

           TfrxMemoView(report.FindObject('bulan')).Memo.Text:= FormatDateTime('MMMM YYYY',periode.date);





            report.ShowReport();

   end
   else
     MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
 
end;


end;

procedure Turekapgolongan5.FormShow(Sender: TObject);
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

kodeparaf.ItemIndex:=0;
end;

procedure Turekapgolongan5.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Turekapgolongan5.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Turekapgolongan5.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Turekapgolongan5.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Turekapgolongan5.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Turekapgolongan5.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Turekapgolongan5.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Turekapgolongan5.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Turekapgolongan5.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Turekapgolongan5.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Turekapgolongan5.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Turekapgolongan5.cekpemakaianClick(Sender: TObject);
begin
  if(cekpemakaian.Checked=true)then
  begin
      pemakaian.Enabled:=true;
  end
  else
  begin
      pemakaian.Enabled:=false;
  end;
end;

procedure Turekapgolongan5.cekkodegolClick(Sender: TObject);
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

procedure Turekapgolongan5.cekrayonClick(Sender: TObject);
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

procedure Turekapgolongan5.cekwilClick(Sender: TObject);
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
procedure Turekapgolongan5.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
