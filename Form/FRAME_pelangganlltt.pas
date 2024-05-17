unit FRAME_pelangganlltt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, RzSplit, StdCtrls, RzLabel, RzButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, cxContainer, cxMemo, cxTextEdit, cxGroupBox, cxLabel,
  cxPCdxBarPopupMenu, cxGridChartView, cxGridDBChartView, cxPC, cxScrollBox,
  Menus, ComCtrls, dxCore, cxDateUtils, RzDTP, cxDropDownEdit, cxButtons,
  cxMaskEdit, cxCheckBox, DBAccess, MyAccess, MemDS, ActnList,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxSkinOffice2013White;

type
  TFRpelangganlltt = class(TFrame)
    Qpel: TMyQuery;
    DSpel: TMyDataSource;
    Qtunggakan: TMyQuery;
    DStgkrek: TMyDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Qmirror: TMyQuery;
    Qpelmain: TMyQuery;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    Tambah1: TMenuItem;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    HistoriPembayaran1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    RzSizePanel1: TRzSizePanel;
    cxScrollBox1: TcxScrollBox;
    RzPanel1: TRzPanel;
    cxGrid1: TcxGrid;
    gtvpiutang: TcxGridDBTableView;
    gtvpiutangColumn1: TcxGridDBColumn;
    gtvpiutangColumn3: TcxGridDBColumn;
    gtvpiutangColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    Sta: TcxLabel;
    xstatus: TcxTextEdit;
    xnosamb: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    xnama: TcxTextEdit;
    xkodegol: TcxTextEdit;
    cxLabel28: TcxLabel;
    xkodedia: TcxTextEdit;
    sasa: TcxLabel;
    xkoderayon: TcxTextEdit;
    cxLabel29: TcxLabel;
    xalamat: TcxMemo;
    cxLabel14: TcxLabel;
    cxLabel5: TcxLabel;
    xkodewil: TcxTextEdit;
    RzPanel5: TRzPanel;
    RzPanel2: TRzPanel;
    GridPel: TcxGrid;
    GTVpel: TcxGridDBTableView;
    GTVpelColumn4: TcxGridDBColumn;
    GTVpelColumn37: TcxGridDBColumn;
    GTVpelColumn31: TcxGridDBColumn;
    GTVpelColumn2: TcxGridDBColumn;
    GTVpelColumn3: TcxGridDBColumn;
    GTVpelColumn23: TcxGridDBColumn;
    GTVpelColumn16: TcxGridDBColumn;
    GTVpelColumn7: TcxGridDBColumn;
    GTVpelColumn11: TcxGridDBColumn;
    GTVpelColumn9: TcxGridDBColumn;
    GTVpelColumn8: TcxGridDBColumn;
    GTVpelColumn19: TcxGridDBColumn;
    GTVpelColumn20: TcxGridDBColumn;
    GTVpelColumn21: TcxGridDBColumn;
    GTVpelColumn22: TcxGridDBColumn;
    GTVpelColumn14: TcxGridDBColumn;
    GTVpelColumn18: TcxGridDBColumn;
    GTVpelColumn27: TcxGridDBColumn;
    GTVpelColumn33: TcxGridDBColumn;
    GTVpelColumn38: TcxGridDBColumn;
    GTVaktif: TcxGridDBColumn;
    GridPelLevel1: TcxGridLevel;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    RzPanel16: TRzPanel;
    RzPanel17: TRzPanel;
    GTVpelColumn32: TcxGridDBColumn;
    GTVpelColumn39: TcxGridDBColumn;
    RzPanel4: TRzPanel;
    print: TcxButton;
    koreksi: TcxButton;
    tambah: TcxButton;
    refresh: TcxButton;
    export: TcxButton;
    hapus: TcxButton;
    GTVpelColumn42: TcxGridDBColumn;
    BalikNama1: TMenuItem;
    RubahGOlongan1: TMenuItem;
    RubahAlamat1: TMenuItem;
    GantiStatusPelanggan1: TMenuItem;
    GTVpelColumn43: TcxGridDBColumn;
    GTVpelColumn44: TcxGridDBColumn;
    RzPanel10: TRzPanel;
    GTVpelColumn10: TcxGridDBColumn;
    GTVpelColumn12: TcxGridDBColumn;
    LihatPiutang1: TMenuItem;
    Qexec: TMyQuery;
    GTVpelColumn46: TcxGridDBColumn;
    Qpelid: TIntegerField;
    Qpelnomorlltt: TStringField;
    Qpelnosamb: TStringField;
    Qpelnama: TStringField;
    Qpelalamat: TStringField;
    Qpelkodelltt: TStringField;
    Qpelkoderayon: TStringField;
    Qpelkodekelurahan: TStringField;
    Qpelkodekolektif: TStringField;
    Qpelnohp: TStringField;
    Qpelnotelp: TStringField;
    Qpelstatus: TStringField;
    Qpelkepemilikanbangunan: TStringField;
    Qpelnamapemilik: TStringField;
    Qpelnoktp: TStringField;
    Qpelpenghuni: TStringField;
    Qpelflag: TStringField;
    Qpelnopendaftaran: TStringField;
    Qpelnorab: TStringField;
    Qpelketerangan: TStringField;
    Qpelkodeblok: TStringField;
    Qpelluasrumah: TFloatField;
    Qpelemail: TStringField;
    Qpelnorumah: TStringField;
    Qpelrt: TStringField;
    Qpelrw: TStringField;
    Qpeltgldaftar: TDateField;
    Qpelflagpel: TStringField;
    Qpelnamarayon: TStringField;
    Qpelnamablok: TStringField;
    Qpelkodeloket: TStringField;
    Qpelkodearea: TStringField;
    Qpelarea: TStringField;
    Qpelkodewil: TStringField;
    Qpelwilayah: TStringField;
    Qpelkelurahan: TStringField;
    Qpelkodecabang: TStringField;
    Qpelcabang: TStringField;
    Qpelkolektif: TStringField;
    Qpelaktif: TStringField;
    Qpelgolonganlltt: TStringField;
    RzSizePanel2: TRzSizePanel;
    RzPanel6: TRzPanel;
    tampilkan: TcxButton;
    limit: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cekstatus: TcxCheckBox;
    status: TcxComboBox;
    cxScrollBox4: TcxScrollBox;
    RzPanel3: TRzPanel;
    cekgolongan: TcxCheckBox;
    cekcabang: TcxCheckBox;
    cekrayon: TcxCheckBox;
    ceknosamb: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekalamat: TcxCheckBox;
    cekkolektif: TcxCheckBox;
    kolektif: TcxComboBox;
    alamat: TcxTextEdit;
    nama: TcxTextEdit;
    nosamb: TcxTextEdit;
    cabang: TcxComboBox;
    kodecabang: TcxComboBox;
    kodelltt: TcxComboBox;
    golonganlltt: TcxComboBox;
    namarayon: TcxComboBox;
    koderayon: TcxComboBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cekwilayah: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekflag: TcxCheckBox;
    flag: TcxComboBox;
    kodeflag: TcxComboBox;
    asas: TcxCheckBox;
    blok: TcxTextEdit;
    cekket: TcxCheckBox;
    kodekolektif: TcxComboBox;
    keterangan: TcxComboBox;
    RzPanel8: TRzPanel;
    ceknolltt: TcxCheckBox;
    nomorlltt: TcxTextEdit;
    RzPanel7: TRzPanel;
    RzPanel9: TRzPanel;
    cekadmlain: TcxCheckBox;
    kodeadm_lain: TcxComboBox;
    adm_lain: TcxComboBox;
    pem_lain: TcxComboBox;
    kodepem_lain: TcxComboBox;
    koderet_lain: TcxComboBox;
    ret_lain: TcxComboBox;
    cekretlain: TcxCheckBox;
    cekpemlain: TcxCheckBox;
    cekblok: TcxCheckBox;
    kodeblok: TcxComboBox;
    namablok: TcxComboBox;
    cekdiameter: TcxCheckBox;
    kodediameter: TcxComboBox;
    ukuran: TcxComboBox;
    cekserimeter: TcxCheckBox;
    cekwm: TcxCheckBox;
    merkwm: TcxComboBox;
    serimeter: TcxTextEdit;
    ceksumberair: TcxCheckBox;
    sumberair: TcxComboBox;
    cekkondisimeter: TcxCheckBox;
    kodekondisi: TcxComboBox;
    kondisimeter: TcxComboBox;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    UpdateDataRekening1: TMenuItem;
    Qpelkodekecamatan: TStringField;
    Qpelkecamatan: TStringField;
    GTVpelColumn1: TcxGridDBColumn;
    GTVpelColumn5: TcxGridDBColumn;
    RzPanel11: TRzPanel;
    cxLabel1: TcxLabel;
    belumspk: TRzPanel;
    cxLabel2: TcxLabel;
    selesai: TRzPanel;
    cxLabel4: TcxLabel;
    sudahspk: TRzPanel;
    cxLabel6: TcxLabel;
    RzPanel12: TRzPanel;
    cekkecamatan: TcxCheckBox;
    kecamatan: TcxComboBox;
    kodekecamatan: TcxComboBox;
    procedure GTVpelCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cekrayonClick(Sender: TObject);
    procedure cekgolonganClick(Sender: TObject);
    procedure cekcabangClick(Sender: TObject);
    procedure cekdiameterClick(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekserimeterClick(Sender: TObject);
    procedure cekwmClick(Sender: TObject);
    procedure cekalamatClick(Sender: TObject);
    procedure cekkolektifClick(Sender: TObject);
    procedure cekstatusClick(Sender: TObject);
    procedure tampilkanClick(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodecabangPropertiesChange(Sender: TObject);
    procedure kodediameterPropertiesChange(Sender: TObject);
    procedure ukuranPropertiesChange(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure GTVpelCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cabangPropertiesChange(Sender: TObject);
    procedure kodekelurahanPropertiesChange(Sender: TObject);
    procedure kelurahanPropertiesChange(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure cekkelurahanClick(Sender: TObject);
    procedure cekwilayahClick(Sender: TObject);
    procedure HistoriPembayaran1Click(Sender: TObject);
    procedure ceksumberairClick(Sender: TObject);
    procedure ceklainnyaClick(Sender: TObject);
    procedure cekflagClick(Sender: TObject);
    procedure kodeflagPropertiesChange(Sender: TObject);
    procedure flagPropertiesChange(Sender: TObject);
    procedure kodeadm_lainPropertiesChange(Sender: TObject);
    procedure kodepem_lainPropertiesChange(Sender: TObject);
    procedure koderet_lainPropertiesChange(Sender: TObject);
    procedure adm_lainPropertiesChange(Sender: TObject);
    procedure pem_lainPropertiesChange(Sender: TObject);
    procedure ret_lainPropertiesChange(Sender: TObject);
    procedure cekadmlainClick(Sender: TObject);
    procedure cekpemlainClick(Sender: TObject);
    procedure cekretlainClick(Sender: TObject);
    procedure asasClick(Sender: TObject);
    procedure SetPelangganLancar1Click(Sender: TObject);
    procedure SetPelangganTunggak1Click(Sender: TObject);
    procedure cekketClick(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure gtvpiutangCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure koreksiClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cekblokClick(Sender: TObject);
    procedure kodeblokPropertiesChange(Sender: TObject);
    procedure namablokPropertiesChange(Sender: TObject);
    procedure LihatPiutang1Click(Sender: TObject);
    procedure kodekondisiPropertiesChange(Sender: TObject);
    procedure kondisimeterPropertiesChange(Sender: TObject);
    procedure cekkondisimeterClick(Sender: TObject);
    procedure BalikNama1Click(Sender: TObject);
    procedure RubahGOlongan1Click(Sender: TObject);
    procedure RubahAlamat1Click(Sender: TObject);
    procedure GantiStatusPelanggan1Click(Sender: TObject);
    procedure kodellttPropertiesChange(Sender: TObject);
    procedure golonganllttPropertiesChange(Sender: TObject);
    procedure ceknollttClick(Sender: TObject);
    procedure UpdateDataRekening1Click(Sender: TObject);
    procedure cekkecamatanClick(Sender: TObject);
    procedure kodekecamatanPropertiesChange(Sender: TObject);
    procedure kecamatanPropertiesChange(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
   procedure akses();
   procedure isicombopelanggan();
  end;

implementation

{$R *.dfm} uses module, UnitCombo, UnitTpelanggan,
  UnitMain, UnitUpdate, unithisbayar, unitflag,StrUtils, DateUtils, unithispakai, unitlog,
  unitbaliknama, unitrubahgolongan, unitgantimeter, unitrubahalamat,
  unitrubahnosamb, unitgantisttaus, unitpiutang, UnitPilihPeriode,
  UnitTpelangganlltt, unitpiutanglltt, unithisbayarlltt,
  unitrubahgolonganlltt, unitrubahalamatlltt;

procedure TFRpelangganlltt.akses();
begin


    if(Umain.olah_data_pelanggan<>'1') then
    begin
    
        tambah.Enabled:=False;
        koreksi.Enabled:=False;
        hapus.Enabled:=False;
        tambah1.Enabled:=False;
        koreksi1.Enabled:=False;
        hapus1.Enabled:=False;


        
    end;


 
  umain.host.close;

end;

procedure TFRpelangganlltt.GTVpelCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin


      IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Tutup Total / Non Aktif') then
    BEGIN
      IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
      //
      //ACanvas.Canvas.Brush.Color :=  $001C1CFF;
      ACanvas.Canvas.Brush.Color :=  $004F4FFF;

      ACanvas.Canvas.Font.Color := clWhite;
    end
    end
    ELSE  IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Segel') then
    BEGIN
      IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
      ACanvas.Canvas.Brush.Color := $008BFF35;
    end
    end
     ELSE  IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Tutup Sementara') then
    BEGIN
      IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
      ACanvas.Canvas.Brush.Color := $00E83A00;
      ACanvas.Canvas.Font.Color := clWhite;
    end
    end
     ELSE  IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Aktif') then
    BEGIN
      IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
      ACanvas.Canvas.Brush.Color := clWhite;
    
    end
    end;

    
end;

procedure TFRpelangganlltt.cekrayonClick(Sender: TObject);
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

procedure TFRpelangganlltt.cekgolonganClick(Sender: TObject);
begin
   if(cekgolongan.Checked=true)then
  begin
    kodelltt.Enabled:=true;
    golonganlltt.Enabled:=true;
    kodelltt.SetFocus;
   end
  else
  begin
    kodelltt.Enabled:=false;
    golonganlltt.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekcabangClick(Sender: TObject);
begin
  if(cekcabang.Checked=true)then
  begin
    kodecabang.Enabled:=true;
    cabang.Enabled:=true;
   end
  else
  begin
    kodecabang.Enabled:=false;
    cabang.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekdiameterClick(Sender: TObject);
begin
   if(cekdiameter.Checked=true)then
  begin
    kodediameter.Enabled:=true;
    ukuran.Enabled:=true;
    kodediameter.SetFocus;
   end
  else
  begin
    kodediameter.Enabled:=false;
    ukuran.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.ceknosambClick(Sender: TObject);
begin
  if(ceknosamb.Checked=true)then
  begin
    nosamb.Enabled:=true;
    nosamb.SetFocus;
  end
  else
    nosamb.Enabled:=false;
end;

procedure TFRpelangganlltt.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
 begin
    nama.Enabled:=true;
    nama.SetFocus;
 end
  else
    nama.Enabled:=false;
end;

procedure TFRpelangganlltt.cekserimeterClick(Sender: TObject);
begin
 if(cekserimeter.Checked=true)then
    serimeter.Enabled:=true
  else
    serimeter.Enabled:=false;
end;

procedure TFRpelangganlltt.cekwmClick(Sender: TObject);
begin
 if(cekwm.Checked=true)then
    merkwm.Enabled:=true
  else
    merkwm.Enabled:=false;
end;

procedure TFRpelangganlltt.cekalamatClick(Sender: TObject);
begin
 if(cekalamat.Checked=true)then
    alamat.Enabled:=true
  else
    alamat.Enabled:=false;
end;

procedure TFRpelangganlltt.cekkolektifClick(Sender: TObject);
begin
   if(cekkolektif.Checked=true)then
  begin
    kodekolektif.Enabled:=true;
    kolektif.Enabled:=true;
   end
  else
  begin
    kodekolektif.Enabled:=false;
    kolektif.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekstatusClick(Sender: TObject);
begin
 if(cekstatus.Checked=true)then
    status.Enabled:=true
  else
    status.Enabled:=false;
end;




procedure TFRpelangganlltt.isicombopelanggan();
begin

  ucombo.isikombo();

  namarayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;

  kodecabang.properties.items:= Ucombo.kodecabang.properties.items;
  cabang.properties.items:= Ucombo.cabang.properties.items;

  kodelltt.properties.items:= Ucombo.kodelltt.properties.items;
  golonganlltt.properties.items:= Ucombo.namalltt.properties.items;

  kodediameter.properties.items:= Ucombo.kodediameter.properties.items;
  ukuran.properties.items:= Ucombo.ukuran.properties.items;

  kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
  kolektif.properties.items:= Ucombo.kolektif.properties.items;

   kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;
  kelurahan.properties.items:= Ucombo.kelurahan.properties.items;

  kodewil.properties.items:= Ucombo.kodewil.properties.items;
  wilayah.properties.items:= Ucombo.wilayah.properties.items;

  merkwm.properties.items:= Ucombo.merk.properties.items;
  sumberair.properties.items:= Ucombo.sumberair.properties.items;
  flag.properties.items:= Ucombo.flag.properties.items;
  kodeflag.properties.items:= Ucombo.kodeflag.properties.items;

  kodeadm_lain.properties.items:= Ucombo.kodeadmlain.properties.items;
  adm_lain.properties.items:= Ucombo.ketadmlain.properties.items;

   kodepem_lain.properties.items:= Ucombo.kodepemlain.properties.items;
  pem_lain.properties.items:= Ucombo.ketpemlain.properties.items;

   koderet_lain.properties.items:= Ucombo.koderetlain.properties.items;
  ret_lain.properties.items:= Ucombo.ketretlain.properties.items;

  kodeblok.properties.items:= Ucombo.kodeblok.properties.items;
  namablok.properties.items:= Ucombo.namablok.properties.items;

  kodekondisi.properties.items:= Ucombo.kodekondisi.properties.items;
  kondisimeter.properties.items:= Ucombo.kondisimeter.properties.items;

  kodekecamatan.properties.items:= Ucombo.kodekecamatan.properties.items;
  kecamatan.properties.items:= Ucombo.kecamatan.properties.items;





end;

procedure TFRpelangganlltt.tampilkanClick(Sender: TObject);
begin

    TRY
        Qpel.Close;
        Qpel.SQL.Clear;
        Qpel.SQL.Add(Qpelmain.SQLLock.Text);
        Qpel.SQL.Add('WHERE p.nomorlltt IS NOT NULL  ');


        if(cekstatus.Checked=true)then
        begin
          Qpel.SQL.add('AND p.status=:status');
          Qpel.ParamByName('status').AsInteger:=status.ItemIndex;
        end;

        if(cekrayon.Checked=true)then
        begin
          Qpel.SQL.add('AND p.koderayon=:koderayon');
          Qpel.ParamByName('koderayon').AsString:=koderayon.Text;
        end;

         if(ceknolltt.Checked=true)then
        begin
          Qpel.SQL.add('AND p.nomorlltt=:nomorlltt');
          Qpel.ParamByName('nomorlltt').AsString:=nomorlltt.Text;
        end;

        if(cekgolongan.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodelltt=:kodelltt');
          Qpel.ParamByName('kodelltt').AsString:=kodelltt.Text;
        end;

        if(cekcabang.Checked=true)then
        begin
          Qpel.SQL.add('AND x.kodecabang=:kodecabang');
          Qpel.ParamByName('kodecabang').AsString:=kodecabang.Text;
        end;

        if(cekkecamatan.Checked=true)then
        begin
          Qpel.SQL.add('AND x.kodekecamatan=:kodekecamatan');
          Qpel.ParamByName('kodekecamatan').AsString:=kodekecamatan.Text;
        end;


         if(cekkelurahan.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodekelurahan=:kodekelurahan');
          Qpel.ParamByName('kodekelurahan').AsString:=kodekelurahan.Text;
        end;

         if(cekwilayah.Checked=true)then
        begin
          Qpel.SQL.add('AND r.kodewil=:kodewil');
          Qpel.ParamByName('kodewil').AsString:=kodewil.Text;
        end;

        if(cekdiameter.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodediameter=:kodediameter');
          Qpel.ParamByName('kodediameter').AsString:=kodediameter.Text;
        end;

        if(ceknosamb.Checked=true)then
        begin
          Qpel.SQL.add('AND p.nosamb=:nosamb');
          Qpel.ParamByName('nosamb').AsString:=nosamb.Text;
        end;

        if(ceknama.Checked=true)then
        begin
          Qpel.SQL.add('AND p.nama LIKE "%" :nama "%"');
          Qpel.ParamByName('nama').AsString:=nama.Text;
        end;

        if(cekserimeter.Checked=true)then
        begin
          Qpel.SQL.add('AND p.serimeter=:serimeter');
          Qpel.ParamByName('serimeter').AsString:=serimeter.Text;
        end;

         if(cekwm.Checked=true)then
        begin
          Qpel.SQL.add('AND p.merk=:merk');
          Qpel.ParamByName('merk').AsString:=merkwm.Text;
        end;

         if(cekalamat.Checked=true)then
        begin
          Qpel.SQL.add('AND p.alamat LIKE CONCAT("%" :alamat "%")');
          Qpel.ParamByName('alamat').AsString:=alamat.Text;
        end;

        if(cekkolektif.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodekolektif LIKE CONCAT("%",:kodekolektif,"%")');
          Qpel.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
        end;



         if(ceksumberair.Checked=true)then
        begin
          Qpel.SQL.add('AND p.sumberair=:sumberair');
          Qpel.ParamByName('sumberair').AsString:=sumberair.Text;
        end;

         if(cekflag.Checked=true)then
        begin
          Qpel.SQL.add('AND p.flag=:flag');
          Qpel.ParamByName('flag').AsString:=kodeflag.Text;
        end;

         if(cekblok.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodeblok=:kodeblok');
          Qpel.ParamByName('kodeblok').AsString:=kodeblok.Text;
        end;

         if(cekadmlain.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodeadministrasilain=:kodeadministrasilain');
          Qpel.ParamByName('kodeadministrasilain').AsString:=kodeadm_lain.Text;
        end;

           if(cekpemlain.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodepemeliharaanlain=:kodepemeliharaanlain');
          Qpel.ParamByName('kodepemeliharaanlain').AsString:=kodepem_lain.Text;
        end;

            if(cekretlain.Checked=true)then
        begin
          Qpel.SQL.add('AND p.koderetribusilain=:koderetribusilain');
          Qpel.ParamByName('koderetribusilain').AsString:=koderet_lain.Text;
        end;


        if(cekkondisimeter.Checked=true)then
        begin
          Qpel.SQL.add('AND p.kodekondisimeter=:kodekondisimeter');
          Qpel.ParamByName('kodekondisimeter').AsString:=kodekondisi.Text;
        end;

         if(ceklainnya.Checked=true)then
        begin

         if(lainnya.Text='Warning Segel !!')then
          Qpel.SQL.add('AND p.status="1" AND b.lembar>=2');

         if(lainnya.Text='Warning Pemutusan !!')then
         Qpel.SQL.add('AND p.status="2" AND CURRENT_DATE>=  DATE_ADD(tglstatus, INTERVAL 1 MONTH)');

        end;


         Qpel.SQL.add('ORDER BY CAST(p.nomorlltt AS UNSIGNED) ASC LIMIT :limit');
         Qpel.ParamByName('limit').AsCurrency:=limit.Value;
         Qpel.Open;

    EXCEPT ON E:Exception DO
    BEGIN

         MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);   

         DM.uraianError := e.Message;
         DM.eventError := 'Refresh Pelanggan L2T2';
         DM.logERROR();


    END;
    END;

end;

procedure TFRpelangganlltt.koderayonPropertiesChange(Sender: TObject);
begin
  namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFRpelangganlltt.namarayonPropertiesChange(Sender: TObject);
begin
  koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFRpelangganlltt.kodecabangPropertiesChange(Sender: TObject);
begin
  cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure TFRpelangganlltt.kodediameterPropertiesChange(Sender: TObject);
begin
  ukuran.ItemIndex:=kodediameter.ItemIndex;
end;

procedure TFRpelangganlltt.ukuranPropertiesChange(Sender: TObject);
begin
  kodediameter.ItemIndex:=ukuran.ItemIndex;
end;

procedure TFRpelangganlltt.kodekolektifPropertiesChange(Sender: TObject);
begin
 kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure TFRpelangganlltt.GTVpelCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

 { if koreksi.Enabled=true then
  begin
      koreksi.Click;
  end
  else
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);  }


    
end;

procedure TFRpelangganlltt.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;

procedure TFRpelangganlltt.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure TFRpelangganlltt.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure TFRpelangganlltt.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRpelangganlltt.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRpelangganlltt.cekkelurahanClick(Sender: TObject);
begin
  if(cekkelurahan.Checked=true)then
  begin
    kodekelurahan.Enabled:=true;
    kelurahan.Enabled:=true;
  end
  else
  begin
    kodekelurahan.Enabled:=false;
    kelurahan.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekwilayahClick(Sender: TObject);
begin
  if(cekwilayah.Checked=true)then
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

procedure TFRpelangganlltt.HistoriPembayaran1Click(Sender: TObject);
begin
 if( Qpel.recordcount>0)then
  begin
    DM.Xnomorlltt:=Qpel.Fieldbyname('nomorlltt').asstring;
    uhisbayarlltt.showmodal;
  end;
end;

procedure TFRpelangganlltt.ceksumberairClick(Sender: TObject);
begin
 if(ceksumberair.Checked=true)then
    sumberair.Enabled:=true
  else
    sumberair.Enabled:=false;
end;

procedure TFRpelangganlltt.ceklainnyaClick(Sender: TObject);
begin
 if(ceklainnya.Checked=true)then
    lainnya.Enabled:=true
  else
    lainnya.Enabled:=false;
end;

procedure TFRpelangganlltt.cekflagClick(Sender: TObject);
begin
if(cekflag.Checked=true)then
begin
    kodeflag.Enabled:=true;
    flag.Enabled:=true
  end
  else
  begin
    flag.Enabled:=false;
    kodeflag.Enabled:=false;
  end;
end;



procedure TFRpelangganlltt.kodeflagPropertiesChange(Sender: TObject);
begin
flag.ItemIndex:=kodeflag.ItemIndex;
end;

procedure TFRpelangganlltt.flagPropertiesChange(Sender: TObject);
begin
kodeflag.ItemIndex:=flag.ItemIndex;
end;

procedure TFRpelangganlltt.kodeadm_lainPropertiesChange(Sender: TObject);
begin
  adm_lain.ItemIndex:=kodeadm_lain.ItemIndex;
end;

procedure TFRpelangganlltt.kodepem_lainPropertiesChange(Sender: TObject);
begin
pem_lain.ItemIndex:=kodepem_lain.ItemIndex;
end;

procedure TFRpelangganlltt.koderet_lainPropertiesChange(Sender: TObject);
begin
ret_lain.ItemIndex:=koderet_lain.ItemIndex;
end;

procedure TFRpelangganlltt.adm_lainPropertiesChange(Sender: TObject);
begin
kodeadm_lain.ItemIndex:=adm_lain.ItemIndex;
end;

procedure TFRpelangganlltt.pem_lainPropertiesChange(Sender: TObject);
begin
kodepem_lain.ItemIndex:=pem_lain.ItemIndex;
end;

procedure TFRpelangganlltt.ret_lainPropertiesChange(Sender: TObject);
begin
koderet_lain.ItemIndex:=ret_lain.ItemIndex;
end;

procedure TFRpelangganlltt.cekadmlainClick(Sender: TObject);
begin
if(cekadmlain.Checked=true)then
begin
    kodeadm_lain.Enabled:=true;
    adm_lain.Enabled:=true
  end
  else
  begin
    kodeadm_lain.Enabled:=false;
    adm_lain.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekpemlainClick(Sender: TObject);
begin
if(cekpemlain.Checked=true)then
begin
    kodepem_lain.Enabled:=true;
    pem_lain.Enabled:=true
  end
  else
  begin
    kodepem_lain.Enabled:=false;
    pem_lain.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.cekretlainClick(Sender: TObject);
begin
if(cekretlain.Checked=true)then
begin
    koderet_lain.Enabled:=true;
    ret_lain.Enabled:=true
  end
  else
  begin
    koderet_lain.Enabled:=false;
    ret_lain.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.asasClick(Sender: TObject);
begin
 if(cekblok.Checked=true)then
    blok.Enabled:=true
  else
    blok.Enabled:=false;
end;

procedure TFRpelangganlltt.SetPelangganLancar1Click(Sender: TObject);
begin

 if(Qpel.RecordCount>0)then
        begin
          if MessageDlg('Perhatian !!'+char(13)+char(13)+
                        'Yakin Set Pelanggan '+Qpel.Fieldbyname('nama').AsString+' Menjadi Pelanggan Lancar ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin

                TRY
                Umain.openkoneksi_host;


                       Umain.Qhost1.close;
                       Umain.Qhost1.SQL.Clear;
                       Umain.Qhost1.SQL.Add('delete from plgtunggak where nosamb=:nosamb');
                       Umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       Umain.Qhost1.Execute;

                       Umain.Qhost1.close;
                       Umain.Qhost1.SQL.Clear;
                       Umain.Qhost1.SQL.Add('replace into plglancar (nosamb) values (:nosamb)');
                       Umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       Umain.Qhost1.Execute;


                  except
                          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
                  end;
          end
          else
            exit;

    end;

umain.host.close;

end;

procedure TFRpelangganlltt.SetPelangganTunggak1Click(Sender: TObject);
begin
if(Qpel.RecordCount>0)then
        begin
          if MessageDlg('Perhatian !!'+char(13)+char(13)+
                        'Yakin Set Pelanggan '+Qpel.Fieldbyname('nama').AsString+' Menjadi Pelanggan Tunggak ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin

                TRY
                Umain.openkoneksi_host;


                       Umain.Qhost1.close;
                       Umain.Qhost1.SQL.Clear;
                       Umain.Qhost1.SQL.Add('delete from plglancar where nosamb=:nosamb');
                       Umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       Umain.Qhost1.Execute;

                       Umain.Qhost1.close;
                       Umain.Qhost1.SQL.Clear;
                       Umain.Qhost1.SQL.Add('replace into pltunggak (nosamb) values (:nosamb)');
                       Umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       Umain.Qhost1.Execute;


                  except
                          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
                  end;
          end
          else
            exit;

    end;

umain.host.close;

end;

procedure TFRpelangganlltt.cekketClick(Sender: TObject);
begin
 if(cekket.Checked=true)then
    keterangan.Enabled:=true
  else
    keterangan.Enabled:=false;
end;

procedure TFRpelangganlltt.kolektifPropertiesChange(Sender: TObject);
begin
 kodekolektif.ItemIndex:=kolektif.ItemIndex;  
end;

procedure TFRpelangganlltt.gtvpiutangCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin   
      {ACanvas.Canvas.Brush.Color :=  TColor($00006CEF); //Tcolor($0071CC2E);
        ACanvas.Canvas.Font.Color := clWhite; }
end;



procedure TFRpelangganlltt.koreksiClick(Sender: TObject);
begin

  {
   if(Qpel.RecordCount>0)then
    begin

     DM.Xnomorlltt:=Qpel.Fieldbyname('nomorlltt').AsString;
     DM.Xnama:=Qpel.Fieldbyname('nama').AsString;
     DM.xid:=Qpel.Fieldbyname('id').AsInteger;
     DM.Xflag:='Koreksi';
    

     uTpelangganlltt.cxButton1.Visible:=false;
     uTpelangganlltt.status.Enabled:=false;
     uTpelangganlltt.nosamb.Enabled:=false;
     uTpelangganlltt.kodelltt.Enabled:=false;
     uTpelangganlltt.golonganlltt.Enabled:=false;
     uTpelangganlltt.koderayon.Enabled:=false;
     uTpelangganlltt.namarayon.Enabled:=false;
     uTpelangganlltt.tgldaftar.Enabled:=false;
     uTpelangganlltt.alamat.Enabled:=false;
     uTpelangganlltt.kodeblok.Enabled:=false;
     uTpelangganlltt.namablok.Enabled:=false;

     uTpelangganlltt.kelurahan.Enabled:=false;
     uTpelangganlltt.kodekelurahan.Enabled:=false;
     uTpelangganlltt.nama.Enabled:=false;
     uTpelangganlltt.norumah.Enabled:=false;
     uTpelangganlltt.rt.Enabled:=false;
     uTpelangganlltt.rw.Enabled:=false;

     UTpelangganlltt.nomor.Enabled:=false;


     uTpelangganlltt.nosamb.Text:=Qpel.Fieldbyname('nosamb').AsString;
     uTpelangganlltt.nomor.Text:=Qpel.Fieldbyname('nomorlltt').AsString;
     uTpelangganlltt.nama.Text:=Qpel.Fieldbyname('nama').AsString;
     uTpelangganlltt.alamat.Text:=Qpel.Fieldbyname('alamat').AsString;
     uTpelangganlltt.telp.Text:=Qpel.Fieldbyname('notelp').AsString;
     uTpelangganlltt.gsmcdma.Text:=Qpel.Fieldbyname('nohp').AsString;
     uTpelangganlltt.tgldaftar.date:=Qpel.Fieldbyname('tgldaftar').AsDateTime;
     uTpelangganlltt.status.ItemIndex:=Qpel.Fieldbyname('status').AsInteger;
     uTpelangganlltt.noktp.Text:=Qpel.Fieldbyname('noktp').AsString;
     uTpelangganlltt.namapemilik.Text:=Qpel.Fieldbyname('namapemilik').AsString;
     uTpelangganlltt.penghuni.Text:=Qpel.Fieldbyname('penghuni').AsString;
     uTpelangganlltt.luasrumah.Value:=Qpel.Fieldbyname('luasrumah').AsCurrency;
     uTpelangganlltt.email.Text:=Qpel.Fieldbyname('email').AsString;
     uTpelangganlltt.norumah.Text:=Qpel.Fieldbyname('norumah').AsString;
     uTpelangganlltt.rt.Text:=Qpel.Fieldbyname('rt').AsString;
     uTpelangganlltt.rw.Text:=Qpel.Fieldbyname('rw').AsString;

     DM.Xstatus:=Qpelstatus.Value;
     uTpelangganlltt.zkodeblok:=Qpelkodeblok.Value;
     uTpelangganlltt.zkodekolektif:=Qpelkodekolektif.Value;
     uTpelangganlltt.zkolektif:=Qpelkolektif.Value;
     uTpelangganlltt.zkoderayon:=Qpelkoderayon.Value;
     uTpelangganlltt.znamarayon:=Qpelnamarayon.Value;
     uTpelangganlltt.Znosamb:= Qpelnosamb.Value;

     uTpelangganlltt.Znama:= Qpelnama.Value;
     uTpelangganlltt.zkodecabang:= Qpelkodecabang.Value;
     uTpelangganlltt.zcabang:= Qpelcabang.Value;
     uTpelangganlltt.zkodekelurahan:= Qpelkodekelurahan.Value;
     uTpelangganlltt.zkelurahan:= Qpelkelurahan.Value;
     uTpelangganlltt.zkodewil:= Qpelkodewil.Value;
     uTpelangganlltt.zwilayah:= Qpelwilayah.Value;
     uTpelangganlltt.Zkepemilikan:= Qpelkepemilikanbangunan.Value;
     uTpelangganlltt.zkodelltt:= Qpelkodelltt.Value;



  

     if uTpelangganlltt.showmodal=mrOk then
     begin

         Qpel.SQLRefresh.Clear;
         Qpel.SQLRefresh.Add(Qmirror.SQLRefresh.Text);
         Qpel.RefreshRecord;

     end;

    end;
    

    }




end;

procedure TFRpelangganlltt.tambahClick(Sender: TObject);
begin
{

  TRY
    umain.openkoneksi_host;

  except ON E:Exception DO
  BEGIn
    MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
               E.Message, mtwarning, [MbOk], 0);
    Exit;
  END;
  end;



     DM.Xflag:='Tambah';
     uTpelangganlltt.status.ItemIndex:=1;

     uTpelangganlltt.cxButton1.Visible:=true;
     uTpelangganlltt.status.Enabled:=false;
     uTpelangganlltt.nosamb.Enabled:=true;
     uTpelangganlltt.kodelltt.Enabled:=true;
     uTpelangganlltt.golonganlltt.Enabled:=true;
     uTpelangganlltt.koderayon.Enabled:=true;
     uTpelangganlltt.namarayon.Enabled:=true;
     uTpelangganlltt.tgldaftar.Enabled:=true;
     uTpelangganlltt.alamat.Enabled:=true;
     uTpelangganlltt.kodeblok.Enabled:=true;
     uTpelangganlltt.namablok.Enabled:=true;

     uTpelangganlltt.kelurahan.Enabled:=true;
     uTpelangganlltt.kodekelurahan.Enabled:=true;  
     uTpelangganlltt.nama.Enabled:=true;
     uTpelangganlltt.tgldaftar.date:=date;
     uTpelangganlltt.znorab:='';


     uTpelangganlltt.norumah.Enabled:=true;
     uTpelangganlltt.rt.Enabled:=true;
     uTpelangganlltt.rw.Enabled:=true;



    if uTpelangganlltt.showmodal=mrOk then
    begin
         MessageDlg('Pelanggan Baru Berhasil Ditambahkan.....'+char(13)+
         'Rekening Akan Terbit Secara Otomatis '+char(13)+'pada Periode Selanjutnya...'
         +char(13)+'Atau.....'+char(13)+'Lakukan Prosedure "Terbitkan Rekening"'
         +char(13)+'pada Bulan Berjalan..', mtInformation, [mbOK], 0);

    end;
         }
   

end;

procedure TFRpelangganlltt.hapusClick(Sender: TObject);
var
j:integer;
piutang,bayar:string;
begin
 {
  TRY
      umain.openkoneksi_host;

  except ON E:Exception DO
  BEGIn
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     E.Message, mtwarning, [MbOk], 0);
          Exit;
  END;
  end;

        if(Qpel.RecordCount>0)then
        begin

           DM.Qcek.close;
           Dm.Qcek.SQL.Clear;
           DM.Qcek.SQL.Add('select * FROM piutanglltt WHERE nomorlltt=:nomorlltt LIMIT 1');
           DM.Qcek.ParamByName('nomorlltt').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
           DM.Qcek.Open;

           if(DM.Qcek.RecordCount>0) then
            piutang:='1'
           else
            piutang:='0';

           DM.Qcek.close;
           Dm.Qcek.SQL.Clear;
           DM.Qcek.SQL.Add('select * FROM bayarlltt WHERE nomorlltt=:nomorlltt LIMIT 1');
           DM.Qcek.ParamByName('nomorlltt').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
           DM.Qcek.Open;

           if(DM.Qcek.RecordCount>0) then
            bayar:='1'
           else
            bayar:='0';


            if(piutang<>'0') or (bayar<>'0')then
            begin
                MessageDlg('Pelanggan yang memiliki PIUTANG / HISTORI PEMBAYARAN tidak dapat di hapus !!', mtInformation, [mbOK], 0);
                exit;
            end;





          if MessageDlg('Perhatian !!'+char(13)+char(13)+
                        'Menghapus pelanggan di daftar pelanggan juga akan menghapus'+char(13)+
                        'semua riwayat rekening pelanggan tersebut !!'+char(13)+char(13)+
                        'Yakin hapus Pelanggan '+Qpel.Fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
          begin

            TRY

              umain.Enabled:=false;
              Enabled:=false;

              TRY


                     umain.Qhost1.close;
                     umain.Qhost1.SQL.Clear;
                     umain.Qhost1.SQL.Add('START TRANSACTION');
                     umain.Qhost1.Execute;


                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('START TRANSACTION');
                     DM.Qexec.Execute;



                     umain.Qhost1.close;
                     umain.Qhost1.SQL.Clear;
                     umain.Qhost1.SQL.Add('DELETE FROM pelanggan_lltt WHERE nomorlltt=:nomorlltt');
                     umain.Qhost1.ParamByName('nomorlltt').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
                     umain.Qhost1.Execute;


                     umain.Qhost1.close;
                     umain.Qhost1.SQL.Clear;
                     umain.Qhost1.SQL.Add('REPLACE INTO hapuspel values (:nosamb,NOW(),:user)');
                     umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
                     umain.Qhost1.ParamByName('user').AsString:=umain.user.Caption;
                     umain.Qhost1.Execute;   

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('DELETE FROM pelanggan_lltt WHERE nomorlltt=:nomorlltt');
                     DM.Qexec.ParamByName('nomorlltt').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
                     DM.Qexec.Execute;

                     DM.Qcek.close;
                     Dm.Qcek.SQL.Clear;
                     DM.Qcek.SQL.Add('select periode FROm periode ORDER BY periode ASC');
                     DM.Qcek.Open;

                     {for j:=1 to DM.Qcek.RecordCount do
                     begin
                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('DELETE FROM drdlltt'+DM.Qcek.fieldbyname('periode').AsString+' WHERE nomorlltt=:nomorlltt');
                       DM.Qexec.ParamByName('nomorlltt').AsString:=Qpel.Fieldbyname('nomorlltt').AsString;
                       DM.Qexec.Execute;
                     DM.Qcek.Next;
                     end; }  

                      { DM.uraianlogakses:='Hapus Pelanggan lltt '+Qpel.Fieldbyname('nomorlltt').AsString;
                       DM.targetlogakses:=Qpel.Fieldbyname('nomorlltt').AsString;
                       DM.logakses;


                       umain.Qhost1.close;
                       umain.Qhost1.SQL.Clear;
                       umain.Qhost1.SQL.Add('COMMIT');
                       umain.Qhost1.Execute;


                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('COMMIT');
                       DM.Qexec.Execute;

                       Qpel.Refresh;


                  except ON E:Exception DO
                  BEGIn

                         umain.Qhost1.close;
                         umain.Qhost1.SQL.Clear;
                         umain.Qhost1.SQL.Add('ROLLBACK');
                         umain.Qhost1.Execute;


                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('ROLLBACK');
                         DM.Qexec.Execute;

                          MessageDlg('Terjadi Kesalahan : '+char(13)+char(13)+
                                     E.Message, mtError, [MbOk], 0);
                          Exit;
                  END;
                  end;
              FINALLY
                  umain.Enabled:=true;
                  Enabled:=true;
                  umain.host.close;
              END;


          end
          else

            Exit;

        end; }

end;
procedure TFRpelangganlltt.exportClick(Sender: TObject);
begin
 if not Qpel.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(Gridpel.FocusedView.PatternGridView));
  end;
end;

procedure TFRpelangganlltt.printClick(Sender: TObject);
begin
 if(Qpel.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PELANGGAN';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRpelangganlltt.cxCheckBox1Click(Sender: TObject);
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

procedure TFRpelangganlltt.cekblokClick(Sender: TObject);
begin
  if(cekblok.Checked=true)then
  begin
    kodeblok.Enabled:=true;
    namablok.Enabled:=true;
    kodeblok.SetFocus;
  end
  else
  begin
    kodeblok.Enabled:=false;
    namablok.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.kodeblokPropertiesChange(Sender: TObject);
begin
namablok.ItemIndex:=kodeblok.ItemIndex;
end;

procedure TFRpelangganlltt.namablokPropertiesChange(Sender: TObject);
begin
kodeblok.ItemIndex:=namablok.ItemIndex;
end;

procedure TFRpelangganlltt.LihatPiutang1Click(Sender: TObject);
begin
if( Qpel.recordcount>0)then
  begin
  
    DM.xnomorlltt:=Qpel.Fieldbyname('nomorlltt').asstring;

    upiutanglltt.refresh.click;

    upiutanglltt.nama.Caption:= Qpel.Fieldbyname('nama').asstring+' / '+Qpel.Fieldbyname('nomorlltt').asstring;

    upiutanglltt.showmodal;

  end;
end;

procedure TFRpelangganlltt.kodekondisiPropertiesChange(Sender: TObject);
begin
kondisimeter.ItemIndex:=kodekondisi.ItemIndex;
end;

procedure TFRpelangganlltt.kondisimeterPropertiesChange(Sender: TObject);
begin
kodekondisi.ItemIndex:=kondisimeter.ItemIndex;
end;

procedure TFRpelangganlltt.cekkondisimeterClick(Sender: TObject);
begin
if(cekkondisimeter.Checked=true)then
  begin
    kodekondisi.Enabled:=true;
    kondisimeter.Enabled:=true;
  end
  else
  begin
    kodekondisi.Enabled:=false;
    kondisimeter.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.BalikNama1Click(Sender: TObject);
begin
  ubaliknama.namalama.Text:=Qpelnama.AsString;
  ubaliknama.namabaru.Clear;
  ubaliknama.nomorba.Clear;
  ubaliknama.tanggal.Clear;
  ubaliknama.alasan.Clear;

  if ubaliknama.showmodal=mrOk then
  begin





      TRY
      Enabled:=false;
      umain.openkoneksi_host;

      TRY

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('START TRANSACTION');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('START TRANSACTION');
           Umain.Qhost1.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           DM.Qexec.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama,waktuupdate=NOW() WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           Umain.Qhost1.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nomorlltt,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nomorlltt').AsString:=Qpelnomorlltt.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=ubaliknama.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Balik Nama lltt';
            DM.Qexec.ParamByName('uraian').AsString:='Balik Nama lltt : "'+Qpelnama.Text+'" -> "'+ubaliknama.namabaru.Text+'" | Alasan : "'+ubaliknama.alasan.Text+'" | Nomor B.A : "'+ubaliknama.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodelltt.AsString;
            DM.Qexec.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Balik Nama lltt : "'+Qpelnama.Text+'" -> "'+ubaliknama.namabaru.Text+'" | Alasan : "'+ubaliknama.alasan.Text+'" | Nomor B.A : "'+ubaliknama.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnomorlltt.AsString;
            DM.logakses;

            MessageDlg('Balik Nama berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qmirror.SQLRefresh.Text);
            Qpel.RefreshRecord;


          EXCEPT ON E:Exception DO
          BEGIN


               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('ROLLBACK');
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;


               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
          END;
          END;

      FINALLY
          Umain.host.close;
          Enabled:=true;
      END;

  end;
end;

procedure TFRpelangganlltt.RubahGOlongan1Click(Sender: TObject);
begin

  urubahgolonganlltt.kodelama.Text:=Qpelkodelltt.AsString;
  urubahgolonganlltt.kodebaru.Clear;
  urubahgolonganlltt.nomorba.Clear;
  urubahgolonganlltt.tanggal.Clear;
  urubahgolonganlltt.alasan.Clear;

  if urubahgolonganlltt.showmodal=mrOk then
  begin





      TRY
      Enabled:=false;
      umain.openkoneksi_host;

      TRY

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('START TRANSACTION');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('START TRANSACTION');
           Umain.Qhost1.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET kodelltt=:kodelltt WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           DM.Qexec.ParamByName('kodelltt').AsString:=urubahgolonganlltt.kodebaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET kodelltt=:kodelltt,waktuupdate=NOW() WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           Umain.Qhost1.ParamByName('kodelltt').AsString:=urubahgolonganlltt.kodebaru.Text;
           Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol,kodegollama) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol,:kodegollama) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnomorlltt.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=urubahgolonganlltt.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Rubah Golongan lltt';
            DM.Qexec.ParamByName('uraian').AsString:='Rubah Golongan lltt : "'+Qpelkodelltt.Text+'" -> "'+urubahgolonganlltt.kodebaru.Text+'" | Alasan : "'+urubahgolonganlltt.alasan.Text+'" | Nomor B.A : "'+urubahgolonganlltt.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegollama').AsString:=Qpelkodelltt.AsString;
            DM.Qexec.ParamByName('kodegol').AsString:=urubahgolonganlltt.kodebaru.Text;
            DM.Qexec.Execute; 

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Rubah Golongan lltt : "'+Qpelkodelltt.Text+'" -> "'+urubahgolonganlltt.kodebaru.Text+'" | Alasan : "'+urubahgolonganlltt.alasan.Text+'" | Nomor B.A : "'+urubahgolonganlltt.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Rubah Golongan lltt berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qmirror.SQLRefresh.Text);
            Qpel.RefreshRecord;


          EXCEPT ON E:Exception DO
          BEGIN


               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('ROLLBACK');
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;


               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
          END;
          END;

      FINALLY
          Umain.host.close;
          Enabled:=true;
      END;

  end;
end;

procedure TFRpelangganlltt.RubahAlamat1Click(Sender: TObject);
begin

  urubahalamatlltt.koderayonlama.Text:=Qpelkoderayon.AsString;
  urubahalamatlltt.kodekelurahanlama.Text:=Qpelkodekelurahan.AsString;
  urubahalamatlltt.alamatlama.Text:=Qpelalamat.AsString;
  urubahalamatlltt.norumahlama.Text:=Qpelnorumah.AsString;
  urubahalamatlltt.rtlama.Text:=Qpelrt.AsString;
  urubahalamatlltt.rwlama.Text:=Qpelrw.AsString;
  urubahalamatlltt.koderayonbaru.Clear;
  urubahalamatlltt.kodeblokbaru.Clear;
  urubahalamatlltt.kodekelurahanbaru.Clear;
  urubahalamatlltt.alamatbaru.Clear;
  urubahalamatlltt.nomorba.Clear;
  urubahalamatlltt.tanggal.Clear;
  urubahalamatlltt.alasan.Clear;
  urubahalamatlltt.norumah.Clear;
  urubahalamatlltt.rt.Clear;
  urubahalamatlltt.rw.Clear;


  if urubahalamatlltt.showmodal=mrOk then
  begin

      TRY
       umain.openkoneksi_host;
      Enabled:=false;

      TRY

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('START TRANSACTION');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('START TRANSACTION');
           Umain.Qhost1.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET koderayon=:koderayon,alamat=:alamat,kodekelurahan=:kodekelurahan,norumah=:norumah,rt=:rt,rw=:rw WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           DM.Qexec.ParamByName('koderayon').AsString:=urubahalamatlltt.koderayonbaru.Text;
           DM.Qexec.ParamByName('alamat').AsString:=urubahalamatlltt.alamatbaru.Text;
           DM.Qexec.ParamByName('kodekelurahan').AsString:=  urubahalamatlltt.kodekelurahanbaru.Text;
           DM.Qexec.ParamByName('norumah').AsString:=urubahalamatlltt.norumah.Text;
           DM.Qexec.ParamByName('rt').AsString:=urubahalamatlltt.rt.Text;
           DM.Qexec.ParamByName('rw').AsString:=urubahalamatlltt.rw.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET koderayon=:koderayon,alamat=:alamat,norumah=:norumah,rt=:rt,rw=:rw,waktuupdate=NOW() WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           Umain.Qhost1.ParamByName('koderayon').AsString:=urubahalamatlltt.koderayonbaru.Text;
           Umain.Qhost1.ParamByName('alamat').AsString:=urubahalamatlltt.alamatbaru.Text; 
           Umain.Qhost1.ParamByName('norumah').AsString:=urubahalamatlltt.norumah.Text;
           Umain.Qhost1.ParamByName('rt').AsString:=urubahalamatlltt.rt.Text;
           Umain.Qhost1.ParamByName('rw').AsString:=urubahalamatlltt.rw.Text;
           Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnomorlltt.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=urubahalamatlltt.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Rubah Alamat lltt';
            DM.Qexec.ParamByName('uraian').AsString:='Rubah Alamat lltt : "'+Qpelkoderayon.Text+'" -> "'+urubahalamatlltt.koderayonbaru.Text+'" | Alamat : "'+Qpelalamat.Text+'" -> "'+urubahalamatlltt.alamatbaru.Text+'" | Alasan : "'+urubahalamatlltt.alasan.Text+'" | Nomor B.A : "'+urubahalamatlltt.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodelltt.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Rubah Alamat lltt : "'+Qpelkoderayon.Text+'" -> "'+urubahalamatlltt.koderayonbaru.Text+'" | Alamat : "'+Qpelalamat.Text+'" -> "'+urubahalamatlltt.alamatbaru.Text+'" | Alasan : "'+urubahalamatlltt.alasan.Text+'" | Nomor B.A : "'+urubahalamatlltt.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Rubah Alamat berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qmirror.SQLRefresh.Text);
            Qpel.RefreshRecord;


          EXCEPT ON E:Exception DO
          BEGIN


               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('ROLLBACK');
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;


               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
          END;
          END;

      FINALLY
          Umain.host.close;
          Enabled:=true;
      END;

  end;
end;

procedure TFRpelangganlltt.GantiStatusPelanggan1Click(Sender: TObject);
var
_status:String;
begin

  ustatus.status.ItemIndex:=StrToInt(Qpelstatus.AsString);
  ustatus.nomorba.Clear;
  ustatus.tanggal.Clear;
  ustatus.alasan.Clear;

  if ustatus.showmodal=mrOk then
  begin


      umain.openkoneksi_host;


      TRY
      Enabled:=false;

      TRY

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('START TRANSACTION');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('START TRANSACTION');
           Umain.Qhost1.Execute;


           if(ustatus.status.ItemIndex=0)then
            _status:='Pemutusan'
           else if (ustatus.status.ItemIndex=1)then
            _status:='Penyambungan Kembali'

           else if(ustatus.status.ItemIndex=2)then
            _status:='Penyegelan'

            else
              _status:='-';


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status=:status WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           DM.Qexec.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status=:status,waktuupdate=NOW() WHERE nomorlltt="'+Qpelnomorlltt.AsString+'"');
           Umain.Qhost1.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
           Umain.Qhost1.Execute;




            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnomorlltt.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=ustatus.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:=_status;
            DM.Qexec.ParamByName('uraian').AsString:=_status+' | Alasan : "'+ustatus.alasan.Text+'" | Nomor B.A : "'+ustatus.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodelltt.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Ganti Status lltt : "'+Qpelstatus.Text+'" -> "'+ustatus.status.Text+'" | Alasan : "'+ustatus.alasan.Text+'" | Nomor B.A : "'+ustatus.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnomorlltt.AsString;
            DM.logakses;

            MessageDlg('Perubahan Status berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qmirror.SQLRefresh.Text);
            Qpel.RefreshRecord;


          EXCEPT ON E:Exception DO
          BEGIN


               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('ROLLBACK');
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;


               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
          END;
          END;

      FINALLY
          Umain.host.close;
          Enabled:=true;
      END;

  end;
end;

procedure TFRpelangganlltt.kodellttPropertiesChange(Sender: TObject);
begin
golonganlltt.ItemIndex:=kodelltt.ItemIndex;
end;

procedure TFRpelangganlltt.golonganllttPropertiesChange(Sender: TObject);
begin
kodelltt.ItemIndex:=golonganlltt.ItemIndex;
end;

procedure TFRpelangganlltt.ceknollttClick(Sender: TObject);
begin
if(ceknolltt.Checked=true)then
  begin
    nomorlltt.Enabled:=true;
    nomorlltt.SetFocus;
  end
  else
    nomorlltt.Enabled:=false;
end;

procedure TFRpelangganlltt.UpdateDataRekening1Click(Sender: TObject);
begin


      DM.Xnomorlltt:=Qpel.Fieldbyname('nomorlltt').AsString; 
      Uupdate._pelanggan:='L2T2';
      Uupdate.ShowModal;
      

end;

procedure TFRpelangganlltt.cekkecamatanClick(Sender: TObject);
begin
 if(cekkecamatan.Checked=true)then
  begin
    kodekecamatan.Enabled:=true;
    kecamatan.Enabled:=true;
  end
  else
  begin
    kodekecamatan.Enabled:=false;
    kecamatan.Enabled:=false;
  end;
end;

procedure TFRpelangganlltt.kodekecamatanPropertiesChange(Sender: TObject);
begin
kecamatan.ItemIndex:=kodekecamatan.ItemIndex;
end;

procedure TFRpelangganlltt.kecamatanPropertiesChange(Sender: TObject);
begin
kodekecamatan.ItemIndex:=kecamatan.ItemIndex;
end;

end.



