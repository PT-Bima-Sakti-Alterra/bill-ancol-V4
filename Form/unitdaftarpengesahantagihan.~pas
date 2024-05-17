unit unitdaftarpengesahantagihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, StdCtrls, cxButtons, ExtCtrls,
  RzPanel, DB, frxClass, MemDS, DBAccess, MyAccess, frxDBSet, cxControls,
  cxContainer, cxEdit, cxLabel, ComCtrls, RzDTP, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCheckBox, ActnList, RzLabel;

type
  Tudaftarpengesahantagihan = class(TForm)
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    Qrek: TMyQuery;
    report: TfrxReport;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    Qreknosamb: TStringField;
    Qreknorekening: TStringField;
    Qrekstanlalu: TFloatField;
    Qrekstanskrg: TFloatField;
    Qrekpakai: TFloatField;
    Qrekkodegol: TStringField;
    Qrekbiayapemakaian: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekrekair: TFloatField;
    Qrektotalna: TFloatField;
    Qrektotal: TFloatField;
    Qgol: TMyQuery;
    gol: TfrxDBDataset;
    DSgol: TMyDataSource;
    Qgolkodegol: TStringField;
    Qgolgolongan: TStringField;
    Qgolaktif: TStringField;
    Qgolkategori: TStringField;
    Qgolt1: TFloatField;
    Qgolt2: TFloatField;
    Qgolt3: TFloatField;
    Qgolt4: TFloatField;
    RzPanel1: TRzPanel;
    frxReport1: TfrxReport;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    kodekolektif: TcxComboBox;
    kolektif: TcxComboBox;
    cxLabel2: TcxLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    alamat: TcxComboBox;
    jabpj: TcxComboBox;
    namapj: TcxComboBox;
    ketpj: TcxComboBox;
    ket: TcxComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Qterbilang: TMyQuery;
    ket2: TcxTextEdit;
    alamat2: TcxTextEdit;
    jabpj2: TcxTextEdit;
    ketpj2: TcxTextEdit;
    namapj2: TcxTextEdit;
    cxLabel8: TcxLabel;
    kodesatker: TcxComboBox;
    cxLabel9: TcxLabel;
    jabpj3: TcxTextEdit;
    cxLabel10: TcxLabel;
    namapj3: TcxTextEdit;
    cxLabel11: TcxLabel;
    ketpj3: TcxTextEdit;
    jabpj4: TcxComboBox;
    namapj4: TcxComboBox;
    ketpj4: TcxComboBox;
    cxLabel12: TcxLabel;
    fungsipj2: TcxTextEdit;
    cxLabel13: TcxLabel;
    fungsipj3: TcxTextEdit;
    fungsipj: TcxComboBox;
    fungsipj4: TcxComboBox;
    RzLabel1: TRzLabel;
    RzPanel2: TRzPanel;
    info: TRzPanel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udaftarpengesahantagihan: Tudaftarpengesahantagihan;

implementation

{$R *.dfm} uses Module, UnitCombo,DAteUtils, UnitMain;

procedure Tudaftarpengesahantagihan.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudaftarpengesahantagihan.cxButton1Click(Sender: TObject);
begin


   if(kodesatker.Text='')then
  begin
      MessageDlg('Kode Satker masih kosong !!', mtWarning, [MbOk], 0);
      kodesatker.SetFocus;
      exit;
  end;

   if(kodekolektif.Text='')then
  begin
      MessageDlg('Kolektif masih kosong !!', mtWarning, [MbOk], 0);
      kodekolektif.SetFocus;
      exit;
  end;


  Qrek.close;
  Qrek.SQl.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qrek.ParamByName('periodeinput').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qrek.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
  Qrek.Open;

  Qterbilang.close;
  Qterbilang.SQl.Clear;
  Qterbilang.SQL.Add(Qterbilang.SQLRefresh.Text);
  Qterbilang.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qterbilang.ParamByName('periodeinput').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qterbilang.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
  Qterbilang.Open;






  Qgol.close;
  Qgol.SQl.Clear;
  Qgol.SQL.Add('SELECT * FROM golongan WHERE kodegol IN (SELECT c.kodegol FROM piutang c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.flaglunas="0" AND c.flagangsur="0" AND c.periode=:periode AND c.kodekolektif=:kodekolektif GROUP BY c.kodegol ASC )');
  Qgol.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  Qgol.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
  Qgol.Open;


  DM.Qpejabat.close;
  DM.Qpejabat.SQL.Clear;
  DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
  DM.Qpejabat.ParamByName('kode').AsString:=kodesatker.Text;
  DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:='0';//DM.parafuserdilaporan;
  DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
  DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
  DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
  DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
  DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
  DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
  DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
  DM.Qpejabat.Open;

  TfrxMemoView(frxReport1.FindObject('ket1')).Memo.Text:=fungsipj2.Text;
  TfrxMemoView(frxReport1.FindObject('ket2')).Memo.Text:=jabpj2.Text;
  TfrxMemoView(frxReport1.FindObject('ket3')).Memo.Text:=namapj2.Text;
  TfrxMemoView(frxReport1.FindObject('ket4')).Memo.Text:=ketpj2.Text;

  TfrxMemoView(frxReport1.FindObject('ket5')).Memo.Text:=fungsipj3.Text;
  TfrxMemoView(frxReport1.FindObject('ket6')).Memo.Text:=jabpj3.Text;
  TfrxMemoView(frxReport1.FindObject('ket7')).Memo.Text:=namapj3.Text;
  TfrxMemoView(frxReport1.FindObject('ket8')).Memo.Text:=ketpj3.Text;


  TfrxMemoView(frxReport1.FindObject('terbilang')).Memo.Text:= DM.EjaAngkasen(FormatCurr('##0.#0',Qterbilang.fieldbyname('total').AsCurrency));
  TfrxMemoView(frxReport1.FindObject('kodesatker')).Memo.Text:=kodesatker.Text;


  TfrxMemoView(frxReport1.FindObject('kolektif')).Memo.Text:=ket2.Text;
  TfrxMemoView(frxReport1.FindObject('alamat')).Memo.Text:=alamat2.Text;
  TfrxMemoView(frxReport1.FindObject('bulan')).Memo.Text:=FormatDateTime('MMMM YYYY',periode.date);

  frxReport1.ShowReport();

end;

procedure Tudaftarpengesahantagihan.kodekolektifPropertiesChange(
  Sender: TObject);
begin

  kolektif.ItemIndex:=kodekolektif.ItemIndex;
  alamat.ItemIndex:=kodekolektif.ItemIndex;
  jabpj.ItemIndex:=kodekolektif.ItemIndex;
  namapj.ItemIndex:=kodekolektif.ItemIndex;
  ketpj.ItemIndex:=kodekolektif.ItemIndex;
  ket.ItemIndex:=kodekolektif.ItemIndex;


  jabpj4.ItemIndex:=kodekolektif.ItemIndex;
  namapj4.ItemIndex:=kodekolektif.ItemIndex;
  ketpj4.ItemIndex:=kodekolektif.ItemIndex;
  fungsipj.ItemIndex:=kodekolektif.ItemIndex;
  fungsipj4.ItemIndex:=kodekolektif.ItemIndex;

  ket2.Text:=ket.Text;
  alamat2.Text:=alamat.Text;
  jabpj2.Text:=jabpj.Text;
  namapj2.Text:=namapj.Text;
  ketpj2.Text:=ketpj.Text;
  fungsipj2.Text:=fungsipj.Text;

  jabpj3.Text:=jabpj4.Text;
  namapj3.Text:=namapj4.Text;
  ketpj3.Text:=ketpj4.Text;
  fungsipj3.Text:=fungsipj4.Text;




end;

procedure Tudaftarpengesahantagihan.kolektifPropertiesChange(
  Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure Tudaftarpengesahantagihan.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tudaftarpengesahantagihan.FormShow(Sender: TObject);
begin
         DM.Qcek.Close;
         DM.Qcek.SQL.Clear;
         DM.Qcek.SQL.Add('SELECT * FROM kolektif ORDER BY CAST(kodekolektif AS UNSIGNED) ASC ');
         DM.Qcek.Open;

          kodekolektif.Properties.Items.Clear;
          kolektif.Properties.Items.Clear;
          alamat.Properties.Items.Clear;
          jabpj.Properties.Items.Clear;
          namapj.Properties.Items.Clear;
          ketpj.Properties.Items.Clear;
          ket.Properties.Items.Clear;
          fungsipj.Properties.Items.Clear;

          jabpj4.Properties.Items.Clear;
          namapj4.Properties.Items.Clear;
          ketpj4.Properties.Items.Clear;
          fungsipj4.Properties.Items.Clear;

          Application.ProcessMessages;
         while not DM.Qcek.Eof do
         begin
                  kodekolektif.Properties.Items.Add(DM.Qcek.FieldByName('kodekolektif').ASstring);
                  kolektif.Properties.Items.Add(DM.Qcek.FieldByName('kolektif').ASstring);
                  alamat.Properties.Items.Add(DM.Qcek.FieldByName('alamat').ASstring);
                  jabpj.Properties.Items.Add(DM.Qcek.FieldByName('jabpj').ASstring);
                  namapj.Properties.Items.Add(DM.Qcek.FieldByName('namapj').ASstring);
                  ketpj.Properties.Items.Add(DM.Qcek.FieldByName('ketpj').ASstring);
                  fungsipj.Properties.Items.Add(DM.Qcek.FieldByName('fungsipj').ASstring);

                  jabpj4.Properties.Items.Add(DM.Qcek.FieldByName('jabpj2').ASstring);
                  namapj4.Properties.Items.Add(DM.Qcek.FieldByName('namapj2').ASstring);
                  ketpj4.Properties.Items.Add(DM.Qcek.FieldByName('ketpj2').ASstring);
                  fungsipj4.Properties.Items.Add(DM.Qcek.FieldByName('fungsipj2').ASstring);

                  ket.Properties.Items.Add(DM.Qcek.FieldByName('ket').ASstring);
                  Application.ProcessMessages;
                  DM.Qcek.Next;
         end;
end;

end.
