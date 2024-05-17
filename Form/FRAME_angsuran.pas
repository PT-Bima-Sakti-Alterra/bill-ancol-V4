unit FRAME_angsuran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, RzSplit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinOffice2013White, StdCtrls, cxButtons, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, MyAccess, MemDS, cxImageComboBox,
  cxCurrencyEdit, cxCalendar, cxContainer, cxTextEdit, cxCheckBox, ActnList,
  cxMaskEdit, cxDropDownEdit;

type
  TFRangsuran = class(TFrame)
    RzPanel1: TRzPanel;
    RzSizePanel1: TRzSizePanel;
    RzPanel2: TRzPanel;
    RzSizePanel2: TRzSizePanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    print: TcxButton;
    koreksi: TcxButton;
    refresh: TcxButton;
    export: TcxButton;
    hapus: TcxButton;
    gtvangsuran: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qangsuran: TMyQuery;
    DSangsuran: TMyDataSource;
    gtvangsurankode: TcxGridDBColumn;
    gtvangsurannama: TcxGridDBColumn;
    gtvangsuranalamat: TcxGridDBColumn;
    gtvangsurankeperluan: TcxGridDBColumn;
    gtvangsuranwaktudaftar: TcxGridDBColumn;
    gtvangsuranjumlahtermin: TcxGridDBColumn;
    gtvangsuranjumlahangsuranpokok: TcxGridDBColumn;
    gtvangsuranjumlahangsuranbunga: TcxGridDBColumn;
    gtvangsuranjumlah: TcxGridDBColumn;
    gtvangsuranverifikasi: TcxGridDBColumn;
    tampilkan: TcxButton;
    RzPanel22: TRzPanel;
    gtvangsuranColumn1: TcxGridDBColumn;
    gtvangsuranColumn2: TcxGridDBColumn;
    gtvangsuranColumn3: TcxGridDBColumn;
    gtvangsuranColumn4: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ceknomor: TcxCheckBox;
    nomor: TcxTextEdit;
    ceknama: TcxCheckBox;
    nama: TcxTextEdit;
    cektelp: TcxCheckBox;
    telp: TcxTextEdit;
    cekhp: TcxCheckBox;
    hp: TcxTextEdit;
    verifikasi: TcxButton;
    unverifikasi: TcxButton;
    gtvangsuranColumn5: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    ambah1: TMenuItem;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    Verifikasi1: TMenuItem;
    UnVerifikasi1: TMenuItem;
    UploadTagihan1: TMenuItem;
    tambah: TcxButton;
    gtvangsuranColumn6: TcxGridDBColumn;
    gtvangsuranColumn7: TcxGridDBColumn;
    gtvangsuranColumn8: TcxGridDBColumn;
    gtvangsuranColumn9: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    RzPanel6: TRzPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DSdet: TMyDataSource;
    Qdet: TMyQuery;
    cxGridDBTableView1termin: TcxGridDBColumn;
    cxGridDBTableView1jumlah: TcxGridDBColumn;
    cxGridDBTableView1flaglunas: TcxGridDBColumn;
    cxGridDBTableView1flagupload: TcxGridDBColumn;
    keperluan: TcxComboBox;
    cekjenis: TcxCheckBox;
    Qhost: TMyQuery;
    gtvangsuranColumn10: TcxGridDBColumn;
    gtvangsuranColumn11: TcxGridDBColumn;
    pel: TcxComboBox;
    norab: TcxComboBox;
    RzPanel7: TRzPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    gtvangsuranColumn12: TcxGridDBColumn;
    proses: TcxButton;
    gtvangsuranlunas: TcxGridDBColumn;
    DiBebankanKepada1: TMenuItem;
    gtvangsuranColumn13: TcxGridDBColumn;
    gtvangsuranColumn14: TcxGridDBColumn;
    Qexec: TMyQuery;
    cekdibebankan: TcxCheckBox;
    dibebankankepada: TcxTextEdit;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Detail1: TMenuItem;
    RzPanel10: TRzPanel;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    procedure tampilkanClick(Sender: TObject);
    procedure verifikasiClick(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure unverifikasiClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure gtvangsuranCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tambahClick(Sender: TObject);
    procedure gtvangsuranFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cekjenisClick(Sender: TObject);
    procedure UploadTagihan1Click(Sender: TObject);
    procedure prosesClick(Sender: TObject);
    procedure gtvangsuranCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ceknomorClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cektelpClick(Sender: TObject);
    procedure cekhpClick(Sender: TObject);
    procedure cekdibebankanClick(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
    procedure isipel();
    procedure isinorab();
    procedure tambahangsuranair();
    procedure koreksiangsuranair();
    procedure tambahangsuranrab();
    procedure koreksiangsuranrab();
    procedure tambahangsuranlain();
    procedure koreksiangsuranlain();
    procedure verifikasitunggakan();
    procedure verifikasinonair();
    procedure verifikasisambbaru();
  end;

implementation

{$R *.dfm}    uses Module, UnitTpelanggan, unitangsuran, unitjenisangsuran,
  UnitMain, unitloading, UnitCombo, unitangsuran2, unitangsuran3, RzStatus,
  unitdetailangsuran;

procedure TFRangsuran.akses();
begin     
   Ucombo.isikombo;
   keperluan.Properties.Items:=ucombo.jenisangsuran.Properties.Items;
end;

procedure TFRangsuran.verifikasitunggakan();
var
i,x,no,j,z:integer;
sisa:Currency;
begin


     DM.Qcek.close;
     DM.Qcek.SQL.Clear;
     DM.Qcek.SQL.Add('select SUM(administrasi)as adm,SUM(pemeliharaan) as pem, SUm(retribusi) as ret,SUm(denda) as denda FROm detailrekangsur WHERE noangsuran=:noangsuran');
     DM.Qcek.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
     DM.Qcek.Open;


      z:=0;

       for x:=0 to Qangsuran.fieldbyname('jumlahtermin').AsInteger do
       begin


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('insert into detailangsuran (noangsuran,nomor,termin,jumlah,ketjenis,dibebankankepada,tglmulaitagih,biayapemakaian,administrasi,pemeliharaan,retribusi,dendatunggakan,lainnya) ');
       DM.Qexec.SQL.Add('VALUES                      (:noangsuran,:nomor,:termin,:biayapemakaian+:administrasi+:pemeliharaan+:retribusi+:dendatunggakan+:lainnya,:ketjenis,:dibebankankepada,:tglmulaitagih,');
       DM.Qexec.SQL.Add(':biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:dendatunggakan,:lainnya)');
       DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
       DM.Qexec.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
       DM.Qexec.ParamByName('termin').AsInteger:=x;


            if(x=0)then
            begin

                    sisa:=Qangsuran.fieldbyname('jumlahuangmuka').AsCurrency-
                          DM.Qcek.fieldbyname('adm').AsCurrency -
                          DM.Qcek.fieldbyname('pem').AsCurrency -
                          DM.Qcek.fieldbyname('ret').AsCurrency -
                          DM.Qcek.fieldbyname('denda').AsCurrency;



                   if sisa>0  then
                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=sisa
                   else
                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=0;

                    DM.Qexec.ParamByName('administrasi').AsCurrency:= DM.Qcek.fieldbyname('adm').AsCurrency;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= DM.Qcek.fieldbyname('pem').AsCurrency;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= DM.Qcek.fieldbyname('ret').AsCurrency;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= DM.Qcek.fieldbyname('denda').AsCurrency;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=0;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Uang Muka / '+FormatCurr(',0.;(,0.)',Qangsuran.fieldbyname('jumlahuangmuka').AsCurrency)+' / '+Qangsuran.fieldbyname('jumlahtermin').AsString+' kali angsur...';

            end
            else
            begin

                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qangsuran.fieldbyname('jumlah').AsCurrency/Qangsuran.fieldbyname('jumlahtermin').AsInteger;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=0;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Angsuran ke '+IntToStr(x);

            end;

              DM.Qexec.ParamByName('dibebankankepada').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
              DM.Qexec.ParamByName('tglmulaitagih').AsDate:=IncMonth(Qangsuran.fieldbyname('tglmulaitagih').AsDateTime,+z);
              Dm.Qexec.Execute;


              z:=z+1;
     end;




      DM.Qcek.close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select * FROm detailrekangsur WHERE noangsuran=:noangsuran ORDER BY id ASC');
      DM.Qcek.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
      DM.Qcek.Open;

      DM.Qcek.First;

      for j:=1 to DM.Qcek.RecordCount do
      begin

          Qhost.close;
          Qhost.SQL.Clear;
          Qhost.SQL.Add('UPDATE drd SET flagangsur="1",noangsuran=:noangsuran,waktuupdate=NOW(),loketupdate="bsbs3" WHERE kode=:kode');
          Qhost.ParamByName('kode').AsString:= DM.Qcek.fieldbyname('kode').AsString;
          Qhost.ParamByName('noangsuran').AsString:= DM.Qcek.fieldbyname('noangsuran').AsString;
          Qhost.Execute;

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE drd'+DM.Qcek.fieldbyname('periode').AsString+' SET flagangsur="1",noangsuran=:noangsuran WHERE nosamb=:nosamb');
          DM.Qexec.ParamByName('nosamb').AsString:= DM.Qcek.fieldbyname('nomor').AsString;
          DM.Qexec.ParamByName('noangsuran').AsString:= DM.Qcek.fieldbyname('noangsuran').AsString;
          DM.Qexec.Execute;

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE piutang SET flagangsur="1",noangsuran=:noangsuran WHERE kode=:kode');
          DM.Qexec.ParamByName('kode').AsString:= DM.Qcek.fieldbyname('kode').AsString;
          DM.Qexec.ParamByName('noangsuran').AsString:= DM.Qcek.fieldbyname('noangsuran').AsString;
          DM.Qexec.Execute;

        DM.Qcek.Next;

      end;




end;



procedure TFRangsuran.verifikasinonair();
var
i,x,no,j:integer;
jumlah,uangmuka:currency;

begin

         jumlah:=Qangsuran.fieldbyname('jumlah').AsCurrency/Qangsuran.fieldbyname('jumlahtermin').AsCurrency;
         uangmuka:=Qangsuran.fieldbyname('jumlahuangmuka').AsCurrency;


        if(uangmuka>0)then
          x:=0
        else
          x:=1;


          j:=0;



       for i:=x to Qangsuran.fieldbyname('jumlahtermin').AsInteger do
       begin


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('insert into detailangsuran (noangsuran,nomor,termin,jumlah,ketjenis,dibebankankepada,tglmulaitagih,biayapemakaian,administrasi,pemeliharaan,retribusi,dendatunggakan,lainnya) ');
       DM.Qexec.SQL.Add('VALUES                      (:noangsuran,:nomor,:termin,:biayapemakaian+:administrasi+:pemeliharaan+:retribusi+:dendatunggakan+:lainnya,:ketjenis,:dibebankankepada,:tglmulaitagih,');
       DM.Qexec.SQL.Add(':biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:dendatunggakan,:lainnya)');
       DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
       DM.Qexec.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
       DM.Qexec.ParamByName('termin').AsInteger:=i;


            if(i=0)then
            begin


                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=0;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=uangmuka;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Uang Muka / '+FormatCurr(',0.;(,0.)',uangmuka)+' / '+Qangsuran.fieldbyname('jumlahtermin').AsString+' kali angsur...';

            end
            else
            begin

                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=0;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=jumlah;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Angsuran ke '+IntToStr(i);

            end;

              DM.Qexec.ParamByName('dibebankankepada').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
              DM.Qexec.ParamByName('tglmulaitagih').AsDate:=IncMonth(Qangsuran.fieldbyname('tglmulaitagih').AsDateTime,+j);
              Dm.Qexec.Execute;

              j:=j+1;

     end;

end;


procedure TFRangsuran.verifikasisambbaru();
var
i,x,no,j:integer;
jumlah,uangmuka:currency;

begin

         
         uangmuka:=Qangsuran.fieldbyname('jumlahuangmuka').AsCurrency;


        if(uangmuka>0)then
          x:=0
        else
          x:=1;


          j:=0;



       for i:=x to Qangsuran.fieldbyname('jumlahtermin').AsInteger do
       begin


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('insert into detailangsuran (noangsuran,nomor,termin,jumlah,ketjenis,dibebankankepada,tglmulaitagih,biayapemakaian,administrasi,pemeliharaan,retribusi,dendatunggakan,lainnya) ');
       DM.Qexec.SQL.Add('VALUES                      (:noangsuran,:nomor,:termin,:biayapemakaian+:administrasi+:pemeliharaan+:retribusi+:dendatunggakan+:lainnya,:ketjenis,:dibebankankepada,:tglmulaitagih,');
       DM.Qexec.SQL.Add(':biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:dendatunggakan,:lainnya)');
       DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
       DM.Qexec.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
       DM.Qexec.ParamByName('termin').AsInteger:=i;


            if(i=0)then
            begin


                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=0;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=uangmuka;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Uang Muka / '+FormatCurr(',0.;(,0.)',uangmuka)+' / '+Qangsuran.fieldbyname('jumlahtermin').AsString+' kali angsur...';

            end
            else
            begin

                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=0;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= 0;
                    DM.Qexec.ParamByName('lainnya').AsCurrency:=jumlah;
                    DM.Qexec.ParamByName('ketjenis').AsString:='Angsuran ke '+IntToStr(i);

            end;

              DM.Qexec.ParamByName('dibebankankepada').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
              DM.Qexec.ParamByName('tglmulaitagih').AsDate:=IncMonth(Qangsuran.fieldbyname('tglmulaitagih').AsDateTime,+j);
              Dm.Qexec.Execute;

              j:=j+1;

     end;

end;

procedure TFRangsuran.tampilkanClick(Sender: TObject);
begin
  Qangsuran.close;
  Qangsuran.SQL.Clear;
  Qangsuran.SQL.Add(Qangsuran.SQLLock.Text);


  if(cekjenis.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.keperluan="'+keperluan.Text+'"');
  end;

  if(ceknomor.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.noangsuran="'+nomor.Text+'"');
  end;


   if(ceknama.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.nama LIKE CONCAT("%","'+nama.Text+'","%")');
  end;


    if(cektelp.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.notelp="'+telp.Text+'"');
  end;

     if(cekhp.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.nohp="'+hp.Text+'"');
  end;

    if(cekdibebankan.Checked=true)then
  begin
      Qangsuran.SQL.Add('AND c.dibebankankepada="'+dibebankankepada.Text+'"');
  end;


     if(ceklainnya.Checked=true)then
  begin
  
        if(lainnya.ItemIndex=0)then
        begin
            Qangsuran.SQL.Add('AND c.flaglunas="0"');
        end;


         if(lainnya.ItemIndex=1)then
        begin
            Qangsuran.SQL.Add('AND c.flaglunas="1"');
        end;
        
  end;


  Qangsuran.SQL.Add('ORDER BY id DESC');
  Qangsuran.Open;
end;

procedure TFRangsuran.verifikasiClick(Sender: TObject);
begin


  if(Qangsuran.RecordCount>0)then
  begin

     if Qangsuran.fieldbyname('verifikasi').AsString='1' then
     begin
       MessageDlg('Data sudah diverifikasi !', mtInformation, [mbOK], 0);
       exit;
     end;

     if MessageDlg('Verifikasi angsuran yang dipilih ?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin

          TRY
            TRY

            Enabled:=false;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('START TRANSACTION');
            DM.Qexec.Execute;


              if(Qangsuran.fieldbyname('keperluan').AsString='TUNGGAKAN')then
                verifikasitunggakan
              else
                verifikasinonair;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE pelanggan set adaangsuran="1" WHERE nosamb=:nosamb');
              Dm.Qexec.ParamByName('nosamb').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE daftarangsuran SET verifikasi="1",waktuverifikasi=NOW(),userverifikasi="'+umain.user.Caption+'" WHERE noangsuran=:noangsuran');
              Dm.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
              DM.Qexec.Execute;




              Qangsuran.SQLRefresh.Clear;
              Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
              Qangsuran.RefreshRecord;

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              Enabled:=true;

          EXCEPT ON E:Exception DO
          BEGIN

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('ROLLBACK');
             DM.Qexec.Execute;

             MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);

          END;
          END;
         FINALLY
             Enabled:=true;
         END;
      end
      else
        exit;
  end;
end;

procedure TFRangsuran.koreksiClick(Sender: TObject);
begin
 if(Qangsuran.RecordCount>0)then
  begin

     if Qangsuran.fieldbyname('verifikasi').AsString='1' then
     begin
          MessageDlg('Data yang sudah diverifikasi tidak dapat koreksi !', mtWarning, [mbOK], 0);
          exit;
     end;


     if MessageDlg('Jika Anda melakukan koreksi , Anda harus memilih ulang tagihan yang akan di angsuran..'+char(13)+
     'Yakin melakukan koreksi ??',mtConfirmation, [mbYes, mbNo], 0) = mryes then
     begin

            if(Qangsuran.fieldbyname('keperluan').AsString='TUNGGAKAN')then
            begin
                koreksiangsuranair;
            end
            else if(Qangsuran.fieldbyname('keperluan').AsString='SAMB.BARU')then
            begin
              koreksiangsuranrab;
            end
            else
            begin
              koreksiangsuranlain;
            end

     end
     else
      exit;


 end;
end;

procedure TFRangsuran.unverifikasiClick(Sender: TObject);
begin
  if(Qangsuran.RecordCount>0)then
  begin

    if Qangsuran.fieldbyname('flagupload').AsString='1' then
     begin
          MessageDlg('Data sudah di Upload !', mtWarning, [mbOK], 0);
          exit;
     end;

    if Qangsuran.fieldbyname('verifikasi').AsString='0' then
     begin
          MessageDlg('Data belum di Verifikasi !', mtWarning, [mbOK], 0);
          exit;
     end;


     if MessageDlg('Un-Verifikasi angsuran yang dipilih  ?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin

          TRY
            TRY

            Enabled:=false;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('START TRANSACTION');
            DM.Qexec.Execute;


            Dm.Qcek.close;
            Dm.Qcek.SQL.Clear;
            DM.Qcek.SQL.Add('select * FROM daftarangsuran WHERE dibebankankepada=:nosamb AND flaglunas="0"');
            DM.Qcek.ParamByName('nosamb').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
            DM.Qcek.Open;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('DELETE FROM detailangsuran WHERE nomor=:nomor');
            DM.Qexec.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
            DM.Qexec.Execute;



            if (DM.Qcek.RecordCount<2)then
            begin

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('UPDATE pelanggan set adaangsuran="0" WHERE nosamb=:nosamb');
                Dm.Qexec.ParamByName('nosamb').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
                DM.Qexec.Execute;

            end;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('UPDATE daftarangsuran SET verifikasi="0",waktuverifikasi=null,userverifikasi=null WHERE id=:id');
            Dm.Qexec.ParamByName('id').AsInteger:=Qangsuran.fieldbyname('id').AsInteger;
            DM.Qexec.Execute;


            Qangsuran.SQLRefresh.Clear;
            Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
            Qangsuran.RefreshRecord;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('COMMIT');
            DM.Qexec.Execute;



            Enabled:=true;

          EXCEPT ON E:Exception DO
          BEGIN

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
          END;
          END;
         FINALLY
             Enabled:=true;
         END;
     end
     else
      exit;
      
  end;

end;

procedure TFRangsuran.hapusClick(Sender: TObject);
begin
 if(Qangsuran.RecordCount>0)then
  begin

    if Qangsuran.fieldbyname('flagupload').AsString='1' then
     begin
          MessageDlg('Data sudah di Upload !', mtWarning, [mbOK], 0);
          exit;
     end;

    if Qangsuran.fieldbyname('verifikasi').AsString='1' then
     begin
          MessageDlg('Data sudah di Verifikasi !', mtWarning, [mbOK], 0);
          exit;
     end;


     if MessageDlg('Hapus data angsuran yang dipilih ?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin

          TRY
            TRY

            Enabled:=false;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('START TRANSACTION');
            DM.Qexec.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('DELETE FROM daftarangsuran WHERE noangsuran=:noangsuran');
            DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
            DM.Qexec.Execute;


            if(Qangsuran.FieldByName('keperluan').AsString='ANGSURAN TAGIHAN AIR')then
            begin
              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('DELETE FROM detailrekangsur WHERE noangsuran=:noangsuran');
              DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
              DM.Qexec.Execute;
            end;


            Qangsuran.Refresh;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('COMMIT');
            DM.Qexec.Execute;


            Enabled:=true;

          EXCEPT ON E:Exception DO
          BEGIN

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute; 

            MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
          END;
          END;
         FINALLY
             Enabled:=true;
         END;
     end
     else
      exit;
      
  end;

end;

procedure TFRangsuran.gtvangsuranCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksi.Click;
end;

procedure TFRangsuran.tambahClick(Sender: TObject);
begin
    TRY
 Umain.openkoneksi_host;

 if(Umain.host.Connected=true)then
 begin

      DM.Xkey:='Tambah';

      if ujenisangsuran.showmodal=MrOk then
      begin
          if(ujenisangsuran.jenis='TUNGGAKAN') then
          begin
              tambahangsuranair;
          end
          else if(ujenisangsuran.jenis='SAMB.BARU') then
          begin
             tambahangsuranrab;
          end 
          else
           begin
              tambahangsuranlain; 
          end;
      end;

 end
 else
 MessageDlg('Tidak Terhubung Dengan VPS !!',mtWarning, [mbOK], 0);

 except  On E:Exception do
          MessageDlg('Kesalahan!!'+char(13)+char(13)+
                     E.Message, mtwarning, [MbOk], 0);
 end;


end;

procedure TFRangsuran.gtvangsuranFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if(Qangsuran.RecordCount>0)then
  begin

        Verifikasi1.Enabled:=true;
        UnVerifikasi1.Enabled:=false;
        Koreksi1.Enabled:=true;
        Hapus1.Enabled:=true;
        UploadTagihan1.Enabled:=false;
        DiBebankanKepada1.Enabled:=false;
        DiBebankanKepada1.Visible:=true;


      if(Qangsuran.fieldbyname('flaglunas').AsString='1')then
      begin
        Verifikasi1.Enabled:=false;
        UnVerifikasi1.Enabled:=false;
        Koreksi1.Enabled:=false;
        Hapus1.Enabled:=false;
        UploadTagihan1.Enabled:=false;
        DiBebankanKepada1.Enabled:=false;
      end
      else if(Qangsuran.fieldbyname('verifikasi').AsString='1')then
      begin
        Verifikasi1.Enabled:=false;
        UnVerifikasi1.Enabled:=true;
        Koreksi1.Enabled:=false;
        Hapus1.Enabled:=false;
        UploadTagihan1.Enabled:=true;
        DiBebankanKepada1.Enabled:=false;
      end;


      if(Qangsuran.fieldbyname('keperluan').AsString='TUNGGAKAN') then
      begin
          RzPanel7.Visible:=true;
          cxGrid3.Visible:=true;
          DiBebankanKepada1.Visible:=false;

          Qrek.Close;
          Qrek.SQL.Clear;
          Qrek.SQL.Add(Qrek.SQLRefresh.Text);
          Qrek.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
          Qrek.Open;

      end
      else
      begin
         RzPanel7.Visible:=false;
         cxGrid3.Visible:=false;
      end;


      Qdet.Close;
      Qdet.SQL.Clear;
      Qdet.SQL.Add(Qdet.SQLRefresh.Text);
      Qdet.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
      Qdet.Open;



  end;
end;

procedure TFRangsuran.cekjenisClick(Sender: TObject);
begin
  if(cekjenis.Checked=true)then
  begin
      keperluan.Enabled:=true;
      keperluan.SetFocus;
  end
  else
  begin
      keperluan.Enabled:=false;
  end;
end;


procedure TFRangsuran.isipel();
begin

 {TRY

   Enabled:=false;

   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT nosamb FROM pelanggan ORDER BY CAST(nosamb AS UNSIGNED) ASC ');
   DM.Qcek.Open;


   pel.Properties.Items.Clear;

   uloading.Progress.PartsComplete:=0;
   uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
   uloading.proses.Visible:=true;
   uloading.Progress.Visible:=true; 
   uloading.Show;

   while not DM.Qcek.Eof do
   begin
      pel.Properties.Items.Add(DM.Qcek.FieldByName('nosamb').ASstring);
      uloading.Progress.IncPartsByOne;
      DM.Qcek.Next;
   end;


 FINALLY
     uloading.Close;
     Enabled:=true;
 END; }

end;


procedure TFRangsuran.isinorab();
begin

   TRY

   Enabled:=false;


   
             Qhost.Close;
             Qhost.SQL.Clear;
             Qhost.SQL.Add('SELECT c.*,n.* FROM rab c LEFT JOIN nonair n ON c.norab=n.urutan WHERE c.flaglunas="0" AND c.flagangsur="0" ORDER BY norab ASC ');
             Qhost.Open;



              uloading.proses.Caption:='Test';
              uloading.Progress.PartsComplete:=0;
              uloading.Progress.TotalParts:=Qhost.RecordCount;                 
              uloading.proses.Visible:=true;
              uloading.Progress.Visible:=true;
              uloading.Show;



               uangsuran2.nomor.Properties.Items.Clear;
               uangsuran2.cnama.Properties.Items.Clear;
               uangsuran2.calamat.Properties.Items.Clear;
               uangsuran2.ctelp.Properties.Items.Clear;
               uangsuran2.chp.Properties.Items.Clear;
               uangsuran2.cnoreg.Properties.Items.Clear;
               uangsuran2.cbiayapasang.Properties.Items.Clear;
               uangsuran2.cjaminan.Properties.Items.Clear;
               uangsuran2.cmeterai.Properties.Items.Clear;
               uangsuran2.clainnya.Properties.Items.Clear;
               uangsuran2.cppn.Properties.Items.Clear;



               while not Qhost.Eof do
               begin

                        uangsuran2.nomor.Properties.Items.Add(Qhost.FieldByName('norab').ASstring);
                        uangsuran2.cnama.Properties.Items.Add(Qhost.FieldByName('nama').ASstring);
                        uangsuran2.calamat.Properties.Items.Add(Qhost.FieldByName('alamat').ASstring);
                        uangsuran2.ctelp.Properties.Items.Add(Qhost.FieldByName('notelp').ASstring);
                        uangsuran2.chp.Properties.Items.Add(Qhost.FieldByName('nohp').ASstring);
                        uangsuran2.cnoreg.Properties.Items.Add(Qhost.FieldByName('noreg').ASstring);
                       
                        uangsuran2.cbiayapasang.Properties.Items.Add(CurrToStr(Qhost.FieldByName('biayapasang').AsCurrency));
                        uangsuran2.cjaminan.Properties.Items.Add(CurrToStr(Qhost.FieldByName('jaminan').AsCurrency));
                        uangsuran2.cmeterai.Properties.Items.Add(CurrToStr(Qhost.FieldByName('meterai').AsCurrency));
                        uangsuran2.clainnya.Properties.Items.Add(CurrToStr(Qhost.FieldByName('lainnya').AsCurrency));
                        uangsuran2.cppn.Properties.Items.Add(CurrToStr(Qhost.FieldByName('ppn').AsCurrency));  
                        uloading.Progress.IncPartsByOne;
                        Qhost.Next;
               end;


   FINALLY
     uloading.Close;
     Enabled:=true;
  END;



end;

procedure TFRangsuran.tambahangsuranair();
begin

              isipel();


              uangsuran.carinomor.Click;




              uangsuran.nomor.Enabled:=true;
              
              uangsuran.lama.Enabled:=true;
              uangsuran.pokok.Enabled:=false;
              uangsuran.bunga.Enabled:=true;
              uangsuran.sisabiayapemakaian.Enabled:=false;



              uangsuran.info.Caption:='FORMULIR ANGSURAN TAGIHAN AIR';

              if uangsuran.showmodal=MrOk then
              begin
                  tampilkan.Click;
              end;

end;


procedure TFRangsuran.koreksiangsuranair();
begin


    uangsuran.nomor.Enabled:=false;
              
    uangsuran.lama.Enabled:=true;
    uangsuran.pokok.Enabled:=false;
    uangsuran.bunga.Enabled:=true;
    uangsuran.sisabiayapemakaian.Enabled:=false;


     DM.Xkey:='Koreksi';
     uangsuran.noangsuran.Text:=Qangsuran.fieldbyname('noangsuran').AsString;
     uangsuran.nomor.Text:=Qangsuran.fieldbyname('nomor').AsString; 
     uangsuran.lama.Value:=0;
     uangsuran.pokok.Value:=0;
     uangsuran.bunga.Value:=0;
               
     uangsuran.info.Caption:='FORMULIR KOREKSI ANGSURAN TAGIHAN AIR';


     if uangsuran.showmodal=MrOk then
     begin
     
      Qangsuran.SQLRefresh.Clear;
      Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
      Qangsuran.RefreshRecord;

     end;

end;



procedure TFRangsuran.tambahangsuranrab();
begin

              isipel;
              uangsuran2.nosamb.Properties.Items:=pel.Properties.Items;
              isinorab;
              uangsuran2.cxButton1.Click;
              uangsuran2.nomor.Enabled:=true;                
              uangsuran2.lama.Enabled:=true;
              uangsuran2.pokok.Enabled:=false;
              uangsuran2.bunga.Enabled:=true;
              uangsuran2.sisabiayapasang.Enabled:=false;

            
              uangsuran2.info.Caption:='FORMULIR ANGSURAN TAGIHAN R.A.B SAMBUNGAN BARU';

              if uangsuran2.showmodal=MrOk then
              begin
                  tampilkan.Click;
              end;


end;


procedure TFRangsuran.koreksiangsuranrab();
begin

   isinorab;


   DM.Xkey:='Koreksi';
   uangsuran2.noangsuran.Text:=Qangsuran.fieldbyname('noangsuran').AsString;
   uangsuran2.xnomor:=Qangsuran.fieldbyname('nomor').AsString;  
   uangsuran2.lama.Value:=0;
   uangsuran2.pokok.Value:=0;
   uangsuran2.bunga.Value:=0;
   uangsuran2.nomor.Enabled:=false;
   uangsuran2.pokok.Enabled:=false;
   uangsuran2.sisabiayapasang.Enabled:=false;
   
   uangsuran2.info.Caption:='FORMULIR KOREKSI ANGSURAN TAGIHAN R.A.B';


   if uangsuran2.showmodal=MrOk then
   begin

    Qangsuran.SQLRefresh.Clear;
    Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
    Qangsuran.RefreshRecord;

   end;
end;


procedure TFRangsuran.tambahangsuranlain();
begin
   

              
              isipel;

              uangsuran3.keperluan.Text:= ujenisangsuran.jenis;


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select fieldnonair FROM jenisnonair WHERE jenis="'+ujenisangsuran.jenis+'"');
              DM.Qcek.Open;

              uangsuran3._fieldnonair:=DM.Qcek.fieldbyname('fieldnonair').AsString;


              uangsuran3.cxButton1.Click;
              uangsuran3.nomor.Enabled:=true;

              uangsuran3.info.Caption:='FORMULIR ANGSURAN LAINNYA';

              if uangsuran3.showmodal=MrOk then
              begin
                  tampilkan.Click;
              end;
end;


procedure TFRangsuran.koreksiangsuranlain();
begin

  
               DM.Xkey:='Koreksi';

                uangsuran3.nomor.Enabled:=false;
               uangsuran3.noangsuran.Text:=Qangsuran.fieldbyname('noangsuran').AsString;
               uangsuran3.nomor.Text:=Qangsuran.fieldbyname('nomor').AsString;
               uangsuran3.keperluan.Text:=Qangsuran.fieldbyname('keperluan').AsString;              
               uangsuran3.lama.Value:=0;
               uangsuran3.pokok.Value:=0;
               uangsuran3.bunga.Value:=0;
               uangsuran3.nomor.Enabled:=false;
             
               uangsuran3.info.Caption:='FORMULIR ANGSURAN '+UpperCase(Qangsuran.FieldByName('keperluan').ASstring);


               if uangsuran3.showmodal=MrOk then
               begin
     
                Qangsuran.SQLRefresh.Clear;
                Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
                Qangsuran.RefreshRecord;

               end;
end;


procedure TFRangsuran.UploadTagihan1Click(Sender: TObject);
var
j:integer;
begin
 TRY
 Umain.openkoneksi_host;

 if(Umain.host.Connected=true)then
 begin

     TRY
        Enabled:=false;
      TRY

        
       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;


       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('START TRANSACTION');
       Qexec.Execute;




        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROm detailangsuran WHERE noangsuran=:noangsuran AND flaglunas="0" and flagupload="0" ORDER BY termin ASC');
        DM.Qcek.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
        DM.Qcek.Open;

        DM.Qcek.First;

        for j:=1 to DM.Qcek.RecordCount do
        begin

            Qhost.close;
            Qhost.SQL.Clear;
            Qhost.SQL.Add('REPLACE INTO nonair (urutan,jenis,nomor,nama,alamat,notelp,nohp,angsuran1,angsuran2,total,keterangan,waktuinput,loketinput,noangsuran,flagangsur,kode,ketjenis,termin,dibebankankepada,');
            Qhost.SQL.Add('tglmulaitagih,biayapemakaian,administrasi,pemeliharaan,retribusi,dendatunggakan,waktuupdate,biayapasang,jaminan,meterai,ppn,biayaperbaikan,dendapelanggaran,piutanggwm,rencanasambungan)');
            Qhost.SQL.Add('VALUES              (:urutan,:jenis,:nomor,:nama,:alamat,:notelp,:nohp,:angsuran1,:angsuran2,:total,:keterangan,NOW(),:loketinput,:noangsuran,:flagangsur,:kode,:ketjenis,:termin,:dibebankankepada,');
            Qhost.SQL.Add(':tglmulaitagih,:biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:dendatunggakan,NOW(),:biayapasang,:jaminan,:meterai,:ppn,:biayaperbaikan,:dendapelanggaran,:piutanggwm,:rencanasambungan)');
            Qhost.ParamByName('urutan').AsString:=DM.Qcek.fieldbyname('noangsuran').AsString+'.'+DM.Qcek.fieldbyname('termin').AsString;
            Qhost.ParamByName('jenis').AsString:=Qangsuran.fieldbyname('keperluan').AsString;
            Qhost.ParamByName('nomor').AsString:=Qangsuran.fieldbyname('nomor').AsString;
            Qhost.ParamByName('nama').AsString:=Qangsuran.fieldbyname('nama').AsString;
            Qhost.ParamByName('alamat').AsString:=Qangsuran.fieldbyname('alamat').AsString;
            Qhost.ParamByName('notelp').AsString:=Qangsuran.fieldbyname('notelp').AsString;
            Qhost.ParamByName('nohp').AsString:=Qangsuran.fieldbyname('nohp').AsString;
            Qhost.ParamByName('angsuran1').AsCurrency:=DM.Qcek.fieldbyname('lainnya').AsCurrency;
            Qhost.ParamByName('angsuran2').AsCurrency:=0;
            Qhost.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('jumlah').AsCurrency;
            Qhost.ParamByName('loketinput').AsString:='PUSAT';
            Qhost.ParamByName('termin').AsInteger:=DM.Qcek.fieldbyname('termin').AsInteger;
            Qhost.ParamByName('flagangsur').AsString:='1';
            Qhost.ParamByName('keterangan').AsString:='-';
            Qhost.ParamByName('noangsuran').AsString:=DM.Qcek.fieldbyname('noangsuran').AsString;          
            Qhost.ParamByName('ketjenis').AsString:=DM.Qcek.fieldbyname('ketjenis').AsString;
            Qhost.ParamByName('dibebankankepada').AsString:=DM.Qcek.fieldbyname('dibebankankepada').AsString;
            Qhost.ParamByName('tglmulaitagih').AsDate:=DM.Qcek.fieldbyname('tglmulaitagih').AsDateTime;
            Qhost.ParamByName('biayapemakaian').AsCurrency:=DM.Qcek.fieldbyname('biayapemakaian').AsCurrency;
            Qhost.ParamByName('administrasi').AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
            Qhost.ParamByName('pemeliharaan').AsCurrency:=DM.Qcek.fieldbyname('pemeliharaan').AsCurrency;
            Qhost.ParamByName('retribusi').AsCurrency:=DM.Qcek.fieldbyname('retribusi').AsCurrency;
            Qhost.ParamByName('dendatunggakan').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan').AsCurrency;
            Qhost.ParamByName('biayapasang').AsCurrency:=DM.Qcek.fieldbyname('biayapasang').AsCurrency;
            Qhost.ParamByName('jaminan').AsCurrency:=DM.Qcek.fieldbyname('jaminan').AsCurrency;
            Qhost.ParamByName('meterai').AsCurrency:=DM.Qcek.fieldbyname('meterai').AsCurrency;
            Qhost.ParamByName('ppn').AsCurrency:=DM.Qcek.fieldbyname('ppn').AsCurrency;
            Qhost.ParamByName('biayaperbaikan').AsCurrency:=DM.Qcek.fieldbyname('biayaperbaikan').AsCurrency;
            Qhost.ParamByName('dendapelanggaran').AsCurrency:=DM.Qcek.fieldbyname('dendapelanggaran').AsCurrency;
            Qhost.ParamByName('piutanggwm').AsCurrency:=DM.Qcek.fieldbyname('piutanggwm').AsCurrency;
            Qhost.ParamByName('rencanasambungan').AsCurrency:=DM.Qcek.fieldbyname('rencanasambungan').AsCurrency;
            Qhost.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('update detailangsuran SET flagupload="1",waktuupload=NOW() WHERE noangsuran=:noangsuran AND termin=:termin');
            DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
            DM.Qexec.ParamByName('termin').AsInteger:=DM.Qcek.fieldbyname('termin').AsInteger;
            DM.Qexec.Execute;  


        DM.Qcek.Next;
        end;



          if ( Qangsuran.fieldbyname('keperluan').AsString='TUNGGAKAN') then
        begin


           
              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select *  FROm detailrekangsur WHERE noangsuran=:noangsuran');
              DM.Qcek.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
              DM.Qcek.Open;

              DM.Qcek.First;

              for j:=1 to DM.Qcek.RecordCount do
              begin  

                  Qhost.close;
                  Qhost.SQL.Clear;
                  Qhost.SQL.Add('UPDATE drd SET flagangsur="1",waktuupdate=NOW() WHERE kode=:kode');
                  Qhost.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString; 
                  Qhost.Execute; 

                  DM.Qcek.Next;

                  
              end;


        end;





       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('update daftarangsuran SET flagupload="1",waktuupload=NOW() WHERE noangsuran=:noangsuran');
       DM.Qexec.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
       DM.Qexec.Execute;



        Qhost.close;
        Qhost.SQL.Clear;
        Qhost.SQL.Add('select * FROm pelanggan WHERE nosamb=:nosamb');
        Qhost.ParamByName('nosamb').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
        Qhost.Open;


        if(Qhost.RecordCount=0) then
        begin

            //UPDATE DATA PELANGGAn
            DM.Qcek.close;
            DM.Qcek.SQL.Clear;
            DM.Qcek.SQL.Add('select * FROM pelanggan WHERE nosamb=:nosamb');
            DM.Qcek.ParamByName('nosamb').AsString:= Qangsuran.fieldbyname('dibebankankepada').AsString;
            Dm.Qcek.Open;

            if(DM.Qcek.RecordCount>0)then
            begin
       

              Qhost.close;
              Qhost.SQL.Clear;
              Qhost.SQL.Add('replace into pelanggan (nosamb,nama,alamat,kodegol,kodediameter,koderayon,kodekelurahan,kodekolektif,sumberair,status,flag,nopendaftaran,norab,waktuupdate,adaangsuran)');
              Qhost.SQL.Add('values (:nosamb,:nama,:alamat,:kodegol,:kodediameter,:koderayon,:kodekelurahan,:kodekolektif,:sumberair,:status,:flag,:nopendaftaran,:norab,NOW(),:adaangsuran)');
              Qhost.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
              Qhost.ParamByName('nama').AsString:=DM.Qcek.fieldbyname('nama').AsString;
              Qhost.ParamByName('alamat').AsString:=DM.Qcek.fieldbyname('alamat').AsString;
              Qhost.ParamByName('kodegol').AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
              Qhost.ParamByName('kodediameter').AsString:=DM.Qcek.fieldbyname('kodediameter').AsString;
              Qhost.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
              Qhost.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
              Qhost.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
              Qhost.ParamByName('sumberair').AsString:=DM.Qcek.fieldbyname('sumberair').AsString;
              Qhost.ParamByName('status').AsString:=DM.Qcek.fieldbyname('status').AsString;
              Qhost.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
              Qhost.ParamByName('nopendaftaran').AsString:=DM.Qcek.fieldbyname('nopendaftaran').AsString;
              Qhost.ParamByName('norab').AsString:=DM.Qcek.fieldbyname('norab').AsString; 
              Qhost.ParamByName('adaangsuran').AsString:=DM.Qcek.fieldbyname('adaangsuran').AsString;
              Qhost.Execute;

            end;

        end
        else
        begin

            Qhost.close;
            Qhost.SQL.Clear;
            Qhost.SQL.Add('UPDATE pelanggan SET adaangsuran="1",waktuupdate=NOW() WHERE nosamb=:nosamb') ;
            Qhost.ParamByName('nosamb').AsString:=Qangsuran.fieldbyname('dibebankankepada').AsString;
            Qhost.Execute;
        end;


       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('COMMIT');
       Qexec.Execute;

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('COMMIT');
       DM.Qexec.Execute;

       Qangsuran.SQLRefresh.Clear;
       Qangsuran.SQLRefresh.Add(Qangsuran.SQLRefresh.Text);
       Qangsuran.RefreshRecord;

       MessageDlg('Angsuran berhasil di upload ...',mtInformation, [mbOK], 0);


      EXCEPT  On E:Exception do
      BEGIn


       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('ROLLBACK');
       Qexec.Execute;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('ROLLBACK');
       DM.Qexec.Execute;

              MessageDlg('Kesalahan!!'+char(13)+char(13)+
                         E.Message, mtwarning, [MbOk], 0);
      END;
      END;

     FINALLY

         Umain.host.close;
         Enabled:=true;
     END;



 end
 else
 MessageDlg('Tidak Terhubung Dengan VPS !!',mtWarning, [mbOK], 0);

 except  On E:Exception do
          MessageDlg('Kesalahan!!'+char(13)+char(13)+
                     E.Message, mtwarning, [MbOk], 0);
 end;


end;

procedure TFRangsuran.prosesClick(Sender: TObject);
begin

 TRY

  Enabled:=false;
  
  TRY

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;


       
               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('UPDATE daftarangsuran d,');
               DM.Qexec.SQL.Add('(SELECT noangsuran,SUM(flaglunas="1") AS lunas,MAX(waktubayar) AS waktubayarterakhir FROM detailangsuran GROUP BY noangsuran)c');
               DM.Qexec.SQL.Add('SET d.flaglunas=IF(d.jumlahtermin=c.lunas,"1","0"),d.waktulunas=IF(d.jumlahtermin=c.lunas,c.waktubayarterakhir,null) WHERE d.noangsuran=c.`noangsuran`;');
               DM.Qexec.SQL.Add('');
               DM.Qexec.Execute;



       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('COMMIT');
       DM.Qexec.Execute;


       tampilkan.Click;

       MessageDlg('Proses selesai...', mtInformation, [mbOk], 0);

  EXCEPT ON E:Exception DO
  BEGIN

        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('ROLLBACK');
        DM.Qexec.Execute;

        MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
  END;
  END;
 FINALLY
  Enabled:=true;
 END;

end;

procedure TFRangsuran.gtvangsuranCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin


    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvangsuranlunas.Index], varstring)='1')  then
    BEGIN
      IF (gtvangsuran.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
        ACanvas.Canvas.Brush.Color :=  $0051FFFF; 
        ACanvas.Canvas.Font.Color := clBlack;  

      END;
    end;
end;

procedure TFRangsuran.ceknomorClick(Sender: TObject);
begin
 if(ceknomor.Checked=true)then
  begin
      nomor.Enabled:=true;
      nomor.SetFocus;
  end
  else
  begin
      nomor.Enabled:=false;
  end;
end;

procedure TFRangsuran.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
  begin
      nama.Enabled:=true;
      nama.SetFocus;
  end
  else
  begin
      nama.Enabled:=false;
  end;
end;

procedure TFRangsuran.cektelpClick(Sender: TObject);
begin
 if(cektelp.Checked=true)then
  begin
      telp.Enabled:=true;
      telp.SetFocus;
  end
  else
  begin
      telp.Enabled:=false;
  end;
end;

procedure TFRangsuran.cekhpClick(Sender: TObject);
begin
 if(cekhp.Checked=true)then
  begin
      hp.Enabled:=true;
      hp.SetFocus;
  end
  else
  begin
      hp.Enabled:=false;
  end;
end;

procedure TFRangsuran.cekdibebankanClick(Sender: TObject);
begin
if(cekdibebankan.Checked=true)then
  begin
      dibebankankepada.Enabled:=true;
      dibebankankepada.SetFocus;
  end
  else
  begin
      dibebankankepada.Enabled:=false;
  end;
end;

procedure TFRangsuran.Detail1Click(Sender: TObject);
begin
  if(Qangsuran.RecordCount>0)then
  begin 
    udetailangsuran.Qcek.Close;
    udetailangsuran.Qcek.ParamByName('noangsuran').AsString:=Qangsuran.fieldbyname('noangsuran').AsString;
    udetailangsuran.Qcek.Open;  
    udetailangsuran.ShowModal;
  end;
end;

end.

