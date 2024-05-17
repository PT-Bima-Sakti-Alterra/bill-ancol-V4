unit drd_posting5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  Menus, frxClass, DB, DBAccess, MyAccess, frxDBSet,
  MemDS, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, RzDTP, cxCurrencyEdit, ActnList,
  cxCheckBox, dxSkinOffice2013White, RzLabel, ExtCtrls,
  RzPanel, frxDesgn, dxmdaset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  Tudrd_posting5 = class(TForm)
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
    kelurahan: TcxComboBox;
    report: TfrxReport;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
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
    cekkolektif: TcxCheckBox;
    kodekolektif: TcxComboBox;
    kolektif: TcxComboBox;
    RzPanel8: TRzPanel;
    frxDesigner1: TfrxDesigner;
    F5: TAction;
    cekcabang: TcxCheckBox;
    kodecabang: TcxComboBox;
    cabang: TcxComboBox;
    kodearea: TcxComboBox;
    area: TcxComboBox;
    cekarea: TcxCheckBox;
    cekflag: TcxCheckBox;
    kodeflag: TcxComboBox;
    flag: TcxComboBox;
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
    procedure F5Execute(Sender: TObject);
    procedure cekcabangClick(Sender: TObject);
    procedure kodeareaPropertiesChange(Sender: TObject);
    procedure areaPropertiesChange(Sender: TObject);
    procedure cekareaClick(Sender: TObject);
    procedure kodeflagPropertiesChange(Sender: TObject);
    procedure flagPropertiesChange(Sender: TObject);
    procedure cekflagClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udrd_posting5: Tudrd_posting5;

implementation

{$R *.dfm}  uses Module,Dateutils, UnitCombo, UnitMain, RzStatus;

procedure Tudrd_posting5.cxButton1Click(Sender: TObject);
var
keterangan:String;
i:integer;
_where:String;
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

    if (cekcabang.Checked=true) and (kodecabang.Text='') then
  begin
      MessageDlg('Cabang masih kosong !!', mtWarning, [mbOK], 0);
      kodecabang.SetFocus;
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

   if (cekflag.Checked=true) and (kodeflag.Text='') then
  begin
      MessageDlg('Flag Pelanggan masih kosong !!', mtWarning, [mbOK], 0);
      kodeflag.SetFocus;
      exit;
  end;

  report.LoadFromFile(GetCurrentDir+'\Report\rekapperbandinganrayon.fr3');


  keterangan:='';
  _where:='';

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('DATA POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drdposting'+FormatDateTime('YYYYMM',IncMonth(periode.date,-1))+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('DATA POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',IncMonth(periode.date,-1)))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROM histori_posting_drd WHERE periode=:periode ORDER BY waktuposting DESC LIMIT 1 ');
  DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('HISTORI POSTING UNTUK BULAN '+UpperCase(FormatDateTime('MMMM YYYY',periode.date))+' BELUM TERSEDIA !! ', mtWarning, [mbOK], 0);
     exit;
  end;

       TfrxMemoView(report.FindObject('waktuposting')).Memo.Text:='Data Posting <'+FormatDateTime('DD MMM YYYY hh:mm:ss',DM.Qcek.fieldbyname('waktuposting').AsDateTime)+'> oleh <'+DM.Qcek.fieldbyname('user').AsString+'>';



        if(cekpemakaian.Checked=true)then
        begin
          _where:=_where+' AND c.pakai '+pemakaian1.Text+' '+pemakaian2.Text;
          keterangan:='Pemakaian '+pemakaian1.Text+' '+pemakaian2.Text+'   '+char(13)+char(13)+keterangan;
        end;

        if(cekkodegol.Checked=true)then
        begin
          _where:=_where+' AND c.kodegol="'+kodegol.Text+'"';
          keterangan:='GolONGAN : '+kodegol.Text+' '+golongan.Text+'   '+char(13)+char(13)+keterangan;
        end;

        if(cekrayon.Checked=true)then
        begin
          _where:=_where+' AND c.koderayon="'+koderayon.Text+'"';
           keterangan:='Rayon : '+koderayon.Text+' '+namarayon.Text+'   '+char(13)+char(13)+keterangan;
        end;

         if(cekwil.Checked=true)then
        begin
          _where:=_where+' AND r.kodewil="'+kodewil.Text+'"';  
           keterangan:='Wilayah : '+wilayah.Text+'   '+char(13)+char(13)+keterangan;
        end;

           if(cekarea.Checked=true)then
          begin
            _where:=_where+' AND r.kodearea="'+kodearea.Text+'"';
            keterangan:='Area : '+kodearea.Text+' '+char(13)+char(13)+keterangan;
          end;


          if(ceksumberair.Checked=true)then
        begin
          _where:=_where+' AND p.sumberair="'+sumberair.Text+'"';   
           keterangan:='Sumber Air : '+sumberair.Text+'   '+char(13)+char(13)+keterangan;
        end;

          if(cekloket.Checked=true)then
        begin
          _where:=_where+' AND r.kodeloket="'+kodeloket.Text+'"';
           keterangan:='Loket Penagihan : '+kodeloket.Text+' '+loket.Text+'   '+char(13)+char(13)+keterangan;
        end;

          if(cekbayar.Checked=true)then
        begin
          _where:=_where+' AND c.flaglunas="'+IntToStr(bayar.ItemIndex)+'"';   
           keterangan:=bayar.Text+'   '+char(13)+char(13)+keterangan;
        end;


        if(cekkolektif.Checked=true)then
        begin
          _where:=_where+' AND c.kodekolektif="'+kodekolektif.Text+'"';
           keterangan:='KOLEKTIF : '+kodekolektif.Text+' '+kolektif.Text+char(13)+char(13)+keterangan; 
        end;

        if(cekflag.Checked=true)then
        begin
          _where:=_where+' AND p.flag="'+kodeflag.Text+'"';
           keterangan:='FLAG : '+kodeflag.Text+' '+flag.Text+char(13)+char(13)+keterangan;
        end;


        Qrek.close;
        Qrek.SQl.Clear;
        Qrek.SQL.Add(Qrek.SQLRefresh.Text);  

        Qrek.SQL.Add('LEFT JOIN ( SELECT c.koderayon,r.namarayon,COUNT(c.nosamb) AS lembar,SUM(c.pakai) AS pakai,SUM(c.`biayapemakaian`) AS biayapemakaian FROM drdposting:periode1 c LEFT JOIN rayon r ON c.koderayon=r.`koderayon` ');
        Qrek.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.`nosamb` WHERE c.flagpublish="1" '+_where+' GROUP BY c.koderayon ) c ON r.`koderayon`=c.koderayon  ');



        Qrek.SQL.Add('LEFT JOIN ( SELECT c.koderayon,r.namarayon,COUNT(c.nosamb) AS lembar,SUM(c.pakai) AS pakai,SUM(c.`biayapemakaian`) AS biayapemakaian FROM drdposting:periode2 c LEFT JOIN rayon r ON c.koderayon=r.`koderayon` ');
        Qrek.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.`nosamb` WHERE c.flagpublish="1" '+_where+' GROUP BY c.koderayon ) b ON r.`koderayon`=b.koderayon    ');


        Qrek.SQL.Add('WHERE r.koderayon IS NOT NULL');

         if(cekrayon.Checked=true)then
        begin
          Qrek.SQL.Add('AND r.koderayon="'+koderayon.Text+'"');
        end;

         if(cekwil.Checked=true)then
        begin
          Qrek.SQL.Add('AND r.kodewil="'+kodewil.Text+'"');

        end;

           if(cekarea.Checked=true)then
          begin
            Qrek.SQL.Add('AND r.kodearea="'+kodearea.Text+'"');
          end;



        Qrek.SQL.add('GROUP BY CONCAT( CAST(r.kodearea AS UNSIGNED),".",CAST(r.koderayon AS UNSIGNED))');
        Qrek.ParamByName('periode1').AsInteger:=StrToInt( FormatDateTime('YYYYMM',periode.date) );
        Qrek.ParamByName('periode2').AsInteger:=StrToInt( FormatDateTime('YYYYMM',IncMonth(periode.date,-1)) );
        Qrek.Open;


         if(Qrek.RecordCount>0)then
          begin


            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='REKAPDRD';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;

            


                 TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
                 TfrxMemoView(report.FindObject('bulan')).Memo.Text:=UpperCase(FormatDateTime('MMMM YYYY',periode.date));
                 TfrxMemoView(report.FindObject('bulan1')).Memo.Text:=UpperCase('BULAN '+FormatDateTime('MMM YYYY',periode.date));
                 TfrxMemoView(report.FindObject('bulan2')).Memo.Text:=UpperCase('BULAN '+FormatDateTime('MMM YYYY',IncMonth(periode.date,-1)));
                 report.ShowReport();

          end
          else
            MessageDlg('Tidak Ada Data !!!', mtInformation, [mbOK], 0);
                 




end;

procedure Tudrd_posting5.FormShow(Sender: TObject);
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
kodearea.Properties.Items:=ucombo.kodearea.Properties.Items;
area.Properties.Items:=ucombo.area.Properties.Items;
kodeflag.Properties.Items:=ucombo.kodeflag.Properties.Items;
flag.Properties.Items:=ucombo.flag.Properties.Items;
end;

procedure Tudrd_posting5.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tudrd_posting5.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure Tudrd_posting5.koderayonPropertiesChange(Sender: TObject);
begin
 namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure Tudrd_posting5.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure Tudrd_posting5.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure Tudrd_posting5.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;



procedure Tudrd_posting5.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure Tudrd_posting5.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure Tudrd_posting5.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Tudrd_posting5.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;



procedure Tudrd_posting5.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure Tudrd_posting5.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

procedure Tudrd_posting5.cekpemakaianClick(Sender: TObject);
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
      pemakaian2.Enabled:=false;
  end;
end;

procedure Tudrd_posting5.cekkodegolClick(Sender: TObject);
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

procedure Tudrd_posting5.cekrayonClick(Sender: TObject);
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

procedure Tudrd_posting5.cekwilClick(Sender: TObject);
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

procedure Tudrd_posting5.cekloketClick(Sender: TObject);
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

procedure Tudrd_posting5.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure Tudrd_posting5.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure Tudrd_posting5.cekbayarClick(Sender: TObject);
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

procedure Tudrd_posting5.cekkolektifClick(Sender: TObject);
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

procedure Tudrd_posting5.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure Tudrd_posting5.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure Tudrd_posting5.F5Execute(Sender: TObject);
begin
  report.LoadFromFile(GetCurrentDir+'\report\rekapperbandinganrayon.fr3');
  report.DesignReport(true);
end;

procedure Tudrd_posting5.cekcabangClick(Sender: TObject);
begin
if(cekcabang.Checked=true)then
  begin
      kodecabang.Enabled:=true;
      cabang.Enabled:=true;
      kodecabang.SetFocus;
  end
  else
  begin
      kodecabang.Enabled:=false;
      cabang.Enabled:=false;
  end;
end;

procedure Tudrd_posting5.kodeareaPropertiesChange(Sender: TObject);
begin
area.ItemIndex:=kodearea.ItemIndex;
end;

procedure Tudrd_posting5.areaPropertiesChange(Sender: TObject);
begin
kodearea.ItemIndex:=area.ItemIndex;
end;

procedure Tudrd_posting5.cekareaClick(Sender: TObject);
begin
if(cekarea.Checked=true)then
  begin
      kodearea.Enabled:=true;
      area.Enabled:=true;
      kodearea.SetFocus;
  end
  else
  begin
      kodearea.Enabled:=false;
      area.Enabled:=false;
  end;
end;

procedure Tudrd_posting5.kodeflagPropertiesChange(Sender: TObject);
begin
flag.ItemIndex:=kodeflag.ItemIndex;
end;

procedure Tudrd_posting5.flagPropertiesChange(Sender: TObject);
begin
kodeflag.ItemIndex:=flag.ItemIndex;
end;

procedure Tudrd_posting5.cekflagClick(Sender: TObject);
begin
if(cekflag.Checked=true)then
  begin
      kodeflag.Enabled:=true;
      flag.Enabled:=true;
      kodeflag.SetFocus;
  end
  else
  begin
      kodeflag.Enabled:=false;
      flag.Enabled:=false;
  end;
end;

end.
