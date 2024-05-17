unit FRAME_rab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, cxContainer, cxEdit,
  Menus, StdCtrls, cxButtons, cxLabel, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxCheckBox, RzPanel, cxScrollBox, ExtCtrls,
  RzSplit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS, cxCalendar, dxmdaset,
  dxSkiniMaginary, RzTabs;

type
  TFRrab = class(TFrame)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Qrab: TMyQuery;
    Qrabnorab: TStringField;
    Qrabnomorspko: TStringField;
    Qrabnomorreg: TStringField;
    Qrabnomorgambar: TStringField;
    Qrabnomorrkp: TStringField;
    Qrabnomorapbd: TStringField;
    Qrabnomorspl: TStringField;
    Qrabnomorspkp: TStringField;
    Qrabtanggalspkp: TDateField;
    Qrabnomorsppb: TStringField;
    Qrabnomorbapb: TStringField;
    Qrabnomorba: TStringField;
    Qrabnomorbppi: TStringField;
    Qrabtanggalbppi: TDateField;
    Qrabnama: TStringField;
    Qrabalamat: TStringField;
    Qrabtglrab: TDateField;
    Qrabvaliddate: TDateField;
    Qrabflaglunas: TSmallintField;
    Qrabgrandtotal: TFloatField;
    Qrabwaktubayar: TDateTimeField;
    Qrabnohp: TStringField;
    Qrabnotelp: TStringField;
    Qrabkodegol: TStringField;
    Qrabkodediameter: TStringField;
    Qrabkoderayon: TStringField;
    Qrabkodekolektif: TStringField;
    Qrabserimeter: TStringField;
    Qrabmerkmeter: TStringField;
    Qrabpekerjaan: TStringField;
    Qrabnoktp: TStringField;
    Qrabnamapemilik: TStringField;
    Qrabkepemilikanbangunan: TStringField;
    Qrabpenghuni: TStringField;
    Qrabstanawalpasang: TFloatField;
    Qrabsumberair: TStringField;
    Qrabflagpasang: TStringField;
    Qrabtglpasang: TDateField;
    Qrabpetugaspasang: TStringField;
    Qrabnikpetugaspasang: TStringField;
    Qrabflagaktif: TStringField;
    Qrabwaktupengaktifan: TDateTimeField;
    Qrabnosambyangdiberikan: TStringField;
    Qrabemail: TStringField;
    Qrabflagangsur: TStringField;
    Qrabnorumah: TStringField;
    Qrabrt: TStringField;
    Qrabrw: TStringField;
    Qrabflaghapus: TStringField;
    Qrabtglmulaitagih: TDateField;
    Qrabflagditarik: TStringField;
    Qrabalasanpenarikan: TMemoField;
    Qrabketalamat: TStringField;
    QrabSTATUSrab: TStringField;
    Drab: TMyDataSource;
    MyDataSource1: TMyDataSource;
    Qhost: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    SmallintField1: TSmallintField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    DateField3: TDateField;
    StringField14: TStringField;
    DateTimeField2: TDateTimeField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField2: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    mem_: TdxMemData;
    mem_noreg: TStringField;
    mem_grandtotal: TCurrencyField;
    mem_nohp: TStringField;
    mem_notelp: TStringField;
    mem_kodegol: TStringField;
    mem_kodediameter: TStringField;
    mem_koderayon: TStringField;
    mem_kodekolektif: TStringField;
    mem_serimeter: TStringField;
    mem_merkmeter: TStringField;
    mem_namapemilik: TStringField;
    mem_pekerjaan: TStringField;
    mem_noktp: TStringField;
    mem_kepemilikanbangunan: TStringField;
    mem_stanawalpasang: TCurrencyField;
    mem_sumberair: TStringField;
    mem_penghuni: TStringField;
    mem_flagpasang: TStringField;
    mem_tglpasang: TDateTimeField;
    mem_flagaktif: TStringField;
    mem_flaglunas: TStringField;
    mem_nosambyangdiberikan: TStringField;
    mem_genap: TStringField;
    mem_status: TStringField;
    mem_validdate: TDateField;
    mem_waktubayar: TStringField;
    mem_waktupengaktifan: TStringField;
    mem_norab: TStringField;
    mem_norumah: TStringField;
    mem_rt: TStringField;
    mem_rw: TStringField;
    mem_tglrab: TDateField;
    mem_alamat: TStringField;
    mem_nama: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    MyDataSource2: TMyDataSource;
    data_: TdxMemData;
    data_uraian: TStringField;
    data_jumlah: TIntegerField;
    RzSizePanel2: TRzSizePanel;
    cxScrollBox4: TcxScrollBox;
    RzPanel3: TRzPanel;
    cekblok: TcxCheckBox;
    blok: TcxTextEdit;
    cekket: TcxCheckBox;
    keterangan: TcxComboBox;
    RzPanel8: TRzPanel;
    ceknorab: TcxCheckBox;
    norab: TcxTextEdit;
    nama: TcxTextEdit;
    cekwil: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    kodewil: TcxComboBox;
    kodegol: TcxComboBox;
    cekgol: TcxCheckBox;
    limit: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    refresh: TcxButton;
    wilayah: TcxComboBox;
    rayon: TcxComboBox;
    golongan: TcxComboBox;
    ceknodaftar: TcxCheckBox;
    nodaftar: TcxTextEdit;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    RzPanel2: TRzPanel;
    RzPanel10: TRzPanel;
    RzPanel4: TRzPanel;
    ss: TcxGrid;
    grid: TcxGridDBTableView;
    gridwaktubayar: TcxGridDBColumn;
    gridnorab: TcxGridDBColumn;
    gridColumn3: TcxGridDBColumn;
    gridnama: TcxGridDBColumn;
    gridalamat: TcxGridDBColumn;
    gridgrandtotal: TcxGridDBColumn;
    gridtglinput: TcxGridDBColumn;
    gridvaliddate: TcxGridDBColumn;
    gridlunas: TcxGridDBColumn;
    gridnohp: TcxGridDBColumn;
    gridnotelp: TcxGridDBColumn;
    gridflagpasang: TcxGridDBColumn;
    gridtglpasang: TcxGridDBColumn;
    gridColumn1: TcxGridDBColumn;
    gridkodegol: TcxGridDBColumn;
    gridkodediameter: TcxGridDBColumn;
    gridkoderayon: TcxGridDBColumn;
    gridkodekolektif: TcxGridDBColumn;
    gridserimeter: TcxGridDBColumn;
    gridmerkmeter: TcxGridDBColumn;
    gridpekerjaan: TcxGridDBColumn;
    gridnoktp: TcxGridDBColumn;
    gridnamapemilik: TcxGridDBColumn;
    gridkepemilikanbangunan: TcxGridDBColumn;
    gridpenghuni: TcxGridDBColumn;
    gridstanawalpasang: TcxGridDBColumn;
    gridsumberair: TcxGridDBColumn;
    gridgenap: TcxGridDBColumn;
    gridColumn2: TcxGridDBColumn;
    gridnoreg: TcxGridDBColumn;
    gridstatus: TcxGridDBColumn;
    ssLevel1: TcxGridLevel;
    RzPanel6: TRzPanel;
    RzPanel5: TRzPanel;
    print: TcxButton;
    pengaktifan: TcxButton;
    cxButton1: TcxButton;
    export: TcxButton;
    procedure refreshClick(Sender: TObject);
    procedure pengaktifanClick(Sender: TObject);
    procedure gridCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ceknorabClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekwilClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekgolClick(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure rayonPropertiesChange(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure ceknodaftarClick(Sender: TObject);
    procedure ceklainnyaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure isicombopelanggan();
    procedure akses();
  end;

implementation

{$R *.dfm}   uses Module,UnitMain, UnitTpelanggan, DAteUtils, UnitCombo;


procedure TFRrab.akses();
begin


  {TRY

    TRY

    Umain.openkoneksi_host;

      data_.Close;
      data_.Open;


      DM.Qcekvps.close;
      DM.Qcekvps.SQL.Clear;
      //DM.Qcekvps.SQL.Add('select count()


      data_.Append;
      data_uraian.AsString:='SAMBUNGAN BARU';
      data_jumlah.AsInteger:=0;
      data_.Post;

      data_.Append;
      data_uraian.AsString:='BALIK NAMA';
      data_jumlah.AsInteger:=0;
      data_.Post;


      data_.Append;
      data_uraian.AsString:='PEMUTUSAN/NON AKTIF';
      data_jumlah.AsInteger:=0;
      data_.Post;


  EXCEPT ON E:Exception DO
  BEGIn

     MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
  END;
  END;

 FINALLY
     Umain.host.close;
     Enabled:=true;
 END;  }


  




end;


procedure TFRrab.isicombopelanggan();
begin
  ucombo.isikombo();

  rayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;

  kodegol.properties.items:= Ucombo.kodegol.properties.items;
  golongan.properties.items:= Ucombo.golongan.properties.items;


  kodewil.properties.items:= Ucombo.kodewil.properties.items;
  wilayah.properties.items:= Ucombo.wilayah.properties.items; 

end;
procedure TFRrab.refreshClick(Sender: TObject);
var
j:integer;
begin

 TRY


  TRY

  Enabled:=false;


  grid.DataController.DataSource:=MyDataSource1;

  Qrab.close;
  Qrab.SQL.Clear;
  Qrab.SQL.Add(Qrab.SQLLock.Text);

    if(ceknorab.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.norab LIKE CONCAT("%",:norab,"%")');
        Qrab.ParamByName('norab').AsString:=norab.Text;
    end;

      if(ceknodaftar.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.noreg LIKE CONCAT("%",:noreg,"%")');
        Qrab.ParamByName('noreg').AsString:=nodaftar.Text;
    end;

    if(ceknama.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.nama LIKE CONCAT("%",:nama,"%")');
        Qrab.ParamByName('nama').AsString:=nama.Text;
    end;

     if(cekwil.Checked=true)then
    begin
        Qrab.SQL.Add('AND r.kodewil =:kodewil');
        Qrab.ParamByName('kodewil').AsString:=kodewil.Text;
    end;

      if(cekrayon.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.koderayon =:koderayon');
        Qrab.ParamByName('koderayon').AsString:=koderayon.Text;
    end;


     if(cekgol.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.kodegol =:kodegol');
        Qrab.ParamByName('kodegol').AsString:=kodegol.Text;
    end;


     if(ceklainnya.Checked=true)then
    begin
        Qrab.SQL.Add('AND c.flagaktif =:flagaktif');
        Qrab.ParamByName('flagaktif').AsString:=IntToStr(lainnya.ItemIndex);
    end;


  Qrab.SQL.Add('ORDER BY waktubayar ASC limit :limit');
  Qrab.ParamByName('limit').AsCurrency:=limit.Value;
  Qrab.Open;

  mem_.Close;
  mem_.Open;

  Application.ProcessMessages;

  for j:=1 to Qrab.RecordCount do
  begin

     mem_.Append;





     mem_status.AsString:=QrabSTATUSrab.AsString;
     mem_norab.AsString:=Qrabnorab.AsString;
     mem_noreg.AsString:=Qrabnomorreg.AsString;
     mem_nama.AsString:=Qrabnama.AsString;
     mem_alamat.AsString:=Qrabalamat.AsString;
     mem_alamat.AsString:=Qrabalamat.AsString;
     mem_tglrab.AsDateTime:=Qrabtglrab.AsDateTime;
     mem_validdate.AsDateTime:=Qrabvaliddate.AsDateTime;
     mem_flaglunas.AsString:=Qrabflaglunas.AsString;
     mem_grandtotal.AsCurrency:=Qrabgrandtotal.AsCurrency;
     mem_waktubayar.AsDateTime:=Qrabwaktubayar.AsDateTime;
     mem_nohp.AsString:=Qrabnohp.AsString;
     mem_notelp.AsString:=Qrabnotelp.AsString;
     mem_kodegol.AsString:=Qrabkodegol.AsString ;
     mem_kodediameter.AsString:=Qrabkodediameter.AsString ;
     mem_koderayon.AsString:=Qrabkoderayon.AsString  ;
     mem_kodekolektif.AsString:=Qrabkodekolektif.AsString  ;
     mem_serimeter.AsString:=Qrabserimeter.AsString  ;
     mem_merkmeter.AsString:=Qrabmerkmeter.AsString ;
     mem_pekerjaan.AsString:=Qrabpekerjaan.AsString ;
     mem_noktp.AsString:=Qrabnoktp.AsString      ;
     mem_namapemilik.AsString:=Qrabnamapemilik.AsString  ;
     mem_kepemilikanbangunan.AsString:=Qrabkepemilikanbangunan.AsString;
     mem_penghuni.AsString:=Qrabpenghuni.AsString ;
     mem_stanawalpasang.AsCurrency:=Qrabstanawalpasang.AsCurrency ;
     mem_sumberair.AsString:=Qrabsumberair.AsString   ;
     mem_flagpasang.AsString:=Qrabflagpasang.AsString  ;
     mem_tglpasang.AsDateTime:=Qrabtglpasang.AsDateTime  ;
     mem_flagaktif.AsString:=Qrabflagaktif.AsString  ;
     mem_waktupengaktifan.AsDateTime:=Qrabwaktupengaktifan.AsDateTime;
     mem_nosambyangdiberikan.AsString:=Qrabnosambyangdiberikan.AsString  ;
     mem_norumah.AsString:=Qrabnorumah.AsString  ;
     mem_rt.AsString:=Qrabrt.AsString ;
     mem_rw.AsString:=Qrabrw.AsString ;


     
           if (YearOf(Qrabwaktubayar.AsDateTime)>2000) then
              mem_waktubayar.AsString:=FormatDateTime('DD MMM YYYY hh:mm:ss',Qrabwaktubayar.AsDateTime)
           else
              mem_waktubayar.AsString:='-';

            if (YearOf(Qrabwaktupengaktifan.AsDateTime)>2000) then
              mem_waktupengaktifan.AsString:=FormatDateTime('DD MMM YYYY hh:mm:ss',Qrabwaktupengaktifan.AsDateTime)
           else
              mem_waktupengaktifan.AsString:='-';
 


     if  j mod 2 = 0 then
            mem_genap.AsString:='1'
     else
            mem_genap.AsString:='0';

     mem_.Post;


     Application.ProcessMessages;
     Qrab.Next;
  end;


  grid.DataController.DataSource:=Drab;

  mem_.First;


  EXCEPT ON E:Exception DO
  BEGIn

     MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
  END;
  END;

 FINALLY
     Umain.host.close;
     Enabled:=true;
 END;


end;

procedure TFRrab.pengaktifanClick(Sender: TObject);
begin

  if umain.olah_sambbaru<>'1' then
 begin
     MessageDlg('Maaf, Akses ditolak ', mtInformation, [mbOK], 0);
     exit;
 end;


  if(mem_.RecordCount>0)then
    begin

     if mem_flagaktif.AsString='1' then
     begin
         MessageDlg('Pelanggan sudah di Aktifkan... ', mtInformation, [mbOK], 0);
         exit;
     end;


     if mem_flaglunas.AsString='0' then
     begin
         MessageDlg('Pelanggan belum melunasi tagihan R.A.B !! ', mtWarning, [mbOK], 0);
         exit;
     end;



     DM.Xflag:='Pengaktifan';

     UTpelanggan.status.ItemIndex:=1;

     UTpelanggan.cxButton1.Visible:=true;
     UTpelanggan.status.Enabled:=false;
     
     UTpelanggan.kodegol.Enabled:=true;
     UTpelanggan.golongan.Enabled:=true;
     UTpelanggan.koderayon.Enabled:=true;
     UTpelanggan.namarayon.Enabled:=true;
     UTpelanggan.kodediameter.Enabled:=true;
     UTpelanggan.ukuran.Enabled:=true;
     UTpelanggan.serimeter.Enabled:=true;
     UTpelanggan.tgldaftar.Enabled:=true;
     UTpelanggan.alamat.Enabled:=true;
     UTpelanggan.kodeblok.Enabled:=true;
     UTpelanggan.namablok.Enabled:=true;
     UTpelanggan.merkwm.Enabled:=true;
     UTpelanggan.kelurahan.Enabled:=true;
     UTpelanggan.kodekelurahan.Enabled:=true;
     UTpelanggan.nama.Enabled:=true;
     UTpelanggan.tgldaftar.date:=date;

     UTpelanggan.norumah.Enabled:=true;
     UTpelanggan.rt.Enabled:=true;
     UTpelanggan.rw.Enabled:=true;


     Utpelanggan.nosamb.Text:=mem_nosambyangdiberikan.AsString;

     if(mem_nosambyangdiberikan.AsString='')then
     begin
      UTpelanggan.nosamb.Enabled:=true;
      UTpelanggan.znosambdaribshl:='0';
     end
     else
     begin
      UTpelanggan.nosamb.Enabled:=false;
      UTpelanggan.znosambdaribshl:='1';  
     end;

     Utpelanggan.nama.Text:=mem_nama.AsString;
     Utpelanggan.alamat.Text:=mem_alamat.AsString;;
     Utpelanggan.telp.Text:=mem_notelp.AsString;
     Utpelanggan.gsmcdma.Text:=mem_nohp.AsString;
     Utpelanggan.pekerjaan.Text:=mem_pekerjaan.AsString;
     Utpelanggan.noktp.Text:=mem_noktp.AsString;
     Utpelanggan.namapemilik.Text:=mem_namapemilik.AsString;
     Utpelanggan.penghuni.Text:=mem_penghuni.AsString;
     Utpelanggan.serimeter.Text:=mem_serimeter.AsString;
     Utpelanggan.stan.Value:=mem_stanawalpasang.AsCurrency;

     Utpelanggan.zkodegol:=mem_kodegol.AsString;
     Utpelanggan.zkodediameter:=mem_kodediameter.AsString;
     Utpelanggan.zkodekolektif:=mem_kodekolektif.AsString;
     Utpelanggan.zkoderayon:=mem_koderayon.AsString;
     Utpelanggan.zmerk:= mem_merkmeter.AsString;
     Utpelanggan.Zkepemilikan:= mem_kepemilikanbangunan.AsString;
     Utpelanggan.Zsumberair:= mem_sumberair.AsString;

     Utpelanggan.zkodeadmlain:= '-';
     Utpelanggan.zkodepemlain:='-';
     Utpelanggan.zkoderetlain:= '-';
     Utpelanggan.zkodekelurahan:= '-';
     Utpelanggan.znopendaftaran:= mem_noreg.AsString;
     Utpelanggan.znorab:= mem_norab.AsString;

     Utpelanggan.norumah.Text:=mem_norumah.AsString;
     Utpelanggan.rt.Text:=mem_rt.AsString;
     Utpelanggan.rw.Text:=mem_rw.AsString;


     if Utpelanggan.showmodal=mrOk then
     begin  

         MessageDlg('Pengaktifan Berhasil Dilakukan... '+char(13)+
         'Nomor Pendaftaran : '+mem_noreg.AsString+char(13)+
         'Nomor RAB : '+mem_norab.AsString, mtInformation, [mbOK], 0);

         refresh.Click;


     end;

    end;
end;

procedure TFRrab.gridCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
 IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridstatus.Index], varstring)='SUDAH DI AKTIFKAN...') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color := Tcolor($0088FFFF);
       //ACanvas.Canvas.Font.Color := clWhite;
       
      END;
    end

  ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridstatus.Index], varstring)='MENUNGGU PENGAKTIFAN...') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  $00CAFFFF;
      END;
    end
   ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridgenap.Index], varstring)='1') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  TColor($00E0F3FF);
      END;
    end;
end;

procedure TFRrab.gridCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
pengaktifan.Click;
end;

procedure TFRrab.ceknorabClick(Sender: TObject);
begin
  if(ceknorab.Checked=true)then
  begin

    norab.Enabled:=true;
    norab.SetFocus;

  end
  else
  begin
    norab.Enabled:=false;
  end;
end;

procedure TFRrab.ceknamaClick(Sender: TObject);
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

procedure TFRrab.cekwilClick(Sender: TObject);
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

procedure TFRrab.cekrayonClick(Sender: TObject);
begin
if(cekrayon.Checked=true)then
  begin

    koderayon.Enabled:=true;
    rayon.Enabled:=true;
    koderayon.SetFocus;

  end
  else
  begin
    koderayon.Enabled:=false;
    rayon.Enabled:=false;
  end;
end;

procedure TFRrab.cekgolClick(Sender: TObject);
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

procedure TFRrab.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRrab.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRrab.koderayonPropertiesChange(Sender: TObject);
begin
rayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFRrab.rayonPropertiesChange(Sender: TObject);
begin
rayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFRrab.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TFRrab.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TFRrab.ceknodaftarClick(Sender: TObject);
begin
if(ceknodaftar.Checked=true)then
  begin

    nodaftar.Enabled:=true;
    nodaftar.SetFocus;

  end
  else
  begin
    nodaftar.Enabled:=false;
  end;
end;

procedure TFRrab.ceklainnyaClick(Sender: TObject);
begin
if(ceklainnya.Checked=true)then
  begin
     lainnya.Enabled:=true;
    lainnya.SetFocus;

  end
  else
  begin
    lainnya.Enabled:=false;   
  end;
end;

end.
