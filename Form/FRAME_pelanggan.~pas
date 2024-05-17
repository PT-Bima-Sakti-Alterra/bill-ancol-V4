unit FRAME_pelanggan;

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
  TFRpelanggan = class(TFrame)
    Qpel: TMyQuery;
    DSpel: TMyDataSource;
    Qtunggakan: TMyQuery;
    DStgkrek: TMyDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Qmirror: TMyQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    Qpelmain: TMyQuery;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    Tambah1: TMenuItem;
    Koreksi1: TMenuItem;
    Hapus1: TMenuItem;
    UpdateKeRekening1: TMenuItem;
    HistoriPembayaran1: TMenuItem;
    SetFlag1: TMenuItem;
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
    GTVpelColumn24: TcxGridDBColumn;
    GTVpelColumn17: TcxGridDBColumn;
    GTVpelColumn7: TcxGridDBColumn;
    GTVpelColumn11: TcxGridDBColumn;
    GTVpelColumn9: TcxGridDBColumn;
    GTVpelColumn8: TcxGridDBColumn;
    GTVpelColumn19: TcxGridDBColumn;
    GTVpelColumn20: TcxGridDBColumn;
    GTVpelColumn21: TcxGridDBColumn;
    GTVpelColumn22: TcxGridDBColumn;
    GTVpelColumn14: TcxGridDBColumn;
    GTVpelColumn15: TcxGridDBColumn;
    GTVpelColumn13: TcxGridDBColumn;
    GTVpelColumn18: TcxGridDBColumn;
    GTVpelColumn5: TcxGridDBColumn;
    GTVpelColumn6: TcxGridDBColumn;
    GTVpelColumn25: TcxGridDBColumn;
    GTVpelColumn26: TcxGridDBColumn;
    GTVpelColumn27: TcxGridDBColumn;
    GTVpelColumn30: TcxGridDBColumn;
    GTVpelColumn1: TcxGridDBColumn;
    GTVpelColumn33: TcxGridDBColumn;
    GTVpelColumn34: TcxGridDBColumn;
    GTVpelColumn35: TcxGridDBColumn;
    GTVpelColumn36: TcxGridDBColumn;
    GTVpelColumn28: TcxGridDBColumn;
    GTVpelColumn29: TcxGridDBColumn;
    GTVpelColumn38: TcxGridDBColumn;
    GTVaktif: TcxGridDBColumn;
    GridPelLevel1: TcxGridLevel;
    HistoriPemakaian1: TMenuItem;
    HistoriLog1: TMenuItem;
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
    cekdiameter: TcxCheckBox;
    cekrayon: TcxCheckBox;
    ceknosamb: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekserimeter: TcxCheckBox;
    cekalamat: TcxCheckBox;
    cekkolektif: TcxCheckBox;
    kolektif: TcxComboBox;
    alamat: TcxTextEdit;
    serimeter: TcxTextEdit;
    nama: TcxTextEdit;
    nosamb: TcxTextEdit;
    kodediameter: TcxComboBox;
    ukuran: TcxComboBox;
    cabang: TcxComboBox;
    kodecabang: TcxComboBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    namarayon: TcxComboBox;
    koderayon: TcxComboBox;
    cekwm: TcxCheckBox;
    merkwm: TcxComboBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cekwilayah: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    ceksumberair: TcxCheckBox;
    ceklainnya: TcxCheckBox;
    cekflag: TcxCheckBox;
    flag: TcxComboBox;
    kodeflag: TcxComboBox;
    asas: TcxCheckBox;
    blok: TcxTextEdit;
    cekket: TcxCheckBox;
    kodekolektif: TcxComboBox;
    lainnya: TcxComboBox;
    keterangan: TcxComboBox;
    sumberair: TcxComboBox;
    RzPanel8: TRzPanel;
    RzPanel7: TRzPanel;
    Qpelnosamb: TStringField;
    Qpelnorekening: TStringField;
    Qpelnama: TStringField;
    Qpelalamat: TStringField;
    Qpelkoderayon: TStringField;
    Qpelkodekelurahan: TStringField;
    Qpelkodediameter: TStringField;
    Qpelkodekolektif: TStringField;
    Qpelmerkmeter: TStringField;
    Qpelkodegol: TStringField;
    Qpelnohp: TStringField;
    Qpelnotelp: TStringField;
    Qpelserimeter: TStringField;
    Qpelperiodeterbitrekening: TStringField;
    Qpelstatus: TStringField;
    Qpelkepemilikanbangunan: TStringField;
    Qpelnamapemilik: TStringField;
    Qpelpekerjaan: TStringField;
    Qpelnoktp: TStringField;
    Qpelpenghuni: TStringField;
    Qpelkodesumberair: TStringField;
    Qpelflag: TStringField;
    Qpelkodeadministrasilain: TStringField;
    Qpelkodepemeliharaanlain: TStringField;
    Qpelkoderetribusilain: TStringField;
    Qpelnopendaftaran: TStringField;
    Qpelnorab: TStringField;
    Qpelketerangan: TStringField;
    Qpeladaangsuran: TStringField;
    Qpelkodeblok: TStringField;
    Qpelluasrumah: TFloatField;
    Qpelflagpel: TStringField;
    Qpelnamarayon: TStringField;
    Qpelkodewil: TStringField;
    Qpelwilayah: TStringField;
    Qpelkelurahan: TStringField;
    Qpelkodecabang: TStringField;
    Qpelcabang: TStringField;
    Qpelgolongan: TStringField;
    Qpelukuran: TStringField;
    Qpelkolektif: TStringField;
    Qpelaktif: TStringField;
    Qpelnamablok: TStringField;
    Qpelkodeloket: TStringField;
    GTVpelColumn42: TcxGridDBColumn;
    kodeblok: TcxComboBox;
    namablok: TcxComboBox;
    cekblok: TcxCheckBox;
    BalikNama1: TMenuItem;
    RubahGOlongan1: TMenuItem;
    GantiMeter1: TMenuItem;
    RubahAlamat1: TMenuItem;
    GantiNomorSambungan1: TMenuItem;
    PasswordHapusDenda1: TMenuItem;
    GantiStatusPelanggan1: TMenuItem;
    PasswordBukaLockBulan1: TMenuItem;
    Qpelemail: TStringField;
    GTVpelColumn43: TcxGridDBColumn;
    GTVpelColumn44: TcxGridDBColumn;
    ceknorek: TcxCheckBox;
    norekening: TcxTextEdit;
    PasswordHapusOTS1: TMenuItem;
    RzPanel10: TRzPanel;
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
    Qpelrt: TStringField;
    Qpelrw: TStringField;
    Qpelkodearea: TStringField;
    Qpelarea: TStringField;
    GTVpelColumn10: TcxGridDBColumn;
    GTVpelColumn12: TcxGridDBColumn;
    LihatPiutang1: TMenuItem;
    SetHanyaAbodemen1: TMenuItem;
    Qexec: TMyQuery;
    SetHapusSecaraAkuntansi1: TMenuItem;
    Qpelkodekondisimeter: TStringField;
    Qpelkondisi: TStringField;
    GTVpelColumn40: TcxGridDBColumn;
    GTVpelColumn41: TcxGridDBColumn;
    kodekondisi: TcxComboBox;
    kondisimeter: TcxComboBox;
    cekkondisimeter: TcxCheckBox;
    GTVpelColumn45: TcxGridDBColumn;
    Qpeltgldaftar: TDateField;
    GTVpelColumn46: TcxGridDBColumn;
    Qpeltglmeter: TDateField;
    Qpelurutanbaca: TIntegerField;
    Qpelkecamatan: TStringField;
    GTVpelColumn47: TcxGridDBColumn;
    cekkecamatan: TcxCheckBox;
    kodekecamatan: TcxComboBox;
    kecamatan: TcxComboBox;
    RzPanel11: TRzPanel;
    cxLabel1: TcxLabel;
    belumspk: TRzPanel;
    cxLabel2: TcxLabel;
    selesai: TRzPanel;
    cxLabel4: TcxLabel;
    sudahspk: TRzPanel;
    cxLabel6: TcxLabel;
    RzPanel12: TRzPanel;
    GTVpelColumn48: TcxGridDBColumn;
    cflaghapus: TcxCheckBox;
    GTVpelColumn49: TcxGridDBColumn;
    Qpelflaghapus: TStringField;
    cxLabel7: TcxLabel;
    RzPanel14: TRzPanel;
    Qpelstan_awal_pasang: TFloatField;
    Qpelnosamb_baru: TStringField;
    Qpelketerangan_hapus: TStringField;
    Qpeltanggal_hapus: TDateTimeField;
    Qpeltglputus: TDateField;
    GTVpelColumn50: TcxGridDBColumn;
    ceknosegel: TcxCheckBox;
    nosegelmeter: TcxTextEdit;
    cektgldaftar: TcxCheckBox;
    tgldaftar1: TcxDateEdit;
    tgldaftar2: TcxDateEdit;
    cxLabel15: TcxLabel;
    cektglputus: TcxCheckBox;
    tglputus1: TcxDateEdit;
    cxLabel16: TcxLabel;
    tglputus2: TcxDateEdit;
    cekbanjar: TcxCheckBox;
    kodebanjar: TcxComboBox;
    banjar: TcxComboBox;
    cekkwh: TcxCheckBox;
    daya: TcxComboBox;
    dayalistrik: TcxComboBox;
    GTVpelColumn51: TcxGridDBColumn;
    GTVpelColumn52: TcxGridDBColumn;
    GTVpelColumn53: TcxGridDBColumn;
    GTVpelColumn54: TcxGridDBColumn;
    Qpelkodebanjar: TStringField;
    Qpelnamabanjar: TStringField;
    Qpeldayalistrik: TIntegerField;
    Qpeldaya: TCurrencyField;
    cekKodeIPL: TcxCheckBox;
    namaIPL: TcxComboBox;
    kodeIPL: TcxComboBox;
    cekLuasTanah: TcxCheckBox;
    luastanah: TcxCurrencyEdit;
    SetPembebanan1: TMenuItem;
    procedure GTVpelCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GTVpelFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
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
    procedure SetFlag1Click(Sender: TObject);
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
    
    procedure HistoriPemakaian1Click(Sender: TObject);
    procedure HistoriLog1Click(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure UpdateKeRekening1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cekblokClick(Sender: TObject);
    procedure kodeblokPropertiesChange(Sender: TObject);
    procedure namablokPropertiesChange(Sender: TObject);
    procedure BalikNama1Click(Sender: TObject);
    procedure RubahGOlongan1Click(Sender: TObject);
    procedure GantiMeter1Click(Sender: TObject);
    procedure RubahAlamat1Click(Sender: TObject);
    procedure GantiNomorSambungan1Click(Sender: TObject);
    procedure PasswordHapusDenda1Click(Sender: TObject);
    procedure GantiStatusPelanggan1Click(Sender: TObject);
    procedure PasswordBukaLockBulan1Click(Sender: TObject);
    procedure ceknorekClick(Sender: TObject);
    procedure PasswordHapusOTS1Click(Sender: TObject);
    procedure LihatPiutang1Click(Sender: TObject);
    procedure SetHanyaAbodemen1Click(Sender: TObject);
    procedure SetHapusSecaraAkuntansi1Click(Sender: TObject);
    procedure kodekondisiPropertiesChange(Sender: TObject);
    procedure kondisimeterPropertiesChange(Sender: TObject);
    procedure cekkondisimeterClick(Sender: TObject);
    procedure kodekecamatanPropertiesChange(Sender: TObject);
    procedure kecamatanPropertiesChange(Sender: TObject);
    procedure cekkecamatanClick(Sender: TObject);
    procedure ceknosegelClick(Sender: TObject);
    procedure cektgldaftarClick(Sender: TObject);
    procedure cektglputusClick(Sender: TObject);
    procedure cekbanjarClick(Sender: TObject);
    procedure cekkwhClick(Sender: TObject);
    procedure dayaPropertiesChange(Sender: TObject);
    procedure dayalistrikPropertiesChange(Sender: TObject);
    procedure banjarPropertiesChange(Sender: TObject);
    procedure kodebanjarPropertiesChange(Sender: TObject);
    procedure cekLuasTanahClick(Sender: TObject);
    procedure cekKodeIPLClick(Sender: TObject);
    procedure namaIPLPropertiesChange(Sender: TObject);
    procedure kodeIPLPropertiesChange(Sender: TObject);
    procedure SetPembebanan1Click(Sender: TObject);
   
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
  unitrubahnosamb, unitgantisttaus, unitpiutang, UnitPilihPeriode;

procedure TFRpelanggan.akses();
begin


    if(Umain.olah_data_pelanggan<>'1') then
    begin
    
        tambah.Enabled:=False;
        koreksi.Enabled:=False;
        hapus.Enabled:=False;
        tambah1.Enabled:=False;
        koreksi1.Enabled:=False;
        hapus1.Enabled:=False;
        SetFlag1.Enabled:=False;
        UpdateKeRekening1.Enabled:=False;
        
    end;


 
  umain.host.close;

end;

procedure TFRpelanggan.GTVpelCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Tutup Total / Non Aktif') then
  begin
    if (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Brush.Color :=  $004F4FFF;
      ACanvas.Canvas.Font.Color := clWhite;
    end;
  end else
  if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Segel') then
  begin
    if (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Brush.Color := $008BFF35;
    end;
  end else
  if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Tutup Sementara') then
  begin
    if (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Brush.Color := $00E83A00;
      ACanvas.Canvas.Font.Color := clWhite;
    end;
  end else
  if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVaktif.Index], varstring)='Aktif') then
  begin
    if (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Brush.Color := clWhite;
    end;
  end;
  if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GTVpelColumn49.Index], varString)='1') then
  begin
    if (GTVpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Brush.Color :=  clBlack;
      ACanvas.Canvas.Font.Color := clWhite;
      ACanvas.Canvas.Font.Style := [fsStrikeOut,fsBold];
    end;
  end;
end;

procedure TFRpelanggan.GTVpelFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
if(Qpel.recordcount>0)then
   begin
   {try
   
      Qtunggakan.Close;
      Qtunggakan.SQL.Clear;
      Qtunggakan.SQL.Add('call viewpiutang (:nosamb)');
      Qtunggakan.ParamByName('nosamb').AsString := Qpel.Fieldbyname('nosamb').AsString;
      Qtunggakan.Open;

   

    except
    end;;}

        xnosamb.Text:=Qpel.Fieldbyname('nosamb').asstring;
        xnama.Text:=Qpel.Fieldbyname('nama').asstring;
        xkodegol.Text:=Qpel.Fieldbyname('kodegol').asstring;
        xkodedia.Text:=Qpel.Fieldbyname('kodediameter').asstring;
        xkoderayon.Text:=Qpel.Fieldbyname('koderayon').asstring;
        xalamat.Text:=Qpel.Fieldbyname('alamat').asstring;
        xstatus.Text:=Qpel.Fieldbyname('aktif').asstring;
        xkodewil.Text:=Qpel.Fieldbyname('kodewil').asstring;
       
  END;
end;

procedure TFRpelanggan.cekrayonClick(Sender: TObject);
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

procedure TFRpelanggan.cekgolonganClick(Sender: TObject);
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

procedure TFRpelanggan.cekcabangClick(Sender: TObject);
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

procedure TFRpelanggan.cekdiameterClick(Sender: TObject);
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

procedure TFRpelanggan.ceknosambClick(Sender: TObject);
begin
  if(ceknosamb.Checked=true)then
  begin
    nosamb.Enabled:=true;
    nosamb.SetFocus;
  end
  else
    nosamb.Enabled:=false;
end;

procedure TFRpelanggan.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
 begin
    nama.Enabled:=true;
    nama.SetFocus;
 end
  else
    nama.Enabled:=false;
end;

procedure TFRpelanggan.cekserimeterClick(Sender: TObject);
begin
 if(cekserimeter.Checked=true)then
    serimeter.Enabled:=true
  else
    serimeter.Enabled:=false;
end;

procedure TFRpelanggan.cekwmClick(Sender: TObject);
begin
 if(cekwm.Checked=true)then
    merkwm.Enabled:=true
  else
    merkwm.Enabled:=false;
end;

procedure TFRpelanggan.cekalamatClick(Sender: TObject);
begin
 if(cekalamat.Checked=true)then
    alamat.Enabled:=true
  else
    alamat.Enabled:=false;
end;

procedure TFRpelanggan.cekkolektifClick(Sender: TObject);
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

procedure TFRpelanggan.cekstatusClick(Sender: TObject);
begin
 if(cekstatus.Checked=true)then
    status.Enabled:=true
  else
    status.Enabled:=false;
end;




procedure TFRpelanggan.isicombopelanggan();
begin

  ucombo.isikombo();

  namarayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;

  kodecabang.properties.items:= Ucombo.kodecabang.properties.items;
  cabang.properties.items:= Ucombo.cabang.properties.items;

  kodegol.properties.items:= Ucombo.kodegol.properties.items;
  golongan.properties.items:= Ucombo.golongan.properties.items;

  kodediameter.properties.items:= Ucombo.kodediameter.properties.items;
  ukuran.properties.items:= Ucombo.ukuran.properties.items;

  kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
  kolektif.properties.items:= Ucombo.kolektif.properties.items;

   kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;
  kelurahan.properties.items:= Ucombo.kelurahan.properties.items;

  kodekecamatan.properties.items:= Ucombo.kodekecamatan.properties.items;
  kecamatan.properties.items:= Ucombo.kecamatan.properties.items;

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

  kodebanjar.properties.items:= Ucombo.kodebanjar.properties.items;
  banjar.properties.items:= Ucombo.banjar.properties.items;

  dayalistrik.properties.items:= Ucombo.dayalistrik.properties.items;
  daya.properties.items:= Ucombo.daya.properties.items;

  kodeIPL.properties.items:= Ucombo.kodeIPL.properties.items;
  namaIPL.properties.items:= Ucombo.namaIPL.properties.items;

  tgldaftar1.Date:=Date;
  tgldaftar2.Date:=Date;
  tglputus1.Date:=Date;
  tglputus2.Date:=Date;


end;

procedure TFRpelanggan.tampilkanClick(Sender: TObject);
begin
  try
    TRY
      GTVpel.DataController.DataSource:=nil;
      Qpel.Close;
      Qpel.SQL.Clear;
      Qpel.SQL.Add(Qpelmain.SQLLock.Text);


      if(ceklainnya.Checked=true)then
      begin
            if(lainnya.Text='Warning Segel !!')then
            begin
              Qpel.SQL.Add('LEFT JOIN (select nosamb,COUNT(kode) as lembar FROM piutang WHERE current_date>=tglmulaidenda GROUP BY nosamb) b ON p.nosamb=b.nosamb ');
            end;          
      end;

      if cflaghapus.Checked=True then
      begin
        Qpel.SQL.Add('WHERE p.flaghapus IN("0","1")');
      end else
      begin
        Qpel.SQL.Add('WHERE p.flaghapus="0"');
      end;

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

       if(ceknorek.Checked=true)then
      begin
        Qpel.SQL.add('AND p.norekening=:norekening');
        Qpel.ParamByName('norekening').AsString:=norekening.Text;
      end;

      if(cekgolongan.Checked=true)then
      begin
        Qpel.SQL.add('AND p.kodegol=:kodegol');
        Qpel.ParamByName('kodegol').AsString:=kodegol.Text;
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

       if(cekbanjar.Checked=true)then
      begin
        Qpel.SQL.add('AND p.kodebanjar=:kodebanjar');
        Qpel.ParamByName('kodebanjar').AsString:=kodebanjar.Text;
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

      if(ceknosegel.Checked=true)then
      begin
        Qpel.SQL.add('AND p.nosegelmeter=:nosegelmeter');
        Qpel.ParamByName('nosegelmeter').AsString:=nosegelmeter.Text;
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

      if(cektgldaftar.Checked=true)then
      begin
        Qpel.SQL.add('AND p.tgldaftar>=:tgldaftar1 AND p.tgldaftar<=:tgldaftar2');
        Qpel.ParamByName('tgldaftar1').AsDate:=tgldaftar1.Date;
        Qpel.ParamByName('tgldaftar2').AsDate:=tgldaftar2.Date;
      end;

      if(cektglputus.Checked=true)then
      begin
        Qpel.SQL.add('AND p.tglputus>=:tglputus1 AND p.tglputus<=:tglputus2');
        Qpel.ParamByName('tglputus1').AsDate:=tglputus1.Date;
        Qpel.ParamByName('tglputus2').AsDate:=tglputus2.Date;
      end;

       if(ceksumberair.Checked=true)then
      begin
        Qpel.SQL.add('AND sa.sumberair=:sumberair');
        Qpel.ParamByName('sumberair').AsString:=sumberair.Text;
      end;

      if(cekkwh.Checked=true)then
      begin
        Qpel.SQL.add('AND p.dayalistrik=:dayalistrik');
        Qpel.ParamByName('dayalistrik').AsInteger:=StrToInt(dayalistrik.Text);
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

      if(cekKodeIPL.Checked=true)then
      begin
        Qpel.SQL.add('AND p.koderetribusilain=:kodeipl');
        Qpel.ParamByName('kodeipl').AsString:=kodeIPL.Text;
      end;

      if(cekLuasTanah.Checked=true)then
      begin
        Qpel.SQL.add('AND p.luasrumah=:luastanah');
        Qpel.ParamByName('luastanah').Value:=luastanah.Value;
      end;

       if(ceklainnya.Checked=true)then
      begin

       if(lainnya.Text='Warning Segel !!')then
        Qpel.SQL.add('AND p.status="1" AND b.lembar>=2');

       if(lainnya.Text='Warning Pemutusan !!')then
       Qpel.SQL.add('AND p.status="2" AND CURRENT_DATE>=  DATE_ADD(tglstatus, INTERVAL 1 MONTH)');

      end;


       Qpel.SQL.add('LIMIT :limit');
       //Qpel.SQL.add('ORDER BY p.flaghapus,CAST(p.nosamb AS UNSIGNED) ASC LIMIT :limit');
       Qpel.ParamByName('limit').AsCurrency:=limit.Value;
       Qpel.Open;
       GTVpelColumn49.SortOrder:=soAscending;
       GTVpelColumn49.SortIndex:=0;              
       GTVpelColumn31.SortOrder:=soAscending;
       GTVpelColumn31.SortIndex:=1;

    EXCEPT
      ON E:Exception DO
      BEGIN

           MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);

           DM.uraianError := e.Message;
           DM.eventError := 'Refresh Pelanggan Air';
           DM.logERROR();


      END;
    END;
  finally
    GTVpel.DataController.DataSource:=DSpel;
  end;



end;

procedure TFRpelanggan.koderayonPropertiesChange(Sender: TObject);
begin
  namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFRpelanggan.namarayonPropertiesChange(Sender: TObject);
begin
  koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFRpelanggan.kodegolPropertiesChange(Sender: TObject);
begin
  golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TFRpelanggan.golonganPropertiesChange(Sender: TObject);
begin
  kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TFRpelanggan.kodecabangPropertiesChange(Sender: TObject);
begin
  cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure TFRpelanggan.kodediameterPropertiesChange(Sender: TObject);
begin
  ukuran.ItemIndex:=kodediameter.ItemIndex;
end;

procedure TFRpelanggan.ukuranPropertiesChange(Sender: TObject);
begin
  kodediameter.ItemIndex:=ukuran.ItemIndex;
end;

procedure TFRpelanggan.kodekolektifPropertiesChange(Sender: TObject);
begin
 kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure TFRpelanggan.GTVpelCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

  {if koreksi.Enabled=true then
  begin
      koreksi.Click;
  end
  else
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);   }


    
end;

procedure TFRpelanggan.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;

procedure TFRpelanggan.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure TFRpelanggan.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure TFRpelanggan.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRpelanggan.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRpelanggan.cekkelurahanClick(Sender: TObject);
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

procedure TFRpelanggan.cekwilayahClick(Sender: TObject);
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

procedure TFRpelanggan.HistoriPembayaran1Click(Sender: TObject);
begin
 if( Qpel.recordcount>0)then
  begin
    DM.Xnosamb:=Qpel.Fieldbyname('nosamb').asstring;
    uhisbayar.showmodal;
  end;
end;

procedure TFRpelanggan.ceksumberairClick(Sender: TObject);
begin
 if(ceksumberair.Checked=true)then
    sumberair.Enabled:=true
  else
    sumberair.Enabled:=false;
end;

procedure TFRpelanggan.ceklainnyaClick(Sender: TObject);
begin
 if(ceklainnya.Checked=true)then
    lainnya.Enabled:=true
  else
    lainnya.Enabled:=false;
end;

procedure TFRpelanggan.cekflagClick(Sender: TObject);
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



procedure TFRpelanggan.SetFlag1Click(Sender: TObject);
begin
{      DM.Xnosamb:=Qpelnosamb.Value;
      usetflag.xflag:=Qpelflag.Value;
      if usetflag.showmodal=mrOk then
      begin
         Qpel.SQLRefresh.Clear;
         Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
         Qpel.RefreshRecord;
      end;  }
end;

procedure TFRpelanggan.kodeflagPropertiesChange(Sender: TObject);
begin
flag.ItemIndex:=kodeflag.ItemIndex;
end;

procedure TFRpelanggan.flagPropertiesChange(Sender: TObject);
begin
kodeflag.ItemIndex:=flag.ItemIndex;
end;

procedure TFRpelanggan.kodeadm_lainPropertiesChange(Sender: TObject);
begin
  adm_lain.ItemIndex:=kodeadm_lain.ItemIndex;
end;

procedure TFRpelanggan.kodepem_lainPropertiesChange(Sender: TObject);
begin
pem_lain.ItemIndex:=kodepem_lain.ItemIndex;
end;

procedure TFRpelanggan.koderet_lainPropertiesChange(Sender: TObject);
begin
ret_lain.ItemIndex:=koderet_lain.ItemIndex;
end;

procedure TFRpelanggan.adm_lainPropertiesChange(Sender: TObject);
begin
kodeadm_lain.ItemIndex:=adm_lain.ItemIndex;
end;

procedure TFRpelanggan.pem_lainPropertiesChange(Sender: TObject);
begin
kodepem_lain.ItemIndex:=pem_lain.ItemIndex;
end;

procedure TFRpelanggan.ret_lainPropertiesChange(Sender: TObject);
begin
koderet_lain.ItemIndex:=ret_lain.ItemIndex;
end;

procedure TFRpelanggan.cekadmlainClick(Sender: TObject);
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

procedure TFRpelanggan.cekpemlainClick(Sender: TObject);
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

procedure TFRpelanggan.cekretlainClick(Sender: TObject);
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

procedure TFRpelanggan.asasClick(Sender: TObject);
begin
 if(cekblok.Checked=true)then
    blok.Enabled:=true
  else
    blok.Enabled:=false;
end;

procedure TFRpelanggan.SetPelangganLancar1Click(Sender: TObject);
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

procedure TFRpelanggan.SetPelangganTunggak1Click(Sender: TObject);
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

procedure TFRpelanggan.cekketClick(Sender: TObject);
begin
 if(cekket.Checked=true)then
    keterangan.Enabled:=true
  else
    keterangan.Enabled:=false;
end;

procedure TFRpelanggan.kolektifPropertiesChange(Sender: TObject);
begin
 kodekolektif.ItemIndex:=kolektif.ItemIndex;  
end;

procedure TFRpelanggan.gtvpiutangCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin   
      {ACanvas.Canvas.Brush.Color :=  TColor($00006CEF); //Tcolor($0071CC2E);
        ACanvas.Canvas.Font.Color := clWhite; }
end;



procedure TFRpelanggan.HistoriPemakaian1Click(Sender: TObject);
begin
if( Qpel.recordcount>0)then
  begin
    DM.Xnosamb:=Qpel.Fieldbyname('nosamb').asstring;
    uhispakai.nama.Caption:= Qpel.Fieldbyname('nama').asstring+' / '+Qpel.Fieldbyname('nosamb').asstring+' / '+Qpel.Fieldbyname('alamat').asstring;
    uhispakai.showmodal;
  end;
end;


procedure TFRpelanggan.HistoriLog1Click(Sender: TObject);
begin
if(Qpel.RecordCount>0)then
begin
    ulog.nosamb:=Qpelnosamb.Value;
    ulog.info.Caption:='RIWAYAT MEMO '+Qpelnosamb.Value;
    ulog.showmodal;
end;
end;

procedure TFRpelanggan.koreksiClick(Sender: TObject);
begin

  {if(Qpel.RecordCount>0)then
    begin

     DM.Xnosamb:=Qpel.Fieldbyname('nosamb').AsString;
     DM.Xnama:=Qpel.Fieldbyname('nama').AsString;
     DM.xid:=Qpel.Fieldbyname('id').AsInteger;
     DM.Xflag:='Koreksi';
    

     UTpelanggan.cxButton1.Visible:=false;
     UTpelanggan.status.Enabled:=false;
     UTpelanggan.nosamb.Enabled:=false;
     UTpelanggan.kodegol.Enabled:=false;
     UTpelanggan.golongan.Enabled:=false;
     UTpelanggan.koderayon.Enabled:=false;
     UTpelanggan.namarayon.Enabled:=false;
     UTpelanggan.kodediameter.Enabled:=false;
     UTpelanggan.ukuran.Enabled:=false;
     UTpelanggan.serimeter.Enabled:=false;
     UTpelanggan.tgldaftar.Enabled:=false;
     UTpelanggan.alamat.Enabled:=false;
     UTpelanggan.kodeblok.Enabled:=false;
     UTpelanggan.namablok.Enabled:=false;
     UTpelanggan.merkwm.Enabled:=false;
     UTpelanggan.kelurahan.Enabled:=false;
     UTpelanggan.kodekelurahan.Enabled:=false;
     UTpelanggan.nama.Enabled:=false;
     UTpelanggan.norumah.Enabled:=false;
     UTpelanggan.rt.Enabled:=false;
     UTpelanggan.rw.Enabled:=false;


     Utpelanggan.nosamb.Text:=Qpel.Fieldbyname('nosamb').AsString;
     Utpelanggan.norekening.Text:=Qpel.Fieldbyname('norekening').AsString;
     Utpelanggan.nama.Text:=Qpel.Fieldbyname('nama').AsString;
     Utpelanggan.alamat.Text:=Qpel.Fieldbyname('alamat').AsString;
     Utpelanggan.telp.Text:=Qpel.Fieldbyname('notelp').AsString;
     Utpelanggan.gsmcdma.Text:=Qpel.Fieldbyname('nohp').AsString;
     Utpelanggan.merkwm.Text:=Qpel.Fieldbyname('merk').AsString; 
     Utpelanggan.tgldaftar.date:=Qpel.Fieldbyname('tgldaftar').AsDateTime;
     Utpelanggan.status.ItemIndex:=Qpel.Fieldbyname('status').AsInteger;
     Utpelanggan.pekerjaan.Text:=Qpel.Fieldbyname('pekerjaan').AsString;
     Utpelanggan.noktp.Text:=Qpel.Fieldbyname('noktp').AsString;
     Utpelanggan.namapemilik.Text:=Qpel.Fieldbyname('namapemilik').AsString;
     Utpelanggan.penghuni.Text:=Qpel.Fieldbyname('penghuni').AsString;
     Utpelanggan.serimeter.Text:=Qpel.Fieldbyname('serimeter').AsString;
     Utpelanggan.luasrumah.Value:=Qpel.Fieldbyname('luasrumah').AsCurrency;
     Utpelanggan.email.Text:=Qpel.Fieldbyname('email').AsString;
     Utpelanggan.norumah.Text:=Qpel.Fieldbyname('norumah').AsString;
     Utpelanggan.rt.Text:=Qpel.Fieldbyname('rt').AsString;
     Utpelanggan.rw.Text:=Qpel.Fieldbyname('rw').AsString;
     UTpelanggan.urutanbaca.Value:=Qpel.Fieldbyname('urutanbaca').AsCurrency;

     DM.Xstatus:=Qpelstatus.Value;
     Utpelanggan.zkodeblok:=Qpelkodeblok.Value;
     Utpelanggan.zkodegol:=Qpelkodegol.Value;
     Utpelanggan.zgolongan:=Qpelgolongan.Value;
     Utpelanggan.zkodediameter:=Qpelkodediameter.Value;
     Utpelanggan.zukuran:=Qpelukuran.Value;
     Utpelanggan.zkodekolektif:=Qpelkodekolektif.Value;
     Utpelanggan.zkolektif:=Qpelkolektif.Value;
     Utpelanggan.zkoderayon:=Qpelkoderayon.Value;
     Utpelanggan.znamarayon:=Qpelnamarayon.Value;
     Utpelanggan.Znosamb:= Qpelnosamb.Value;
     Utpelanggan.Znorekening:= Qpelnorekening.Value;
     Utpelanggan.Znama:= Qpelnama.Value;
     Utpelanggan.zkodecabang:= Qpelkodecabang.Value;
     Utpelanggan.zcabang:= Qpelcabang.Value;
     Utpelanggan.zkodekelurahan:= Qpelkodekelurahan.Value;
     Utpelanggan.zkelurahan:= Qpelkelurahan.Value;
     Utpelanggan.zkodewil:= Qpelkodewil.Value;
     Utpelanggan.zwilayah:= Qpelwilayah.Value;
     Utpelanggan.Zkepemilikan:= Qpelkepemilikanbangunan.Value;
     Utpelanggan.Zsumberair:= Qpelsumberair.Value;
     Utpelanggan.zmerk:= Qpelmerk.Value;
    
     Utpelanggan.zkodeadmlain:= Qpelkodeadministrasilain.Value;
     Utpelanggan.zkodepemlain:= Qpelkodepemeliharaanlain.Value;
     Utpelanggan.zkoderetlain:= Qpelkoderetribusilain.Value;
     Utpelanggan.zkodekondisimeter:= Qpelkodekondisimeter.Value;
     UTpelanggan.tglmeter.Date:=Qpeltglmeter.AsDateTime;
  

     if Utpelanggan.showmodal=mrOk then
     begin

         Qpel.SQLRefresh.Clear;
         Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
         Qpel.RefreshRecord;

     end;

    end;  }
    

 




end;

procedure TFRpelanggan.tambahClick(Sender: TObject);
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
     UTpelanggan.status.ItemIndex:=1;

     UTpelanggan.cxButton1.Visible:=true;
     UTpelanggan.status.Enabled:=false;
     UTpelanggan.nosamb.Enabled:=true;
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
     UTpelanggan.tglmeter.Date:=Date;
     UTpelanggan.urutanbaca.Value:=0;
     UTpelanggan.znorab:='';


     UTpelanggan.norumah.Enabled:=true;
     UTpelanggan.rt.Enabled:=true;
     UTpelanggan.rw.Enabled:=true;



    if Utpelanggan.showmodal=mrOk then
    begin
         MessageDlg('Pelanggan Baru Berhasil Ditambahkan.....'+char(13)+
         'Rekening Akan Terbit Secara Otomatis '+char(13)+'pada Periode Selanjutnya...'
         +char(13)+'Atau.....'+char(13)+'Lakukan Prosedure "Terbitkan Rekening"'
         +char(13)+'pada Bulan Berjalan..', mtInformation, [mbOK], 0);

    end;

    }

end;

procedure TFRpelanggan.hapusClick(Sender: TObject);
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
           DM.Qcek.SQL.Add('select * FROM piutang WHERE nosamb=:nosamb LIMIT 1');
           DM.Qcek.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
           DM.Qcek.Open;

           if(DM.Qcek.RecordCount>0) then
            piutang:='1'
           else
            piutang:='0';

           DM.Qcek.close;
           Dm.Qcek.SQL.Clear;
           DM.Qcek.SQL.Add('select * FROM bayar WHERE nosamb=:nosamb LIMIT 1');
           DM.Qcek.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
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
                     umain.Qhost1.SQL.Add('DELETE FROM pelanggan WHERE nosamb=:nosamb');
                     umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                     umain.Qhost1.Execute;


                     umain.Qhost1.close;
                     umain.Qhost1.SQL.Clear;
                     umain.Qhost1.SQL.Add('REPLACE INTO hapuspel values (:nosamb,NOW(),:user)');
                     umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                     umain.Qhost1.ParamByName('user').AsString:=umain.user.Caption;
                     umain.Qhost1.Execute;

                     umain.Qhost1.close;
                     umain.Qhost1.SQL.Clear;
                     umain.Qhost1.SQL.Add('DELETE FROM drd WHERE nosamb=:nosamb');
                     umain.Qhost1.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                     umain.Qhost1.Execute;


                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('DELETE FROM pelanggan WHERE nosamb=:nosamb');
                     DM.Qexec.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                     DM.Qexec.Execute;

                     DM.Qcek.close;
                     Dm.Qcek.SQL.Clear;
                     DM.Qcek.SQL.Add('select periode FROm periode ORDER BY periode ASC');
                     DM.Qcek.Open;

                     for j:=1 to DM.Qcek.RecordCount do
                     begin
                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('DELETE FROM drd'+DM.Qcek.fieldbyname('periode').AsString+' WHERE nosamb=:nosamb');
                       DM.Qexec.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       DM.Qexec.Execute;
                     DM.Qcek.Next;
                     end;


                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('DELETE FROM piutang WHERE nosamb=:nosamb');
                       DM.Qexec.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       DM.Qexec.Execute;

                       DM.Qexec.close;
                       DM.Qexec.SQL.Clear;
                       DM.Qexec.SQL.Add('DELETE FROM bayar WHERE nosamb=:nosamb');
                       DM.Qexec.ParamByName('nosamb').AsString:=Qpel.Fieldbyname('nosamb').AsString;
                       DM.Qexec.Execute;

                       DM.uraianlogakses:='Hapus Pelanggan,Rekening,Piutang,Pembayaran '+Qpel.Fieldbyname('nosamb').AsString;
                       DM.targetlogakses:=Qpel.Fieldbyname('nosamb').AsString;
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

        end;}

end;
procedure TFRpelanggan.exportClick(Sender: TObject);
begin

 if not Qpel.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(Gridpel.FocusedView.PatternGridView));
  end;

end;

procedure TFRpelanggan.printClick(Sender: TObject);
begin
 if(Qpel.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PELANGGAN';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRpelanggan.UpdateKeRekening1Click(Sender: TObject);
begin


      DM.Xnosamb:=Qpel.Fieldbyname('nosamb').AsString;
      Uupdate._pelanggan:='AIR';
      Uupdate.ShowModal; 
      


end;

procedure TFRpelanggan.cxCheckBox1Click(Sender: TObject);
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

procedure TFRpelanggan.cekblokClick(Sender: TObject);
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

procedure TFRpelanggan.kodeblokPropertiesChange(Sender: TObject);
begin
namablok.ItemIndex:=kodeblok.ItemIndex;
end;

procedure TFRpelanggan.namablokPropertiesChange(Sender: TObject);
begin
kodeblok.ItemIndex:=namablok.ItemIndex;
end;

procedure TFRpelanggan.BalikNama1Click(Sender: TObject);
begin

  {ubaliknama.namalama.Text:=Qpelnama.AsString;
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET nama=:nama WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET nama=:nama,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           Umain.Qhost1.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('nama').AsString:=ubaliknama.namabaru.Text;
           Umain.Qhost1.Execute;



            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=ubaliknama.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Balik Nama';
            DM.Qexec.ParamByName('uraian').AsString:='Balik Nama : "'+Qpelnama.Text+'" -> "'+ubaliknama.namabaru.Text+'" | Alasan : "'+ubaliknama.alasan.Text+'" | Nomor B.A : "'+ubaliknama.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodegol.AsString;
            DM.Qexec.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Balik Nama : "'+Qpelnama.Text+'" -> "'+ubaliknama.namabaru.Text+'" | Alasan : "'+ubaliknama.alasan.Text+'" | Nomor B.A : "'+ubaliknama.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Balik Nama berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end; }
end;

procedure TFRpelanggan.RubahGOlongan1Click(Sender: TObject);
begin

  {urubahgolongan.kodegollama.Text:=Qpelkodegol.AsString;
  urubahgolongan.kodegolbaru.Clear;
  urubahgolongan.nomorba.Clear;
  urubahgolongan.tanggal.Clear;
  urubahgolongan.alasan.Clear;

  if urubahgolongan.showmodal=mrOk then
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET kodegol=:kodegol WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('kodegol').AsString:=urubahgolongan.kodegolbaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET kodegol=:kodegol,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('kodegol').AsString:=urubahgolongan.kodegolbaru.Text;
           Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol,kodegollama) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol,:kodegollama) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=urubahgolongan.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Rubah Golongan';
            DM.Qexec.ParamByName('uraian').AsString:='Rubah Golongan : "'+Qpelkodegol.Text+'" -> "'+urubahgolongan.kodegolbaru.Text+'" | Alasan : "'+urubahgolongan.alasan.Text+'" | Nomor B.A : "'+urubahgolongan.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegollama').AsString:=Qpelkodegol.AsString;
            DM.Qexec.ParamByName('kodegol').AsString:=urubahgolongan.kodegolbaru.Text;
            DM.Qexec.Execute; 

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Rubah Golongan : "'+Qpelkodegol.Text+'" -> "'+urubahgolongan.kodegolbaru.Text+'" | Alasan : "'+urubahgolongan.alasan.Text+'" | Nomor B.A : "'+urubahgolongan.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Rubah Golongan berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end; }
end;

procedure TFRpelanggan.GantiMeter1Click(Sender: TObject);
begin
{  ugantimeter.merklama.Text:=Qpelmerk.AsString;
  ugantimeter.kodediameterlama.Text:=Qpelkodediameter.AsString;
  ugantimeter.serimeterlama.Text:=Qpelserimeter.AsString;  
  
  ugantimeter.kodediameterbaru.Clear;
  ugantimeter.serimeterbaru.Clear;
  ugantimeter.nomorba.Clear;
  ugantimeter.tanggal.Clear;
  ugantimeter.alasan.Clear;

  if ugantimeter.showmodal=mrOk then
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET kodediameter=:kodediameter,serimeter=:serimeter,merk=:merk,tglmeter=:tglmeter WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('kodediameter').AsString:=ugantimeter.kodediameterbaru.Text;
           DM.Qexec.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
           DM.Qexec.ParamByName('merk').AsString:=ugantimeter.merkwm.Text;
           DM.Qexec.ParamByName('tglmeter').AsDate:=ugantimeter.tanggal.date;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET kodediameter=:kodediameter,serimeter=:serimeter,waktuupdate=NOW(),merkmeter=:merkmeter,tglmeter=:tglmeter WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('kodediameter').AsString:=ugantimeter.kodediameterbaru.Text;
           Umain.Qhost1.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
           Umain.Qhost1.ParamByName('merkmeter').AsString:=ugantimeter.merkwm.Text;
           Umain.Qhost1.ParamByName('tglmeter').AsDate:=ugantimeter.tanggal.date;
           Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=ugantimeter.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Ganti Meter';
            DM.Qexec.ParamByName('uraian').AsString:='Ganti Meter : "'+Qpelkodediameter.Text+'" -> "'+ugantimeter.kodediameterbaru.Text+'" | Nomor/Seri : "'+Qpelserimeter.Text+'" -> "'+ugantimeter.serimeterbaru.Text+'" | Alasan : "'+ugantimeter.alasan.Text+'" | Nomor B.A : "'+ugantimeter.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodegol.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Ganti Meter : "'+Qpelkodediameter.Text+'" -> "'+ugantimeter.kodediameterbaru.Text+'" | Nomor/Seri : "'+Qpelserimeter.Text+'" -> "'+ugantimeter.serimeterbaru.Text+'" | Alasan : "'+ugantimeter.alasan.Text+'" | Nomor B.A : "'+ugantimeter.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Ganti Meter berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end;  }
end;

procedure TFRpelanggan.RubahAlamat1Click(Sender: TObject);
begin
{

  urubahalamat.koderayonlama.Text:=Qpelkoderayon.AsString;
  urubahalamat.kodebloklama.Text:=Qpelkodeblok.AsString;
  urubahalamat.kodekelurahanlama.Text:=Qpelkodekelurahan.AsString;
  urubahalamat.alamatlama.Text:=Qpelalamat.AsString;
  urubahalamat.norumahlama.Text:=Qpelnorumah.AsString;
  urubahalamat.rtlama.Text:=Qpelrt.AsString;
  urubahalamat.rwlama.Text:=Qpelrw.AsString;
  urubahalamat.koderayonbaru.Clear;
  urubahalamat.kodeblokbaru.Clear;
  urubahalamat.kodekelurahanbaru.Clear;
  urubahalamat.alamatbaru.Clear;
  urubahalamat.nomorba.Clear;
  urubahalamat.tanggal.Clear;
  urubahalamat.alasan.Clear;
  urubahalamat.norumah.Clear;
  urubahalamat.rt.Clear;
  urubahalamat.rw.Clear;


  if urubahalamat.showmodal=mrOk then
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET koderayon=:koderayon,alamat=:alamat,kodeblok=:kodeblok,kodekelurahan=:kodekelurahan,norumah=:norumah,rt=:rt,rw=:rw WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('koderayon').AsString:=urubahalamat.koderayonbaru.Text;
           DM.Qexec.ParamByName('alamat').AsString:=urubahalamat.alamatbaru.Text;
           DM.Qexec.ParamByName('kodekelurahan').AsString:=  urubahalamat.kodekelurahanbaru.Text;
           DM.Qexec.ParamByName('kodeblok').AsString:=urubahalamat.kodeblokbaru.Text;
           DM.Qexec.ParamByName('norumah').AsString:=urubahalamat.norumah.Text;
           DM.Qexec.ParamByName('rt').AsString:=urubahalamat.rt.Text;
           DM.Qexec.ParamByName('rw').AsString:=urubahalamat.rw.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET koderayon=:koderayon,kodekelurahan=:kodekelurahan,kodeblok=:kodeblok,alamat=:alamat,norumah=:norumah,rt=:rt,rw=:rw,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('koderayon').AsString:=urubahalamat.koderayonbaru.Text;
           Umain.Qhost1.ParamByName('kodekelurahan').AsString:=  urubahalamat.kodekelurahanbaru.Text;
           Umain.Qhost1.ParamByName('alamat').AsString:=urubahalamat.alamatbaru.Text;   
           Umain.Qhost1.ParamByName('kodeblok').AsString:=urubahalamat.kodeblokbaru.Text;
           Umain.Qhost1.ParamByName('norumah').AsString:=urubahalamat.norumah.Text;
           Umain.Qhost1.ParamByName('rt').AsString:=urubahalamat.rt.Text;
           Umain.Qhost1.ParamByName('rw').AsString:=urubahalamat.rw.Text;
           Umain.Qhost1.Execute;


           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET koderayon=:koderayon,alamat=:alamat,kodekelurahan=:kodekelurahan WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('koderayon').AsString:=urubahalamat.koderayonbaru.Text;
           DM.Qexec.ParamByName('alamat').AsString:=urubahalamat.alamatbaru.Text;
           DM.Qexec.ParamByName('kodekelurahan').AsString:=  urubahalamat.kodekelurahanbaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET koderayon=:koderayon,kodekelurahan=:kodekelurahan,alamat=:alamat,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('koderayon').AsString:=urubahalamat.koderayonbaru.Text;
           Umain.Qhost1.ParamByName('alamat').AsString:=urubahalamat.alamatbaru.Text;
           Umain.Qhost1.ParamByName('kodekelurahan').AsString:=  urubahalamat.kodekelurahanbaru.Text;
           Umain.Qhost1.Execute;



            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=urubahalamat.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Rubah Alamat';
            DM.Qexec.ParamByName('uraian').AsString:='Rubah Alamat : "'+Qpelkoderayon.Text+'" -> "'+urubahalamat.koderayonbaru.Text+'" | Alamat : "'+Qpelalamat.Text+'" -> "'+urubahalamat.alamatbaru.Text+'" | Alasan : "'+urubahalamat.alasan.Text+'" | Nomor B.A : "'+urubahalamat.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodegol.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Rubah Alamat : "'+Qpelkoderayon.Text+'" -> "'+urubahalamat.koderayonbaru.Text+'" | Alamat : "'+Qpelalamat.Text+'" -> "'+urubahalamat.alamatbaru.Text+'" | Alasan : "'+urubahalamat.alasan.Text+'" | Nomor B.A : "'+urubahalamat.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Rubah Alamat berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end; }
end;

procedure TFRpelanggan.GantiNomorSambungan1Click(Sender: TObject);
var
j:integer;
begin
{

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROm piutang WHERE nosamb="'+Qpelnosamb.AsString+'"');
  DM.Qcek.Open;

  if( DM.Qcek.RecordCount>0)then
  begin
      MessageDlg('Pelanggan harus melunasi piutang air terlebih dahulu..!!', mtWarning, [mbOk], 0);
      exit;
  end;

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROm periode ORDER BY periode ASC');
  DM.Qcek.Open;

  Application.ProcessMessages;
  for j:=1 to DM.Qcek.RecordCount do
  begin

    DM.Qcek2.close;
    DM.Qcek2.SQL.Clear;
    DM.Qcek2.SQL.Add('select * FROm drd'+DM.Qcek.fieldbyname('periode').AsString+' WHERE nosamb="'+Qpelnosamb.AsString+'" and flagpublish="0" and flagaktif="1"');
    DM.Qcek2.Open;

    if(DM.Qcek2.RecordCount>0)then
    begin

      MessageDlg('Pelanggan tidak memiliki piutang, '+char(13)+
      'Namun terdapat REKENING AKTIF yang tidak terpublish pada periode "'+DM.Qcek.fieldbyname('nama').asstring+'"..', mtWarning, [mbOk], 0);
      exit;

    end;

    Application.ProcessMessages;
    DM.Qcek.Next;
  end;



  urubahnosamb.nosamblama.Text:=Qpelnosamb.AsString;
  urubahnosamb.nosambbaru.Clear;
  urubahnosamb.nomorba.Clear;
  urubahnosamb.tanggal.Clear;
  urubahnosamb.alasan.Clear;

  if urubahnosamb.showmodal=mrOk then
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET nosamb=:nosamb WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('nosamb').AsString:=urubahnosamb.nosambbaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET nosamb=:nosamb,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('nosamb').AsString:=urubahnosamb.nosambbaru.Text;
           Umain.Qhost1.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET nosamb=:nosamb WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('nosamb').AsString:=urubahnosamb.nosambbaru.Text;
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET nosamb=:nosamb,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('nosamb').AsString:=urubahnosamb.nosambbaru.Text;
           Umain.Qhost1.Execute;



            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('REPLACE INTO nosamb (nosamb,nama,waktuupdate,uraian,koderayon) values (:nosamb,:nama,NOW(),:uraian,:koderayon)');
            Umain.Qhost1.ParamByName('nosamb').AsString:=urubahnosamb.nosambbaru.Text;
            Umain.Qhost1.ParamByName('nama').AsString:=Qpelnama.AsString;
            Umain.Qhost1.ParamByName('uraian').AsString:='Perubahan No.samb dari '+Qpelnosamb.AsString;
            Umain.Qhost1.ParamByName('koderayon').AsString:=Qpelkoderayon.AsString;
            Umain.Qhost1.Execute;




            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=urubahnosamb.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:='Ganti No.Samb';
            DM.Qexec.ParamByName('uraian').AsString:='Ganti No.Samb : "'+Qpelnosamb.Text+'" -> "'+urubahnosamb.nosambbaru.Text+'" | Alasan : "'+urubahnosamb.alasan.Text+'" | Nomor B.A : "'+urubahnosamb.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodegol.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Ganti No.Samb : "'+Qpelnosamb.Text+'" -> "'+urubahnosamb.nosambbaru.Text+'" | Alasan : "'+urubahnosamb.alasan.Text+'" | Nomor B.A : "'+urubahnosamb.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Ganti No.Samb berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end;}
end;

procedure TFRpelanggan.PasswordHapusDenda1Click(Sender: TObject);
begin

  if(Qpel.RecordCount>0)then
  begin

    if MessageDlg('Cari Password Koreksi Denda ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,:nosamb)),5)) AS password');
      DM.Qcek.parambyname('nosamb').asstring:=Qpel.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg('Password Koreksi Denda a/n '+Qpel.fieldbyname('nosamb').AsString+' : '+Char(13)+char(13)+
                  DM.Qcek.fieldbyname('password').AsString+char(13)+char(13)+
                  'Berlaku hanya hari ini...', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Koreksi Denda '+Qpel.FieldByName('nama').AsString+' / '+Qpelnosamb.AsString;
     DM.targetlogakses:= Qpelnosamb.AsString;
     DM.logakses;

    end
    else
      Exit;

  end;

end;

procedure TFRpelanggan.GantiStatusPelanggan1Click(Sender: TObject);
var
_statusawal:string;
begin
{
  _statusawal:=Qpelstatus.AsString;
  
  ustatus.status.ItemIndex:=StrToInt(Qpelstatus.AsString);
  ustatus.nomorba.Clear;
  ustatus.tanggal.Clear;
  ustatus.alasan.Clear;

  if ustatus.showmodal=mrOk then
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
           DM.Qexec.SQL.Add('UPDATE pelanggan SET status=:status WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qexec.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status=:status,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
           Umain.Qhost1.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
           Umain.Qhost1.Execute;



           {DM.Qcek.close;
           DM.Qcek.SQL.Clear;
           DM.Qcek.SQL.Add('select nosamb FROM pelanggan_limbah WHERE nosamb="'+Qpelnosamb.AsString+'"');
           DM.Qcek.Open;


            if DM.Qcek.RecordCount=0 then
           begin


             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status=:status WHERE nosamb="'+Qpelnosamb.AsString+'"');
             DM.Qexec.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
             DM.Qexec.Execute;

             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status=:status,waktuupdate=NOW() WHERE nosamb="'+Qpelnosamb.AsString+'"');
             Umain.Qhost1.ParamByName('status').AsString:=IntToStr(ustatus.status.itemindex);
             Umain.Qhost1.Execute;    

           end;}

         {


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
            DM.Qexec.ParamByName('nosamb').AsString:=Qpelnosamb.AsString;
            DM.Qexec.ParamByName('tanggal').AsDate:=ustatus.tanggal.date;
            DM.Qexec.ParamByName('tipe').AsString:=ustatus.status.Text;
            DM.Qexec.ParamByName('uraian').AsString:=ustatus.status.Text+' | Alasan : "'+ustatus.alasan.Text+'" | Nomor B.A : "'+ustatus.nomorba.Text+'"';
            DM.Qexec.ParamByName('kodegol').AsString:=Qpelkodegol.AsString;
            DM.Qexec.Execute;




           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('COMMIT');
           Umain.Qhost1.Execute;


            DM.uraianlogakses:='Ganti Status : "'+Qpelstatus.Text+'" -> "'+ustatus.status.Text+'" | Alasan : "'+ustatus.alasan.Text+'" | Nomor B.A : "'+ustatus.nomorba.Text+'"';
            DM.targetlogakses:=Qpelnosamb.AsString;
            DM.logakses;

            MessageDlg('Perubahan Status berhasil....', mtInformation, [mbOK], 0);

            Qpel.SQLRefresh.Clear;
            Qpel.SQLRefresh.Add(Qpelmain.SQLRefresh.Text);
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

  end;  }
end;

procedure TFRpelanggan.PasswordBukaLockBulan1Click(Sender: TObject);
begin
  if(Qpel.RecordCount>0)then
  begin

    if MessageDlg('Cari Password Koreksi Denda ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,:nosamb)),3)) AS password');
      DM.Qcek.parambyname('nosamb').asstring:=Qpel.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg('Password Buka Lock Bulan a/n '+Qpel.fieldbyname('nosamb').AsString+' : '+Char(13)+char(13)+
                  DM.Qcek.fieldbyname('password').AsString+char(13)+char(13)+
                  'Berlaku hanya hari ini...', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Buka Lock Bulan '+Qpel.FieldByName('nama').AsString+' / '+Qpelnosamb.AsString;
     DM.targetlogakses:= Qpelnosamb.AsString;
     DM.logakses;

    end
    else
      Exit;

  end;
end;

procedure TFRpelanggan.ceknorekClick(Sender: TObject);
begin
  if(ceknorek.Checked=true)then
  begin
    norekening.Enabled:=true;
    norekening.SetFocus;
  end
  else
    norekening.Enabled:=false;
end;



procedure TFRpelanggan.PasswordHapusOTS1Click(Sender: TObject);
begin
  if(Qpel.RecordCount>0)then
  begin

    if MessageDlg('Cari Password Koreksi Denda ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,:nosamb,"*")),5)) AS password');
      DM.Qcek.parambyname('nosamb').asstring:=Qpel.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg('Password Hapus OTS a/n '+Qpel.fieldbyname('nosamb').AsString+' : '+Char(13)+char(13)+
                  DM.Qcek.fieldbyname('password').AsString+char(13)+char(13)+
                  'Berlaku hanya hari ini...', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Hapus OTS '+Qpel.FieldByName('nama').AsString+' / '+Qpelnosamb.AsString;
     DM.targetlogakses:= Qpelnosamb.AsString;
     DM.logakses;

    end
    else
      Exit;

  end;

end;

procedure TFRpelanggan.LihatPiutang1Click(Sender: TObject);
begin
if( Qpel.recordcount>0)then
  begin
    DM.Xnosamb:=Qpel.Fieldbyname('nosamb').asstring;

    upiutang.refresh.click;

    upiutang.nama.Caption:= Qpel.Fieldbyname('nama').asstring+' / '+Qpel.Fieldbyname('nosamb').asstring+' / '+Qpel.Fieldbyname('alamat').asstring;

    upiutang.showmodal;
  end;
end;

procedure TFRpelanggan.SetHanyaAbodemen1Click(Sender: TObject);
var
i:integer;
begin
    if(Qpel.recordcount>0)then
    begin


        Upilihperiode.info.Caption:='SET HANYA ABODEMEN';
        if upilihperiode.showmodal=mrOk then
        begin


          TRY
          TRY

                Enabled:=false;

                umain.openkoneksi_host;

                Qexec.close;
                Qexec.SQL.Clear;
                Qexec.SQL.Add('START TRANSACTION');
                Qexec.Execute;

                Dm.Qexec.close;
                Dm.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('START TRANSACTION');
                Dm.Qexec.Execute;


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.add('select periode FROM piutang WHERE nosamb=:nosamb AND periode>=:periode1 AND periode<=:periode2');
                DM.Qcek.parambyname('nosamb').asstring:=Qpelnosamb.value;
                DM.Qcek.ParamByName('periode1').asstring:=formatdatetime('YYYYMM',upilihperiode.periode1.date);
                DM.Qcek.ParamByName('periode2').asstring:=formatdatetime('YYYYMM',upilihperiode.periode2.date) ;
                DM.Qcek.Open;

                for i:=1 to DM.Qcek.recordcount do
                begin

                  Dm.Qexec.close;
                  Dm.Qexec.SQL.clear;
                  DM.Qexec.SQL.add('UPDATE drd'+DM.Qcek.fieldbyname('periode').asstring+' SET total=administrasi+pemeliharaan+retribusi,rekair=administrasi+pemeliharaan+retribusi,biayapemakaian=0,meterai=0,blok1=0,blok2=0,blok3=0,blok4=0,blok5=0,prog1=0,prog2=0,prog3=0,prog4=0,prog5=0 WHERE nosamb=:nosamb');
                  DM.Qexec.parambyname('nosamb').asstring:=Qpelnosamb.value;
                  DM.Qexec.execute;


                  Dm.Qexec.close;
                  Dm.Qexec.SQL.clear;
                  DM.Qexec.SQL.add('UPDATE piutang SET total=administrasi+pemeliharaan+retribusi,rekair=administrasi+pemeliharaan+retribusi,biayapemakaian=0,meterai=0,blok1=0,blok2=0,blok3=0,blok4=0,blok5=0,prog1=0,prog2=0,prog3=0,prog4=0,prog5=0 WHERE kode=:kode');
                  DM.Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  DM.Qexec.execute;

                  Qexec.close;
                  Qexec.SQL.clear;
                  Qexec.SQL.add('UPDATE piutang SET total=administrasi+pemeliharaan+retribusi,rekair=administrasi+pemeliharaan+retribusi,biayapemakaian=0,meterai=0,blok1=0,blok2=0,blok3=0,blok4=0,blok5=0,prog1=0,prog2=0,prog3=0,prog4=0,prog5=0 WHERE kode=:kode');
                  Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  Qexec.execute;

                  DM.Qcek.next;

                end;  
          
               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('COMMIT');
               Qexec.Execute; 

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('COMMIT');
               DM.Qexec.Execute;


               MessageDlg('SET ABODEMEN SELESAI !! ', mtInformation, [mbOK], 0);


          except On E:exception  do
          begin  

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('ROLLBACK');
            Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
          end;

          FINALLY

              Enabled:=true;
              Umain.host.close;
          END;

        end;

    end;
end;

procedure TFRpelanggan.SetHapusSecaraAkuntansi1Click(Sender: TObject);
var
i:integer;
begin
    if(Qpel.recordcount>0)then
    begin


        Upilihperiode.info.Caption:='SET HAPUS SECARA AKUNTANSI';
        if upilihperiode.showmodal=mrOk then
        begin


          TRY
          TRY

                Enabled:=false;

                umain.openkoneksi_host;

                Qexec.close;
                Qexec.SQL.Clear;
                Qexec.SQL.Add('START TRANSACTION');
                Qexec.Execute;

                Dm.Qexec.close;
                Dm.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('START TRANSACTION');
                Dm.Qexec.Execute;


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.add('select kode,nosamb,periode,rekair FROM piutang WHERE nosamb=:nosamb AND periode>=:periode1 AND periode<=:periode2');
                DM.Qcek.parambyname('nosamb').asstring:=Qpelnosamb.value;
                DM.Qcek.ParamByName('periode1').asstring:=formatdatetime('YYYYMM',upilihperiode.periode1.date);
                DM.Qcek.ParamByName('periode2').asstring:=formatdatetime('YYYYMM',upilihperiode.periode2.date) ;
                DM.Qcek.Open;

                for i:=1 to DM.Qcek.recordcount do
                begin

                  Dm.Qexec.close;
                  Dm.Qexec.SQL.clear;
                  DM.Qexec.SQL.add('UPDATE piutang SET flag="4" WHERE kode=:kode');
                  DM.Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  DM.Qexec.execute;

                  Qexec.close;
                  Qexec.SQL.clear;
                  Qexec.SQL.add('UPDATE piutang SET flag="4" WHERE kode=:kode');
                  Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  Qexec.execute;

                  Qexec.close;
                  Qexec.SQL.clear;
                  Qexec.SQL.add('UPDATE nonair SET flag="4" WHERE urutan=:urutan and flaglunas="0" and flaghapus="0"');
                  Qexec.parambyname('urutan').asstring:=DM.Qcek.fieldbyname('kode').AsString;
                  Qexec.execute;

                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('REPLACE INTO drdhapussecaraakuntansi (kode,nosamb,periode,tglhapussecaraakuntansi,rekair) values (:kode,:nosamb,:periode,:tglhapussecaraakuntansi,:rekair)');
                   DM.Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                   DM.Qexec.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                   DM.Qexec.ParamByName('periode').AsString:=DM.Qcek.fieldbyname('periode').AsString;
                   DM.Qexec.ParamByName('tglhapussecaraakuntansi').AsDate:=Date;
                   DM.Qexec.ParamByName('rekair').AsCurrency:=DM.Qcek.fieldbyname('rekair').AsCurrency;
                   DM.Qexec.Execute;

                  DM.Qcek.next;

                end;

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('COMMIT');
               Qexec.Execute; 

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('COMMIT');
               DM.Qexec.Execute;


               MessageDlg('SET HAPUS SECARA AKUNTANSI SELESAI !! ', mtInformation, [mbOK], 0);


          except On E:exception  do
          begin  

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('ROLLBACK');
            Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
          end;

          FINALLY

              Enabled:=true;
              Umain.host.close;
          END;

        end;

    end;
end;

procedure TFRpelanggan.kodekondisiPropertiesChange(Sender: TObject);
begin
kondisimeter.ItemIndex:=kodekondisi.ItemIndex;
end;

procedure TFRpelanggan.kondisimeterPropertiesChange(Sender: TObject);
begin
kodekondisi.ItemIndex:=kondisimeter.ItemIndex;
end;

procedure TFRpelanggan.cekkondisimeterClick(Sender: TObject);
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

procedure TFRpelanggan.kodekecamatanPropertiesChange(Sender: TObject);
begin
kecamatan.ItemIndex:=kodekecamatan.ItemIndex;
end;

procedure TFRpelanggan.kecamatanPropertiesChange(Sender: TObject);
begin
kodekecamatan.ItemIndex:=kecamatan.ItemIndex;
end;

procedure TFRpelanggan.cekkecamatanClick(Sender: TObject);
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

procedure TFRpelanggan.ceknosegelClick(Sender: TObject);
begin
 if(ceknosegel.Checked=true)then
    nosegelmeter.Enabled:=true
  else
    nosegelmeter.Enabled:=false;

end;

procedure TFRpelanggan.cektgldaftarClick(Sender: TObject);
begin
   if(cektgldaftar.Checked=true)then
  begin
    tgldaftar1.Enabled:=true;
    tgldaftar2.Enabled:=true;
   end
  else
  begin
    tgldaftar1.Enabled:=false;
    tgldaftar2.Enabled:=false;
  end;

end;

procedure TFRpelanggan.cektglputusClick(Sender: TObject);
begin
   if(cektglputus.Checked=true)then
  begin
    tglputus1.Enabled:=true;
    tglputus2.Enabled:=true;
   end
  else
  begin
    tglputus1.Enabled:=false;
    tglputus2.Enabled:=false;
  end;


end;

procedure TFRpelanggan.cekbanjarClick(Sender: TObject);
begin
  if(cekbanjar.Checked=true)then
  begin
    kodebanjar.Enabled:=true;
    banjar.Enabled:=true;
  end
  else
  begin
    kodebanjar.Enabled:=false;
    banjar.Enabled:=false;
  end;

end;

procedure TFRpelanggan.cekkwhClick(Sender: TObject);
begin
  if(cekkwh.Checked=true)then
  begin
    dayalistrik.Enabled:=true;
    daya.Enabled:=true;
  end
  else
  begin
    dayalistrik.Enabled:=false;
    daya.Enabled:=false;
  end;

end;

procedure TFRpelanggan.dayaPropertiesChange(Sender: TObject);
begin
  dayalistrik.ItemIndex:=daya.ItemIndex;
end;

procedure TFRpelanggan.dayalistrikPropertiesChange(Sender: TObject);
begin
  daya.ItemIndex:=dayalistrik.ItemIndex;
end;

procedure TFRpelanggan.banjarPropertiesChange(Sender: TObject);
begin
  kodebanjar.ItemIndex:=banjar.ItemIndex;
end;

procedure TFRpelanggan.kodebanjarPropertiesChange(Sender: TObject);
begin
  banjar.ItemIndex:=kodebanjar.ItemIndex;
end;

procedure TFRpelanggan.cekLuasTanahClick(Sender: TObject);
begin
 if(cekLuasTanah.Checked=true)then
    luastanah.Enabled:=true
  else
    luastanah.Enabled:=false;
end;

procedure TFRpelanggan.cekKodeIPLClick(Sender: TObject);
begin
  if(cekKodeIPL.Checked=true)then
  begin
    kodeIPL.Enabled:=true;
    namaIPL.Enabled:=true;
    kodeIPL.SetFocus;
   end
  else
  begin
    kodeIPL.Enabled:=false;
    namaIPL.Enabled:=false;
  end;
end;

procedure TFRpelanggan.namaIPLPropertiesChange(Sender: TObject);
begin
  kodeIPL.ItemIndex:=namaIPL.ItemIndex;
end;

procedure TFRpelanggan.kodeIPLPropertiesChange(Sender: TObject);
begin
  namaIPL.ItemIndex:=kodeIPL.ItemIndex;
end;

procedure TFRpelanggan.SetPembebanan1Click(Sender: TObject);
var
i:integer;
begin
    if(Qpel.recordcount>0)then
    begin


        Upilihperiode.info.Caption:='SET KATEGORI PEMBEBANAN';
        if upilihperiode.showmodal=mrOk then
        begin


          TRY
          TRY

                Enabled:=false;

                umain.openkoneksi_host;

                Qexec.close;
                Qexec.SQL.Clear;
                Qexec.SQL.Add('START TRANSACTION');
                Qexec.Execute;

                Dm.Qexec.close;
                Dm.Qexec.SQL.Clear;
                Dm.Qexec.SQL.Add('START TRANSACTION');
                Dm.Qexec.Execute;


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.add('select periode FROM piutang WHERE nosamb=:nosamb AND periode>=:periode1 AND periode<=:periode2');
                DM.Qcek.parambyname('nosamb').asstring:=Qpelnosamb.value;
                DM.Qcek.ParamByName('periode1').asstring:=formatdatetime('YYYYMM',upilihperiode.periode1.date);
                DM.Qcek.ParamByName('periode2').asstring:=formatdatetime('YYYYMM',upilihperiode.periode2.date) ;
                DM.Qcek.Open;

                for i:=1 to DM.Qcek.recordcount do
                begin

                  Dm.Qexec.close;
                  Dm.Qexec.SQL.clear;
                  DM.Qexec.SQL.add('UPDATE piutang SET flag="3" WHERE kode=:kode');
                  DM.Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  DM.Qexec.execute;

                  Qexec.close;
                  Qexec.SQL.clear;
                  Qexec.SQL.add('UPDATE piutang SET flag="3" WHERE kode=:kode');
                  Qexec.parambyname('kode').asstring:=DM.Qcek.fieldbyname('periode').asstring+'.'+Qpelnosamb.value;
                  Qexec.execute;

                  DM.Qcek.next;

                end;

                Dm.Qexec.close;
                Dm.Qexec.SQL.clear;
                DM.Qexec.SQL.add('UPDATE pelanggan SET flag="3" WHERE nosamb=:nosamb');
                DM.Qexec.parambyname('nosamb').asstring:=Qpelnosamb.value;;
                DM.Qexec.execute;


                Qexec.close;
                Qexec.SQL.clear;
                Qexec.SQL.add('UPDATE pelanggan SET flag="3" WHERE nosamb=:nosamb');
                Qexec.parambyname('nosamb').asstring:=Qpelnosamb.value;;
                Qexec.execute;

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('COMMIT');
               Qexec.Execute; 

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('COMMIT');
               DM.Qexec.Execute;


               MessageDlg('SET KATEGORI PEMBEBANAN SELESAI !! ', mtInformation, [mbOK], 0);


          except On E:exception  do
          begin  

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('ROLLBACK');
            Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
          end;

          FINALLY

              Enabled:=true;
              Umain.host.close;
          END;

        end;

    end;
end;

end.



