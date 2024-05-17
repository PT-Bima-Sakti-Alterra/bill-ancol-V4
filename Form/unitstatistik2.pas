unit unitstatistik2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxClass,
  ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, ComCtrls, RzDTP,
  StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit;

type
  Tustatistik2 = class(TForm)
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
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    periode: TRzDateTimePicker;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    namarayon: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    Qrek: TMyQuery;
    frxDBDataset3: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    frxReport1: TfrxReport;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ustatistik2: Tustatistik2;

implementation

uses Module, UnitCombo,DAteUtils, UnitMain;

{$R *.dfm}

procedure Tustatistik2.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tustatistik2.cxButton1Click(Sender: TObject);
var
keterangan:String;
begin

    if (cekrayon.Checked=true) and (koderayon.Text='') then
  begin
      MessageDlg('Rayon masih kosong !!', mtWarning, [mbOK], 0);
      koderayon.SetFocus;
      exit;
  end;

  

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('DATA POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;

  keterangan:='';

  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);

  if(cekrayon.Checked=true)then
  begin

    Qrek.SQl.Add('AND c.koderayon=:koderayon');
    Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
    keterangan:='RAYON   :  '+namarayon.Text;

  end;


  Qrek.SQL.Add(' GROUP BY c.kodegol  ASC');
  Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  Qrek.Open;



     DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='STATISTIK';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;


  TfrxMemoView(frxReport1.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
  TfrxMemoView(frxReport1.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
  frxReport1.ShowReport();




end;

procedure Tustatistik2.FormShow(Sender: TObject);
begin
ucombo.isikombo();
koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
namarayon.Properties.Items:=ucombo.namarayon.Properties.Items;

end;

procedure Tustatistik2.koderayonPropertiesChange(Sender: TObject);
begin
namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Tustatistik2.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Tustatistik2.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tustatistik2.cekrayonClick(Sender: TObject);
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

end.
