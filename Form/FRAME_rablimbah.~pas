unit FRAME_rablimbah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Menus, ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxMaskEdit, cxTextEdit,
  cxCheckBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPCdxBarPopupMenu, cxPC, DBAccess, MyAccess,
  MemDS, frxDesgn, frxClass, frxDBSet, cxCurrencyEdit, cxMemo, cxRadioGroup,
  dxmdaset,jpeg, cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxScrollBox,
  dxSkiniMaginary;

type
  TFRrabllimbah = class(TFrame)
    info: TRzPanel;
    Qhost: TMyQuery;
    DSdaftar: TMyDataSource;
    rab: TfrxReport;
    Qreport: TMyQuery;
    DSreport: TMyDataSource;
    frxDBDataset1: TfrxDBDataset;
    popmenu: TPopupMenu;
    Koreksi1: TMenuItem;
    ambah1: TMenuItem;
    Hapus1: TMenuItem;
    DSmat: TMyDataSource;
    det: TdxMemData;
    detsatuan: TStringField;
    detharga: TCurrencyField;
    detqty: TCurrencyField;
    detjumlah: TCurrencyField;
    detkode: TStringField;
    detnama: TStringField;
    dettipe: TStringField;
    detkategori: TStringField;
    detppn: TCurrencyField;
    detsebelumppn: TCurrencyField;
    detflag: TStringField;
    frxDBDataset2: TfrxDBDataset;
    Qbarang: TMyQuery;
    MyDataSource1: TMyDataSource;
    Qdetail: TMyQuery;
    frxDBDataset3: TfrxDBDataset;
    MyDataSource2: TMyDataSource;
    CetakRAB1: TMenuItem;
    CetakSPKPemasangan1: TMenuItem;
    bppi: TfrxReport;
    sppb: TfrxReport;
    spkp: TfrxReport;
    bapb: TfrxReport;
    N3: TMenuItem;
    BuatBeritaAcarapemasangan1: TMenuItem;
    PembatalanRAB1: TMenuItem;
    N5: TMenuItem;
    bap: TfrxReport;
    CetakBAP1: TMenuItem;
    baptemp: TfrxReport;
    N6: TMenuItem;
    Design1: TMenuItem;
    RAB1: TMenuItem;
    BPPI1: TMenuItem;
    SPK1: TMenuItem;
    SPPB1: TMenuItem;
    BAPB1: TMenuItem;
    BAP2: TMenuItem;
    BAP3: TMenuItem;
    memo: TfrxReport;
    Qmemo: TMyQuery;
    mem: TfrxDBDataset;
    DSmemo: TMyDataSource;
    N7: TMenuItem;
    RzPanel11: TRzPanel;
    jenis: TcxComboBox;
    cxLabel14: TcxLabel;
    cxButton1: TcxButton;
    UploadDenah1: TMenuItem;
    CetakDenah1: TMenuItem;
    N8: TMenuItem;
    denah: TfrxReport;
    RzPanel1: TRzPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    tambah: TcxButton;
    refresh: TcxButton;
    hapus: TcxButton;
    Koreksi: TcxButton;
    RzPanel3: TRzPanel;
    s: TcxGrid;
    grid: TcxGridDBTableView;
    gridflaglunas: TcxGridDBColumn;
    gridflagpasang: TcxGridDBColumn;
    gridColumn8: TcxGridDBColumn;
    gridnorab: TcxGridDBColumn;
    gridColumn4: TcxGridDBColumn;
    gridnomorspko: TcxGridDBColumn;
    gridnoreg: TcxGridDBColumn;
    gridnama: TcxGridDBColumn;
    gridalamat: TcxGridDBColumn;
    gridColumn10: TcxGridDBColumn;
    gridtglrab: TcxGridDBColumn;
    gridColumn2: TcxGridDBColumn;
    gridColumn3: TcxGridDBColumn;
    gridColumn5: TcxGridDBColumn;
    gridColumn6: TcxGridDBColumn;
    gridba: TcxGridDBColumn;
    gridvaliddate: TcxGridDBColumn;
    gridgrandtotal: TcxGridDBColumn;
    gridwaktubayar: TcxGridDBColumn;
    gridnohp: TcxGridDBColumn;
    gridnotelp: TcxGridDBColumn;
    gridkodegol: TcxGridDBColumn;
    gridkodediameter: TcxGridDBColumn;
    gridkoderayon: TcxGridDBColumn;
    gridserimeter: TcxGridDBColumn;
    gridmerkmeter: TcxGridDBColumn;
    gridtglpasang: TcxGridDBColumn;
    gridColumn7: TcxGridDBColumn;
    gridColumn9: TcxGridDBColumn;
    gridColumn11: TcxGridDBColumn;
    gridColumn12: TcxGridDBColumn;
    sLevel1: TcxGridLevel;
    RzPanel6: TRzPanel;
    cxLabel1: TcxLabel;
    belumselesai: TRzPanel;
    cxLabel2: TcxLabel;
    selesai: TRzPanel;
    cxScrollBox1: TcxScrollBox;
    RzPanel5: TRzPanel;
    ceknomor: TcxCheckBox;
    RzPanel8: TRzPanel;
    xnomor: TcxTextEdit;
    ceknama: TcxCheckBox;
    xnama: TcxTextEdit;
    tampilkan: TcxButton;
    tanggal1: TcxDateEdit;
    tanggal2: TcxDateEdit;
    cekinput: TcxCheckBox;
    cekwil: TcxCheckBox;
    xkodewil: TcxComboBox;
    xwilayah: TcxComboBox;
    cekalamat: TcxCheckBox;
    xalamat: TcxTextEdit;
    cektanggalba: TcxCheckBox;
    tanggalba1: TcxDateEdit;
    tanggalba2: TcxDateEdit;
    ceknosamb: TcxCheckBox;
    xnosamb: TcxTextEdit;
    RzPanel7: TRzPanel;
    Qdetail2: TMyQuery;
    frxDBDataset5: TfrxDBDataset;
    MyDataSource4: TMyDataSource;
    KoreksiRKP1: TMenuItem;
    BuatSuratPermintaanPengambilanBarangSPPB1: TMenuItem;
    MyDataSource3: TMyDataSource;
    data_: TdxMemData;
    data_flagaktif: TStringField;
    data_flagpasang: TStringField;
    data_flaglunas: TStringField;
    data_flagditarik: TStringField;
    data_norab: TStringField;
    data_nama: TStringField;
    data_alamat: TStringField;
    data_nomorspko: TStringField;
    data_flagtersier: TStringField;
    data_nomorreg: TStringField;
    data_tglrab: TDateField;
    data_nomorrkp: TStringField;
    data_nomorapbd: TStringField;
    data_nomorspl: TStringField;
    data_nomorspkp: TStringField;
    data_nomorsppb: TStringField;
    data_nomorba: TStringField;
    data_nosambyangdiberikan: TStringField;
    data_grandtotal: TCurrencyField;
    data_waktubayar: TDateTimeField;
    data_nohp: TStringField;
    data_notelp: TStringField;
    data_kodegol: TStringField;
    data_kodediameter: TStringField;
    data_koderayon: TStringField;
    data_kodewil: TStringField;
    data_kodekolektif: TStringField;
    data_serimeter: TStringField;
    data_merkmeter: TStringField;
    data_pekerjaan: TStringField;
    data_noktp: TStringField;
    data_namapemilik: TStringField;
    data_kepemilikanbangunan: TStringField;
    data_penghuni: TIntegerField;
    data_stanawalpasang: TCurrencyField;
    data_sumberair: TStringField;
    data_tglpasang: TDateField;
    data_waktupengaktifan: TDateTimeField;
    data_email: TStringField;
    data_petugaspasang: TStringField;
    data_alasanpenarikan: TStringField;
    data_keteranganmeter: TStringField;
    data_kondisimeter: TStringField;
    data_flagteam: TStringField;
    data_namapaketrab: TStringField;
    data_validdate: TDateField;
    data_tglmulaitagih: TDateField;
    data_dialihkankevendor: TStringField;
    data_biayadibebankankepdam: TStringField;
    data_nikpetugas: TStringField;
    data_nomorpermohonan: TStringField;
    data_nosamb: TStringField;
    data_keterangan: TStringField;
    data_jenis: TStringField;
    Denah1: TMenuItem;
    procedure tampilkanClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure ceknomorClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekinputClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure KoreksiClick(Sender: TObject);
    procedure CetakRAB1Click(Sender: TObject);
    procedure CetakBPPI1Click(Sender: TObject);
    procedure CetakSPPB1Click(Sender: TObject);
    procedure CetakSPKPemasangan1Click(Sender: TObject);
    procedure BAP1Click(Sender: TObject);
    procedure BuatBeritaAcarapemasangan1Click(Sender: TObject);
    procedure PembatalanRAB1Click(Sender: TObject);
    procedure SetSudahLunas1Click(Sender: TObject);
    procedure CetakBAP1Click(Sender: TObject);
    procedure gridCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RAB1Click(Sender: TObject);
    procedure BPPI1Click(Sender: TObject);
    procedure SPK1Click(Sender: TObject);
    procedure SPPB1Click(Sender: TObject);
    procedure BAPB1Click(Sender: TObject);
    procedure BAP2Click(Sender: TObject);
    procedure BAP3Click(Sender: TObject);
    procedure xkodewilPropertiesChange(Sender: TObject);
    procedure xwilayahPropertiesChange(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure cekalamatClick(Sender: TObject);
    procedure gridCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cektanggalbaClick(Sender: TObject);
    procedure UploadDenah1Click(Sender: TObject);
    procedure CetakDenah1Click(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure KoreksiRKP1Click(Sender: TObject);
    procedure BuatSuratPermintaanPengambilanBarangSPPB1Click(
      Sender: TObject);
    procedure Denah1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }

    _urutan:integer;

    _flag:string;


    xppnmaterial,xppnmaterialtambahan,xppnongkos,xppnongkostambahan:currency;
    

    procedure akses;
    


    
  end;

implementation

{$R *.dfm}   uses Module, UnitMain, UnitCombo, unitlogin,
  unitdaftarpermohonan, unitdaftarspk, RzStatus, unitdaftarreg,
  unitdaftarspko, unitrab, unittambahan, unitrab2,DAteutils, unitbap,
  unittarikrab, unitrab3, unitbap2, unitrab5, unitbap4,ShellApi, UnitHPS1;









procedure TFRrabllimbah.akses();
begin

    ucombo.isikombo;
    xkodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
    xwilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
    jenis.Properties.Items:=ucombo.jenis_rablainnya.Properties.Items;

end;

procedure TFRrabllimbah.tampilkanClick(Sender: TObject);
var
i:integer;
begin
TRY

    umain.Enabled:=false;
    Enabled:=false;

    grid.DataController.DataSource:=MyDataSource1;

    TRY

    Qhost.close;
    Qhost.SQL.Clear;
    Qhost.SQL.Add('SELECT c.*,p.`keterangan`,p.jenis FROM rab_lainnya c LEFT JOIN rayon r ON c.koderayon=r.koderayon  LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor WHERE c.flaghapus="0" AND p.jenis="'+jenis.Text+'" ');


    if(ceknomor.Checked=true)then
    begin

        Qhost.SQL.Add('AND  c.norab LIKE CONCAT("%",:norab,"%")');
        Qhost.ParamByName('norab').AsString:=xnomor.Text;

    end;   


     if(ceknama.Checked=true)then
    begin

        Qhost.SQL.Add('AND  c.nama LIKE CONCAT("%",:nama,"%")');
        Qhost.ParamByName('nama').AsString:=xnama.Text;

    end;

      if(ceknosamb.Checked=true)then
    begin

        Qhost.SQL.Add('AND  c.nosamb LIKE CONCAT("%",:nosamb,"%")');
        Qhost.ParamByName('nosamb').AsString:=xnosamb.Text;

    end;
 


      if(cekinput.Checked=true)then
    begin

        Qhost.SQL.Add('AND  date(c.tglrab)>=:tanggal1 AND  date(c.tglrab)<=:tanggal2');
        Qhost.ParamByName('tanggal1').AsDate:=tanggal1.date;
        Qhost.ParamByName('tanggal2').AsDate:=tanggal2.date;

    end;

    if(cektanggalba.Checked=true)then
    begin

        Qhost.SQL.Add('AND  date(c.tglpasang)>=:tanggalba1 AND  date(c.tglpasang)<=:tanggalba2');
        Qhost.ParamByName('tanggalba1').AsDate:=tanggalba1.date;
        Qhost.ParamByName('tanggalba2').AsDate:=tanggalba2.date;

    end;

       if(cekalamat.Checked=true)then
    begin

        Qhost.SQL.Add('AND  CONCAT(c.alamat," NO. ",coalesce(c.norumah,"")," RT. ",coalesce(c.rt,"")," RW. ",coalesce(c.rw,"")) LIKE CONCAT("%",:alamat,"%")');
        Qhost.ParamByName('alamat').AsString:=xalamat.Text;

    end;


      if(cekwil.Checked=true)then
    begin

        Qhost.SQL.Add('AND  r.kodewil=:kodewil');
        Qhost.ParamByName('kodewil').AsString:=xkodewil.Text;

    end;  



    Qhost.SQL.Add('ORDER BY c.tglrab ASC');
    Qhost.Open;


    
     Qhost.First;

    data_.Close;
    data_.Open;

    for  i:=1  to Qhost.RecordCount  do
    begin


        data_.Append;
        data_flagaktif.AsString:=Qhost.fieldbyname('flagaktif').AsString;
        data_flagpasang.AsString:=Qhost.fieldbyname('flagpasang').AsString;
        data_flaglunas.AsString:=Qhost.fieldbyname('flaglunas').AsString;
        data_flagditarik.AsString:=Qhost.fieldbyname('flagditarik').AsString;
        data_norab.AsString:=Qhost.fieldbyname('norab').AsString;
        data_nama.AsString:=Qhost.fieldbyname('nama').AsString;
        data_alamat.AsString:=Qhost.fieldbyname('alamat').AsString;
        data_nomorspko.AsString:=Qhost.fieldbyname('nomorspko').AsString;

        //data_nomorreg.AsString:=Qhost.fieldbyname('nomorreg').AsString;
        data_nomorpermohonan.AsString:=Qhost.fieldbyname('nomorpermohonan').AsString;
        data_tglrab.AsDateTime:=Qhost.fieldbyname('tglrab').AsDateTime;
        data_nomorrkp.AsString:=Qhost.fieldbyname('nomorrkp').AsString;
        data_nomorapbd.AsString:=Qhost.fieldbyname('nomorapbd').AsString;
        data_nomorspl.AsString:=Qhost.fieldbyname('nomorspl').AsString;
        data_nomorspkp.AsString:=Qhost.fieldbyname('nomorspkp').AsString;
        data_nomorsppb.AsString:=Qhost.fieldbyname('nomorsppb').AsString;
        data_nomorba.AsString:=Qhost.fieldbyname('nomorba').AsString;
        data_nosambyangdiberikan.AsString:=Qhost.fieldbyname('nosambyangdiberikan').AsString;
        data_grandtotal.AsCurrency:=Qhost.fieldbyname('grandtotal').AsCurrency;
        data_waktubayar.AsDateTime:=Qhost.fieldbyname('waktubayar').AsDateTime;

        data_nohp.AsString:=Qhost.fieldbyname('nohp').AsString;
        data_notelp.AsString:=Qhost.fieldbyname('notelp').AsString;
        data_kodegol.AsString:=Qhost.fieldbyname('kodegol').AsString;
        data_kodediameter.AsString:=Qhost.fieldbyname('kodediameter').AsString;
        data_koderayon.AsString:=Qhost.fieldbyname('koderayon').AsString;
        //data_kodewil.AsString:=Qhost.fieldbyname('kodewil').AsString;
        data_kodekolektif.AsString:=Qhost.fieldbyname('kodekolektif').AsString;
        data_serimeter.AsString:=Qhost.fieldbyname('serimeter').AsString;
        data_merkmeter.AsString:=Qhost.fieldbyname('merkmeter').AsString;
        data_pekerjaan.AsString:=Qhost.fieldbyname('pekerjaan').AsString;
        data_noktp.AsString:=Qhost.fieldbyname('noktp').AsString;
        data_namapemilik.AsString:=Qhost.fieldbyname('namapemilik').AsString;
        data_kepemilikanbangunan.AsString:=Qhost.fieldbyname('kepemilikanbangunan').AsString;
        //data_penghuni.AsInteger:=Qhost.fieldbyname('penghuni').AsInteger;
        data_sumberair.AsString:=Qhost.fieldbyname('sumberair').AsString;
        data_stanawalpasang.AsCurrency:=Qhost.fieldbyname('stanawalpasang').AsCurrency;

        data_tglpasang.AsDateTime:=Qhost.fieldbyname('tglpasang').AsDateTime;
        data_waktupengaktifan.AsDateTime:=Qhost.fieldbyname('waktupengaktifan').AsDateTime;
        data_email.AsString:=Qhost.fieldbyname('email').AsString;
        data_petugaspasang.AsString:=Qhost.fieldbyname('petugaspasang').AsString;
        data_nikpetugas.AsString:=Qhost.fieldbyname('nikpetugaspasang').AsString;
        data_alasanpenarikan.AsString:=Qhost.fieldbyname('alasanpenarikan').AsString;
        data_keteranganmeter.AsString:=Qhost.fieldbyname('keteranganmeter').AsString;
        data_kondisimeter.AsString:=Qhost.fieldbyname('kondisimeter').AsString;
        //data_flagteam.AsString:=Qhost.fieldbyname('flagteam').AsString;
        //data_flagtersier.AsString:=Qhost.fieldbyname('flagtersier').AsString;
        data_namapaketrab.AsString:=Qhost.fieldbyname('namapaketrab').AsString;


        data_validdate.AsDateTime:=Qhost.fieldbyname('validdate').AsDateTime;
        data_tglmulaitagih.AsDateTime:=Qhost.fieldbyname('tglmulaitagih').AsDateTime;
        data_dialihkankevendor.AsString:=Qhost.fieldbyname('dialihkankevendor').AsString;
        data_biayadibebankankepdam.AsString:=Qhost.fieldbyname('biayadibebankankepdam').AsString;
        data_nosamb.AsString:=Qhost.fieldbyname('nosamb').AsString;
        data_keterangan.AsString:=Qhost.fieldbyname('keterangan').AsString;
        data_jenis.AsString:=Qhost.fieldbyname('jenis').AsString;

        data_.Post;



        Qhost.Next;
    end;



    data_.First;


    grid.DataController.DataSource:=DSdaftar;


  
   EXCEPT On E:EXCEPTION  DO
   BEGIN

        MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

   END;
   END;
  FINALLY
     
      umain.Enabled:=true;
      Enabled:=true;
      DM.VPS.close;
  END;

end;

procedure TFRrabllimbah.hapusClick(Sender: TObject);
begin

 if(data_.RecordCount=0)then
  begin
      MessageDlg('Tidak ada data !!', mtWarning, [MbOk], 0);
      exit;
  end;


  if MessageDlg('HAPUS "RAB '+UpperCase( jenis.Text )+' NOMOR :  "'+data_norab.AsString+'" ?', mtConfirmation, [MbYes,MbNo], 0)=MrYes then
  begin

         TRY

         umain.Enabled:=false;
         Enabled:=false;


              DM.Qcek.close;
              Dm.Qcek.SQL.Clear;
              Dm.Qcek.SQL.Add('select * FROm nonair WHERE urutan=:urutan AND flaglunas="1"');
              Dm.Qcek.ParamByName('urutan').AsString:= data_norab.AsString;
              DM.Qcek.Open;



              if(Dm.Qcek.RecordCount>0)then
              begin
                  MessageDlg('TAGIHAN RAB SUDAH DI LUNASI !!', mtWarning, [MbOk], 0);
                  exit;
              end;
              

           TRY


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('START TRANSACTION');
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE rab_lainnya SET flaghapus="1" WHERE norab=:norab');
              DM.Qexec.ParamByName('norab').AsString:=data_norab.AsString;
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE nonair SET flaghapus="1" WHERE urutan=:urutan');
              DM.Qexec.ParamByName('urutan').AsString:=data_norab.AsString;
              DM.Qexec.Execute;

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE nonair SET flaghapus="1" WHERE urutan=:urutan');
              DM.Qexec.ParamByName('urutan').AsString:=data_norab.AsString+' / REHAB';
              DM.Qexec.Execute;



              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              DM.logakses('Hapus RAB '+jenis.Text+' : '+data_norab.AsString+'','RAB '+jenis.Text,'BSHL',ulogin.versi.Caption,umain.serial.Caption);


              tampilkan.Click;

              cxPageControl1.ActivePageIndex:=0;

           EXCEPT On E:EXCEPTION  DO
           BEGIN

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('ROLLBACk');
              DM.Qexec.Execute;

              MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
              
           END;
           END;

        FINALLY
            umain.Enabled:=true;
            Enabled:=true;
           
        END;

  end
  else
    exit;

end;

procedure TFRrabllimbah.ceknomorClick(Sender: TObject);
begin
 if(ceknomor.Checked=true)then
  begin
      xnomor.Enabled:=true;
      xnomor.SetFocus;
  end
  else
  begin
     xnomor.Enabled:=false;
  end;

end;

procedure TFRrabllimbah.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
  begin
      xnama.Enabled:=true;
      xnama.SetFocus;
  end
  else
  begin
     xnama.Enabled:=false;
  end;

end;

procedure TFRrabllimbah.cekinputClick(Sender: TObject);
begin
 if(cekinput.Checked=true)then
  begin
      tanggal1.Enabled:=true;
      tanggal2.Enabled:=true;
      tanggal1.SetFocus;
  end
  else
  begin
     tanggal1.Enabled:=false;
     tanggal2.Enabled:=false;
  end;

end;

procedure TFRrabllimbah.tambahClick(Sender: TObject);
begin

  urab5.nomor.Visible:=false;
  urab5.tanggal.date:=date;
  urab5.nomorspko.Clear;
  urab5.nomorreg.Clear;
  urab5.nama.Clear;
  urab5.alamat.Clear;

  urab5.telp.Clear;
  urab5.hp.Clear;

  urab5.koderayon.Clear;
  urab5.namarayon.Clear;
  urab5.kodegol.Clear;
  urab5.golongan.Clear;
  urab5.kodediameter.Clear;
  urab5.diameter.Clear;
  urab5.merkmeter.Clear;

  urab5.serimeter.Clear;

  urab5.cxButton6.Visible:=true;


  urab5.validdate.date:=IncMonth(date,+ DM.xbulankadaluarsanonair);
  urab5.periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);


  urab5.biayabahan.Value:=0;
  urab5.pemasangan.Value:=0;
  urab5.pendaftaran.Value:=0;
  urab5.jaminan.Value:=0;
  urab5.perencanaan.Value:=0;
  urab5.meterai.Value:=0;
  urab5.lainnya.Value:=0;
  urab5.ppn.Value:=0;
  urab5.total.Value:=0;

  urab5.totalnet.Value:=0;



   urab5.cekdialihkankevendor.Enabled:=true;
   urab5.cekbiayadibebankankepdam.Enabled:=true;

    urab5._jenis:=jenis.Text;




  urab5.det.Close;




  DM.Xkey:='Tambah';

  ucombo.isikombo;
  urab5.koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
  urab5.namarayon.Properties.Items:=ucombo.namarayon.Properties.Items;

  urab5.kodekelurahan.Properties.Items:=ucombo.kodekelurahan.Properties.Items;
  urab5.kelurahan.Properties.Items:=ucombo.kelurahan.Properties.Items;
  urab5.kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
  urab5.golongan.Properties.Items:=ucombo.golongan.Properties.Items;
  urab5.kodediameter.Properties.Items:=ucombo.kodediameter.Properties.Items;
  urab5.diameter.Properties.Items:=ucombo.ukuran.Properties.Items;
  urab5.merkmeter.Properties.Items:=ucombo.merk.Properties.Items;




  det.close;








  urab5.cekkoreksianggaran.Visible:=false;
  urab5.cekkoreksianggaran.Checked:=false;
  urab5.panelrab.Visible:=true;
  urab5.cxTabSheet2.TabVisible:=true;



  urab5.nomorrkp.Caption:='';
  urab5.nomorapbd.Caption:='';
  urab5.nomorspl.Caption:='';




  urab5._lokasifotolama:='';
  urab5.namapaket.Text:='-';



  DM.VPS.close;




  if urab5.showmodal=mrOk then
  begin


        if urab5.cekcetak.Checked=true then
        begin


            DM.Qcek.close;
            DM.Qcek.SQl.Clear;
            DM.Qcek.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
            DM.Qcek.ParamByName('norab').AsString:=urab5.nomor.Caption;
            DM.Qcek.Open;

            if DM.Qcek.RecordCount=0 then
            begin
                MessageDlg('HARAP BUAT HPS - RKP TERLEBIH DAHULU !', mtInformation, [MbOk], 0);
                Exit;
            end;



            try

            rab.LoadFromFile(GetCurrentDir+'\report\rablainnya.fr3');


            Qreport.close;
            Qreport.SQl.Clear;
            Qreport.SQL.Add('select c.*,r.wilayah,p.jenis FROm rab_lainnya c LEFT JOIN permohonan_lainnya p ON c.nomorpermohonan=p.nomor LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.norab=:norab');
            Qreport.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qreport.Open;


            Qbarang.close;
            Qbarang.SQl.Clear;
            Qbarang.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
            Qbarang.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qbarang.Open;


            Qdetail.close;
            Qdetail.SQl.Clear;
            Qdetail.SQL.Add('select c.*,IF(c.dibebankan_pdam="1","PDAM","") as ket2 FROm detailrab c WHERE c.norab=:norab ORDER BY c.tipe,c.id ASC');
            Qdetail.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qdetail.Open;


            Qdetail2.close;
            Qdetail2.SQl.Clear;
            Qdetail2.SQL.Add(Qdetail2.SQLRefresh.Text);
            Qdetail2.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qdetail2.Open;


            DM.param_laporan.Open;
            rab.ShowReport(true);

            except on E:Exception do
            begin
                MessageDlg('Terjadi Kesalahan : '+E.Message, mtInformation, [MbOk], 0);
                exit;

            end;
            end;

        end;


        tampilkan.Click;


  end;


end;

procedure TFRrabllimbah.KoreksiClick(Sender: TObject);
begin


  if data_flaglunas.AsString='1' then
  begin
     MessageDlg('RAB Sudah Lunas !!', mtInformation, [MbOk], 0);
     exit;
  end;


    if data_dialihkankevendor.AsString='1' then
     urab5.cekdialihkankevendor.Checked:=true
  else
     urab5.cekdialihkankevendor.Checked:=false;


   if data_biayadibebankankepdam.Asstring='1' then
       urab5.cekbiayadibebankankepdam.Checked:=true
  else
     urab5.cekbiayadibebankankepdam.Checked:=false;    



  DM.Xkey:='Koreksi';

   urab5._jenis:=jenis.Text;


  ucombo.isikombo;

  urab5.koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
  urab5.namarayon.Properties.Items:=ucombo.namarayon.Properties.Items;

  urab5.kodekelurahan.Properties.Items:=ucombo.kodekelurahan.Properties.Items;
  urab5.kelurahan.Properties.Items:=ucombo.kelurahan.Properties.Items;
  urab5.kodegol.Properties.Items:=ucombo.kodegol.Properties.Items;
  urab5.golongan.Properties.Items:=ucombo.golongan.Properties.Items;
  urab5.kodediameter.Properties.Items:=ucombo.kodediameter.Properties.Items;
  urab5.diameter.Properties.Items:=ucombo.ukuran.Properties.Items;
  urab5.merkmeter.Properties.Items:=ucombo.merk.Properties.Items;

  urab5.namapaket.Properties.Items:=ucombo.namapaket.Properties.Items;

  urab5.nosamb.Text:=data_nosamb.AsString;
  urab5.nomor.Caption:=data_norab.AsString;
  urab5.nomor.Visible:=true;
  urab5.tanggal.date:=data_tglrab.AsDateTime;
  urab5.nomorspko.text:=data_nomorspko.AsString;
  urab5.nomorreg.text:=data_nomorpermohonan.AsString;
  urab5.nama.text:=data_nama.AsString;
  urab5.alamat.text:=data_alamat.AsString;

  urab5.telp.text:=data_notelp.AsString;
  urab5.hp.text:=data_notelp.AsString;

  urab5.koderayon.text:=data_koderayon.AsString;
  urab5.kodegol.text:=data_kodegol.AsString;
  urab5.kodediameter.text:=data_kodediameter.AsString;
  urab5.merkmeter.text:=data_merkmeter.AsString;
  
  urab5.serimeter.text:=data_serimeter.AsString;
  urab5.validdate.date:=data_validdate.AsDateTime;
  urab5.periode.date:=data_tglmulaitagih.AsDateTime;



  urab5.cxButton6.Visible:=false;

  urab5.nomorrkp.Caption:=data_nomorrkp.AsString;
  urab5.nomorapbd.Caption:=data_nomorapbd.AsString;
  urab5.nomorspl.Caption:=data_nomorspl.AsString;

  urab5.cekkoreksianggaran.Visible:=true;
  urab5.cekkoreksianggaran.Checked:=false;
  urab5.panelrab.Visible:=false;

  urab5.det.Close;

  urab5.cxTabSheet2.TabVisible:=false;




  urab5.namapaket.Text:='-';
  

  urab5.btnmaterial.Visible:=true;
  urab5.btnongkos.Visible:=true;


  DM.VPS.close;




  if urab5.showmodal=mrOk then
  begin



        if urab5.cekcetak.Checked=true then
        begin

           DM.Qcek.close;
            DM.Qcek.SQl.Clear;
            DM.Qcek.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
            DM.Qcek.ParamByName('norab').AsString:=urab5.nomor.Caption;
            DM.Qcek.Open;

            if DM.Qcek.RecordCount=0 then
            begin
                MessageDlg('HARAP BUAT HPS - RKP TERLEBIH DAHULU !', mtInformation, [MbOk], 0);
                Exit;
            end;



            try

            rab.LoadFromFile(GetCurrentDir+'\report\rablainnya.fr3');


            Qreport.close;
            Qreport.SQl.Clear;
            Qreport.SQL.Add('select c.*,r.wilayah,p.jenis FROm rab_lainnya c LEFT JOIN permohonan_lainnya p ON c.nomorpermohonan=p.nomor LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.norab=:norab');
            Qreport.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qreport.Open;


            Qbarang.close;
            Qbarang.SQl.Clear;
            Qbarang.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
            Qbarang.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qbarang.Open;


            Qdetail.close;
            Qdetail.SQl.Clear;
            Qdetail.SQL.Add('select c.*,IF(c.dibebankan_pdam="1","PDAM","") as ket2 FROm detailrab c WHERE c.norab=:norab ORDER BY c.tipe,c.id ASC');
            Qdetail.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qdetail.Open;


            Qdetail2.close;
            Qdetail2.SQl.Clear;
            Qdetail2.SQL.Add(Qdetail2.SQLRefresh.Text);
            Qdetail2.ParamByName('norab').AsString:=urab5.nomor.Caption;
            Qdetail2.Open;


            DM.param_laporan.Open;
            rab.ShowReport(true);

            except on E:Exception do
            begin
                MessageDlg('Terjadi Kesalahan : '+E.Message, mtInformation, [MbOk], 0);
                exit;

            end;
            end;

        end;




    tampilkan.Click;

  end;

end;

procedure TFRrabllimbah.CetakRAB1Click(Sender: TObject);
begin



  if(data_.RecordCount>0)then
  begin

      TRY

            try

            rab.LoadFromFile(GetCurrentDir+'\report\rablainnya.fr3');


            Qreport.close;
            Qreport.SQl.Clear;
            Qreport.SQL.Add('select c.*,r.wilayah,p.jenis FROm rab_lainnya c LEFT JOIN permohonan_lainnya p ON c.nomorpermohonan=p.nomor LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.norab=:norab');
            Qreport.ParamByName('norab').AsString:=data_norab.AsString;
            Qreport.Open;


            Qbarang.close;
            Qbarang.SQl.Clear;
            Qbarang.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
            Qbarang.ParamByName('norab').AsString:=data_norab.AsString;
            Qbarang.Open;


            Qdetail.close;
            Qdetail.SQl.Clear;
            Qdetail.SQL.Add('select c.*,IF(c.dibebankan_pdam="1","PDAM","") as ket2 FROm detailrab c WHERE c.norab=:norab ORDER BY c.tipe,c.id ASC');
            Qdetail.ParamByName('norab').AsString:=data_norab.AsString;
            Qdetail.Open;


            Qdetail2.close;
            Qdetail2.SQl.Clear;
            Qdetail2.SQL.Add(Qdetail2.SQLRefresh.Text);
            Qdetail2.ParamByName('norab').AsString:=data_norab.AsString;
            Qdetail2.Open;


            DM.param_laporan.Open;
            rab.ShowReport(true);

            except on E:Exception do
            begin
                MessageDlg('Terjadi Kesalahan : '+E.Message, mtInformation, [MbOk], 0);
                exit;

            end;
            end;

      FINALLY
          DM.VPS.close;
      END;






  end;


end;

procedure TFRrabllimbah.CetakBPPI1Click(Sender: TObject);
begin

  if(Qhost.RecordCount>0)then
  begin

      bppi.LoadFromFile(GetCurrentDir+'\report\bppilainnya.fr3');



    Qreport.close;
    Qreport.SQl.Clear;
    Qreport.SQL.Add('select c.*,p.jenis FROm rab_lainnya c LEFT JOIN permohonan_lainnya p ON c.nomorpermohonan=p.nomor WHERE c.norab=:norab');
    Qreport.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
    Qreport.Open;

    TfrxMemoView(bppi.FindObject('terbilang')).Memo.Text:=DM.EjaAngkasen(FormatCurr('##0.#0',Qreport.fieldbyname('grandtotal').Value));

    bppi.ShowReport();



  end;

end;

procedure TFRrabllimbah.CetakSPPB1Click(Sender: TObject);
var
romawi:String;
_nomorsppb:String;
begin

  if(Qhost.RecordCount>0)then
  begin

    sppb.LoadFromFile(GetCurrentDir+'\report\sppblainnya.fr3');


  


    if(Qhost.fieldbyname('nomorsppb').AsString='')then
    begin


       if  MessageDlg('BUAT SPPB UNTUK NO. RAB : '+Qhost.fieldbyname('norab').AsString+' ?', mtConfirmation, [MbYes,MbNo], 0)=MrNo then
       begin
           exit;
       end;


       TRY

       umain.Enabled:=false;
       Enabled:=false;

        TRY


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('START TRANSACTION');
        DM.Qexec.Execute;



                if (FormatDateTime('MM',date)='01') then
                romawi:='I'
                else if (FormatDateTime('MM',date)='02') then
                romawi:='II'
                else if (FormatDateTime('MM',date)='03') then
                romawi:='III'
                else if (FormatDateTime('MM',date)='04') then
                romawi:='IV'
                else if (FormatDateTime('MM',date)='05') then
                romawi:='V'
                else if (FormatDateTime('MM',date)='06') then
                romawi:='VI'
                else if (FormatDateTime('MM',date)='07') then
                romawi:='VII'
                else if (FormatDateTime('MM',date)='08') then
                romawi:='VIII'
                else if (FormatDateTime('MM',date)='09') then
                romawi:='IX'
                else if (FormatDateTime('MM',date)='10') then
                romawi:='X'
                else if (FormatDateTime('MM',date)='11') then
                romawi:='XI'
                else if (FormatDateTime('MM',date)='12') then
                romawi:='XII'
                else
                romawi:='..';


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="SPPB" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                DM.Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                Dm.Qcek.Open;

                _urutan:=StrToInt(DM.Qcek.fieldbyname('urutan').AsString) ;

                _nomorsppb:= DM.Qcek.fieldbyname('urutan').AsString+' / SPPB / '+romawi+' / '+FormatDateTime('YYYY',date);


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis) VALUES (:nomor,:urutan,:waktu,:jenis)');
                DM.Qexec.ParamByName('nomor').AsString:=_nomorsppb;
                DM.Qexec.ParamByName('urutan').AsInteger:= _urutan;
                DM.Qexec.ParamByName('waktu').AsDateTime:=Now;
                DM.Qexec.ParamByName('jenis').AsString:='SPPB';
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('UPDATE rab_lainnya SET nomorsppb=:nomorsppb WHERE norab=:norab');
                DM.Qexec.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
                DM.Qexec.ParamByName('nomorsppb').AsString:=_nomorsppb;
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;





                DM.logakses('Buat Nomor SPPB : '+_nomorsppb+'','SPPB','BSHL',ulogin.versi.Caption,umain.serial.Caption);


                Qhost.SQLRefresh.Clear;
                Qhost.SQLRefresh.Add('select c.*');
                Qhost.SQLRefresh.Add('FROm rab_lainnya c WHERE c.flaghapus="0" AND c.norab=:norab');
                Qhost.RefreshRecord;


           EXCEPT On E:EXCEPTION  DO
           BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

           END;
           END;
           
        FINALLY
            umain.Enabled:=true;
            Enabled:=true;  
        END;


    end;



    Qreport.close;
    Qreport.SQl.Clear;
    Qreport.SQL.Add('select c.*,p.jenis,w.waktu FROm rab_lainnya c LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor LEFT JOIN penomoran w ON c.nomorspkp=w.nomor WHERE c.norab=:norab');
    Qreport.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
    Qreport.Open;


    Qbarang.close;
    Qbarang.SQl.Clear;
    Qbarang.SQL.Add('( SELECT * FROM detailrab WHERE norab=:norab AND tipe="MATERIAL" )');
    Qbarang.SQL.Add('UNION');
    Qbarang.SQL.Add('( SELECT * FROM detailrab_rehap WHERE norab=:norab AND tipe="MATERIAL" )');
    Qbarang.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
    Qbarang.Open;

    sppb.ShowReport();



  end;
end;

procedure TFRrabllimbah.CetakSPKPemasangan1Click(Sender: TObject);
var
romawi:String;
_nomorspkp:String;
begin

  if(data_.RecordCount>0)then
  begin


     if(data_flaglunas.AsString<>'1') and (data_grandtotal.AsCurrency>0)then
    begin
       MessageDlg('TAGIHAN RAB BELUM DI LUNASI... !!', mtWarning, [MbOk], 0);
       exit; 

    end;



     TRY

       umain.Enabled:=false;
       Enabled:=false;



    spkp.LoadFromFile(GetCurrentDir+'\report\spkplainnya.fr3');



    if(data_nomorspkp.AsString='')then
    begin

       if  MessageDlg('BUAT SPKP UNTUK NO. RAB : '+data_norab.AsString+' ?', mtConfirmation, [MbYes,MbNo], 0)=MrNo then
       begin
           exit;
       end;





        TRY


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('START TRANSACTION');
        DM.Qexec.Execute;

       



                if (FormatDateTime('MM',date)='01') then
                romawi:='I'
                else if (FormatDateTime('MM',date)='02') then
                romawi:='II'
                else if (FormatDateTime('MM',date)='03') then
                romawi:='III'
                else if (FormatDateTime('MM',date)='04') then
                romawi:='IV'
                else if (FormatDateTime('MM',date)='05') then
                romawi:='V'
                else if (FormatDateTime('MM',date)='06') then
                romawi:='VI'
                else if (FormatDateTime('MM',date)='07') then
                romawi:='VII'
                else if (FormatDateTime('MM',date)='08') then
                romawi:='VIII'
                else if (FormatDateTime('MM',date)='09') then
                romawi:='IX'
                else if (FormatDateTime('MM',date)='10') then
                romawi:='X'
                else if (FormatDateTime('MM',date)='11') then
                romawi:='XI'
                else if (FormatDateTime('MM',date)='12') then
                romawi:='XII'
                else
                romawi:='..';


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="SPK-'+jenis.Text+'" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                DM.Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                Dm.Qcek.Open;

                _urutan:=StrToInt(DM.Qcek.fieldbyname('urutan').AsString) ;

                _nomorspkp:= DM.Qcek.fieldbyname('urutan').AsString+' / SPK-'+jenis.Text+' / '+romawi+' / '+FormatDateTime('YYYY',date);


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis) VALUES (:nomor,:urutan,:waktu,:jenis)');
                DM.Qexec.ParamByName('nomor').AsString:=_nomorspkp;
                DM.Qexec.ParamByName('urutan').AsInteger:= _urutan;
                DM.Qexec.ParamByName('waktu').AsDateTime:=Now;
                DM.Qexec.ParamByName('jenis').AsString:='SPK-'+jenis.Text+'';
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('UPDATE rab_lainnya SET nomorspkp=:nomorspkp WHERE norab=:norab');
                DM.Qexec.ParamByName('norab').AsString:=data_norab.AsString;
                DM.Qexec.ParamByName('nomorspkp').AsString:=_nomorspkp;
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;





                DM.logakses('Buat Nomor SPK-'+jenis.Text+' : '+_nomorspkp+'','SPK','BSHL',ulogin.versi.Caption,umain.serial.Caption);


                data_.Edit;
                data_nomorspkp.AsString:=_nomorspkp;
                data_.Post;


           EXCEPT On E:EXCEPTION  DO
           BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

           END;
           END;
           



    end;



    Qreport.close;
    Qreport.SQl.Clear;
    Qreport.SQL.Add('select c.*,w.waktu,p.jenis FROm rab_lainnya c LEFT JOIN penomoran w ON c.nomorspkp=w.nomor LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor WHERE c.norab=:norab');
    Qreport.ParamByName('norab').AsString:=data_norab.AsString;
    Qreport.Open;   


    spkp.ShowReport();


     FINALLY
        umain.Enabled:=true;
        Enabled:=true;
        DM.VPS.close;
    END;





  end;
end;
procedure TFRrabllimbah.BAP1Click(Sender: TObject);
var
romawi:String;
_nomorbapb:String;
begin

  if(Qhost.RecordCount>0)then
  begin

    bapb.LoadFromFile(GetCurrentDir+'\report\bapblainnya.fr3');


    {if(Qhost.fieldbyname('nomorsppb').AsString='')then
    begin
       MessageDlg('HARAP BUAT SPPB TERLEBIH DAHULU... !!', mtWarning, [MbOk], 0);
       exit;

    end; }


    if(Qhost.fieldbyname('nomorbapb').AsString='')then
    begin


       if  MessageDlg('BUAT BAPB UNTUK NO. RAB : '+Qhost.fieldbyname('norab').AsString+' ?', mtConfirmation, [MbYes,MbNo], 0)=MrNo then
       begin
           exit;
       end;


       TRY

       umain.Enabled:=false;
       Enabled:=false;

        TRY


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('START TRANSACTION');
        DM.Qexec.Execute;



                if (FormatDateTime('MM',date)='01') then
                romawi:='I'
                else if (FormatDateTime('MM',date)='02') then
                romawi:='II'
                else if (FormatDateTime('MM',date)='03') then
                romawi:='III'
                else if (FormatDateTime('MM',date)='04') then
                romawi:='IV'
                else if (FormatDateTime('MM',date)='05') then
                romawi:='V'
                else if (FormatDateTime('MM',date)='06') then
                romawi:='VI'
                else if (FormatDateTime('MM',date)='07') then
                romawi:='VII'
                else if (FormatDateTime('MM',date)='08') then
                romawi:='VIII'
                else if (FormatDateTime('MM',date)='09') then
                romawi:='IX'
                else if (FormatDateTime('MM',date)='10') then
                romawi:='X'
                else if (FormatDateTime('MM',date)='11') then
                romawi:='XI'
                else if (FormatDateTime('MM',date)='12') then
                romawi:='XII'
                else
                romawi:='..';


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BAPB-'+jenis.Text+'" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                DM.Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                Dm.Qcek.Open;

                _urutan:=StrToInt(DM.Qcek.fieldbyname('urutan').AsString) ;

                _nomorbapb:= DM.Qcek.fieldbyname('urutan').AsString+' / BAPB-'+jenis.Text+' / '+romawi+' / '+FormatDateTime('YYYY',date);


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis) VALUES (:nomor,:urutan,:waktu,:jenis)');
                DM.Qexec.ParamByName('nomor').AsString:=_nomorbapb;
                DM.Qexec.ParamByName('urutan').AsInteger:= _urutan;
                DM.Qexec.ParamByName('waktu').AsDateTime:=Now;
                DM.Qexec.ParamByName('jenis').AsString:='BAPB-'+jenis.Text+'';
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('UPDATE rab_lainnya SET nomorbapb=:nomorbapb WHERE norab=:norab');
                DM.Qexec.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
                DM.Qexec.ParamByName('nomorbapb').AsString:=_nomorbapb;
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;





                DM.logakses('Buat Nomor BAPB : '+_nomorbapb+'','BAPB','BSHL',ulogin.versi.Caption,umain.serial.Caption);


                Qhost.SQLRefresh.Clear;
                Qhost.SQLRefresh.Add('select c.*');
                Qhost.SQLRefresh.Add('FROm rab_lainnya c WHERE c.flaghapus="0" AND c.norab=:norab');
                Qhost.RefreshRecord;


           EXCEPT On E:EXCEPTION  DO
           BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

           END;
           END;
           
        FINALLY
            umain.Enabled:=true;
            Enabled:=true;  
        END;


    end;



    Qreport.close;
    Qreport.SQl.Clear;
    Qreport.SQL.Add('select c.*,p.jenis,w.waktu FROm rab_lainnya c LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor LEFT JOIN penomoran w ON c.nomorspkp=w.nomor WHERE c.norab=:norab');
    Qreport.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
    Qreport.Open;


    Qbarang.close;
    Qbarang.SQl.Clear;
    Qbarang.SQL.Add('( SELECT * FROM detailrab WHERE norab=:norab AND tipe="MATERIAL" )');
    Qbarang.SQL.Add('UNION');
    Qbarang.SQL.Add('( SELECT * FROM detailrab_rehap WHERE norab=:norab AND tipe="MATERIAL" )');
    Qbarang.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;
    Qbarang.Open;

    bapb.ShowReport();



  end;
end;


procedure TFRrabllimbah.BuatBeritaAcarapemasangan1Click(Sender: TObject);
var
romawi:String;
_nomorbap:String;
begin

   if  MessageDlg('INPUT / KOREKSi BAP UNTUK NO. RAB : '+data_norab.AsString+' ?', mtConfirmation, [MbYes,MbNo], 0)=MRyes then
   begin
       


        Ucombo.isikombo;
        ubap4._norab:=data_norab.AsString;
        ubap4._nomor:=data_nomorba.AsString;
        ubap4.petugas.Properties.Items:=Ucombo.pegawai.Properties.Items;
        ubap4.nik.Properties.Items:=Ucombo.nikpegawai.Properties.Items;
        ubap4.merkmeter.Properties.Items:=Ucombo.merk.Properties.Items;





        ubap4.tanggal.date:=date;
        ubap4.stan.Value:= data_stanawalpasang.AsCurrency;
        ubap4.petugas.Text:=data_petugaspasang.AsString;
        ubap4.nik.Text:=data_nikpetugas.AsString;
        ubap4.merkmeter.Text:=data_merkmeter.AsString;
        ubap4.kondisimeter.Text:=data_kondisimeter.AsString;
        ubap4.keteranganmeter.Text:=data_keteranganmeter.AsString;
        ubap4.serimeter.Text:=data_serimeter.AsString;



        if ubap4.showmodal=mrOk then
        begin      




                   data_.Edit;
                   data_nomorba.AsString:=ubap4._nomor;
                   data_flagpasang.AsString:='1';
                   data_.Post;

                    CetakBAP1.Click;



        end;

   end
   else
    exit;

  
end;

procedure TFRrabllimbah.PembatalanRAB1Click(Sender: TObject);
begin

 if(data_.RecordCount=0)then
  begin
      MessageDlg('Tidak ada data !!', mtWarning, [MbOk], 0);
      exit;
  end;


  if MessageDlg('PENARIKAN / PEMBATALAN PENAGIHAN "RAB '+jenis.Text+'" NOMOR :  "'+data_norab.AsString+'" ?', mtConfirmation, [MbYes,MbNo], 0)=MrYes then
  begin

         
        TRY

        umain.Enabled:=false;
        Enabled:=false;
            


              DM.Qcek.close;
              Dm.Qcek.SQL.Clear;
              Dm.Qcek.SQL.Add('select * FROm nonair WHERE urutan=:urutan AND flaglunas="1"');
              Dm.Qcek.ParamByName('urutan').AsString:= data_norab.AsString;
              DM.Qcek.Open;



              if(Dm.Qcek.RecordCount>0)then
              begin
                  MessageDlg('TAGIHAN RAB SUDAH DI LUNASI !!', mtWarning, [MbOk], 0);
                  exit;
              end;
              



           utarikrab.memo.Text:= data_alasanpenarikan.AsString;
        if utarikrab.ShowModal=mrOk then
        begin


            



            TRY





              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('START TRANSACTION');
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE rab_lainnya SET flagditarik="1",alasanpenarikan=:alasanpenarikan WHERE norab=:norab');
              DM.Qexec.ParamByName('norab').AsString:=data_norab.AsString;
              DM.Qexec.ParamByName('alasanpenarikan').AsString:=utarikrab.memo.text;
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE nonair SET flaghapus="1",waktuupdate=NOW() WHERE urutan=:urutan');
              DM.Qexec.ParamByName('urutan').AsString:=data_norab.AsString;
              DM.Qexec.Execute;


              DM.logakses('Penarikan/Pembatalan Tagihan RAB Lainnya '+jenis.Text+' : '+data_norab.AsString+'','RAB '+jenis.Text+'','BSHL',ulogin.versi.Caption,umain.serial.Caption);


              
              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

             
              data_.Edit;
              data_flagditarik.AsString:='1';
              data_alasanpenarikan.AsString:=utarikrab.memo.text;
              data_.Post;




            

               EXCEPT On E:EXCEPTION  DO
               BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
              
               END;
               END;




      end;



        FINALLY
                umain.Enabled:=true;
                Enabled:=true;
                DM.VPS.close;
           
        END;

      

  end
  else
    exit;
end;

procedure TFRrabllimbah.SetSudahLunas1Click(Sender: TObject);
begin
  if(Qhost.RecordCount=0)then
    begin
        MessageDlg('Tidak ada data !!', mtWarning, [MbOk], 0);
        exit;
    end;


    if MessageDlg('SET SUDAH LUNAS TAGIHAN RAB :  "'+Qhost.fieldbyname('norab').AsString+'" ?', mtConfirmation, [MbYes,MbNo], 0)=MrYes then
    begin



            
           TRY

            TRY

               umain.Enabled:=false;
               Enabled:=false;



              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('START TRANSACTION');
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('UPDATE rab_lainnya SET flaglunas="1" WHERE norab=:norab');
              DM.Qexec.ParamByName('norab').AsString:=Qhost.fieldbyname('norab').AsString;            
              DM.Qexec.Execute;


              DM.logakses('Pelunasan : '+Qhost.fieldbyname('norab').AsString+'','RAB '+jenis.Text+'','BSHL',ulogin.versi.Caption,umain.serial.Caption);


              
              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              Dm.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

             
              Qhost.SQLRefresh.Clear;
              Qhost.SQLRefresh.Add('SELECT c.*,p.`keterangan` FROM rab_lainnya c LEFT JOIN rayon r ON c.koderayon=r.koderayon  LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor WHERE c.flaghapus="0" AND p.jenis="'+jenis.Text+'" AND c.norab=:norab');
              Qhost.RefreshRecord;



            

               EXCEPT On E:EXCEPTION  DO
               BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
              
               END;
               END;

            FINALLY
                umain.Enabled:=true;
                Enabled:=true;
           
            END;



      

  end
  else
    exit;
end;

procedure TFRrabllimbah.CetakBAP1Click(Sender: TObject);
begin
  if(data_.RecordCount>0)then
  begin


  if (data_nomorba.AsString='')then
    begin
       MessageDlg('Harap Buat BA terlebih dahulu.. !!', mtWarning, [MbOk], 0);
        exit;

    end;
                    bap.LoadFromFile(GetCurrentDir+'\report\balainnya.fr3');

                    Qreport.close;
                    Qreport.SQl.Clear;
                    Qreport.SQL.Add('select c.*,p.jenis,w.waktu,p.jenis FROm rab_lainnya c LEFT JOIN `permohonan_lainnya` p ON c.nomorpermohonan=p.nomor LEFT JOIN penomoran w ON c.nomorspkp=w.nomor WHERE c.norab=:norab');
                    Qreport.ParamByName('norab').AsString:=data_norab.AsString;
                    Qreport.Open;  

                    bap.ShowReport();

                    DM.VPS.close;

  end;
end;

procedure TFRrabllimbah.gridCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridba.Index], varstring)='') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=   $0059FFFF;
    end
    end
    ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridba.Index], varstring)<>'') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=   $008BFF35;
    end
    end;
end;

procedure TFRrabllimbah.RAB1Click(Sender: TObject);
begin
  rab.LoadFromFile(GetCurrentDir+'\report\rablainnya.fr3');
  rab.DesignReport(true);
end;

procedure TFRrabllimbah.BPPI1Click(Sender: TObject);
begin
 bppi.LoadFromFile(GetCurrentDir+'\report\bppilainnya.fr3');
  bppi.DesignReport(true);
end;

procedure TFRrabllimbah.SPK1Click(Sender: TObject);
begin
 spkp.LoadFromFile(GetCurrentDir+'\report\spkplainnya.fr3');
 spkp.DesignReport(true);
end;

procedure TFRrabllimbah.SPPB1Click(Sender: TObject);
begin
   sppb.LoadFromFile(GetCurrentDir+'\report\sppblainnya.fr3');
  sppb.DesignReport(true);
end;

procedure TFRrabllimbah.BAPB1Click(Sender: TObject);
begin
 bapb.LoadFromFile(GetCurrentDir+'\report\bapblainnya.fr3');
  bapb.DesignReport(true);
end;

procedure TFRrabllimbah.BAP2Click(Sender: TObject);
begin
 baptemp.LoadFromFile(GetCurrentDir+'\report\baplainnyatemporari.fr3');
  baptemp.DesignReport(true);
end;

procedure TFRrabllimbah.BAP3Click(Sender: TObject);
begin
 bap.LoadFromFile(GetCurrentDir+'\report\baplainnya.fr3');
  bap.DesignReport(true);
end;

procedure TFRrabllimbah.xkodewilPropertiesChange(Sender: TObject);
begin
xwilayah.ItemIndex:=xkodewil.ItemIndex;
end;

procedure TFRrabllimbah.xwilayahPropertiesChange(Sender: TObject);
begin
xkodewil.ItemIndex:=xwilayah.ItemIndex;
end;

procedure TFRrabllimbah.cekwilClick(Sender: TObject);
begin
if(cekwil.Checked=true)then
  begin
      xkodewil.Enabled:=true;
      xwilayah.Enabled:=true;
      xkodewil.SetFocus;
  end
  else
  begin
     xkodewil.Enabled:=false;
     xwilayah.Enabled:=false;
  end;
end;

procedure TFRrabllimbah.cekalamatClick(Sender: TObject);
begin
if(cekalamat.Checked=true)then
  begin
      xalamat.Enabled:=true;
      xalamat.SetFocus;
  end
  else
  begin
     xalamat.Enabled:=false;
  end;
end;

procedure TFRrabllimbah.gridCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
Koreksi.Click;
end;

procedure TFRrabllimbah.cxButton1Click(Sender: TObject);
begin


 if (jenis.Text='')then
 begin
     Exit;
 end;



if cxButton1.Caption='Tampil' then
   begin


    cxPageControl1.Visible:=true;
    jenis.Enabled:=false;
    cxButton1.Caption:='Ganti';
    tampilkan.Click;

   end
   else
   begin

    cxPageControl1.Visible:=false;
    jenis.Enabled:=true;
    Qhost.close;
    cxButton1.Caption:='Tampil';

   end;
end;

procedure TFRrabllimbah.cektanggalbaClick(Sender: TObject);
begin
if(cektanggalba.Checked=true)then
  begin
      tanggalba1.Enabled:=true;
      tanggalba2.Enabled:=true;
      tanggalba1.SetFocus;
  end
  else
  begin
     tanggalba1.Enabled:=false;
     tanggalba2.Enabled:=false;
  end;
end;

procedure TFRrabllimbah.UploadDenah1Click(Sender: TObject);
var
app:string;
begin


  TRY

    TRY


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('REPLACE INTO dumpuploadgambar (serial,nomor,jenis) values (:serial,:nomor,:jenis)');
        DM.Qexec.ParamByName('serial').AsString:=umain.serial.Caption;
        DM.Qexec.ParamByName('jenis').AsString:='LAINNYA';
        DM.Qexec.ParamByName('nomor').AsString:=data_norab.AsString;
        DM.Qexec.Execute;


      app := GetCurrentDir+'\DENAH.exe';//       
      ShellExecute(Handle, 'open', PAnsiChar(app), Nil, Nil, SW_SHOWNORMAL);


   EXCEPT ON E:Exception do
  begin

   MessageDlg('TERJADI KESALAHAN : '+char(13)+E.Message, mtInformation, [MbOk], 0);
   exit;

  end;
  END;

  FINALLY
      DM.VPS.close;

  END;

end;

procedure TFRrabllimbah.CetakDenah1Click(Sender: TObject);
var
    a:TStream;
    jpg:TJpegImage;
begin
  if(data_.RecordCount>0)then
  begin   

    TRY  

      Enabled:=false;
      umain.Enabled:=false;

    TRY


      denah.LoadFromFile(GetCurrentDir+'\report\denahlainnya.fr3');

                  
       
        TfrxMemoView(denah.FindObject('norab')).Memo.Text:= data_norab.AsString;
        TfrxMemoView(denah.FindObject('nomorgambar')).Memo.Text:=data_norab.AsString;
        TfrxMemoView(denah.FindObject('nama')).Memo.Text:= data_nama.AsString;
        TfrxMemoView(denah.FindObject('alamat')).Memo.Text:=data_alamat.AsString;
        TfrxMemoView(denah.FindObject('nosamb')).Memo.Text:= data_nosamb.AsString;
        TfrxMemoView(denah.FindObject('jenis')).Memo.Text:= data_jenis.asstring;




      DM.Qcek.close;
      DM.Qcek.SQl.Clear;
      DM.Qcek.SQL.Add('select * FROm gambar_lainnya WHERE norab=:norab');
      DM.Qcek.ParamByName('norab').AsString:=data_norab.AsString;
      DM.Qcek.Open;

      TfrxPictureView(denah.FindObject('gambar')).Visible:=false;


      if (DM.Qcek.RecordCount>0) then
      begin


          a:=DM.Qcek.CreateBlobStream(DM.Qcek.FieldByName('foto'),bmread);
          jpg:=TJpegImage.Create;

          jpg.LoadFromStream(a);
        
          TfrxPictureView(denah.FindObject('gambar')).Picture.Assign(jpg);
          TfrxPictureView(denah.FindObject('gambar')).Visible:=true;


      end;

      DM.param_laporan.Open;
    
      denah.ShowReport(true);


      EXCEPT ON E:Exception do
      begin

       MessageDlg('TERJADI KESALAHAN : '+char(13)+E.Message, mtInformation, [MbOk], 0);
       exit;

      end;
      END;



    FINALLY
     a.Free;
     jpg.Free;

      Enabled:=true;
      umain.Enabled:=true;

      DM.VPS.close;



    END;


  end;


end;


procedure TFRrabllimbah.ceknosambClick(Sender: TObject);
begin
if(ceknosamb.Checked=true)then
  begin
      xnosamb.Enabled:=true;
      xnosamb.SetFocus;
  end
  else
  begin
     xnosamb.Enabled:=false;
  end;
end;

procedure TFRrabllimbah.KoreksiRKP1Click(Sender: TObject);
begin

    if data_.RecordCount>0 then
      begin
        uhps1.nomor.Caption:=data_norab.AsString;
        Uhps1.load.Click;
        Uhps1.ShowModal; 
      end;
      
end;

procedure TFRrabllimbah.BuatSuratPermintaanPengambilanBarangSPPB1Click(
  Sender: TObject);
var
romawi:String;
_nomorsppb:String;
begin

  if(data_.RecordCount>0)then
  begin


     if(data_flaglunas.AsString='0') and (data_grandtotal.AsCurrency>0)then
    begin
       MessageDlg('TAGIHAN RAB BELUM DI LUNASI... !!', mtWarning, [MbOk], 0);
       exit;

    end;


    sppb.LoadFromFile(GetCurrentDir+'\report\sppblainnya.fr3');


   TRY

     umain.Enabled:=false;
     Enabled:=false;


    if(data_nomorsppb.AsString='')then
    begin


       if  MessageDlg('BUAT SPPB UNTUK NO. RAB : '+data_norab.AsString+' ?', mtConfirmation, [MbYes,MbNo], 0)=MrNo then
       begin
           exit;
       end;




        TRY


        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('START TRANSACTION');
        DM.Qexec.Execute;



                if (FormatDateTime('MM',date)='01') then
                romawi:='I'
                else if (FormatDateTime('MM',date)='02') then
                romawi:='II'
                else if (FormatDateTime('MM',date)='03') then
                romawi:='III'
                else if (FormatDateTime('MM',date)='04') then
                romawi:='IV'
                else if (FormatDateTime('MM',date)='05') then
                romawi:='V'
                else if (FormatDateTime('MM',date)='06') then
                romawi:='VI'
                else if (FormatDateTime('MM',date)='07') then
                romawi:='VII'
                else if (FormatDateTime('MM',date)='08') then
                romawi:='VIII'
                else if (FormatDateTime('MM',date)='09') then
                romawi:='IX'
                else if (FormatDateTime('MM',date)='10') then
                romawi:='X'
                else if (FormatDateTime('MM',date)='11') then
                romawi:='XI'
                else if (FormatDateTime('MM',date)='12') then
                romawi:='XII'
                else
                romawi:='..';


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="SPPB" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                DM.Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                Dm.Qcek.Open;

                _urutan:=StrToInt(DM.Qcek.fieldbyname('urutan').AsString) ;

                _nomorsppb:= DM.Qcek.fieldbyname('urutan').AsString+' / SPPB / '+romawi+' / '+FormatDateTime('YYYY',date);


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis) VALUES (:nomor,:urutan,:waktu,:jenis)');
                DM.Qexec.ParamByName('nomor').AsString:=_nomorsppb;
                DM.Qexec.ParamByName('urutan').AsInteger:= _urutan;
                DM.Qexec.ParamByName('waktu').AsDateTime:=Now;
                DM.Qexec.ParamByName('jenis').AsString:='SPPB';
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('UPDATE rab_lainnya SET nomorsppb=:nomorsppb WHERE norab=:norab');
                DM.Qexec.ParamByName('norab').AsString:=data_norab.AsString;
                DM.Qexec.ParamByName('nomorsppb').AsString:=_nomorsppb;
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;





                DM.logakses('Buat Nomor SPPB : '+_nomorsppb+'','SPPB','BSHL',ulogin.versi.Caption,umain.serial.Caption);


               data_.Edit;
               data_nomorsppb.AsString:=_nomorsppb;
               data_.Post;

           EXCEPT On E:EXCEPTION  DO
           BEGIN

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  Dm.Qexec.SQL.Add('ROLLBACk');
                  DM.Qexec.Execute;

                  MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

           END;
           END;
           



    end;



    Qreport.close;
    Qreport.SQl.Clear;
    Qreport.SQL.Add('select c.*,r.wilayah,p.jenis FROm rab_lainnya c LEFT JOIN permohonan_lainnya p ON c.nomorpermohonan=p.nomor LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.norab=:norab');
    Qreport.ParamByName('norab').AsString:=data_norab.AsString;
    Qreport.Open;


    Qbarang.close;
    Qbarang.SQl.Clear;
    Qbarang.SQL.Add('select c.*,IF(c.vendor="1","VENDOR","") as sumberbarang FROm detailrab_hps c WHERE c.norab=:norab AND c.tipe LIKE "MATERIAL%" ORDER BY c.id ASC');
    Qbarang.ParamByName('norab').AsString:=data_norab.AsString;
    Qbarang.Open;                                                                               


    DM.param_laporan.Open;

    sppb.ShowReport();


  FINALLY
      umain.Enabled:=true;
      Enabled:=true;
      DM.VPS.close; 
  END;



  end;
end;

procedure TFRrabllimbah.Denah1Click(Sender: TObject);
begin
   denah.LoadFromFile(GetCurrentDir+'\report\denahlainnya.fr3');
  denah.DesignReport(true);
end;

end.
