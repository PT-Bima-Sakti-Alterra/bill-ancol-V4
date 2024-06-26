unit UnitPiutang2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Menus, ActnList, frxClass, frxDBSet, DB, DBAccess,
  MyAccess, MemDS, cxCheckBox, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, ComCtrls, RzDTP, dxCore, cxDateUtils, cxCalendar,
  cxCurrencyEdit;

type
  TFpiutang2 = class(TForm)
    RzPanel1: TRzPanel;
    wilayah: TcxComboBox;
    kodewil: TcxComboBox;
    btnOke: TcxButton;
    btnBatal: TcxButton;
    cekwil: TcxCheckBox;
    cekstatus: TcxCheckBox;
    status: TcxComboBox;
    cek4: TcxCheckBox;
    cekFlag: TcxCheckBox;
    kodeflag: TcxComboBox;
    flag: TcxComboBox;
    Qgol: TMyQuery;
    DSgol: TMyDataSource;
    rek: TfrxDBDataset;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel2: TRzPanel;
    periode1: TRzDateTimePicker;
    periode2: TRzDateTimePicker;
    tanggal: TcxDateEdit;
    cxLabel2: TcxLabel;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    namarayon: TcxComboBox;
    cekgolongan: TcxCheckBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    report: TfrxReport;
    Qexec1: TMyQuery;
    Qexec2: TMyQuery;
    ceklembar: TcxCheckBox;
    lembar1: TcxCurrencyEdit;
    lembar2: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    Action3: TAction;
    Qcek: TMyQuery;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnOkeClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure kodeflagPropertiesChange(Sender: TObject);
    procedure flagPropertiesChange(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure cekFlagClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cekstatusClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekgolonganClick(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure ceklembarClick(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpiutang2: TFpiutang2;

implementation

uses UnitCombo, Module,DateUtils, UnitMain;

{$R *.dfm}

procedure TFpiutang2.FormShow(Sender: TObject);
begin

  ucombo.isikombo;
  kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
  wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
  koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
  namarayon.Properties.Items:=ucombo.namarayon.Properties.Items;
  kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
  golongan.Properties.Items:=ucombo.golongan.Properties.Items;
  kodeflag.Properties.Items:=ucombo.kodeflag.Properties.Items;
  flag.Properties.Items:=ucombo.flag.Properties.Items;
end;

procedure TFpiutang2.btnOkeClick(Sender: TObject);
var
keterangan:String;
i:integer;
tahun_pertanggal:integer;
tahun_terkini:integer;
jumlahtabelbayar:integer;
_tahun:integer;
begin


TRY
  Enabled:=false;
  Umain.Enabled:=false;

  TRY




    TfrxMemoView(report.FindObject('ket2')).Memo.Text:= '{ MENYERTAKAN PELANGGAN HAPUS SECARA AKUTANSI }';

    report.LoadFromFile(GetCurrentDir+'\report\rincianpiutang.fr3');

    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('START TRANSACTION;');
    Dm.Qexec.Execute;


    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('TRUNCATE TABLE dumplaporanpiutang;');
    Dm.Qexec.Execute;


    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add(Qexec1.SQLInsert.Text);


        if(cekwil.Checked=true)then
        begin
            DM.Qexec.SQL.Add('AND r.kodewil=:kodewil');
            DM.Qexec.ParamByName('kodewil').AsString:=kodewil.Text;
            keterangan :='WILAYAH : '+wilayah.Text+'  ';
        end;


          if(cekrayon.Checked=true)then
        begin
            DM.Qexec.SQL.Add('AND c.koderayon=:koderayon');
            DM.Qexec.ParamByName('koderayon').AsString:=koderayon.Text;
            keterangan := keterangan+'RAYON : '+namarayon.Text+'  ';
        end;


          if(cekgolongan.Checked=true)then
        begin
            DM.Qexec.SQL.Add('AND c.kodegol=:kodegol');
            DM.Qexec.ParamByName('kodegol').AsString:=kodegol.Text;
            keterangan := keterangan+'GOLONGAN : '+golongan.Text+'  ';
        end;

          if(cekFlag.Checked=true)then
          begin
            DM.Qexec.SQL.Add('AND p.flag=:flag');
            DM.Qexec.ParamByName('flag').AsString:=kodeflag.Text;
            keterangan:=keterangan+'Flag : '+flag.Text+'  ';
          end;


        if(cekstatus.Checked=true)then
        begin
            DM.Qexec.SQL.Add('AND p.status=:status');
            DM.Qexec.ParamByName('status').AsString:=IntToStr(status.ItemIndex);
            keterangan := keterangan+ 'STATUS : '+status.Text+'  ';
        end;


          if(cek4.Checked=true)then
        begin
            DM.Qexec.SQL.Add('AND p.flag<>"4"');
            TfrxMemoView(report.FindObject('ket2')).Memo.Text:= '{ TIDAK MENYERTAKAN PELANGGAN HAPUS SECARA AKUTANSI )';

        end;

    DM.Qexec.SQL.Add('AND c.periode>=:periode1 AND c.periode<=:periode2');
    DM.Qexec.ParamByName('periode1').AsString:=FormatDateTime('YYYYMM',periode1.Date);
    DM.Qexec.ParamByName('periode2').AsString:=FormatDateTime('YYYYMM',periode2.Date);
    Dm.Qexec.Execute;



      tahun_pertanggal:=YearOf(tanggal.date);
     tahun_terkini:=YearOf(date);
     jumlahtabelbayar:=( tahun_terkini -  tahun_pertanggal ) + 1;

     _tahun:=tahun_pertanggal;



    for i:=1 to jumlahtabelbayar do
    begin


         Qcek.close;
         Qcek.SQL.Clear;
         Qcek.SQL.Add('show tables like "bayar'+IntToStr(_tahun)+'"');
         Qcek.Open;


         if(Qcek.RecordCount>0)then
         begin



                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add(Qexec2.SQLInsert.Text);


                    if(cekwil.Checked=true)then
                    begin
                        DM.Qexec.SQL.Add('AND r.kodewil=:kodewil');
                        DM.Qexec.ParamByName('kodewil').AsString:=kodewil.Text;
           
                    end;


                      if(cekrayon.Checked=true)then
                    begin
                        DM.Qexec.SQL.Add('AND c.koderayon=:koderayon');
                        DM.Qexec.ParamByName('koderayon').AsString:=koderayon.Text;

                    end;


                      if(cekgolongan.Checked=true)then
                    begin
                        DM.Qexec.SQL.Add('AND c.kodegol=:kodegol');
                        DM.Qexec.ParamByName('kodegol').AsString:=kodegol.Text;

                    end;

                      if(cekFlag.Checked=true)then
                      begin
                        DM.Qexec.SQL.Add('AND p.flag=:flag');
                        DM.Qexec.ParamByName('flag').AsString:=kodeflag.Text;

                      end;


                    if(cekstatus.Checked=true)then
                    begin
                        DM.Qexec.SQL.Add('AND p.status=:status');
                        DM.Qexec.ParamByName('status').AsString:=IntToStr(status.ItemIndex);

                    end;


                      if(cek4.Checked=true)then
                    begin
                        DM.Qexec.SQL.Add('AND p.flag<>"4"');


                    end;


         
                DM.Qexec.SQL.Add('AND c.periode>=:periode1 AND c.periode<=:periode2');
                DM.Qexec.ParamByName('periode1').AsString:=FormatDateTime('YYYYMM',periode1.Date);
                DM.Qexec.ParamByName('periode2').AsString:=FormatDateTime('YYYYMM',periode2.Date);
                Dm.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
                DM.Qexec.ParamByName('tahun').AsInteger:=  _tahun;
                Dm.Qexec.Execute;

          end;


            _tahun := _tahun + 1;


    end;



     if(ceklembar.Checked=true)then
   begin

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('TRUNCATE TABLE dumpnosamb;');
     DM.Qexec.SQL.Add('REPLACE INTO dumpnosamb SELECT nosamb FROM dumplaporanpiutang GROUP BY nosamb HAVING COUNT(kode)>=:lembar1 AND COUNT(kode)<=:lembar2;');
     DM.Qexec.ParamByName('lembar1').AsCurrency:=lembar1.Value;
     DM.Qexec.ParamByName('lembar2').AsCurrency:=lembar2.Value;
     Dm.Qexec.Execute;

   end;



    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('COMMIT;');
    Dm.Qexec.Execute;










    Qgol.close;
    Qgol.SQL.Clear;
    Qgol.SQl.Add(Qgol.SQLRefresh.Text);

    if(ceklembar.Checked=true)then
    begin
        Qgol.SQL.Add('WHERE c.nosamb IN (SELECT nosamb FROM dumpnosamb)');
        keterangan:=keterangan+ 'Lembar : '+lembar1.Text+' s/d '+lembar2.Text;
    end;

    Qgol.SQL.Add('ORDER BY c.nosamb,c.periode ASC');
    Qgol.Open;


    keterangan:='Per Tanggal '+FormatDateTime('DD MMMM YYYY',tanggal.date)+char(13)+
       'DRD '+FormatDateTime('MMMM YYYY',periode1.date)+' s/d '+FormatDateTime(
          'MMMM YYYY',periode2.date)+char(13)+keterangan;


            DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='PIUTANG';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header').AsString:= DM.Xheader1; 
            DM.Qpejabat.ParamByName('footer').AsString:= DM.Xfooter1;
            DM.Qpejabat.Open;

            TfrxMemoView(report.FindObject('keterangan')).Memo.Text:=UpperCase(keterangan);
           


        report.ShowReport();



  EXCEPT ON E:Exception do
  begin

    MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                              E.Message, mtError, [MbOk], 0);

    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('ROLLBACk;');
    Dm.Qexec.Execute;
    
   end;
  end;

FINALLY
  Enabled:=true;
  Umain.Enabled:=true;
END;




end;


procedure TFpiutang2.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFpiutang2.kodewilPropertiesChange(Sender: TObject);
begin
  wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFpiutang2.wilayahPropertiesChange(Sender: TObject);
begin
  kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFpiutang2.kodeflagPropertiesChange(Sender: TObject);
begin
  flag.ItemIndex:=kodeflag.ItemIndex;
end;

procedure TFpiutang2.flagPropertiesChange(Sender: TObject);
begin
  kodeflag.ItemIndex:=flag.ItemIndex;
end;

procedure TFpiutang2.cekwilClick(Sender: TObject);
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

procedure TFpiutang2.cekFlagClick(Sender: TObject);
begin
  if(cekFlag.Checked=true)then
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

procedure TFpiutang2.FormCreate(Sender: TObject);
begin
periode2.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
periode1.date:=EncodeDateTime(1989, 1, 5, 1, 2, 3, 4);
tanggal.date:=date;
end;

procedure TFpiutang2.cekstatusClick(Sender: TObject);
begin
  if(cekstatus.Checked=true)then
  begin
       status.Enabled:=true; 
       status.SetFocus;
  end
  else
  begin
       status.Enabled:=false;
  end;
end;

procedure TFpiutang2.cekrayonClick(Sender: TObject);
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

procedure TFpiutang2.cekgolonganClick(Sender: TObject);
begin
 if(cekgolongan.Checked=true)then
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

procedure TFpiutang2.koderayonPropertiesChange(Sender: TObject);
begin
  namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFpiutang2.namarayonPropertiesChange(Sender: TObject);
begin
  koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFpiutang2.kodegolPropertiesChange(Sender: TObject);
begin
  golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TFpiutang2.golonganPropertiesChange(Sender: TObject);
begin
  kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TFpiutang2.ceklembarClick(Sender: TObject);
begin
 if(ceklembar.Checked=true)then
  begin
       lembar1.Enabled:=true;
       lembar2.Enabled:=true;
       lembar1.SetFocus;
  end
  else
  begin
       lembar1.Enabled:=false;
       lembar2.Enabled:=false;
  end;
end;

procedure TFpiutang2.Action3Execute(Sender: TObject);
begin
report.LoadFromFile(GetCurrentDir+'\report\rincianpiutang.fr3');
report.DesignReport(true);
end;

end.
