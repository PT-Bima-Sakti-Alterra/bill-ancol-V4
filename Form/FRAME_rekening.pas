unit FRAME_rekening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxCurrencyEdit, cxContainer, cxPCdxBarPopupMenu,
  cxGridChartView, cxGridDBChartView, cxPC, cxMemo, cxTextEdit, cxGroupBox,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxScrollBox,
  RzSplit, cxImageComboBox, Menus, ComCtrls, dxCore, cxDateUtils, RzButton,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtons, cxCheckBox, RzDTP,
  DBAccess, MyAccess, MemDS, RzPrgres, ActnList, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  cxImage, dxSkinOffice2013White, cxHeader, frxClass, frxDBSet, jpeg;

type
  TFRrekening = class(TFrame)
    RzSizePanel1: TRzSizePanel;
    cxScrollBox1: TcxScrollBox;
    RzPanel1: TRzPanel;
    RzSizePanel2: TRzSizePanel;
    cxScrollBox2: TcxScrollBox;
    RzPanel2: TRzPanel;
    Gridrek: TcxGrid;
    Gtvrek: TcxGridDBTableView;
    Gtvrekflagpublish: TcxGridDBColumn;
    Gtvreknama: TcxGridDBColumn;
    Gtvrekalamat: TcxGridDBColumn;
    Gtvrekflagkoreksi: TcxGridDBColumn;
    Gtvrekgolongan: TcxGridDBColumn;
    Gtvrekukuran: TcxGridDBColumn;
    Gtvreknamarayon: TcxGridDBColumn;
    Gtvrekcabang: TcxGridDBColumn;
    Gtvrektotalrekening: TcxGridDBColumn;
    Gtvrekkoderayon: TcxGridDBColumn;
    Gtvrekkodecabang: TcxGridDBColumn;
    Gtvrekkodekolektif: TcxGridDBColumn;
    Gtvrekstanlalu: TcxGridDBColumn;
    Gtvrekstanskrg: TcxGridDBColumn;
    Gtvrekstanangkat: TcxGridDBColumn;
    Gtvrekpakai: TcxGridDBColumn;
    Gtvrekbiayapemakaian: TcxGridDBColumn;
    Gtvrekpelayanan: TcxGridDBColumn;
    Gtvrekairlimbah: TcxGridDBColumn;
    Gtvrekdendapakai0: TcxGridDBColumn;
    Gtvrekdendatunggakan: TcxGridDBColumn;
    Gtvrekmeterai: TcxGridDBColumn;
    Gtvrektglkoreksi: TcxGridDBColumn;
    Gtvrektglpublish: TcxGridDBColumn;
    Gtvrekuserkoreksi: TcxGridDBColumn;
    Gtvrekuserpublish: TcxGridDBColumn;
    Gtvrekflaglunas: TcxGridDBColumn;
    Gtvrekkelainan: TcxGridDBColumn;
    Gtvrektglbayar: TcxGridDBColumn;
    Gtvrekkasir: TcxGridDBColumn;
    Gtvreknolpp: TcxGridDBColumn;
    Gtvrekflagbatal: TcxGridDBColumn;
    gtvrekflagaktif: TcxGridDBColumn;
    GtvrekColumn2: TcxGridDBColumn;
    GridrekLevel1: TcxGridLevel;
    GtvrekColumn8: TcxGridDBColumn;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    Qtunggakan: TMyQuery;
    DStgkrek: TMyDataSource;
    cxGroupBox5: TcxGroupBox;
    cxLabel60: TcxLabel;
    b1: TcxCurrencyEdit;
    b2: TcxCurrencyEdit;
    b3: TcxCurrencyEdit;
    b4: TcxCurrencyEdit;
    p1: TcxCurrencyEdit;
    p2: TcxCurrencyEdit;
    p3: TcxCurrencyEdit;
    p4: TcxCurrencyEdit;
    cxLabel62: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    pakai: TcxCurrencyEdit;
    bpakai: TcxCurrencyEdit;
    adm: TcxCurrencyEdit;
    retribusi: TcxCurrencyEdit;
    pemeliharaan: TcxCurrencyEdit;
    pelayanan: TcxCurrencyEdit;
    airlimbah: TcxCurrencyEdit;
    cxLabel32: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel48: TcxLabel;
    dendapakai0: TcxCurrencyEdit;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    dendatunggakan: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    rekair: TcxCurrencyEdit;
    meterai: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    cxLabel7: TcxLabel;
    total: TcxCurrencyEdit;
    Qmirror: TMyQuery;
    Qmirrorflagaktif: TStringField;
    Qmirrorflaglunas: TStringField;
    Qmirrorflagpublish: TStringField;
    Qmirrorflagkoreksi: TStringField;
    Qmirrorstanlalu: TFloatField;
    Qmirrorstanskrg: TFloatField;
    Qmirrorstanangkat: TFloatField;
    Qmirrorkodegol: TStringField;
    Qmirrorkodediameter: TStringField;
    Qmirrorminpakai: TFloatField;
    Qmirrorxadministrasi: TFloatField;
    Qmirrorxpemeliharaan: TFloatField;
    Qmirrorxpelayanan: TFloatField;
    Qmirrorxretribusi: TFloatField;
    Qmirrorxairlimbah: TFloatField;
    Qmirrorxdendapakai0: TFloatField;
    Qmirrorbb1: TFloatField;
    Qmirrorbb2: TFloatField;
    Qmirrorbb3: TFloatField;
    Qmirrorbb4: TFloatField;
    Qmirrorba1: TFloatField;
    Qmirrorba2: TFloatField;
    Qmirrorba3: TFloatField;
    Qmirrorba4: TFloatField;
    Qmirrort1: TFloatField;
    Qmirrort2: TFloatField;
    Qmirrort3: TFloatField;
    Qmirrort4: TFloatField;
    Qmirrort1_tetap: TStringField;
    Qmirrort2_tetap: TStringField;
    Qmirrort3_tetap: TStringField;
    Qmirrort4_tetap: TStringField;
    Qmirroridx: TStringField;
    Qmirrorbatas1: TFloatField;
    Qmirrorbatas2: TFloatField;
    Qmirrorbatas3: TFloatField;
    Qmirrormeterai1: TFloatField;
    Qmirrormeterai2: TFloatField;
    Qmirrormeterai3: TFloatField;
    Qmirrortglmulaidenda: TDateField;
    Qmirrorpakai: TFloatField;
    bacameter: TMyConnection;
    Qbacameter1: TMyQuery;
    Qbacameter2: TMyQuery;
    PopupMenu1: TPopupMenu;
    Hitung1: TMenuItem;
    PerbaruiData1: TMenuItem;
    Hapus1: TMenuItem;
    Koreksi1: TMenuItem;
    Publish1: TMenuItem;
    SetAktif1: TMenuItem;
    SetSegel1: TMenuItem;
    SetNonAktif1: TMenuItem;
    SetCbtSmtr1: TMenuItem;
    RzPanel5: TRzPanel;
    GtvrekColumn9: TcxGridDBColumn;
    cekpembayaran: TMenuItem;
    Qmirrorflagkirim: TStringField;
    Qmirrorrekair: TFloatField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Refresh1: TMenuItem;
    GtvrekColumn12: TcxGridDBColumn;
    GtvrekColumn13: TcxGridDBColumn;
    GtvrekColumn14: TcxGridDBColumn;
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
    cxLabel13: TcxLabel;
    xalamat: TcxMemo;
    cxLabel14: TcxLabel;
    cxLabel51: TcxLabel;
    xnorek: TcxTextEdit;
    xrayon: TcxMemo;
    cxLabel17: TcxLabel;
    xkodewil: TcxTextEdit;
    xwilayah: TcxTextEdit;
    cxLabel18: TcxLabel;
    Qhost: TMyQuery;
    PasswordPembatalan1: TMenuItem;
    GtvrekColumn15: TcxGridDBColumn;
    GtvrekColumn16: TcxGridDBColumn;
    HistoriPembayaran1: TMenuItem;
    Qselisih: TMyQuery;
    cxLabel19: TcxLabel;
    kelainan: TcxTextEdit;
    GtvrekColumn17: TcxGridDBColumn;
    GtvrekColumn19: TcxGridDBColumn;
    RzPanel13: TRzPanel;
    cekgolongan: TcxCheckBox;
    cekdiameter: TcxCheckBox;
    cekrayon: TcxCheckBox;
    ceknosamb: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekalamat: TcxCheckBox;
    cekkolektif: TcxCheckBox;
    kolektif: TcxComboBox;
    alamat: TcxTextEdit;
    nama: TcxTextEdit;
    nosamb: TcxTextEdit;
    kodediameter: TcxComboBox;
    ukuran: TcxComboBox;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    namarayon: TcxComboBox;
    koderayon: TcxComboBox;
    tglbayar1: TcxDateEdit;
    cektglbayar: TcxCheckBox;
    cekrekair: TcxCheckBox;
    rekair1: TcxCurrencyEdit;
    rekair2: TcxCurrencyEdit;
    tglbayar2: TcxDateEdit;
    cxLabel80: TcxLabel;
    cxLabel5: TcxLabel;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    wilayah: TcxComboBox;
    kodewil: TcxComboBox;
    cekwilayah: TcxCheckBox;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cekloket: TcxCheckBox;
    loket: TcxComboBox;
    RzPanel6: TRzPanel;
    RzPanel3: TRzPanel;
    cekstatus: TcxCheckBox;
    status: TcxComboBox;
    angsuran: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    GtvrekColumn20: TcxGridDBColumn;
    Qmirrornosamb: TStringField;
    Gtvrekserimeter: TcxGridDBColumn;
    Gtvrekloketbayar: TcxGridDBColumn;
    Gtvrekflag: TcxGridDBColumn;
    Gtvrekkolektif: TcxGridDBColumn;
    Gtvrekaktif: TcxGridDBColumn;
    Gtvrektglbatal: TcxGridDBColumn;
    cxStyle1: TcxStyle;
    GtvrekColumn21: TcxGridDBColumn;
    cekflag: TcxCheckBox;
    Qmirrorzbiayapemakaian: TFloatField;
    Qmirrorzmeterai: TFloatField;
    Qmirrorzpemeliharaan: TFloatField;
    Qmirrorzretribusi: TFloatField;
    Qmirrorzadministrasi: TFloatField;
    Qmirrorzpelayanan: TFloatField;
    Qmirrorzdendatunggakan: TFloatField;
    Qmirrorflag: TStringField;
    PasswordCetakUlang1: TMenuItem;
    b5: TcxCurrencyEdit;
    p5: TcxCurrencyEdit;
    Qmirrortrf_dendatunggakan: TFloatField;
    Qmirrortrf_dendatunggakan2: TFloatField;
    Qmirrorbb5: TFloatField;
    Qmirrorba5: TFloatField;
    Qmirrort5: TFloatField;
    Qmirrort5_tetap: TStringField;
    Qmirrortrf_admlain: TFloatField;
    Qmirrortrf_pemlain: TFloatField;
    cxLabel21: TcxLabel;
    xkodeadmlain: TcxTextEdit;
    cxLabel23: TcxLabel;
    xkodepemlain: TcxTextEdit;
    Qmirrortglmulaidenda2: TDateField;
    UploadUlang1: TMenuItem;
    Qupload: TMyQuery;
    Qmirrorzairlimbah: TFloatField;
    Qmirrorzdendapakai0: TFloatField;
    Qmirrorzadministrasilain: TFloatField;
    Qmirrorzpemeliharaanlain: TFloatField;
    Qexec: TMyQuery;
    GtvrekColumn30: TcxGridDBColumn;
    GtvrekColumn31: TcxGridDBColumn;
    GtvrekColumn32: TcxGridDBColumn;
    GtvrekColumn33: TcxGridDBColumn;
    GtvrekColumn34: TcxGridDBColumn;
    GtvrekColumn35: TcxGridDBColumn;
    cxLabel26: TcxLabel;
    xkoderetlain: TcxTextEdit;
    Qmirrorzretribusilain: TFloatField;
    Qmirrortrf_retlain: TFloatField;
    cekpakai: TcxCheckBox;
    pakai1: TcxCurrencyEdit;
    cxLabel31: TcxLabel;
    pakai2: TcxCurrencyEdit;
    PasswordKoreksi1: TMenuItem;
    Qmirrorxppn: TFloatField;
    GtvrekColumn37: TcxGridDBColumn;
    Qmirrortglmulaidenda3: TDateField;
    Qmirrortrf_dendatunggakan3: TFloatField;
    Qmirrortrf_dendatunggakanperbulan: TFloatField;
    Qmirrortglmulaidendaperbulan: TDateField;
    cxLabel33: TcxLabel;
    ppn: TcxCurrencyEdit;
    Qcekhost: TMyQuery;
    Qmirrorxretribusipakai: TFloatField;
    Qcek: TMyQuery;
    unpublish1: TMenuItem;
    Qmirrortglmulaidenda4: TDateField;
    Qmirrortrf_dendatunggakan4: TFloatField;
    koreksi: TfrxReport;
    Fkoreksi: TfrxDBDataset;
    Qkoreksi: TMyQuery;
    Qmirrortglpublish: TDateTimeField;
    QTemp: TMyQuery;
    QTemp2: TMyQuery;
    kodekolektif: TcxComboBox;
    kodeflag: TcxComboBox;
    flag: TcxComboBox;
    HistoriPemakaian1: TMenuItem;
    cxGridPopupMenu2: TcxGridPopupMenu;
    Qmirrorkodewil: TStringField;
    Qmirrorwilayah: TStringField;
    Qmirrorgolongan: TStringField;
    HistoriLog1: TMenuItem;
    HapusAkun1: TMenuItem;
    RzPanel17: TRzPanel;
    RzPanel19: TRzPanel;
    RzPanel20: TRzPanel;
    cxStyle8: TcxStyle;
    RzPanel15: TRzPanel;
    cxButton1: TcxButton;
    terbitkanpelanggan: TcxButton;
    refresh: TcxButton;
    cxButton3: TcxButton;
    publishsemua: TcxButton;
    hitungulangrekening: TcxButton;
    updatebcmeter: TcxButton;
    unpublishsemua: TcxButton;
    RzPanel22: TRzPanel;
    GtvrekColumn3: TcxGridDBColumn;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    sum: TStringField;
    Qreksumberair: TStringField;
    Qrekflag: TStringField;
    Qreknosamb: TStringField;
    Qrekserimeter: TStringField;
    Qrekkodegol: TStringField;
    Qrekkodediameter: TStringField;
    Qrekkodekelurahan: TStringField;
    Qrekkoderayon: TStringField;
    Qrekkodekolektif: TStringField;
    Qrekstanlalu: TFloatField;
    Qrekstanskrg: TFloatField;
    Qrekstanangkat: TFloatField;
    Qrekpakai: TFloatField;
    Qrekbiayapemakaian: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekpelayanan: TFloatField;
    Qrekretribusi: TFloatField;
    Qrekairlimbah: TFloatField;
    Qrekdendapakai0: TFloatField;
    Qrekpemeliharaanlain: TFloatField;
    Qrekadministrasilain: TFloatField;
    Qrekretribusilain: TFloatField;
    Qrekmeterai: TFloatField;
    Qrekrekair: TFloatField;
    Qrekdendatunggakan: TFloatField;
    Qrekppn: TFloatField;
    Qrektotal: TFloatField;
    Qrektglkoreksi: TDateTimeField;
    Qrektglpublish: TDateTimeField;
    Qrektglbayar: TDateTimeField;
    Qrekuserkoreksi: TStringField;
    Qrekuserpublish: TStringField;
    Qrekflagpublish: TStringField;
    Qrekflaglunas: TStringField;
    Qrekflagangsur: TStringField;
    Qreknoangsuran: TStringField;
    Qrekblok1: TFloatField;
    Qrekblok2: TFloatField;
    Qrekblok3: TFloatField;
    Qrekblok4: TFloatField;
    Qrekblok5: TFloatField;
    Qrekprog1: TFloatField;
    Qrekprog2: TFloatField;
    Qrekprog3: TFloatField;
    Qrekprog4: TFloatField;
    Qrekprog5: TFloatField;
    Qrekkelainan: TStringField;
    Qrekkasir: TStringField;
    Qreknolpp: TStringField;
    Qrekflagkoreksi: TStringField;
    Qrekflagbatal: TStringField;
    Qrekflagaktif: TStringField;
    Qrekloketbayar: TStringField;
    Qrekflagkirim: TStringField;
    Qrektglkirim: TDateTimeField;
    Qrektglmulaidenda: TDateField;
    Qrektglmulaidenda2: TDateField;
    Qrektglmulaidenda3: TDateField;
    Qrektglmulaidenda4: TDateField;
    Qrektglmulaidendaperbulan: TDateField;
    Qrekuserkirim: TStringField;
    Qrekflagdownload: TStringField;
    Qrektgldownload: TDateTimeField;
    Qrekuserdownload: TStringField;
    Qrektglbatal: TDateTimeField;
    Qrekpembacameter: TStringField;
    Qrektrf_dendatunggakan: TFloatField;
    Qrektrf_dendatunggakan2: TFloatField;
    Qrektrf_dendatunggakan3: TFloatField;
    Qrektrf_dendatunggakan4: TFloatField;
    Qrektrf_dendatunggakanperbulan: TFloatField;
    Qrekkodeadministrasilain: TStringField;
    Qrekkodepemeliharaanlain: TStringField;
    Qrekkoderetribusilain: TStringField;
    Qrekwaktu: TDateTimeField;
    Qrekgolongan: TStringField;
    Qreknamarayon: TStringField;
    Qrekkodewil: TStringField;
    Qrekwilayah: TStringField;
    Qrekkelurahan: TStringField;
    Qrekkodecabang: TStringField;
    Qrekcabang: TStringField;
    Qrekkolektif: TStringField;
    Qrekukuran: TStringField;
    Qrekaktif: TStringField;
    Qrekretribusicampur: TFloatField;
    Qrekpemeliharaancampur: TFloatField;
    Qrekadministrasicampur: TFloatField;
    Qrekuraian: TStringField;
    GtvrekColumn4: TcxGridDBColumn;
    GtvrekColumn5: TcxGridDBColumn;
    Qrekstatusangsuran: TStringField;
    GtvrekColumn6: TcxGridDBColumn;
    Qrekkodeblok: TStringField;
    Qrekluasrumah: TFloatField;
    GtvrekColumn1: TcxGridDBColumn;
    GtvrekColumn7: TcxGridDBColumn;
    RzPanel23: TRzPanel;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cabang: TcxComboBox;
    kodecabang: TcxComboBox;
    cekcabang: TcxCheckBox;
    ceksumberair: TcxCheckBox;
    cekkepemlilikan: TcxCheckBox;
    kepemilikan: TcxComboBox;
    sumberair: TcxComboBox;
    nolpp: TcxTextEdit;
    ceknolpp: TcxCheckBox;
    cekcatat: TcxCheckBox;
    namapembaca: TcxComboBox;
    pindahperiode: TcxButton;
    periode: TRzDateTimePicker;
    tampilkan: TcxButton;
    limit: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    GtvrekColumn10: TcxGridDBColumn;
    ceknorek: TcxCheckBox;
    norekening: TcxTextEdit;
    info: TRzPanel;
    cekadmlain: TcxCheckBox;
    kodeadm_lain: TcxComboBox;
    adm_lain: TcxComboBox;
    pem_lain: TcxComboBox;
    kodepem_lain: TcxComboBox;
    cekpemlain: TcxCheckBox;
    cekretlain: TcxCheckBox;
    koderet_lain: TcxComboBox;
    ret_lain: TcxComboBox;
    Qrekpakai2: TFloatField;
    GtvrekColumn11: TcxGridDBColumn;
    RzPanel21: TRzPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    RzPanel7: TRzPanel;
    foto1: TcxImage;
    cxTabSheet3: TcxTabSheet;
    RzPanel8: TRzPanel;
    foto2: TcxImage;
    cxTabSheet2: TcxTabSheet;
    RzPanel9: TRzPanel;
    foto3: TcxImage;
    cxTabSheet4: TcxTabSheet;
    RzPanel10: TRzPanel;
    foto4: TcxImage;
    cektotal: TcxCheckBox;
    total1: TcxCurrencyEdit;
    total2: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    RzPanel16: TRzPanel;
    cxGrid1: TcxGrid;
    gtvpiutang: TcxGridDBTableView;
    gtvpiutangColumn1: TcxGridDBColumn;
    gtvpiutangColumn3: TcxGridDBColumn;
    gtvpiutangColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartView1Series1: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    LihatPiutang1: TMenuItem;
    Qrekflagbuatfilepos: TStringField;
    Qrekwaktubuatfilepos: TDateTimeField;
    GtvrekColumn18: TcxGridDBColumn;
    GtvrekColumn22: TcxGridDBColumn;
    Qrekshift: TStringField;
    GtvrekColumn23: TcxGridDBColumn;
    Qrekangsuran: TFloatField;
    Qrektaksasi: TStringField;
    Qmirrortaksasi: TStringField;
    BeritaAcaraSebelumKoreksi1: TMenuItem;
    KarenaKesalahanBacaInput1: TMenuItem;
    Akurasi1: TMenuItem;
    Qrekkodegolyangberlaku: TStringField;
    Qrekkodediameteryangberlaku: TStringField;
    HapusDiLoket1: TMenuItem;
    Qrekkodekondisimeter: TStringField;
    cekkondisimeter: TcxCheckBox;
    kodekondisi: TcxComboBox;
    kondisimeter: TcxComboBox;
    Qmirrorkodekondisimeter: TStringField;
    Qrekkondisi: TStringField;
    GtvrekColumn24: TcxGridDBColumn;
    GtvrekColumn25: TcxGridDBColumn;
    cekcab: TcxCheckBox;
    cekkel: TcxCheckBox;
    kodecab: TcxComboBox;
    cab: TcxComboBox;
    kel: TcxComboBox;
    kodekel: TcxComboBox;
    Qcek_: TMyQuery;
    RzPanel11: TRzPanel;
    cxLabel15: TcxLabel;
    RzPanel12: TRzPanel;
    cekserimeter: TcxCheckBox;
    serimeter: TcxTextEdit;
    cekwm: TcxCheckBox;
    merkwm: TcxComboBox;
    SetTanpaDendaHanyaRekening1: TMenuItem;
    SetRekNormalHanyaRekening1: TMenuItem;
    Qlunasair: TMyQuery;
    Qexecsend: TMyQuery;
    HanyaRekeningygdiPilih1: TMenuItem;
    SemuaRekeningBelumLunas1: TMenuItem;
    HanyaRekeningygdiPilih2: TMenuItem;
    SemuaRekeningBelumLunas2: TMenuItem;
    Qexec_: TMyQuery;
    cekKec: TcxCheckBox;
    kodekec: TcxComboBox;
    kecamatan: TcxComboBox;
    Qmirrorbatasadm1: TCurrencyField;
    Qmirrorbatasadm2: TCurrencyField;
    Qmirrorbatasadm3: TCurrencyField;
    Qmirroradministrasi1: TCurrencyField;
    Qmirroradministrasi2: TCurrencyField;
    Qmirroradministrasi3: TCurrencyField;
    HapusDRD1: TMenuItem;
    HapusDRDLoket1: TMenuItem;
    Qrekkecamatan: TStringField;
    GtvrekColumn26: TcxGridDBColumn;
    BeritaAcaraKoreksi1: TMenuItem;
    ActionList1: TActionList;
    F5: TAction;
    PeriodeIni1: TMenuItem;
    DibawahPeriodeIni1: TMenuItem;
    Qmirrorbbipl1: TFloatField;
    Qmirrorbbipl2: TFloatField;
    Qmirrorbbipl3: TFloatField;
    Qmirrorbbipl4: TFloatField;
    Qmirrorbbipl5: TFloatField;
    Qmirrorbbipl6: TFloatField;
    Qmirrorbbipl7: TFloatField;
    Qmirrorbaipl1: TFloatField;
    Qmirrorbaipl2: TFloatField;
    Qmirrorbaipl3: TFloatField;
    Qmirrorbaipl4: TFloatField;
    Qmirrorbaipl6: TFloatField;
    Qmirrorbaipl5: TFloatField;
    Qmirrorbaipl7: TFloatField;
    Qmirrortipl1: TFloatField;
    Qmirrortipl2: TFloatField;
    Qmirrortipl3: TFloatField;
    Qmirrortipl4: TFloatField;
    Qmirrortipl5: TFloatField;
    Qmirrortipl6: TFloatField;
    Qmirrortipl7: TFloatField;
    Qmirrorluasrumah: TFloatField;
    Qmirrortipl1_tetap: TStringField;
    Qmirrortipl2_tetap: TStringField;
    Qmirrortipl3_tetap: TStringField;
    Qmirrortipl4_tetap: TStringField;
    Qmirrortipl5_tetap: TStringField;
    Qmirrortipl6_tetap: TStringField;
    Qmirrortipl7_tetap: TStringField;
    Qmirrorppnipl: TFloatField;
    cekKodeIPL: TcxCheckBox;
    namaIPL: TcxComboBox;
    kodeIPL: TcxComboBox;
    cekLuasTanah: TcxCheckBox;
    luastanah: TcxCurrencyEdit;
    Qrekbbipl1: TFloatField;
    Qrekbbipl2: TFloatField;
    Qrekbbipl3: TFloatField;
    Qrekbbipl4: TFloatField;
    Qrekbbipl5: TFloatField;
    Qrekbbipl6: TFloatField;
    Qrekbbipl7: TFloatField;
    Qrekbaipl1: TFloatField;
    Qrekbaipl2: TFloatField;
    Qrekbaipl3: TFloatField;
    Qrekbaipl4: TFloatField;
    Qrekbaipl5: TFloatField;
    Qrekbaipl6: TFloatField;
    Qrekbaipl7: TFloatField;
    Qrektipl1: TFloatField;
    Qrektipl2: TFloatField;
    Qrektipl3: TFloatField;
    Qrektipl4: TFloatField;
    Qrektipl5: TFloatField;
    Qrektipl6: TFloatField;
    Qrektipl7: TFloatField;
    Qrektipl1_tetap: TStringField;
    Qrektipl2_tetap: TStringField;
    Qrektipl3_tetap: TStringField;
    Qrektipl4_tetap: TStringField;
    Qrektipl5_tetap: TStringField;
    Qrektipl6_tetap: TStringField;
    Qrektipl7_tetap: TStringField;
    Qrekppnipl: TFloatField;
    procedure tampilkanClick(Sender: TObject);
    procedure GtvrekCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GtvrekFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure GtvrekCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Hitung1Click(Sender: TObject);
    procedure SetAktif1Click(Sender: TObject);
    procedure SetNonAktif1Click(Sender: TObject);
    procedure SetCbtSmtr1Click(Sender: TObject);
    procedure SetSegel1Click(Sender: TObject);
    procedure pindahperiodeClick(Sender: TObject);
    
    procedure cekrayonClick(Sender: TObject);
    procedure cekgolonganClick(Sender: TObject);
    procedure cekcabangClick(Sender: TObject);
    procedure cekdiameterClick(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure ceknorekClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekserimeterClick(Sender: TObject);
    procedure cekwmClick(Sender: TObject);
    procedure cekalamatClick(Sender: TObject);
    procedure cekkolektifClick(Sender: TObject);
    procedure cektglbayarClick(Sender: TObject);
    procedure cekrekairClick(Sender: TObject);
    procedure cektotalClick(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure PerbaruiData1Click(Sender: TObject);
    procedure cekstatusClick(Sender: TObject);
    procedure ceklainnyaClick(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure kodecabangPropertiesChange(Sender: TObject);
    procedure cabangPropertiesChange(Sender: TObject);
    procedure kodekelurahanPropertiesChange(Sender: TObject);
    procedure kelurahanPropertiesChange(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure kodediameterPropertiesChange(Sender: TObject);
    procedure ukuranPropertiesChange(Sender: TObject);
    procedure cekkelurahanClick(Sender: TObject);
    procedure cekwilayahClick(Sender: TObject);
    procedure cekpembayaranClick(Sender: TObject);
    procedure PasswordPembatalan1Click(Sender: TObject);
    procedure HistoriPembayaran1Click(Sender: TObject);
    procedure foto1DblClick(Sender: TObject);
    procedure foto2DblClick(Sender: TObject);
    procedure foto3DblClick(Sender: TObject);
    procedure foto4DblClick(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure ceksumberairClick(Sender: TObject);
    procedure cekkepemlilikanClick(Sender: TObject);
    procedure ceknolppClick(Sender: TObject);
    procedure cekflagClick(Sender: TObject);
    procedure PasswordCetakUlang1Click(Sender: TObject);
    procedure UploadUlang1Click(Sender: TObject);
    procedure cekadmlainClick(Sender: TObject);
    procedure cekpemlainClick(Sender: TObject);
    procedure cekretlainClick(Sender: TObject);
    procedure kodeadm_lainPropertiesChange(Sender: TObject);
    procedure adm_lainPropertiesChange(Sender: TObject);
    procedure pem_lainPropertiesChange(Sender: TObject);
    procedure kodepem_lainPropertiesChange(Sender: TObject);
    procedure koderet_lainPropertiesChange(Sender: TObject);
    procedure ret_lainPropertiesChange(Sender: TObject);
    procedure cekpakaiClick(Sender: TObject);
    procedure cekcatatClick(Sender: TObject);
    procedure PasswordKoreksi1Click(Sender: TObject);
    procedure unpublish1Click(Sender: TObject);
    procedure HistoriPemakaian1Click(Sender: TObject);
    procedure HistoriLog1Click(Sender: TObject);
    procedure HapusAkun1Click(Sender: TObject);
    procedure kodeflagPropertiesChange(Sender: TObject);
    procedure flagPropertiesChange(Sender: TObject);
    procedure terbitkanpelangganClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure publishsemuaClick(Sender: TObject);
    procedure hitungulangrekeningClick(Sender: TObject);
    procedure updatebcmeterClick(Sender: TObject);
    procedure unpublishsemuaClick(Sender: TObject);
    procedure gtvpiutangCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure LihatPiutang1Click(Sender: TObject);
    procedure Publish1Click(Sender: TObject);
    procedure KarenaKesalahanBacaInput1Click(Sender: TObject);
    procedure Akurasi1Click(Sender: TObject);
    procedure cekkondisimeterClick(Sender: TObject);
    procedure kodekondisiPropertiesChange(Sender: TObject);
    procedure kondisimeterPropertiesChange(Sender: TObject);
    procedure cekcabClick(Sender: TObject);
    procedure kodecabPropertiesChange(Sender: TObject);
    procedure cabPropertiesChange(Sender: TObject);
    procedure cekkelClick(Sender: TObject);
    procedure kodekelPropertiesChange(Sender: TObject);
    procedure kelPropertiesChange(Sender: TObject);
    procedure HanyaRekeningygdiPilih1Click(Sender: TObject);
    procedure SemuaRekeningBelumLunas1Click(Sender: TObject);
    procedure HanyaRekeningygdiPilih2Click(Sender: TObject);
    procedure SemuaRekeningBelumLunas2Click(Sender: TObject);
    procedure cekKecClick(Sender: TObject);
    procedure kodekecPropertiesChange(Sender: TObject);
    procedure kecamatanPropertiesChange(Sender: TObject);
    procedure HapusDRD1Click(Sender: TObject);
    procedure HapusDRDLoket1Click(Sender: TObject);
    procedure BeritaAcaraKoreksi1Click(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure PeriodeIni1Click(Sender: TObject);
    procedure DibawahPeriodeIni1Click(Sender: TObject);
    procedure cekKodeIPLClick(Sender: TObject);
    procedure cekLuasTanahClick(Sender: TObject);
    procedure kodeIPLPropertiesChange(Sender: TObject);
    procedure namaIPLPropertiesChange(Sender: TObject);
    

  private
    { Private declarations }

    wm1,wm2,map1,map2:byte;
    xblnfoto1,xblnfoto2:String;
    procedure koreksistan();
    procedure perbaruidata();
    procedure hapusrekening();
    procedure hapusrekeningloket();
    procedure publishsatu();
    procedure unpublishsatu();

  public
    { Public declarations }
    procedure isicomborekening();
    procedure mirror();
    procedure hitungulang();
    procedure hitungulangsatu();
    procedure akses();

   
  end;

implementation

{$R *.dfm}  uses Module, UnitCombo, UnitKoreksiStan, UnitMain, unitloading,
  unitpass, unitterbitkan, StrUtils, unitlogin,
  unithisbayar, unitfotobesar,DateUtils, RzStatus,
  unithispakai, unitlog, unitpiutang, unitpilihconfig, unitbakoreksi2,
  UnitPilihPeriode, unitpasspublishsemua;

Function Decrypt(const InString:string; StartKey,MultKey,AddKey:Integer):string;
var
I : Byte;
begin
Result := '';

    for I := 1 to Length(InString) do
    begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
    end;
end;


procedure TFRrekening.akses();
begin

   
    if(Umain.olah_data_rekening<>'1') then
    begin
        Koreksi1.Enabled:=False;
        hitungulangrekening.Enabled:=False;
        Hitung1.Enabled:=False;
        PerbaruiData1.Enabled:=False;
        Hapus1.Enabled:=False;
        SetAktif1.Enabled:=False;
        SetNonAktif1.Enabled:=False;
        UploadUlang1.Enabled:=False;
        updatebcmeter.Enabled:=false;
        terbitkanpelanggan.Enabled:=false;
        SetRekNormalHanyaRekening1.Enabled:=False;
        SetTanpaDendaHanyaRekening1.Enabled:=False;
        HapusDiLoket1.Enabled:=False;
    end;


      if(Umain.publish_rekening<>'1') then
    begin
       publishsemua.Enabled:=False;
       Publish1.Enabled:=False;

    end;

        if(Umain.unpublish_rekening<>'1') then
    begin
       unpublishsemua.Enabled:=False;
       Unpublish1.Enabled:=False;

    end;




end;

procedure TFRrekening.isicomborekening();
begin

  ucombo.isikombo();

  namarayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;

  kodecab.properties.items:= Ucombo.kodecabang.properties.items;
  cab.properties.items:= Ucombo.cabang.properties.items;

  kodekec.properties.items:= Ucombo.kodekecamatan.properties.items;
  kecamatan.properties.items:= Ucombo.kecamatan.properties.items;

  kodegol.properties.items:= Ucombo.kodegol.properties.items;
  golongan.properties.items:= Ucombo.golongan.properties.items;

  kodediameter.properties.items:= Ucombo.kodediameter.properties.items;
  ukuran.properties.items:= Ucombo.ukuran.properties.items;

  kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
  kolektif.properties.items:= Ucombo.kolektif.properties.items;


  kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;
  kelurahan.properties.items:= Ucombo.kelurahan.properties.items;

  kodekel.properties.items:= Ucombo.kodekelurahan.properties.items;
  kel.properties.items:= Ucombo.kelurahan.properties.items;

  kodewil.properties.items:= Ucombo.kodewil.properties.items;
  wilayah.properties.items:= Ucombo.wilayah.properties.items;  

  kasir.properties.items:= Ucombo.kasir.properties.items;
  loket.properties.items:= Ucombo.kodeloket.properties.items;


  merkwm.properties.items:= Ucombo.merk.properties.items;

  kepemilikan.properties.items:= Ucombo.kepemilikan.properties.items;

  sumberair.properties.items:= Ucombo.sumberair.properties.items;
  flag.properties.items:= Ucombo.flag.properties.items;
  kodeflag.properties.items:= Ucombo.kodeflag.properties.items;

  kodeadm_lain.properties.items:= Ucombo.kodeadmlain.properties.items;
  adm_lain.properties.items:= Ucombo.ketadmlain.properties.items;

   kodepem_lain.properties.items:= Ucombo.kodepemlain.properties.items;
  pem_lain.properties.items:= Ucombo.ketpemlain.properties.items;

   koderet_lain.properties.items:= Ucombo.koderetlain.properties.items;
  ret_lain.properties.items:= Ucombo.ketretlain.properties.items;

  namapembaca.properties.items:= Ucombo.namapembaca.properties.items;

   kodekondisi.properties.items:= Ucombo.kodekondisi.properties.items;
  kondisimeter.properties.items:= Ucombo.kondisimeter.properties.items;

  kodeIPL.properties.items:= Ucombo.kodeIPL.properties.items;
  namaIPL.properties.items:= Ucombo.namaIPL.properties.items;

end;

procedure TFRrekening.publishsatu();
begin



      if (Publish1.Enabled=false)then
      begin
         MessageDlg('Akses Anda di Tolak !!', mtWarning, [mbOk], 0);
         exit;
      end;
      
      if(Qrekflagkoreksi.Value='0')then
      begin
        MessageDlg('Rekening Belum Di Koreksi/Input Stan !!', mtWarning, [mbOk], 0);
        exit;
      end;

       if(Qrekpakai.Value<0)then
      begin
        MessageDlg('Pemakaian minus (-) tidak dapat di publish !!', mtWarning, [mbOk], 0);
        exit;
      end;


      if(Qrekflagpublish.Value='1')then
      begin
       MessageDlg('Rekening sudah di publish !!', mtWarning, [mbOk], 0);
       exit;
      end;


      if(Qrekflaglunas.Value='1')then
      begin
       MessageDlg('Rekening sudah di lunasi !!', mtWarning, [mbOk], 0);
       exit;
      end; 


          TRY

            TRY

            Umain.openkoneksi_host;

            Qcek.Close;
            with Qcek do
            begin
              SQL.Clear;
              SQL.Add('SELECT nosamb FROM permohonan_rubah_rayon WHERE flaghapus="0" AND  flagprosesdata="0" AND nosamb=:nosamb');
              ParamByName('nosamb').AsString:=Qreknosamb.Value;
            end;
            Qcek.Open;
            if Qcek.RecordCount>0 then
            begin
              MessageDlg('Rekening ini tidak dapat dipublish!!'+#13+'Pelanggan dengan nosamb '+Qreknosamb.Value+' memiliki permohonan pindah rayon yang belum diverifikasi.', mtWarning, [mbOk], 0);
              Exit;
            end;

             Enabled:=false;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('START TRANSACTION');  
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET flagpublish="1",userpublish=:user,tglpublish=NOW(),flagkirim="0"');
             DM.Qexec.SQL.add('where nosamb=:nosamb');
             DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
             DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
             DM.Qexec.Execute;

             DM.Qcek.close;
             DM.Qcek.SQL.Clear;
             DM.Qcek.SQL.Add('select IF((SELECT COUNT(*) FROM `drdhapussecaraakuntansi` WHERE nosamb=:nosamb AND periode=:periode)=1,"4",p.flag) AS flag ');
             DM.Qcek.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.nosamb=:nosamb');
             DM.Qcek.ParamByName('nosamb').AsString:=Qreknosamb.Value;
             DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
             DM.Qcek.Open;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('REPLACE INTO piutang select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c WHERE c.nosamb=:nosamb');
             DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
             DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
             DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
             DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
             DM.Qexec.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
             DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
             DM.Qexec.ParamByName('namaloket').AsString:='';
             DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
             DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
             DM.Qexec.Execute;

             Qcek_.Close;
             Qcek_.SQL.Clear;
             Qcek_.SQL.Add('SELECT CONCAT(:periode,LEFT(LPAD(COALESCE(RIGHT(MAX(norekening),6),0)+1,6,"0"),6)) AS norekening FROM norekening WHERE LEFT(kode,6)=:periode');
             Qcek_.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
             Qcek_.Open;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('REPLACE INTO norekening VALUES (:kode,:norekening,NOW())');
             DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
             DM.Qexec.ParamByName('norekening').AsString:=Qcek_.fieldbyname('norekening').AsString;
             DM.Qexec.Execute;

            

             //IF(YearOf(Qrektglpublish.Value)>1900)THEN
             BEGIN

                  Qkoreksi.close;
                  Qkoreksi.SQL.Clear;
                  Qkoreksi.SQL.Add(Qkoreksi.SQLRefresh.Text);
                  Qkoreksi.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c,');
                  Qkoreksi.SQL.Add('(select * FROm drdkoreksi where kode=:kode GROUP By id DESC LIMIT 1) d,pelanggan p,beritaacarakoreksi b WHERE c.`nosamb`=d.nosamb AND d.kode=:kode ');
                  Qkoreksi.SQL.Add('AND c.nosamb=p.nosamb AND d.beritaacara=b.beritaacara ');
                  Qkoreksi.SQL.Add('AND c.`nosamb`=:nosamb');
                  Qkoreksi.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                  Qkoreksi.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                  Qkoreksi.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                  Qkoreksi.ParamByName('user').AsString:=umain.user.Caption;
                  Qkoreksi.Open;


                  if Qkoreksi.RecordCount>0 then
                  begin


                    TRY

                        Umain.openkoneksi_host;


                        Qexec.close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('START TRANSACTION');
                        Qexec.Execute;


                        Qexec.close;
                        Qexec.SQL.Clear;
                        Qexec.SQl.Add('REPLACE INTO ba_koreksi_rekening ');
                        Qexec.SQl.Add('(`nomorba`,`tanggalba`,`alasan`,nosamb,periode,bulan,koderayon,kodegol,kodediameter,nama,alamat,`stanlalu_lama`,`stankini_lama`,`pakai_lama`,`biayapemakaian_lama`,`administrasi_lama`,');
                        Qexec.SQl.Add('`pemeliharaan_lama`,`pelayanan_lama`,`retribusi_lama`,`meterai_lama`,`rekair_lama`,`stanlalu_baru`,stankini_baru,pakai_baru,`biayapemakaian_baru`,');
                        Qexec.SQl.Add('administrasi_baru,`pemeliharaan_baru`,`pelayanan_baru`,`retribusi_baru`,`meterai_baru`,rekair_baru,petugas,`flaghapus` )');
                        Qexec.SQl.Add(' VALUES                                 ');
                        Qexec.SQl.Add(' (:nomorba,:tanggalba,:alasan,:nosamb,:periode,:bulan,:koderayon,:kodegol,:kodediameter,:nama,:alamat,:stanlalu_lama,:stankini_lama,:pakai_lama,:biayapemakaian_lama,:administrasi_lama,');
                        Qexec.SQl.Add(':pemeliharaan_lama,:pelayanan_lama,:retribusi_lama,:meterai_lama,:rekair_lama,:stanlalu_baru,:stankini_baru,:pakai_baru,:biayapemakaian_baru,');
                        Qexec.SQl.Add(':administrasi_baru,:pemeliharaan_baru,:pelayanan_baru,:retribusi_baru,:meterai_baru,:rekair_baru,:petugas,:flaghapus ) ');
                        Qexec.parambyname('nomorba').asstring:=Qkoreksi.fieldbyname('beritaacara').asstring;
                        Qexec.parambyname('tanggalba').AsDate:=Qkoreksi.fieldbyname('tglinput').AsDateTime;
                        Qexec.parambyname('alasan').asstring:=Qkoreksi.fieldbyname('alasan').asstring;
                        Qexec.parambyname('nosamb').asstring:=Qkoreksi.fieldbyname('nosamb').asstring;
                        Qexec.parambyname('periode').asstring:=FormatDateTime('YYYYMM',periode.date);
                        Qexec.parambyname('bulan').asstring:=Qkoreksi.fieldbyname('bulan').asstring;
                        Qexec.parambyname('koderayon').asstring:=Qkoreksi.fieldbyname('koderayon').asstring;
                        Qexec.parambyname('kodegol').asstring:=Qkoreksi.fieldbyname('kodegol').asstring;
                        Qexec.parambyname('kodediameter').asstring:=Qkoreksi.fieldbyname('kodediameter').asstring;
                        Qexec.parambyname('nama').asstring:=Qkoreksi.fieldbyname('nama').asstring;
                        Qexec.parambyname('alamat').asstring:=Qkoreksi.fieldbyname('alamat').asstring;
                        Qexec.parambyname('petugas').asstring:=Umain.user.Caption;                             
                        Qexec.parambyname('stanlalu_lama').AsCurrency:=Qkoreksi.fieldbyname('stanlalu2').AsCurrency;
                        Qexec.parambyname('stankini_lama').AsCurrency:=Qkoreksi.fieldbyname('stanskrg2').AsCurrency;
                        Qexec.parambyname('pakai_lama').AsCurrency:=Qkoreksi.fieldbyname('pakai2').AsCurrency;
                        Qexec.parambyname('biayapemakaian_lama').AsCurrency:=Qkoreksi.fieldbyname('biayapemakaian2').AsCurrency;
                        Qexec.parambyname('administrasi_lama').AsCurrency:=Qkoreksi.fieldbyname('administrasi2').AsCurrency;
                        Qexec.parambyname('pemeliharaan_lama').AsCurrency:=Qkoreksi.fieldbyname('pemeliharaan2').AsCurrency;
                        Qexec.parambyname('pelayanan_lama').AsCurrency:=Qkoreksi.fieldbyname('pelayanan2').AsCurrency;
                        Qexec.parambyname('retribusi_lama').AsCurrency:=Qkoreksi.fieldbyname('retribusi2').AsCurrency;
                        Qexec.parambyname('meterai_lama').AsCurrency:=Qkoreksi.fieldbyname('meterai2').AsCurrency;
                        Qexec.parambyname('rekair_lama').AsCurrency:=Qkoreksi.fieldbyname('rekair2').AsCurrency;
                        Qexec.parambyname('stanlalu_baru').AsCurrency:=Qkoreksi.fieldbyname('stanlalu').AsCurrency;
                        Qexec.parambyname('stankini_baru').AsCurrency:=Qkoreksi.fieldbyname('stanskrg').AsCurrency;
                        Qexec.parambyname('pakai_baru').AsCurrency:=Qkoreksi.fieldbyname('pakai').AsCurrency;
                        Qexec.parambyname('biayapemakaian_baru').AsCurrency:=Qkoreksi.fieldbyname('biayapemakaian').AsCurrency;
                        Qexec.parambyname('administrasi_baru').AsCurrency:=Qkoreksi.fieldbyname('administrasi').AsCurrency;
                        Qexec.parambyname('pemeliharaan_baru').AsCurrency:=Qkoreksi.fieldbyname('pemeliharaan').AsCurrency;
                        Qexec.parambyname('pelayanan_baru').AsCurrency:=Qkoreksi.fieldbyname('pelayanan').AsCurrency;
                        Qexec.parambyname('retribusi_baru').AsCurrency:=Qkoreksi.fieldbyname('retribusi').AsCurrency;
                        Qexec.parambyname('meterai_baru').AsCurrency:=Qkoreksi.fieldbyname('meterai').AsCurrency;
                        Qexec.parambyname('rekair_baru').AsCurrency:=Qkoreksi.fieldbyname('rekair').AsCurrency;

                       if DM.Qcek.fieldbyname('flag').AsString='4' then
                          Qexec.parambyname('flaghapus').asstring:='1'
                        else
                          Qexec.parambyname('flaghapus').asstring:='0';
                        Qexec.Execute;


                        Qexec.close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('COMMIT');
                        Qexec.Execute;

                     EXCEPT ON E:Exception DO
                     BEGIN
          
                         Qexec.close;
                         Qexec.SQL.Clear;
                         Qexec.SQL.Add('ROLLBACK');
                         Qexec.Execute;

                         MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
                         
                      END;
                      END;

                    koreksi.LoadFromFile(GetCurrentDir+'\koreksirek.fr3');

                    TfrxMemoView(koreksi.FindObject('xheader1')).Memo.Text:= DM.Xheader1;
                    TfrxMemoView(koreksi.FindObject('xheader2')).Memo.Text:= DM.Xheader2;
                    TfrxMemoView(koreksi.FindObject('xfooter1')).Memo.Text:= DM.Xfooter1; 
                    koreksi.ShowReport() ;

                  end;


             END;


             Qrek.SQLRefresh.Clear;
             Qrek.SQLRefresh.Add('SELECT * FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' WHERE nosamb=:nosamb');
             Qrek.RefreshRecord; 

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('COMMIT');
             DM.Qexec.Execute;

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
          Umain.host.close;
        END;

       



end;


procedure TFRrekening.unpublishsatu();
var
h_ip,h_pass,h_user,h_DB:String;
h_port:Integer;
beritaacara:String;
begin

      if (unpublish1.Enabled=false)then
      begin
         MessageDlg('Akses Anda di Tolak !!', mtWarning, [mbOk], 0);
         exit;
      end;

       if (Qrekflaglunas.Value='1')then
      begin
         MessageDlg('Rekening sudah di lunasi !!', mtWarning, [mbOk], 0);
         exit;
      end;

        if (Qrekflagangsur.Value='1')then
      begin
         MessageDlg('Rekening sudah di tetapkan sebagai di angsuran !!', mtWarning, [mbOk], 0);
         exit;
      end;


       if (Qrekflagbuatfilepos.Value='1')then
      begin
         MessageDlg('Rekening sudah di buat file POS !!', mtWarning, [mbOk], 0);
         exit;
      end;
      


        if(Qrek.recordcount>0) AND (Qrekflagpublish.value='1') then
        begin

            if upass.showmodal=mrOk then
            begin

               if(Qrekflaglunas.Value='1')then
               MessageDlg('Maaf, Rekening Sudah di Lunasi !!   '+char(13)+char(13)+
               '- Kasir : '+Qrekkasir.Value+char(13)+
               '- Loket : '+Qrekloketbayar.Value+char(13)+
               '- Tgl.Bayar : '+FormatDateTime('dd mmmm yyyy',Qrektglbayar.Value), mtInformation, [mbOk], 0)


               else
               begin

               TRY
                TRY

                  Enabled:=false;

                  umain.openkoneksi_host;

                      if(umain.host.connected=true)then
                      begin


                          DM.Qexec.close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('START TRANSACTION');
                          DM.Qexec.Execute;

                          Qexec.close;
                          Qexec.SQL.Clear;
                          Qexec.SQL.Add('START TRANSACTION');
                          Qexec.Execute;

                          Qcekhost.close;
                          Qcekhost.SQL.Clear;
                          Qcekhost.SQL.Add('select * FROm bayar WHERE kode=:kode AND flaglunas="1"');
                          Qcekhost.parambyname('kode').asstring:= FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                          Qcekhost.Open;

                          if(Qcekhost.recordcount>0) then
                          begin
                              MessageDlg('Maaf, Rekening sudah di Lunasi !!! di Loket...', mtInformation, [MbOk], 0);

                          end
                          else
                          begin
                            DM.Qcek1.Close;
                            DM.Qcek1.SQL.Clear;
                            DM.Qcek1.SQL.Add('SHOW TABLES LIKE "drdposting'+FormatDateTime('YYYYMM',periode.date)+'"');
                            DM.Qcek1.open;

                            if(Dm.Qcek1.RecordCount>0)then
                            begin



                             DM.Qcek1.Close;
                             DM.Qcek1.SQL.Clear;
                //                             DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="1"');
                             DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="1"');
                             DM.Qcek1.ParamByName('bulan').AsInteger:=MonthOf(date);
                             DM.Qcek1.ParamByName('tahun').AsInteger:=YearOf(date);
                             Dm.Qcek1.Open;

                             beritaacara:=DM.Qcek1.fieldbyname('jumlah').AsString+' / DRD-KOREKSI / '+upass.alasan.Text+' / '+
                                          FormatDateTime('MM',Date)+' / '+
                                          FormatDateTime('YYYY',Date);



                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;   
                              DM.Qexec.Execute;

                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"1")');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                              DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                              DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                              DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                              DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek1.fieldbyname('jumlah').AsString);
                              DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                              DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                              DM.Qexec.Execute;


                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                              DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                              DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                              DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                              DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                              DM.Qexec.ParamByName('tanggal').AsDate:=date;
                              DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                              DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                              DM.Qexec.ParamByName('namaloket').AsString:='';
                              DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                              DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                              DM.Qexec.Execute;

                              //// ---------------------- ////

                             end
                             else
                             begin



                                 DM.Qcek1.Close;
                                 DM.Qcek1.SQL.Clear;
                //                                 DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="0" ' );
                                 DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="0" ' );
                                 DM.Qcek1.ParamByName('bulan').AsInteger:=MonthOf(date);
                                 DM.Qcek1.ParamByName('tahun').AsInteger:=YearOf(date);
                                 Dm.Qcek1.Open;

                                 beritaacara:=DM.Qcek1.fieldbyname('jumlah').AsString+' / KOREKSI-BIASA / '+upass.alasan.Text+' / '+
                                              FormatDateTime('MM',Date)+' / '+
                                              FormatDateTime('YYYY',Date);



                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                                  DM.Qexec.Execute;

                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"0")');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                                  DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                                  DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek1.fieldbyname('jumlah').AsString);
                                  DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                                  DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                                  DM.Qexec.Execute;


                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                                  DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                                  DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                                  DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                                  DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                                  DM.Qexec.ParamByName('namaloket').AsString:='';
                                  DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                                  DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                                  DM.Qexec.Execute; 

                             end;

                            Qexec.close;
                            Qexec.SQL.Clear;
                            Qexec.SQL.Add('delete from piutang where kode=:kode');
                            Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                            Qexec.Execute;

                            Qexec.close;
                            Qexec.SQL.Clear;
                            Qexec.SQL.Add('replace into hapusdrd (kode,waktu,user) values (:kode,NOW(),:user)');
                            Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                            Qexec.ParamByName('user').AsString:=umain.user.Caption;
                            Qexec.Execute;

                            Qexec.Close;
                            Qexec.SQL.Clear;
                            Qexec.SQL.Add('CREATE TABLE IF NOT EXISTS nosamb_hapus ( nosamb VARCHAR(30),waktuupdate DATETIME DEFAULT NULL, PRIMARY KEY (`nosamb`))');
                            Qexec.SQL.Add('ENGINE=INNODB DEFAULT CHARSET=latin1');
                            Qexec.Execute;

                            Qexec.Close;
                            Qexec.SQL.Clear;
                            Qexec.SQL.Add('REPLACE INTO nosamb_hapus ');
                            Qexec.SQL.Add('(nosamb,waktuupdate) VALUES (:nosamb,now())');
                            Qexec.parambyname('nosamb').asstring:=Qreknosamb.Value;
                            Qexec.Execute;

                            
                               DM.Qexec.close;
                               DM.Qexec.SQL.Clear;
                               DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET flagpublish="0",flagkirim="0"');
                               DM.Qexec.SQL.add('where nosamb=:nosamb');
                               DM.Qexec.ParamByName('nosamb').asstring:=Qreknosamb.Value;
                               DM.Qexec.Execute;

                               DM.Qexec.close;
                               DM.Qexec.SQL.Clear;
                               DM.Qexec.SQL.Add('delete from piutang where kode=:kode');
                               DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                               DM.Qexec.Execute;

                               Qrek.SQLRefresh.Clear;
                               Qrek.SQLRefresh.Add('SELECT * FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' WHERE nosamb=:nosamb');
                               Qrek.RefreshRecord;

                            Qexec.close;
                            Qexec.SQL.Clear;
                            Qexec.SQL.Add('COMMIT');
                            Qexec.Execute;    

                            DM.Qexec.close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQL.Add('COMMIT');
                            DM.Qexec.Execute;

                          end;

                      end;

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
                      umain.host.close;
                  END;

                end;
            end;
        end;
end;

procedure TFRrekening.hapusrekening();
begin
  if(Qrek.RecordCount>0)then
  begin
    if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
  else
  begin

      if MessageDlg('Perhatian !!'+char(13)+char(13)+
                    'Yakin hapus Rekening '+Qreknama.Value+' untuk Bulan '+FormatDateTime('MMM YYYY',periode.Date)+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
       begin
       
       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DELETE FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' WHERE nosamb=:nosamb');
       DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
       DM.Qexec.Execute;

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DELETE FROM piutang WHERE kode=:kode');
       DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
       DM.Qexec.Execute;



        DM.uraianlogakses:='Hapus Rekening '+Qreknama.Value+'/'+Qreknosamb.Value+' untuk Bulan '+FormatDateTime('MMM YYYY',periode.Date);
        DM.targetlogakses:=Qreknosamb.Value;
        DM.logakses;

        tampilkan.Click;

      end
      else
        Exit;
  end;
  end;
end;

procedure TFRrekening.hapusrekeningloket();
begin
  if(Qrek.RecordCount>0)then
  begin
    if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
{    else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
}
  else
  begin

      if MessageDlg('Perhatian !!'+char(13)+char(13)+
                    'Yakin hapus Rekening di Loket a/n '+Qreknama.Value+' untuk Bulan '+FormatDateTime('MMM YYYY',periode.Date)+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
       begin


       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('DELETE FROM piutang WHERE kode=:kode');
       Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
       Qexec.Execute;

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET flagkirim="0" WHERE nosamb=:nosamb');
       DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
       DM.Qexec.Execute;


        DM.uraianlogakses:='Hapus Rekening di Loket a/n '+Qreknama.Value+'/'+Qreknosamb.Value+' untuk Bulan '+FormatDateTime('MMM YYYY',periode.Date);
        DM.targetlogakses:=Qreknosamb.Value;
        DM.logakses;

        tampilkan.Click;

      end
      else
        Exit;
  end;
  end;
end;

procedure TFRrekening.perbaruidata();
begin
  if (Qrek.recordcount>0) then
  begin

     if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tanggal : '+datetostr(Qrektglpublish.Value), mtInformation, [mbOk], 0)

     else if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi !!   '+char(13)+char(13)+
       '- Kasir : '+Qrekkasir.Value+char(13)+
       '- Loket : '+Qrekloketbayar.Value+char(13)+
       '- Tgl.Bayar : '+FormatDateTime('dd mmmm yyyy',Qrektglbayar.Value), mtInformation, [mbOk], 0)   
     else
     begin

      DM.Qcek.close;
      DM.Qcek.SQL.clear;
      Dm.Qcek.SQl.add('select p.*,r.kodewil,x.kodecabang,IF(p.status="1","Aktif",IF(p.status="2","Segel",IF(p.status="3","Cbt.Smtr","Non Aktif"))) as aktif from pelanggan p ');
      DM.Qcek.SQL.add('LEFT JOIN rayon r ON p.koderayon=r.koderayon LEFT JOIN kelurahan X ON p.`kodekelurahan`=x.`kodekelurahan` where p.nosamb=:nosamb');
      DM.Qcek.parambyname('nosamb').AsString:=Qreknosamb.value;
      DM.Qcek.open;

      if(DM.Qcek.recordcount>0)then
      begin
           if MessageDlg('Data Terakhir Pelanggan Ini :    '+char(13)+char(13)+
                        '- KD.Gol : '+DM.Qcek.Fieldbyname('kodegol').asstring+char(13)+
                        '- KD.Diameter : '+DM.Qcek.Fieldbyname('kodediameter').asstring+char(13)+
                        '- KD.Rayon : '+DM.Qcek.Fieldbyname('koderayon').asstring+char(13)+
                        '- KD.Cabang : '+DM.Qcek.Fieldbyname('kodecabang').asstring+char(13)+
                        '- KD.Wil : '+DM.Qcek.Fieldbyname('kodewil').asstring+char(13)+
                        '- KD.Kelurahan : '+DM.Qcek.Fieldbyname('kodekelurahan').asstring+char(13)+
                        '- KD.Kolektif : '+DM.Qcek.Fieldbyname('kodekolektif').asstring+char(13)+
                        '- KD.ADM Lain : '+DM.Qcek.Fieldbyname('kodeadministrasilain').asstring+char(13)+
                        '- KD.PEM Lain : '+DM.Qcek.Fieldbyname('kodepemeliharaanlain').asstring+char(13)+
                        '- KD.RET Lain : '+DM.Qcek.Fieldbyname('koderetribusilain').asstring+char(13)+
                        '- Status : '+DM.Qcek.Fieldbyname('aktif').asstring+char(13)+char(13)+
                        'Data Pada Rekening '+FormatDateTime('MMMM YYYY',periode.Date)+' : '  +char(13)+char(13)+
                        '- KD.Gol : '+Qrek.Fieldbyname('kodegol').asstring+char(13)+
                        '- KD.Diameter : '+Qrek.Fieldbyname('kodediameter').asstring+char(13)+
                        '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').asstring+char(13)+
                        '- KD.Cabang : '+Qrek.Fieldbyname('kodecabang').asstring+char(13)+
                        '- KD.Wil : '+Qrek.Fieldbyname('kodewil').asstring+char(13)+
                        '- KD.Kelurahan : '+Qrek.Fieldbyname('kodekelurahan').asstring+char(13)+
                        '- KD.Kolektif : '+Qrek.Fieldbyname('kodekolektif').asstring+char(13)+
                        '- KD.ADM Lain : '+Qrek.Fieldbyname('kodeadministrasilain').asstring+char(13)+
                        '- KD.PEM Lain : '+Qrek.Fieldbyname('kodepemeliharaanlain').asstring+char(13)+
                        '- KD.RET Lain : '+Qrek.Fieldbyname('koderetribusilain').asstring+char(13)+
                        '- Status : '+Qrek.Fieldbyname('aktif').asstring+char(13)+char(13)+
                        'Apakah Anda Ingin Memperbarui "Data Rekening Ini"', mtConfirmation, [mbYes,mbNo], 0)=mrYes then

          begin

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set serimeter=:serimeter,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,kodekelurahan=:kodekelurahan,');
                  DM.Qexec.SQL.Add('kodekolektif=:kodekolektif,flagaktif=:flagaktif,kodeadministrasilain=:kodeadministrasilain,kodepemeliharaanlain=:kodepemeliharaanlain, koderetribusilain=:koderetribusilain where nosamb=:nosamb ');
                  DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.value;  
                  DM.Qexec.ParamByName('serimeter').AsString:=DM.Qcek.Fieldbyname('serimeter').asstring;
                  DM.Qexec.ParamByName('kodegol').AsString:=DM.Qcek.Fieldbyname('kodegol').asstring;
                  DM.Qexec.ParamByName('kodediameter').AsString:=DM.Qcek.Fieldbyname('kodediameter').asstring;
                  DM.Qexec.ParamByName('koderayon').AsString:=DM.Qcek.Fieldbyname('koderayon').asstring;
                  DM.Qexec.ParamByName('kodekolektif').AsString:=DM.Qcek.Fieldbyname('kodekolektif').asstring;
                  DM.Qexec.ParamByName('kodekelurahan').AsString:=DM.Qcek.Fieldbyname('kodekelurahan').asstring;
                  DM.Qexec.ParamByName('kodeadministrasilain').AsString:=DM.Qcek.Fieldbyname('kodeadministrasilain').asstring;
                  DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=DM.Qcek.Fieldbyname('kodepemeliharaanlain').asstring;
                  DM.Qexec.ParamByName('koderetribusilain').AsString:=DM.Qcek.Fieldbyname('koderetribusilain').asstring;
                  DM.Qexec.ParamByName('flagaktif').AsString:=DM.Qcek.Fieldbyname('status').asstring;
                  DM.Qexec.Execute;

                  hitungulangsatu();



          end
          else
           exit;
      end
      else
        MessageDlg('Rekening Ini Tidak Terdaftar Di Master Pelanggan...!!', mtinformation, [mbOk], 0);
      end;
  end;
end;

procedure TFRrekening.koreksistan();
var
blnfoto1,blnfoto2,beritaacara:String;
begin


   if(Qrek.recordcount>0)then
   begin
    if (Koreksi1.Enabled=false)then
         MessageDlg('Akses di Tolak !!', mtinformation, [mbOk], 0)
    else if(Qrekflaglunas.Value='1')then
         MessageDlg('Maaf, Rekening Sudah di Lunasi : '+char(13)+char(13)+
         'Tanggal : '+FormatDateTime('dd mmmm yyyy',Qrektglbayar.Value)+char(13)+
         'Pukul   : '+FormatDateTime('hh:mm',Qrektglbayar.Value)+char(13)+
         'Kasir   : '+Qrekkasir.Value+char(13)+
         'Loket   : '+Qrekloketbayar.Value+char(13)+
         'Total   : Rp. '+FormatCurr('#,##0.#0',Qrektotal.Value), mtInformation, [mbOk], 0)
    else if(Qrekflagpublish.Value='1')then
         MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
         '- User : '+Qrekuserpublish.Value+char(13)+
         '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
         '- Pukul : '+FormatDateTime('hh:mm',Qrektglpublish.Value), mtInformation, [mbOk], 0)
    else
    begin

        if Qrekflagkoreksi.Value='0' then
        begin

              DM.Qcek1.Close;
              DM.Qcek1.SQL.Clear;
              DM.Qcek1.SQL.Add('SHOW TABLES LIKE "drdposting'+FormatDateTime('YYYYMM',periode.date)+'"');
              DM.Qcek1.open;

              if(Dm.Qcek1.RecordCount>0)then
              begin



               DM.Qcek1.Close;
               DM.Qcek1.SQL.Clear;
  //                             DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="1"');
               DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="1"');
               DM.Qcek1.ParamByName('bulan').AsInteger:=MonthOf(date);
               DM.Qcek1.ParamByName('tahun').AsInteger:=YearOf(date);
               Dm.Qcek1.Open;

               beritaacara:=DM.Qcek1.fieldbyname('jumlah').AsString+' / DRD-KOREKSI / PENAMBAHAN DRD / '+
                            FormatDateTime('MM',Date)+' / '+
                            FormatDateTime('YYYY',Date);



                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;   
                DM.Qexec.Execute;

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"1")');
                DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek1.fieldbyname('jumlah').AsString);
                DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                DM.Qexec.ParamByName('tanggal').AsDate:=date;
                DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                DM.Qexec.ParamByName('namaloket').AsString:='';
                DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                DM.Qexec.Execute;

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('UPDATE drdkoreksi SET administrasi=0,pemeliharaan=0,pelayanan=0,retribusi=0 WHERE beritaacara=:beritaacara AND nosamb=:nosamb');
                DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                DM.Qexec.Execute;

                //// ---------------------- ////

               end
               else
               begin



                   DM.Qcek1.Close;
                   DM.Qcek1.SQL.Clear;
  //                                 DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="0" ' );
                   DM.Qcek1.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="0" ' );
                   DM.Qcek1.ParamByName('bulan').AsInteger:=MonthOf(date);
                   DM.Qcek1.ParamByName('tahun').AsInteger:=YearOf(date);
                   Dm.Qcek1.Open;

                   beritaacara:=DM.Qcek1.fieldbyname('jumlah').AsString+' / KOREKSI-BIASA / PENAMBAHAN DRD / '+
                                FormatDateTime('MM',Date)+' / '+
                                FormatDateTime('YYYY',Date);



                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                    DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                    DM.Qexec.Execute;

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"0")');
                    DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                    DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                    DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                    DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek1.fieldbyname('jumlah').AsString);
                    DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                    DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                    DM.Qexec.Execute;


                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                    DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                    DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                    DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                    DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                    DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                    DM.Qexec.ParamByName('tanggal').AsDate:=date;
                    DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                    DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                    DM.Qexec.ParamByName('namaloket').AsString:='';
                    DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                    DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                    DM.Qexec.Execute; 

                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE drdkoreksi SET administrasi=0,pemeliharaan=0,pelayanan=0,retribusi=0 WHERE beritaacara=:beritaacara AND nosamb=:nosamb');
                    DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                    DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                    DM.Qexec.Execute;

               end;
        end;


        DM.Xperiode:=FormatDateTime('YYYYMM',periode.Date);
        DM.Xkodegol:=Qrekkodegol.Value;
        DM.Xkodediameter:=Qrekkodediameter.Value;

        DM.Xkodegolyangberlaku:=Qrekkodegolyangberlaku.Value;
        DM.XkodegolIPLyangberlaku:=Qrekkoderetribusilain.Value;
        DM.Xkodediameteryangbrlaku:=Qrekkodediameteryangberlaku.Value;

        DM.Xflagpel:=Qrekflag.Value;
        DM.Xnosamb:=Qreknosamb.Value;
        DM.xkodeadmlain:=Qrekkodeadministrasilain.Value;
        DM.xkodepemlain:=Qrekkodepemeliharaanlain.Value;
        DM.xkoderetlain:=Qrekkoderetribusilain.Value;



        ukoreksistan._flagaktif:=Qrekflagaktif.AsString;
        ukoreksistan._tipekoreksi:='-1';
        ukoreksistan.fixpakaiipl:=Qrekluasrumah.Value;
        ukoreksistan.stanlalu.Value:=Qrekstanlalu.Value;
        ukoreksistan.stankini.Value:=Qrekstanskrg.Value;
        ukoreksistan.stanangkat.Value:=Qrekstanangkat.Value;


        ukoreksistan._kodekondisimeter:=Qrekkodekondisimeter.AsString;
        ukoreksistan.tglmulaidenda1.date:=Qrektglmulaidenda.Value;
        ukoreksistan.tglmulaidenda2.date:=Qrektglmulaidenda2.Value;
        ukoreksistan.tglmulaidenda3.date:=Qrektglmulaidenda3.Value;
        ukoreksistan.tglmulaidenda5.date:=Qrektglmulaidenda4.Value;
        ukoreksistan.tglmulaidenda4.date:=Qrektglmulaidendaperbulan.Value;

       

        ukoreksistan.trf_dendatunggakan:=Qrektrf_dendatunggakan.Value;
        ukoreksistan.trf_dendatunggakan2:=Qrektrf_dendatunggakan2.Value;
        ukoreksistan.trf_dendatunggakan3:=Qrektrf_dendatunggakan3.Value;
        ukoreksistan.trf_dendatunggakan4:=Qrektrf_dendatunggakan4.Value;
        ukoreksistan.trf_dendatunggakanperbulan:=Qrektrf_dendatunggakanperbulan.Value;


        if (Qrektaksasi.AsString<>'0') then
              ukoreksistan.cektaksasi.Checked:=true
        else
              ukoreksistan.cektaksasi.Checked:=false;


        if(Qrekkelainan.Value<>'')then
        begin
          ukoreksistan.cekadakelainan.Checked:=true;
          ukoreksistan.kelainan.Text:=Qrekkelainan.Value;
          ukoreksistan.kelainan.Enabled:=true;
        end
        else
        begin
          ukoreksistan.cekadakelainan.Checked:=false;
          ukoreksistan.kelainan.Clear;
          ukoreksistan.kelainan.Enabled:=false;
        end;
        

         if(Qrekpembacameter.Value<>'')then
        begin
          ukoreksistan.pembacameter.Text:='-';
        end
        else
        begin
         ukoreksistan.pembacameter.Text:=Qrekpembacameter.Value;
        end;

        ukoreksistan.lewati.Visible:=false;
        ukoreksistan.tabel:='drd'+FormatDateTime('YYYYMM',periode.Date);
        ukoreksistan.hitung();
        if ukoreksistan.showmodal=mrOk then
        begin           

            Qrek.SQLRefresh.Clear;
            Qrek.SQLRefresh.Add('SELECT c.*,c.administrasi+c.administrasilain as administrasicampur,c.pemeliharaan+c.pemeliharaanlain as pemeliharaancampur,c.retribusi+c.retribusilain as retribusicampur FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
            Qrek.RefreshRecord;
        end;
    end;
   end;

end;

procedure TFRrekening.tampilkanClick(Sender: TObject);
begin

 DM.Qcek.close;
 DM.Qcek.SQL.Clear;
 DM.Qcek.SQL.Add('select * from periode where periode=:periode');
 DM.Qcek.ParamByName('periode').AsString:= FormatDateTime('YYYYMM',periode.date);
 DM.Qcek.Open;

 if(DM.Qcek.RecordCount>0)then
 begin

    if(DM.Qcek.fieldbyname('status').AsString='0')then
    begin

      MessageDlg('Periode Rekening '+DM.Qcek.fieldbyname('nama').AsString+' Sudah Di Tutup !!'+char(13)+
      'Akses Anda Dibatasi...', mtInformation, [mbOK], 0);
     

      hitungulangrekening.Enabled:=false;
      publishsemua.Enabled:=false;
      Publish1.Enabled:=false;
      Unpublish1.Enabled:=false;
      Hapus1.Enabled:=false;
      Hitung1.Enabled:=false;
      Koreksi1.Enabled:=false;
      unpublishsemua.Enabled:=false;

      Publish1.Enabled:=false;
      unpublish1.Enabled:=false;
      SetAktif1.Enabled:=false;
      SetSegel1.Enabled:=false;
      SetNonAktif1.Enabled:=false;
      updatebcmeter.Enabled:=false;
      PerbaruiData1.Enabled:=false;
      SetCbtSmtr1.Enabled:=false;
      terbitkanpelanggan.Enabled:=false;
      UploadUlang1.Enabled:=false;
      
    end
    else
    begin


      hitungulangrekening.Enabled:=true;
      publishsemua.Enabled:=true;
      Publish1.Enabled:=true;
      Unpublish1.Enabled:=true;
      Hapus1.Enabled:=true;
      Hitung1.Enabled:=true;
      Koreksi1.Enabled:=true;
      unpublishsemua.Enabled:=true;

      Publish1.Enabled:=true;
      unpublish1.Enabled:=true;
      SetAktif1.Enabled:=true;
      SetSegel1.Enabled:=true;
      SetNonAktif1.Enabled:=true;
      updatebcmeter.Enabled:=true;
      PerbaruiData1.Enabled:=true;
      SetCbtSmtr1.Enabled:=true;
      terbitkanpelanggan.Enabled:=true;
      UploadUlang1.Enabled:=true;

        
          if(Umain.olah_data_rekening<>'1') then
          begin
              Koreksi1.Enabled:=False;
              hitungulangrekening.Enabled:=False;
              Hitung1.Enabled:=False;
              PerbaruiData1.Enabled:=False;
              Hapus1.Enabled:=False;
              SetAktif1.Enabled:=False;
              SetNonAktif1.Enabled:=False;
              UploadUlang1.Enabled:=False;
              updatebcmeter.Enabled:=false;
              terbitkanpelanggan.Enabled:=false;
          end;


            if(Umain.publish_rekening<>'1') then
          begin
             publishsemua.Enabled:=False;
             Publish1.Enabled:=False;

          end;

              if(Umain.unpublish_rekening<>'1') then
          begin
             unpublishsemua.Enabled:=False;
             Unpublish1.Enabled:=False;

          end;


    end;


    

          Qrek.close;
          Qrek.SQL.Clear;
          Qrek.SQl.Add(Qrek.SQLLock.Text);
          Qrek.SQL.Add(' from drd'+FormatDateTime('YYYYMM',periode.date)+' c');
          Qrek.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
          Qrek.SQL.Add('LEFT JOIN golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku ');
          Qrek.SQL.Add('LEFT JOIN golongan_ipl i On c.koderetribusilain=i.kodegolyangberlaku ');
          Qrek.SQL.Add('LEFT JOIN diameter d On c.kodediameteryangberlaku=d.kodediameteryangberlaku');
          Qrek.SQL.Add('LEFT JOIN rayon r On c.koderayon=r.koderayon');
          Qrek.SQL.add('LEFT JOIn kelurahan x ON c.kodekelurahan=x.kodekelurahan ');
          Qrek.SQL.Add('LEFT JOIN flag f ON p.`flag`=f.`kodeflag`');
          Qrek.SQL.Add('LEFT JOIN kolektif k on p.kodekolektif=k.kodekolektif');
          Qrek.SQL.Add('LEFT JOIN meterai m ON "'+FormatDateTime('YYYYMM',periode.date)+'">=m.periodeawal AND "'+FormatDateTime('YYYYMM',periode.date)+'"<=m.periodeakhir ');
          Qrek.SQL.Add('LEFT JOIn kondisimeter km ON p.kodekondisimeter=km.kodekondisi ');
          Qrek.SQL.Add('LEFT JOIn norekening nk ON CONCAT("'+FormatDateTime('YYYYMM',periode.date)+'",".",c.nosamb)=nk.kode ');
          Qrek.SQL.Add('LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND periode="'+FormatDateTime('YYYYMM',periode.date)+'") tak ON c.nosamb=tak.nosamb WHERE c.nosamb IS NOT NULL ');
          Qrek.SQL.Add('AND (p.tanggal_hapus IS NULL OR DATE_FORMAT(tanggal_hapus,"%Y%m")>:periode) ');
          Qrek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);



          if (cekrayon.Checked=true)then
          begin
            Qrek.SQL.add('and c.koderayon=:koderayon');
            Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
          end;

          if (cekgolongan.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodegol=:kodegol');
            Qrek.ParamByName('kodegol').AsString:=kodegol.Text;
          end;

           if (cekcab.Checked=true)then
          begin
            Qrek.SQL.add('and x.kodecabang=:kodecabang');
            Qrek.ParamByName('kodecabang').AsString:=kodecab.Text;
          end;

           if (cekKec.Checked=true)then
          begin
            Qrek.SQL.add('and x.kodekecamatan=:kodekec');
            Qrek.ParamByName('kodekec').AsString:=kodekec.Text;
          end;

           if (cekkel.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodekelurahan=:kodekelurahan');
            Qrek.ParamByName('kodekelurahan').AsString:=kodekel.Text;
          end;

            if (cekwilayah.Checked=true)then
          begin
              Qrek.SQL.add('and r.kodewil=:kodewil');
              Qrek.ParamByName('kodewil').AsString:=kodewil.Text;
            
          end;


           if (cekdiameter.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodediameter=:kodediameter');
            Qrek.ParamByName('kodediameter').AsString:=kodediameter.Text;
          end;

           if (ceknosamb.Checked=true)then
          begin
            Qrek.SQL.add('and c.nosamb=:nosamb');
            Qrek.ParamByName('nosamb').AsString:=nosamb.Text;
          end;

           if (ceknorek.Checked=true)then
          begin
            Qrek.SQL.add('and nk.norekening=:norekening');
            Qrek.ParamByName('norekening').AsString:=norekening.Text;
          end;

           if (ceknama.Checked=true)then
          begin
            Qrek.SQL.add('and p.nama LIKE "%" :nama "%"');
            Qrek.ParamByName('nama').AsString:=nama.Text;
          end;

           if (cekserimeter.Checked=true)then
          begin
            Qrek.SQL.add('and c.serimeter=:serimeter');
            Qrek.ParamByName('serimeter').AsString:=serimeter.Text;
          end;

           if (cekwm.Checked=true)then
          begin
            Qrek.SQL.add('and p.merk=:merk');
            Qrek.ParamByName('merk').AsString:=merkwm.Text;
          end;

          if (cekalamat.Checked=true)then
          begin
            Qrek.SQL.add('and p.alamat LIKE CONCAT("%" :alamat "%")');
            Qrek.ParamByName('alamat').AsString:=alamat.Text;
          end;

          if (cekkolektif.Checked=true)then
          begin
            Qrek.SQL.add('and p.kodekolektif LIKE CONCAT("%",:kodekolektif,"%")');
            Qrek.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
          end;

          if(cektglbayar.Checked=true)then
          begin
            Qrek.SQL.add('AND date(c.tglbayar)>=:tglbayar1 and date(c.tglbayar)<=:tglbayar2');
            Qrek.ParamByName('tglbayar1').AsDate:=tglbayar1.Date;
            Qrek.ParamByName('tglbayar2').AsDate:=tglbayar2.Date;
          end;

          if(cekrekair.Checked=true)then
          begin
            Qrek.SQL.add('AND c.rekair>=:rekair1 and c.rekair<=:rekair2');
            Qrek.ParamByName('rekair1').AsCurrency:=rekair1.Value;
            Qrek.ParamByName('rekair2').AsCurrency:=rekair2.Value;
          end;

           if(cektotal.Checked=true)then
          begin
            Qrek.SQL.add('AND c.total>=:total1 and c.total<=:total2');
            Qrek.ParamByName('total1').AsCurrency:=total1.Value;
            Qrek.ParamByName('total2').AsCurrency:=total2.Value;
          end;


           if(cekpakai.Checked=true)then
          begin
            Qrek.SQL.add('AND c.pakai>=:pakai1 and c.pakai<=:pakai2');
            Qrek.ParamByName('pakai1').AsCurrency:=pakai1.Value;
            Qrek.ParamByName('pakai2').AsCurrency:=pakai2.Value;
          end;

          if (cekstatus.Checked=true)then
          begin
            Qrek.SQL.add('and c.flagaktif=:flagaktif');
            Qrek.ParamByName('flagaktif').AsString:= IntToStr(status.ItemIndex);
          end;

          
          if (cekkasir.Checked=true)then
          begin
            Qrek.SQL.add('and c.kasir=:kasir');
            Qrek.ParamByName('kasir').AsString:=kasir.Text;
          end;


          if (cekloket.Checked=true)then
          begin
            Qrek.SQL.add('and c.loketbayar=:loketbayar');
            Qrek.ParamByName('loketbayar').AsString:=loket.Text;
          end;


            if (cekadmlain.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodeadministrasilain=:kodeadministrasilain');
            Qrek.ParamByName('kodeadministrasilain').AsString:=kodeadm_lain.Text;
          end;

            if (cekpemlain.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodepemeliharaanlain=:kodepemeliharaanlain');
            Qrek.ParamByName('kodepemeliharaanlain').AsString:=kodepem_lain.Text;
          end;

            if (cekretlain.Checked=true)then
          begin
            Qrek.SQL.add('and c.koderetribusilain=:koderetribusilain');
            Qrek.ParamByName('koderetribusilain').AsString:=koderet_lain.Text;
          end;

           if (cekkepemlilikan.Checked=true)then
          begin
            Qrek.SQL.add('and p.kepemilikanbangunan=:kepemilikanbangunan');
            Qrek.ParamByName('kepemilikanbangunan').AsString:=kepemilikan.Text;
          end;

            if (ceksumberair.Checked=true)then
          begin
            Qrek.SQL.add('and p.sumberair=:sumberair');
            Qrek.ParamByName('sumberair').AsString:=sumberair.Text;
          end;

            if (ceknolpp.Checked=true)then
          begin
            Qrek.SQL.add('and c.nolpp=:nolpp');
            Qrek.ParamByName('nolpp').AsString:=nolpp.Text;
          end;


          if (cekflag.Checked=true)then
          begin
            Qrek.SQL.add('and p.flag=:flag');
            Qrek.ParamByName('flag').AsString:=kodeflag.Text;
          end;


            if (cekcatat.Checked=true)then
          begin
            Qrek.SQL.add('and c.pembacameter=:pembacameter');
            Qrek.ParamByName('pembacameter').AsString:=namapembaca.Text;
          end;


            if (cekkondisimeter.Checked=true)then
          begin
            Qrek.SQL.add('and p.kodekondisimeter=:kodekondisimeter');
            Qrek.ParamByName('kodekondisimeter').AsString:=kodekondisi.Text;
          end;

            if (cekKodeIPL.Checked=true)then
          begin
            Qrek.SQL.add('and p.koderetribusilain=:kodeipl');
            Qrek.ParamByName('kodeipl').AsString:=kodeIPL.Text;
          end;

            if (cekLuasTanah.Checked=true)then
          begin
            Qrek.SQL.add('and c.luasrumah=:luastanah');
            Qrek.ParamByName('luastanah').Value:=luastanah.Value;
          end;

          if (ceklainnya.Checked=true)then
          begin

            if(lainnya.Text='Sudah Koreksi')then
            begin
              Qrek.SQL.add('and c.flagkoreksi="1"');
            end;

            if(lainnya.Text='Belum Koreksi')then
            begin
              Qrek.SQL.add('and c.flagkoreksi="0"');
            end;

            if(lainnya.Text='Sudah Publish')then
            begin
              Qrek.SQL.add('and c.flagpublish="1"');
            end;

            if(lainnya.Text='Belum Publish')then
            begin
              Qrek.SQL.add('and c.flagpublish="0"');
            end;

            if(lainnya.Text='Sudah Lunas')then
            begin
              Qrek.SQL.add('and c.flaglunas="1"');
            end;

            if(lainnya.Text='Belum Lunas')then
            begin
              Qrek.SQL.add('and c.flaglunas="0"');
            end;

            if(lainnya.Text='Kena Denda')then
            begin
              Qrek.SQL.add('and c.dendatunggakan>0');
            end;

            if(lainnya.Text='Tanpa Denda')then
            begin
              Qrek.SQL.add('and c.dendatunggakan=0');
            end;

            if(lainnya.Text='Sudah Upload')then
            begin
              Qrek.SQL.add('and c.flagkirim="1"');
            end;

            if(lainnya.Text='Belum Upload')then
            begin
              Qrek.SQL.add('and c.flagpublish="1" AND c.flagkirim="0"');
            end;


             if(lainnya.Text='Pemakaian Minus')then
            begin
              Qrek.SQL.add('and c.pakai<0');
            end;   

          end;

          Qrek.SQL.add('order by CAST(p.nosamb AS UNSIGNED) asc limit :limit');
          Qrek.ParamByName('limit').AsCurrency:=limit.Value;
          Qrek.Open;

//          mirror();
          info.Caption:='DAFTAR REKENING AIR '+UpperCase(FormatDateTime('MMMM YYYY',periode.date));
          pindahperiode.Visible:=true;
          periode.Enabled:=false;


          akses;




 end
 else
  MessageDlg('Maaf, Rekening '+FormatDateTime('MMMM YYYY',periode.date)+' Belum Ada !!!', mtInformation, [mbOk], 0);
end;

procedure TFRrekening.mirror();
begin
          Qmirror.close;
          Qmirror.SQL.Clear;
          Qmirror.SQl.Add(Qmirror.SQLRefresh.Text);
          Qmirror.SQL.Add('FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c ');
          Qmirror.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
          Qmirror.SQL.Add('LEFT JOIN golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku left join diameter d On c.kodediameteryangberlaku=d.kodediameteryangberlaku left join rayon r On c.koderayon=r.koderayon');
          Qmirror.SQL.Add('LEFT JOIN golongan_ipl i On c.koderetribusilain=i.kodegolyangberlaku');
          Qmirror.SQL.add('LEFT JOIN kelurahan x ON c.kodekelurahan=x.kodekelurahan');
          Qmirror.SQL.Add('LEFT JOIN kolektif k on p.kodekolektif=k.kodekolektif LEFT JOIN meterai m ON "'+FormatDateTime('YYYYMM',periode.date)+'">=m.periodeawal AND "'+FormatDateTime('YYYYMM',periode.date)+'"<=m.periodeakhir ');
          Qmirror.SQL.Add('LEFT JOIN byadministrasi a ON "'+FormatDateTime('YYYYMM',periode.date)+'">=a.periodeawal AND "'+FormatDateTime('YYYYMM',periode.date)+'"<=a.periodeakhir ');
          Qmirror.SQL.Add('LEFT JOIN byadministrasi_lain b1 ON c.kodeadministrasilain=b1.kode LEFT JOIN bypemeliharaan_lain b2 ON c.`kodepemeliharaanlain`=b2.kode ');
          Qmirror.SQL.Add('LEFT JOIN byretribusi_lain b3 ON c.`koderetribusilain`=b3.kode ');
          Qmirror.SQL.Add('LEFT JOIN kondisimeter km ON p.kodekondisimeter=km.kodekondisi ');
          Qmirror.SQL.Add('LEFT JOIN norekening nk ON CONCAT("'+FormatDateTime('YYYYMM',periode.date)+'",".",c.nosamb)=nk.kode ');
          Qmirror.SQL.Add('LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND periode="'+FormatDateTime('YYYYMM',periode.date)+'") tak ON c.nosamb=tak.nosamb WHERE c.nosamb IS NOT NULL AND p.flaghapus<>"1" ');




          if (cekrayon.Checked=true)then
          begin
            Qmirror.SQL.add('and c.koderayon=:koderayon');
            Qmirror.ParamByName('koderayon').AsString:=koderayon.Text;
          end;

          if (cekgolongan.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kodegol=:kodegol');
            Qmirror.ParamByName('kodegol').AsString:=kodegol.Text;
          end;

           if (cekcab.Checked=true)then
          begin
            Qmirror.SQL.add('and x.kodecabang=:kodecabang');
            Qmirror.ParamByName('kodecabang').AsString:=kodecab.Text;
          end;

           if (cekKec.Checked=true)then
          begin
            Qmirror.SQL.add('and x.kodekecamatan=:kodekec');
            Qmirror.ParamByName('kodekec').AsString:=kodekec.Text;
          end;

           if (cekkel.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kodekelurahan=:kodekelurahan');
            Qmirror.ParamByName('kodekelurahan').AsString:=kodekel.Text;
          end;

            if (cekwilayah.Checked=true)then
          begin
            Qmirror.SQL.add('and r.kodewil=:kodewil');
            Qmirror.ParamByName('kodewil').AsString:=kodewil.Text;
          end;


           if (cekdiameter.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kodediameter=:kodediameter');
            Qmirror.ParamByName('kodediameter').AsString:=kodediameter.Text;
          end;

           if (ceknosamb.Checked=true)then
          begin
            Qmirror.SQL.add('and c.nosamb=:nosamb');
            Qmirror.ParamByName('nosamb').AsString:=nosamb.Text;
          end;

           if (ceknorek.Checked=true)then
          begin
            Qmirror.SQL.add('and nk.norekening=:norekening');
            Qmirror.ParamByName('norekening').AsString:=norekening.Text;
          end;

           if (ceknama.Checked=true)then
          begin
            Qmirror.SQL.add('and p.nama LIKE "%" :nama "%"');
            Qmirror.ParamByName('nama').AsString:=nama.Text;
          end;

           if (cekserimeter.Checked=true)then
          begin
            Qmirror.SQL.add('and c.serimeter=:serimeter');
            Qmirror.ParamByName('serimeter').AsString:=serimeter.Text;
          end;

           if (cekwm.Checked=true)then
          begin
            Qmirror.SQL.add('and p.merk=:merk');
            Qmirror.ParamByName('merk').AsString:=merkwm.Text;
          end;

          if (cekalamat.Checked=true)then
          begin
            Qmirror.SQL.add('and p.alamat LIKE "%" :alamat "%"');
            Qmirror.ParamByName('alamat').AsString:=alamat.Text;
          end;

          if (cekkolektif.Checked=true)then
          begin
            Qmirror.SQL.add('and p.kodekolektif=:kodekolektif');
            Qmirror.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
          end;

          if(cektglbayar.Checked=true)then
          begin
            Qmirror.SQL.add('AND date(c.tglbayar)>=:tglbayar1 and date(c.tglbayar)<=:tglbayar2');
            Qmirror.ParamByName('tglbayar1').AsDate:=tglbayar1.Date;
            Qmirror.ParamByName('tglbayar2').AsDate:=tglbayar2.Date;
          end;

          if(cekrekair.Checked=true)then
          begin
            Qmirror.SQL.add('AND c.rekair>=:rekair1 and c.rekair<=:rekair2');
            Qmirror.ParamByName('rekair1').AsCurrency:=rekair1.Value;
            Qmirror.ParamByName('rekair2').AsCurrency:=rekair2.Value;
          end;

           if(cektotal.Checked=true)then
          begin
            Qmirror.SQL.add('AND c.total>=:total1 and c.total<=:total2');
            Qmirror.ParamByName('total1').AsCurrency:=total1.Value;
            Qmirror.ParamByName('total2').AsCurrency:=total2.Value;
          end;


           if(cekpakai.Checked=true)then
          begin
            Qmirror.SQL.add('AND c.pakai>=:pakai1 and c.pakai<=:pakai2');
            Qmirror.ParamByName('pakai1').AsCurrency:=pakai1.Value;
            Qmirror.ParamByName('pakai2').AsCurrency:=pakai2.Value;
          end;

          if (cekstatus.Checked=true)then
          begin
            Qmirror.SQL.add('and c.flagaktif=:flagaktif');
            Qmirror.ParamByName('flagaktif').AsString:= IntToStr(status.ItemIndex);
          end;


          if (cekkasir.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kasir=:kasir');
            Qmirror.ParamByName('kasir').AsString:=kasir.Text;
          end;


          if (cekloket.Checked=true)then
          begin
            Qmirror.SQL.add('and c.loketbayar=:loketbayar');
            Qmirror.ParamByName('loketbayar').AsString:=loket.Text;
          end;


            if (cekadmlain.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kodeadministrasilain=:kodeadministrasilain');
            Qmirror.ParamByName('kodeadministrasilain').AsString:=kodeadm_lain.Text;
          end;

            if (cekpemlain.Checked=true)then
          begin
            Qmirror.SQL.add('and c.kodepemeliharaanlain=:kodepemeliharaanlain');
            Qmirror.ParamByName('kodepemeliharaanlain').AsString:=kodepem_lain.Text;
          end;

            if (cekretlain.Checked=true)then
          begin
            Qmirror.SQL.add('and c.koderetribusilain=:koderetribusilain');
            Qmirror.ParamByName('koderetribusilain').AsString:=koderet_lain.Text;
          end;

           if (cekkepemlilikan.Checked=true)then
          begin
            Qmirror.SQL.add('and p.kepemilikanbangunan=:kepemilikanbangunan');
            Qmirror.ParamByName('kepemilikanbangunan').AsString:=kepemilikan.Text;
          end;

            if (ceksumberair.Checked=true)then
          begin
            Qmirror.SQL.add('and p.sumberair=:sumberair');
            Qmirror.ParamByName('sumberair').AsString:=sumberair.Text;
          end;

            if (ceknolpp.Checked=true)then
          begin
            Qmirror.SQL.add('and c.nolpp=:nolpp');
            Qmirror.ParamByName('nolpp').AsString:=nolpp.Text;
          end;


          if (cekflag.Checked=true)then
          begin
            Qmirror.SQL.add('and p.flag=:flag');
            Qmirror.ParamByName('flag').AsString:=kodeflag.Text;
          end;


            if (cekcatat.Checked=true)then
          begin
            Qmirror.SQL.add('and c.pembacameter=:pembacameter');
            Qmirror.ParamByName('pembacameter').AsString:=namapembaca.Text;
          end;


             if (cekkondisimeter.Checked=true)then
          begin
            Qmirror.SQL.add('and p.kodekondisimeter=:kodekondisimeter');
            Qmirror.ParamByName('kodekondisimeter').AsString:=kodekondisi.Text;
          end;

            if (cekKodeIPL.Checked=true)then
          begin
            Qmirror.SQL.add('and p.koderetribusilain=:kodeipl');
            Qmirror.ParamByName('kodeipl').AsString:=kodeIPL.Text;
          end;

            if (cekLuasTanah.Checked=true)then
          begin
            Qmirror.SQL.add('and c.luasrumah=:luastanah');
            Qmirror.ParamByName('luastanah').Value:=luastanah.Value;
          end;


          if (ceklainnya.Checked=true)then
          begin

            if(lainnya.Text='Sudah Koreksi')then
            begin
              Qmirror.SQL.add('and c.flagkoreksi="1"');
            end;

            if(lainnya.Text='Belum Koreksi')then
            begin
              Qmirror.SQL.add('and c.flagkoreksi="0"');
            end;

            if(lainnya.Text='Sudah Publish')then
            begin
              Qmirror.SQL.add('and c.flagpublish="1"');
            end;

            if(lainnya.Text='Belum Publish')then
            begin
              Qmirror.SQL.add('and c.flagpublish="0"');
            end;

            if(lainnya.Text='Sudah Lunas')then
            begin
              Qmirror.SQL.add('and c.flaglunas="1"');
            end;

            if(lainnya.Text='Belum Lunas')then
            begin
              Qmirror.SQL.add('and c.flaglunas="0"');
            end;

            if(lainnya.Text='Kena Denda')then
            begin
              Qmirror.SQL.add('and c.dendatunggakan>0');
            end;

            if(lainnya.Text='Tanpa Denda')then
            begin
              Qmirror.SQL.add('and c.dendatunggakan=0');
            end;

            if(lainnya.Text='Sudah Upload')then
            begin
              Qmirror.SQL.add('and c.flagkirim="1"');
            end;

            if(lainnya.Text='Belum Upload')then
            begin
              Qmirror.SQL.add('and c.flagpublish="1" AND c.flagkirim="0"');
            end;

            if(lainnya.Text='Pemakaian Minus')then
            begin
              Qmirror.SQL.add('and c.pakai<0');
            end;

           
            
          end;


          Qmirror.SQL.add('order by CAST(p.nosamb AS UNSIGNED) ASC limit :limit');
          Qmirror.ParamByName('limit').AsCurrency:=limit.Value;
          Qmirror.Open;
end;

procedure TFRrekening.GtvrekCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin


    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvrekflaglunas.Index], varstring)='1')  then
    BEGIN
      IF (GtvRek.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin

        ACanvas.Canvas.Brush.Color :=  TColor($0000A000);
        ACanvas.Canvas.Font.Color := clWhite;

      END;
    end;



    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvrekflagaktif.Index], varString)='0') then
    BEGIN
    IF (GtvRek.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    END;
    end;



end;

procedure TFRrekening.GtvrekFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);

var
  J1,J2,J3,J4: TJpegImage;
  B_1,b_2,B_3,B_4: TBitmap;

begin
    if(Qrek.recordcount>0)then
   begin


 

   try



      Qtunggakan.Close;
      Qtunggakan.SQL.Clear;
      Qtunggakan.SQL.Add('call viewpiutang (:nosamb)');
      Qtunggakan.ParamByName('nosamb').AsString := Qreknosamb.Value;
      Qtunggakan.Open;


  



    except
    end;





        xnosamb.Text:=Qrek.Fieldbyname('nosamb').AsString;
        xnorek.Text:=Qrek.Fieldbyname('norekening').AsString;

        xnama.Text:=Qrek.Fieldbyname('nama').asstring;
        xkodegol.Text:=Qrek.Fieldbyname('kodegol').asstring;
        xkodedia.Text:=Qrek.Fieldbyname('kodediameter').asstring;
        xkoderayon.Text:=Qrek.Fieldbyname('koderayon').asstring;
        xalamat.Text:=Qrek.Fieldbyname('alamat').asstring;
        xrayon.Text:=Qrek.Fieldbyname('namarayon').asstring;
        xstatus.Text:=Qrek.Fieldbyname('aktif').asstring;   
        xkodewil.Text:=Qrek.Fieldbyname('kodewil').asstring;
        xwilayah.Text:=Qrek.Fieldbyname('wilayah').asstring;
        xkodeadmlain.Text:=Qrek.Fieldbyname('kodeadministrasilain').asstring;
        xkodepemlain.Text:=Qrek.Fieldbyname('kodepemeliharaanlain').asstring;
        xkoderetlain.Text:=Qrek.Fieldbyname('koderetribusilain').asstring;


          pakai.Value := Qrek.Fieldbyname('pakai').AsCurrency; 
          bpakai.Value := Qrek.Fieldbyname('biayapemakaian').AsCurrency;
          adm.Value := Qrek.Fieldbyname('administrasi').AsCurrency+ Qrek.Fieldbyname('administrasilain').AsCurrency;
          retribusi.Value := Qrek.Fieldbyname('retribusi').AsCurrency+Qrek.Fieldbyname('retribusilain').AsCurrency;
          pemeliharaan.Value := Qrek.Fieldbyname('pemeliharaan').AsCurrency+Qrek.Fieldbyname('pemeliharaanlain').AsCurrency;
          pelayanan.Value := Qrek.Fieldbyname('pelayanan').AsCurrency;
          airlimbah.Value := Qrek.Fieldbyname('airlimbah').AsCurrency;
          dendapakai0.Value := Qrek.Fieldbyname('dendapakai0').AsCurrency;
          dendatunggakan.Value := Qrek.Fieldbyname('dendatunggakan').AsCurrency;
          ppn.Value := Qrek.Fieldbyname('ppn').AsCurrency;
          meterai.Value := Qrek.Fieldbyname('meterai').AsCurrency;
          rekair.Value := Qrek.Fieldbyname('rekair').AsCurrency;
          total.Value := Qrek.Fieldbyname('total').AsCurrency;
          kelainan.Text := Qrek.Fieldbyname('kelainan').AsString;
          b1.Value := Qrek.Fieldbyname('blok1').AsCurrency;
          b2.Value := Qrek.Fieldbyname('blok2').AsCurrency;
          b3.Value := Qrek.Fieldbyname('blok3').AsCurrency;
          b4.Value := Qrek.Fieldbyname('blok4').AsCurrency;
          b5.Value := Qrek.Fieldbyname('blok5').AsCurrency;
          p1.Value := Qrek.Fieldbyname('prog1').AsCurrency;
          p2.Value := Qrek.Fieldbyname('prog2').AsCurrency;
          p3.Value := Qrek.Fieldbyname('prog3').AsCurrency;
          p4.Value := Qrek.Fieldbyname('prog4').AsCurrency;
          p5.Value := Qrek.Fieldbyname('prog5').AsCurrency;






          //foto
          
           IF(DM.Qsetting.FieldByName('selisihbcmeter').AsInteger=0)THEN
            begin
              xblnfoto1:= FormatDateTime('MMYY',periode.Date);
              xblnfoto2:= FormatDateTime('MMYY',IncMonth(periode.Date,-1));
            end
            ELSE
            begin

              xblnfoto1:= FormatDateTime('MMYY',IncMonth(periode.Date,DM.Qsetting.Fieldbyname('selisihbcmeter').AsInteger));
              xblnfoto2:= FormatDateTime('MMYY',IncMonth(periode.Date,DM.Qsetting.Fieldbyname('selisihbcmeter').AsInteger-1));

            end;


        if( DM._FOTOMETERAKTIF='1') then
        begin

                try




                        if DirectoryExists(DM._LOKASIFOTOMETER)then
                        begin
                        
                            if FileExists(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\.thumbnails\'+Qreknosamb.Value+'.jpg')then
                            begin

                              foto1.visible:=true;  
                              J1:= TJpegImage.Create;
                              B_1:= TBitmap.Create;

                              j1.CompressionQuality:=50;
                              J1.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\.thumbnails\'+Qreknosamb.Value+'.jpg');
                              B_1.Assign(J1);

                              foto1.Picture.Bitmap.Assign(B_1);

                              wm1:=1;



                            end
                            else
                            begin
                                  foto1.Picture:=Umain.samplefoto.Picture;
                                  wm1:=0;
                            end;

                            if FileExists (DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\.thumbnails\'+Qreknosamb.Value+'.jpg') then
                            begin
                              foto2.visible:=true;

                              J2:= TJpegImage.Create;
                              B_2:= TBitmap.Create;

                              j2.CompressionQuality:=50;
                              J2.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\.thumbnails\'+Qreknosamb.Value+'.jpg');
                              B_2.Assign(J2);

                              foto2.Picture.Bitmap.Assign(B_2);

                              wm2:=1;

                            end
                            else
                            begin
                                   foto2.Picture:=Umain.samplefoto.Picture;
                                   wm2:=0;
                            end;  
                        end;

                finally
                end;   
               

        end
        else
        begin  
            foto1.Picture:=Umain.samplefoto.Picture;
            foto2.Picture:=Umain.samplefoto.Picture;
            
        end;


  END;


         



          



end;

procedure TFRrekening.GtvrekCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 koreksistan;
end;

procedure TFRrekening.SetAktif1Click(Sender: TObject);
begin
  if(Qrek.RecordCount>0) and (Qrekflagaktif.Value<>'1') then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
  else
  begin
            if MessageDlg('Anda Yakin Aktifkan Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+' ??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set flagaktif="1" where nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Aktifkan Kembali Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;

            end
            else
              Exit;

  end;
  end;
end;

procedure TFRrekening.SetNonAktif1Click(Sender: TObject);
begin
 if(Qrek.RecordCount>0) and (Qrekflagaktif.Value<>'0') then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
  else
  begin

      if MessageDlg('Anda Yakin Non Aktifkan Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+' ??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set flagaktif="0" where nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Non Aktifkan Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;


            end
            else
              Exit;
    end;
  end;
end;

procedure TFRrekening.SetCbtSmtr1Click(Sender: TObject);
begin
 if(Qrek.RecordCount>0) and (Qrekflagaktif.Value<>'3') then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
  else
  begin
      if MessageDlg('Anda Yakin Cabut Smentara Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set flagaktif="3" where nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.Execute;

               


                  DM.uraianlogakses:='Cabt,Smentara Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;

            end
            else
end;
end;
end;

procedure TFRrekening.SetSegel1Click(Sender: TObject);
begin
   if(Qrek.RecordCount>0) and (Qrekflagaktif.Value<>'2') then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tgl.Publish : '+FormatDateTime('dd mmmm yyyy',Qrektglpublish.Value)+char(13)+
       '- Pukul : '+TimeToStr(Qrektglpublish.Value), mtInformation, [mbOk], 0)
    else
    begin

      if MessageDlg('Anda Yakin Segel Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set flagaktif="2" where nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Segel Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;


            end
            else
              Exit;
    end;
  end;



end;

procedure TFRrekening.hitungulang();
var
j:integer;
blok1,blok2,blok3,blok4,blok5:Currency;
prog1,prog2,prog3,prog4,prog5:Currency;
bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
t1,t2,t3,t4,t5:Currency;
tetap1,tetap2,tetap3,tetap4,tetap5:String;
progipl1,progipl2,progipl3,progipl4,progipl5,progipl6,progipl7:Currency;
bbipl1,bbipl2,bbipl3,bbipl4,bbipl5,bbipl6,bbipl7,baipl1,baipl2,baipl3,baipl4,baipl5,baipl6,baipl7:Currency;
tipl1,tipl2,tipl3,tipl4,tipl5,tipl6,tipl7:Currency;
tetapipl1,tetapipl2,tetapipl3,tetapipl4,tetapipl5,tetapipl6,tetapipl7:String;
xdendapakai0,xdendatunggakan,xakumulasi:Currency;
xbiayapemakaian,xbiayaipl,xtaxipl,xadministrasi,xpemeliharaan,xpelayanan,xretribusi,xairlimbah,xmeterai,xrekair,xtotal:Currency;
xpakai,fixpakai,akumulasi,fixpakaiipl:Currency;

xadmlain,xpemlain,xretlain:currency;
xppn,xppnipl,xtotalppn:Currency;

tanggal:Tdate;
banyakbulan:integer;
hari:integer;
dendaperbulan:Currency;
i:integer;

xretpakai:Currency;

begin


 TRY


  Enabled:=false;



    hari:=0;
    uloading.proses.Caption:='Hitung Ulang...';
    uloading.Progress.PartsComplete:=0;
    uloading.Progress.TotalParts:=Qmirror.RecordCount;
    uloading.proses.Visible:=true;
    uloading.Progress.Visible:=true;
    uloading.Show;
    Application.ProcessMessages;
    for j:=1 to Qmirror.RecordCount do
    begin

      if(Qmirrorflagpublish.Value='0')
      and (Qmirrorflagkoreksi.Value='1')then
      begin
              QTemp2.SQL.Clear;
              QTemp2.SQL.Add('SELECT c.pakai*g.retribusi_pakai AS ret FROM drd'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN golongan g ON c.kodegolyangberlaku=g.kodegolyangberlaku WHERE nosamb=:nosamb and flaglunas="0" and flagpublish="0"');
              QTemp2.ParamByName('nosamb').AsString:=Qmirror.fieldbyname('nosamb').AsString;
              QTemp2.Open;

              if QTemp2.FieldByName('ret').AsCurrency=0 then
                xretribusi:=Qmirrorxretribusi.Value
              else
                xretribusi:=QTemp2.FieldByName('ret').AsCurrency;//Qmirrorxretribusi.Value ;

              xadministrasi:=Qmirrorxadministrasi.Value;
              xppnipl:=Qmirrorppnipl.Value;
              xtaxipl:=0;
              if Qmirrorkodekondisimeter.AsString='4' then
              begin
                xpemeliharaan:=0;
                xpemlain:=0;
              end
              else
              begin
                xpemeliharaan:=Qmirrorxpemeliharaan.Value;
                if DM._pemeliharaan_lain_drd='0' then
                  xpemlain:=0
                else
                  xpemlain:=Qmirrortrf_pemlain.Value;
              end;


              xpelayanan:=Qmirrorxpelayanan.Value;
              xairlimbah:=Qmirrorxairlimbah.Value;
              if DM._administrasi_lain_drd='0' then
                xadmlain:=0
              else
                xadmlain:=Qmirrortrf_admlain.Value;

              if DM._retribusi_lain_drd='0' then
                xretlain:=0
              else
                xretlain:=Qmirrortrf_retlain.Value;

              xppn:=Qmirrorxppn.Value;
              xretpakai:=0;

              bb1:=Qmirrorbb1.Value;
              bb2:=Qmirrorbb2.Value;
              bb3:=Qmirrorbb3.Value;
              bb4:=Qmirrorbb4.Value;
              bb5:=Qmirrorbb5.Value;
              ba1:=Qmirrorba1.Value;
              ba2:=Qmirrorba2.Value;
              ba3:=Qmirrorba3.Value;
              ba4:=Qmirrorba4.Value;
              ba5:=Qmirrorba5.Value;
              t1:=Qmirrort1.Value;
              t2:=Qmirrort2.Value;
              t3:=Qmirrort3.Value;
              t4:=Qmirrort4.Value;
              t5:=Qmirrort5.Value;
              tetap1:=Qmirrort1_tetap.Value;
              tetap2:=Qmirrort2_tetap.Value;
              tetap3:=Qmirrort3_tetap.Value;
              tetap4:=Qmirrort4_tetap.Value;
              tetap5:=Qmirrort5_tetap.Value;

              bbipl1:=Qmirrorbbipl1.Value;
              bbipl2:=Qmirrorbbipl2.Value;
              bbipl3:=Qmirrorbbipl3.Value;
              bbipl4:=Qmirrorbbipl4.Value;
              bbipl5:=Qmirrorbbipl5.Value;
              bbipl6:=Qmirrorbbipl6.Value;
              bbipl7:=Qmirrorbbipl7.Value;
              baipl1:=Qmirrorbaipl1.Value;
              baipl2:=Qmirrorbaipl2.Value;
              baipl3:=Qmirrorbaipl3.Value;
              baipl4:=Qmirrorbaipl4.Value;
              baipl5:=Qmirrorbaipl5.Value;
              baipl6:=Qmirrorbaipl6.Value;
              baipl7:=Qmirrorbaipl7.Value;
              tipl1:=Qmirrortipl1.Value;
              tipl2:=Qmirrortipl2.Value;
              tipl3:=Qmirrortipl3.Value;
              tipl4:=Qmirrortipl4.Value;
              tipl5:=Qmirrortipl5.Value;
              tipl6:=Qmirrortipl6.Value;
              tipl7:=Qmirrortipl7.Value;
              tetapipl1:=Qmirrortipl1_tetap.Value;
              tetapipl2:=Qmirrortipl2_tetap.Value;
              tetapipl3:=Qmirrortipl3_tetap.Value;
              tetapipl4:=Qmirrortipl4_tetap.Value;
              tetapipl5:=Qmirrortipl5_tetap.Value;
              tetapipl6:=Qmirrortipl6_tetap.Value;
              tetapipl7:=Qmirrortipl7_tetap.Value;

           if Qmirrortaksasi.AsString<>'0' then
           begin

            xpakai:=Qmirrorpakai.AsCurrency;

           end
           else
           begin

                //pakai
                if(Qmirrorstanangkat.Value<>0)then
                  xpakai:=Qmirrorstanangkat.Value-Qmirrorstanlalu.Value+Qmirrorstanskrg.Value
                else
                  xpakai:=Qmirrorstanskrg.Value-Qmirrorstanlalu.Value;

           end;


           //cari retpakai

           xretpakai:=xpakai*Qmirrorxretribusipakai.Value;


            //cari fixpakai

              if (Qmirrorminpakai.Value>xpakai)then
                fixpakai:=Qmirrorminpakai.Value
              else
                fixpakai:=xpakai;

            //cek apakah ada denda pakai0

               if(xpakai=0)then
               xdendapakai0:= Qmirrorxdendapakai0.Value
                else
               xdendapakai0:=0;

{
             //cek blok pakai

          //-- blok1
          if(fixpakai>=bb1) and (fixpakai<=ba1)then
          blok1:=fixpakai
          else
          blok1:=ba1-bb1;

          //-- blok2
         IF(fixpakai>bb2) AND (fixpakai<=ba2)then
            blok2 := fixpakai - ba1
          ELSE IF (fixpakai>ba2)then
            blok2 := ba2-ba1
          ELSE
            blok2 :=0;;
           //-- blok3

          IF(fixpakai>bb3) AND (fixpakai<=ba3)then
            blok3 := fixpakai - ba2
          ELSE IF (fixpakai>ba3)then
            blok3 := ba3-ba2
          ELSE
            blok3 :=0;;

              if(blok3<0)then
              blok3:=0;

          //-- blok4
           IF(fixpakai>bb4) AND (fixpakai<=ba4)then
            blok4 := fixpakai - ba3
          ELSE IF (fixpakai>ba4)then
            blok4 := ba4-ba3
          ELSE
            blok4 :=0;;

            if(blok4<0)then
              blok4:=0;



         // --blok 5
         IF(fixpakai>bb5) AND (fixpakai<=ba5)then
            blok5 := fixpakai - ba4
          ELSE IF (fixpakai>ba5)then
            blok5 := ba5-ba4
          ELSE
            blok5 :=0;;

            if(blok5<0)then
              blok5:=0;


     //progresif

        if(tetap1='0')then
          prog1:=ROUND(blok1*t1)
        else
          prog1:=ROUND(t1);

        if(tetap2='0')then
          prog2:=ROUND(blok2*t2)
        else
          prog2:=ROUND(t2);

        if(tetap3='0')then
          prog3:=ROUND(blok3*t3)
        else
          prog3:=ROUND(t3);

        if(tetap4='0')then
          prog4:=ROUND(blok4*t4)
        else
          prog4:=ROUND(t4);

         if(tetap5='0')then
          prog5:=ROUND(blok5*t5)
        else
          prog5:=ROUND(t5);
}

          //cek blok pakai

          //-- blok1
          if(fixpakai>=bb1) and (fixpakai<ba1)then
          blok1:=fixpakai
          else
          blok1:=ba1-bb1;

          //-- blok2
          IF(fixpakai>=bb2) AND (fixpakai<ba2)then
            blok2 := fixpakai - ba1
          ELSE IF (fixpakai>=ba2)then
            blok2 := ba2-ba1
          ELSE
            blok2 :=0;;

           //-- blok3
          IF(fixpakai>=bb3) AND (fixpakai<ba3)then
            blok3 := fixpakai - ba2
          ELSE IF (fixpakai>=ba3)then
            blok3 := ba3-ba2
          ELSE
            blok3 :=0;;

           //-- blok4
           IF(fixpakai>=bb4) AND (fixpakai<ba4)then
            blok4 := fixpakai - ba3
          ELSE IF (fixpakai>=ba4)then
            blok4 := ba4-ba3
          ELSE
            blok4 :=0;;

          // --blok 5
          IF(fixpakai>=bb5) AND (fixpakai<ba5)then
            blok5 := fixpakai - ba4
          ELSE IF (fixpakai>=ba5)then
            blok5 := ba5-ba4
          ELSE
            blok5 :=0;;


     //progresif

        if(tetap1='0')then
          prog1:=ROUND(blok1*t1)
        else
        begin
          if (blok1>=bb1) and (blok1<=ba1) then
            prog1:=ROUND(t1)
          else
            prog1:=0;
        end;

        if(tetap2='0')then
          prog2:=ROUND(blok2*t2)
        else
        begin
          if (blok1+blok2>bb2) and (blok1+blok2<=ba2) then
            prog2:=ROUND(t2)
          else
            prog2:=0;
        end;

        if(tetap3='0')then
          prog3:=ROUND(blok3*t3)
        else
        begin
          if (blok1+blok2+blok3>bb3) and (blok1+blok2+blok3<=ba3) then
            prog3:=ROUND(t3)
          else
            prog3:=0;
        end;

        if(tetap4='0')then
          prog4:=ROUND(blok4*t4)
        else
        begin
          if (blok1+blok2+blok3+blok4>bb4) and (blok1+blok2+blok3+blok4<=ba4) then
            prog4:=ROUND(t4)
          else
            prog4:=0;
        end;

         if(tetap5='0')then
          prog5:=ROUND(blok5*t5)
        else
        begin
          if (blok1+blok2+blok3+blok4+blok5>bb5) and (blok1+blok2+blok3+blok4+blok5<=ba5) then
            prog5:=ROUND(t5)
          else
            prog5:=0;
        end;

        fixpakaiipl:=Qmirrorluasrumah.Value;

{        //cek blok luas rumah ut IPL

          //-- blok1
          if(fixpakaiipl>=bbipl1) and (fixpakaiipl<baipl1)then
          blokipl1:=fixpakaiipl
          else
          blokipl1:=baipl1-bbipl1;

          //-- blok2
          IF(fixpakaiipl>=bbipl2) AND (fixpakaipll<baipl2)then
            blokipl2 := fixpakaiipl - baipl1
          ELSE IF (fixpakaipll>=baipl2)then
            blokipl2 := baipl2-baipl1
          ELSE
            blokipl2 :=0;;

           //-- blok3
          IF(fixpakaiipl>=bbipl3) AND (fixpakaiipl<baipl3)then
            blokipl3 := fixpakaiipl - baipl2
          ELSE IF (fixpakaiipl>=baipl3)then
            blokipl3 := baipl3-baipl2
          ELSE
            blokipl3 :=0;;

           //-- blok4
           IF(fixpakaiipl>=bb4ipl) AND (fixpakaiipl<baipl4)then
            blokipl4 := fixpakaiipl - baipl3
          ELSE IF (fixpakaiipl>=baipl4)then
            bloiplk4 := baipl4-baipl3
          ELSE
            blokipl4 :=0;;

          // --blok 5
          IF(fixpakaiipl>=bbipl5) AND (fixpakaiipl<baipl5)then
            blokipl5 := fixpakaiipl - baipl4
          ELSE IF (fixpakaiipl>=baipl5)then
            blokipl5 := baipl5-baipl4
          ELSE
            blokipl5 :=0;;

          // --blok 6
          IF(fixpakaiipl>=bbipl6) AND (fixpakaiipl<baipl6)then
            blokipl6 := fixpakaiipl - baipl5
          ELSE IF (fixpakaiipl>=baipl6)then
            blokipl6 := baipl6-baipl5
          ELSE
            blokipl6 :=0;;

          // --blok 7
          IF(fixpakaiipl>=bbipl7) AND (fixpakaiipl<baipl7)then
            blokipl7 := fixpakaiipl - baipl6
          ELSE IF (fixpakaiipl>=baipl7)then
            blokipl7 := baipl7-baipl6
          ELSE
            blokipl7 :=0;;

     //progresif

        if(tetap1='0')then
          prog1:=ROUND(blok1*t1)
        else
        begin
          if (blok1>=bb1) and (blok1<=ba1) then
            prog1:=ROUND(t1)
          else
            prog1:=0;
        end;

        if(tetap2='0')then
          prog2:=ROUND(blok2*t2)
        else
        begin
          if (blok1+blok2>bb2) and (blok1+blok2<=ba2) then
            prog2:=ROUND(t2)
          else
            prog2:=0;
        end;

        if(tetap3='0')then
          prog3:=ROUND(blok3*t3)
        else
        begin
          if (blok1+blok2+blok3>bb3) and (blok1+blok2+blok3<=ba3) then
            prog3:=ROUND(t3)
          else
            prog3:=0;
        end;

        if(tetap4='0')then
          prog4:=ROUND(blok4*t4)
        else
        begin
          if (blok1+blok2+blok3+blok4>bb4) and (blok1+blok2+blok3+blok4<=ba4) then
            prog4:=ROUND(t4)
          else
            prog4:=0;
        end;

         if(tetap5='0')then
          prog5:=ROUND(blok5*t5)
        else
        begin
          if (blok1+blok2+blok3+blok4+blok5>bb5) and (blok1+blok2+blok3+blok4+blok5<=ba5) then
            prog5:=ROUND(t5)
          else
            prog5:=0;
        end;
}

        //Biasa

        if(tetapipl1='0')then
        begin
          if (fixpakaiipl>=bbipl1) and (fixpakaiipl<=baipl1) then
            progipl1:=ROUND(fixpakaiipl*tipl1)
          else
            progipl1:=0;
        end
        else
        begin
          if (fixpakaiipl>=bbipl1) and (fixpakaiipl<=baipl1) then
            progipl1:=ROUND(tipl1)
          else
            progipl1:=0;
        end;

        if(tetapipl2='0')then
        begin
          if (fixpakaiipl>bbipl2) and (fixpakaiipl<=baipl2) then
            progipl2:=ROUND(fixpakaiipl*tipl2)
          else
            progipl2:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl2) and (fixpakaiipl<=baipl2) then
            progipl2:=ROUND(tipl2)
          else
            progipl2:=0;
        end;

        if(tetapipl3='0')then
        begin
          if (fixpakaiipl>bbipl3) and (fixpakaiipl<=baipl3) then
            progipl3:=ROUND(fixpakaiipl*tipl3)
          else
            progipl3:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl3) and (fixpakaiipl<=baipl3) then
            progipl3:=ROUND(tipl3)
          else
            progipl3:=0;
        end;

        if(tetapipl4='0')then
        begin
          if (fixpakaiipl>bbipl4) and (fixpakaiipl<=baipl4) then
            progipl4:=ROUND(fixpakaiipl*tipl4)
          else
            progipl4:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl4) and (fixpakaiipl<=baipl4) then
            progipl4:=ROUND(tipl4)
          else
            progipl4:=0;
        end;

        if(tetapipl5='0')then
        begin
          if (fixpakaiipl>bbipl5) and (fixpakaiipl<=baipl5) then
            progipl5:=ROUND(fixpakaiipl*tipl5)
          else
            progipl5:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl5) and (fixpakaiipl<=baipl5) then
            progipl5:=ROUND(tipl5)
          else
            progipl5:=0;
        end;

        if(tetapipl6='0')then
        begin
          if (fixpakaiipl>bbipl6) and (fixpakaiipl<=baipl6) then
            progipl6:=ROUND(fixpakaiipl*tipl6)
          else
            progipl6:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl6) and (fixpakaiipl<=baipl6) then
            progipl6:=ROUND(tipl6)
          else
            progipl6:=0;
        end;

        if(tetapipl7='0')then
        begin
          if (fixpakaiipl>bbipl7) and (fixpakaiipl<=baipl7) then
            progipl7:=ROUND(fixpakaiipl*tipl7)
          else
            progipl7:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl7) and (fixpakaiipl<=baipl7) then
            progipl7:=ROUND(tipl7)
          else
            progipl7:=0;
        end;

         {if(Qmirrorflagaktif.Value='3') then    //tutup sementara
         begin

          prog1:=0;
          prog2:=0;
          prog3:=0;
          prog4:=0;
          prog5:=0;

          xbiayapemakaian:=0;
         end
         else
         begin

          xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;

         end;//}


         if (DM._segel_tanpa_biaya_pakai='1') and (Qmirrorflagaktif.Value='2') then
           xbiayapemakaian:=0
         else
         if (DM._putus_sementara_tanpa_biaya_pakai='1') and (Qmirrorflagaktif.Value='3') then
           xbiayapemakaian:=0
         else
           xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;

      if(xbiayapemakaian>=Qmirrorbatasadm1.Value) and (xbiayapemakaian<Qmirrorbatasadm2.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi1.Value
      else
      if(xbiayapemakaian>=Qmirrorbatasadm2.Value) and (xbiayapemakaian<Qmirrorbatasadm3.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi2.Value
      else
      if(xbiayapemakaian>=Qmirrorbatasadm3.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi3.Value
      else
       xadministrasi:=xadministrasi;

       if (Qmirrorflag.Value='3') then
       begin
           xbiayaipl:=0;
           xadministrasi:=0;
           xtaxipl:=0
       end
       else
       begin
           xbiayaipl:=progipl1+progipl2+progipl3+progipl4+progipl5+progipl6+progipl7;
           xtaxipl:=round((xbiayaipl+xadministrasi+xpemeliharaan)*xppnipl/100);
       end;


         xakumulasi:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain+
                     xbiayaipl+
                     xtaxipl;

      if (Qmirrorflag.Value='3') then
      begin
        xmeterai:=0;
      end
      else
      begin
        if(xakumulasi>=Qmirrorbatas1.Value) and (xakumulasi<Qmirrorbatas2.Value) then
          xmeterai:=Qmirrormeterai1.Value
        else
        if(xakumulasi>=Qmirrorbatas2.Value) and (xakumulasi<Qmirrorbatas3.Value) then
          xmeterai:=Qmirrormeterai2.Value
        else
        if(xakumulasi>=Qmirrorbatas3.Value)then
          xmeterai:=Qmirrormeterai3.Value
        else
          xmeterai:=0;
      end;

      xrekair:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain+
                     xbiayaipl+
                     xtaxipl+
                     xmeterai;




        ///cek apakah pelanggan Flag nya "2" ( tanpa denda )
      if (DM.xppndaritotal='1') and (Qmirrorflag.Value<>'2')then
      begin

               //dendaperbulan


               dendaperbulan:=0;    

              if(date>=Qmirrortglmulaidenda.Value) then
              begin

                  tanggal:=Qmirrortglmulaidendaperbulan.Value;

                  hari:=Trunc(Date-Qmirrortglmulaidendaperbulan.Value);

                  banyakbulan:=1;

                    for i:=1 to hari do
                    begin

                          tanggal:=IncDay(tanggal,+1);

                          if(DayOf(tanggal)=DayOf(Qmirrortglmulaidendaperbulan.Value))then
                          begin
                            banyakbulan:=banyakbulan+1;
                          end;

                    end;



              end
              else
                 banyakbulan:=0;

                 dendaperbulan:=banyakbulan*Qmirrortrf_dendatunggakanperbulan.Value;
                 

                 if(Qmirrortrf_dendatunggakan4.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda4.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan4.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan3.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda3.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan3.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan2.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda2.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan2.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan.Value + dendaperbulan;
                 end
                 else
                   xdendatunggakan:=0+dendaperbulan;






      end
      else
          xdendatunggakan:=0;

      


      if(DM.xppndaritotal='1')then
      begin
         xtotalppn:=(xrekair+xdendatunggakan)*xppn/100;
         xtotal:=xrekair+xdendatunggakan+xtotalppn;
      end
      else
      begin
         xtotalppn:=xrekair*xppn/100;
         xtotal:=xrekair+xdendatunggakan+xtotalppn;
      end;
      



        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET ');
        DM.Qexec.SQl.Add('pakai=:pakai,');
        DM.Qexec.SQl.Add('pakai2=:pakai2,');
        DM.Qexec.SQl.Add('blok1=:blok1,');
        DM.Qexec.SQl.Add('blok2=:blok2,');
        DM.Qexec.SQl.Add('blok3=:blok3,');
        DM.Qexec.SQl.Add('blok4=IF(:blok4<0,0,:blok4),');
        DM.Qexec.SQl.Add('blok5=IF(:blok5<0,0,:blok5),');
        DM.Qexec.SQl.Add('prog1=:prog1,');
        DM.Qexec.SQl.Add('prog2=:prog2,');
        DM.Qexec.SQl.Add('prog3=:prog3,');
        DM.Qexec.SQl.Add('prog4=:prog4,');
        DM.Qexec.SQl.Add('prog5=:prog5,');
        DM.Qexec.SQl.Add('biayapemakaian=:biayapemakaian,');
        DM.Qexec.SQl.Add('administrasi=:administrasi,');
        DM.Qexec.SQl.Add('pemeliharaan=:pemeliharaan,');
        DM.Qexec.SQl.Add('pelayanan=:pelayanan,');
        DM.Qexec.SQl.Add('retribusi=:retribusi,');
        DM.Qexec.SQl.Add('airlimbah=:airlimbah,');
        DM.Qexec.SQl.Add('dendapakai0=:dendapakai0,');
        DM.Qexec.SQl.Add('administrasilain=:administrasilain,');
        DM.Qexec.SQl.Add('pemeliharaanlain=:pemeliharaanlain,');
        DM.Qexec.SQl.Add('retribusilain=:retribusilain,');
        DM.Qexec.SQl.Add('meterai=:meterai,');
        DM.Qexec.SQl.Add('rekair=:rekair,');
        DM.Qexec.SQl.Add('dendatunggakan=:dendatunggakan,');
        DM.Qexec.SQl.Add('ppn=:ppn,');
        DM.Qexec.SQl.Add('total=:total,');
        DM.Qexec.SQl.Add('flagkirim="0"');
        DM.Qexec.SQl.Add('WHERE nosamb=:nosamb');
        DM.Qexec.ParamByName('nosamb').AsString := Qmirrornosamb.Value;
        DM.Qexec.ParamByName('blok1').AsCurrency := blok1;
        DM.Qexec.ParamByName('blok2').AsCurrency := blok2;
        DM.Qexec.ParamByName('blok3').AsCurrency := blok3;
        DM.Qexec.ParamByName('blok4').AsCurrency := blok4;
        DM.Qexec.ParamByName('blok5').AsCurrency := blok5;
        DM.Qexec.ParamByName('prog1').AsCurrency := prog1;
        DM.Qexec.ParamByName('prog2').AsCurrency := prog2;
        DM.Qexec.ParamByName('prog3').AsCurrency := prog3;
        DM.Qexec.ParamByName('prog4').AsCurrency := prog4;
        DM.Qexec.ParamByName('prog5').AsCurrency := prog5;
        DM.Qexec.ParamByName('biayapemakaian').AsCurrency := xbiayapemakaian;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('dendapakai0').AsCurrency := xdendapakai0;

        if DM._administrasi_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := Qmirrortrf_admlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi+Qmirrortrf_admlain.Value;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := 0;
        end;

        if DM._pemeliharaan_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := Qmirrortrf_pemlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan+Qmirrortrf_pemlain.Value;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := 0;
        end;

        if DM._retribusi_lain_drd='0' then
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := xbiayaipl;
        end
        else
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi+xbiayaipl;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := 0;
        end;

        DM.Qexec.ParamByName('meterai').AsCurrency := xmeterai;
        DM.Qexec.ParamByName('dendatunggakan').AsCurrency := xdendatunggakan;
        DM.Qexec.ParamByName('ppn').AsCurrency := xtotalppn + xtaxipl;
        DM.Qexec.ParamByName('rekair').AsCurrency := xrekair;
        DM.Qexec.ParamByName('total').AsCurrency := xtotal;
        DM.Qexec.ParamByName('pakai').AsCurrency := xpakai;
        DM.Qexec.ParamByName('pakai2').AsCurrency := fixpakai;
        DM.Qexec.Execute;
    end;
    uloading.Progress.IncPartsByOne;
    Application.ProcessMessages;
    Qmirror.Next;
    end;
    uloading.proses.Visible:=false;
    uloading.Progress.Visible:=false;
    uloading.Close;
    tampilkan.Click;

    Enabled:=true;


  Except On E:Exception
  do
  begin
    MessageDlg('Kesalahan hitung ulang : '+char(13)+
    E.Message, mtWarning, [mbOk], 0);
    Enabled:=true;
  end;  
  end;


   

end;

procedure TFRrekening.hitungulangsatu();
var
j:integer;
blok1,blok2,blok3,blok4,blok5:Currency;
blokipl1,blokipl2,blokipl3,blokipl4,blokipl5,blokipl6,blokipl7:Currency;
prog1,prog2,prog3,prog4,prog5:Currency;
bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
t1,t2,t3,t4,t5:Currency;
tetap1,tetap2,tetap3,tetap4,tetap5:String;
progipl1,progipl2,progipl3,progipl4,progipl5,progipl6,progipl7:Currency;
bbipl1,bbipl2,bbipl3,bbipl4,bbipl5,bbipl6,bbipl7,baipl1,baipl2,baipl3,baipl4,baipl5,baipl6,baipl7:Currency;
tipl1,tipl2,tipl3,tipl4,tipl5,tipl6,tipl7:Currency;
tetapipl1,tetapipl2,tetapipl3,tetapipl4,tetapipl5,tetapipl6,tetapipl7:String;
xdendapakai0,xdendatunggakan,xakumulasi:Currency;
xbiayapemakaian,xbiayaipl,xtaxipl,xadministrasi,xpemeliharaan,xpelayanan,xretribusi,xairlimbah,xmeterai,xrekair,xtotal:Currency;
xpakai,fixpakai,akumulasi,fixpakaiipl:Currency;

xadmlain,xpemlain,xretlain:Currency;

xppn,xppnipl,xtotalppn:Currency;


tanggal:Tdate;
banyakbulan:integer;
hari:integer;
dendaperbulan:Currency;
i:integer;

xretpakai:Currency;

begin

  Qmirror.close;
  Qmirror.SQL.Clear;
  Qmirror.SQl.Add(Qmirror.SQLRefresh.Text);
  Qmirror.SQL.Add('FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c ');
  Qmirror.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
  Qmirror.SQL.Add('left join golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku  left join diameter d On c.kodediameteryangberlaku=d.kodediameteryangberlaku left join rayon r On c.koderayon=r.koderayon');
  Qmirror.SQL.Add('left join golongan_ipl i On c.koderetribusilain=i.kodegolyangberlaku');
  Qmirror.SQL.add('LEFT JOIn kelurahan x ON c.kodekelurahan=x.kodekelurahan');
  Qmirror.SQL.Add('left join kolektif k on c.kodekolektif=k.kodekolektif LEFT JOIN meterai m ON "'+FormatDateTime('YYYYMM',periode.date)+'">=m.periodeawal AND "'+FormatDateTime('YYYYMM',periode.date)+'"<=m.periodeakhir ');
  Qmirror.SQL.Add('LEFT JOIN byadministrasi a ON "'+FormatDateTime('YYYYMM',periode.date)+'">=a.periodeawal AND "'+FormatDateTime('YYYYMM',periode.date)+'"<=a.periodeakhir ');
  Qmirror.SQL.Add('LEFT JOIN byadministrasi_lain b1 ON c.kodeadministrasilain=b1.kode LEFT JOIN bypemeliharaan_lain b2 ON c.`kodepemeliharaanlain`=b2.kode ');
  Qmirror.SQL.Add('LEFT JOIN byretribusi_lain b3 ON c.`koderetribusilain`=b3.kode ');
  Qmirror.SQL.Add('LEFT JOIn kondisimeter km ON p.kodekondisimeter=km.kodekondisi ');
  Qmirror.SQL.Add('LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND periode="'+FormatDateTime('YYYYMM',periode.date)+'") tak ON c.nosamb=tak.nosamb');

  Qmirror.SQl.add('where c.nosamb=:nosamb ');
  Qmirror.ParamByName('nosamb').AsString:=Qrek.Fieldbyname('nosamb').asstring;
  Qmirror.Open;


  


              xadministrasi:=Qmirrorxadministrasi.Value;
              xppnipl:=Qmirrorppnipl.Value;
              xtaxipl:=0;
//              xpemeliharaan:=Qmirrorxpemeliharaan.Value;
              xpelayanan:=Qmirrorxpelayanan.Value;
              xretribusi:=Qmirrorxretribusi.Value;
              xairlimbah:=Qmirrorxairlimbah.Value;
              if DM._administrasi_lain_drd='0' then
                xadmlain:=0
              else
                xadmlain:=Qmirrortrf_admlain.Value;

//              xpemlain:=Qmirrortrf_pemlain.Value;
              if Qmirrorkodekondisimeter.AsString='4' then
              begin
                xpemeliharaan:=0;
                xpemlain:=0;
              end
              else
              begin
                xpemeliharaan:=Qmirrorxpemeliharaan.Value;
                if DM._pemeliharaan_lain_drd='0' then
                  xpemlain:=0
                else
                  xpemlain:=Qmirrortrf_pemlain.Value;
              end;

              if DM._retribusi_lain_drd='0' then
                xretlain:=0
              else
                xretlain:=Qmirrortrf_retlain.Value;

              xretpakai:=0;

              xppn:=Qmirrorxppn.Value;

      if(Qmirrorflagkoreksi.Value='1')then
      begin
              bb1:=Qmirrorbb1.Value;
              bb2:=Qmirrorbb2.Value;
              bb3:=Qmirrorbb3.Value;
              bb4:=Qmirrorbb4.Value;
              bb5:=Qmirrorbb5.Value;
              ba1:=Qmirrorba1.Value;
              ba2:=Qmirrorba2.Value;
              ba3:=Qmirrorba3.Value;
              ba4:=Qmirrorba4.Value;
              ba5:=Qmirrorba5.Value;
              t1:=Qmirrort1.Value;
              t2:=Qmirrort2.Value;
              t3:=Qmirrort3.Value;
              t4:=Qmirrort4.Value;
              t5:=Qmirrort5.Value;
              tetap1:=Qmirrort1_tetap.Value;
              tetap2:=Qmirrort2_tetap.Value;
              tetap3:=Qmirrort3_tetap.Value;
              tetap4:=Qmirrort4_tetap.Value;
              tetap5:=Qmirrort5_tetap.Value;

              bbipl1:=Qmirrorbbipl1.Value;
              bbipl2:=Qmirrorbbipl2.Value;
              bbipl3:=Qmirrorbbipl3.Value;
              bbipl4:=Qmirrorbbipl4.Value;
              bbipl5:=Qmirrorbbipl5.Value;
              bbipl6:=Qmirrorbbipl6.Value;
              bbipl7:=Qmirrorbbipl7.Value;
              baipl1:=Qmirrorbaipl1.Value;
              baipl2:=Qmirrorbaipl2.Value;
              baipl3:=Qmirrorbaipl3.Value;
              baipl4:=Qmirrorbaipl4.Value;
              baipl5:=Qmirrorbaipl5.Value;
              baipl6:=Qmirrorbaipl6.Value;
              baipl7:=Qmirrorbaipl7.Value;
              tipl1:=Qmirrortipl1.Value;
              tipl2:=Qmirrortipl2.Value;
              tipl3:=Qmirrortipl3.Value;
              tipl4:=Qmirrortipl4.Value;
              tipl5:=Qmirrortipl5.Value;
              tipl6:=Qmirrortipl6.Value;
              tipl7:=Qmirrortipl7.Value;
              tetapipl1:=Qmirrortipl1_tetap.Value;
              tetapipl2:=Qmirrortipl2_tetap.Value;
              tetapipl3:=Qmirrortipl3_tetap.Value;
              tetapipl4:=Qmirrortipl4_tetap.Value;
              tetapipl5:=Qmirrortipl5_tetap.Value;
              tetapipl6:=Qmirrortipl6_tetap.Value;
              tetapipl7:=Qmirrortipl7_tetap.Value;


          if Qmirrortaksasi.AsString<>'0' then
           begin
             xpakai:=Qmirrorpakai.AsCurrency;

           end
           else
           begin

                //pakai
                if(Qmirrorstanangkat.Value<>0)then
                  xpakai:=Qmirrorstanangkat.Value-Qmirrorstanlalu.Value+Qmirrorstanskrg.Value
                else
                  xpakai:=Qmirrorstanskrg.Value-Qmirrorstanlalu.Value;

           end;


            //cari retpakai

           xretpakai:=xpakai*Qmirrorxretribusipakai.Value;


            //cari fixpakai

              if (Qmirrorminpakai.Value>0) and   (Qmirrorminpakai.Value>xpakai)then
                fixpakai:=Qmirrorminpakai.Value
              else
                fixpakai:=xpakai;

            //cek apakah ada denda pakai0

               if(xpakai=0)then
               xdendapakai0:= Qmirrorxdendapakai0.Value
                else
               xdendapakai0:=0;


          //cek blok pakai

          //-- blok1
          if(fixpakai>=bb1) and (fixpakai<ba1)then
          blok1:=fixpakai
          else
          blok1:=ba1-bb1;

          //-- blok2
          IF(fixpakai>=bb2) AND (fixpakai<ba2)then
            blok2 := fixpakai - ba1
          ELSE IF (fixpakai>=ba2)then
            blok2 := ba2-ba1
          ELSE
            blok2 :=0;;

           //-- blok3
          IF(fixpakai>=bb3) AND (fixpakai<ba3)then
            blok3 := fixpakai - ba2
          ELSE IF (fixpakai>=ba3)then
            blok3 := ba3-ba2
          ELSE
            blok3 :=0;;

           //-- blok4
           IF(fixpakai>=bb4) AND (fixpakai<ba4)then
            blok4 := fixpakai - ba3
          ELSE IF (fixpakai>=ba4)then
            blok4 := ba4-ba3
          ELSE
            blok4 :=0;;

          // --blok 5
          IF(fixpakai>=bb5) AND (fixpakai<ba5)then
            blok5 := fixpakai - ba4
          ELSE IF (fixpakai>=ba5)then
            blok5 := ba5-ba4
          ELSE
            blok5 :=0;;


     //progresif

        if(tetap1='0')then
          prog1:=ROUND(blok1*t1)
        else
        begin
          if (blok1>=bb1) and (blok1<=ba1) then
            prog1:=ROUND(t1)
          else
            prog1:=0;
        end;

        if(tetap2='0')then
          prog2:=ROUND(blok2*t2)
        else
        begin
          if (blok1+blok2>bb2) and (blok1+blok2<=ba2) then
            prog2:=ROUND(t2)
          else
            prog2:=0;
        end;

        if(tetap3='0')then
          prog3:=ROUND(blok3*t3)
        else
        begin
          if (blok1+blok2+blok3>bb3) and (blok1+blok2+blok3<=ba3) then
            prog3:=ROUND(t3)
          else
            prog3:=0;
        end;

        if(tetap4='0')then
          prog4:=ROUND(blok4*t4)
        else
        begin
          if (blok1+blok2+blok3+blok4>bb4) and (blok1+blok2+blok3+blok4<=ba4) then
            prog4:=ROUND(t4)
          else
            prog4:=0;
        end;

         if(tetap5='0')then
          prog5:=ROUND(blok5*t5)
        else
        begin
          if (blok1+blok2+blok3+blok4+blok5>bb5) and (blok1+blok2+blok3+blok4+blok5<=ba5) then
            prog5:=ROUND(t5)
          else
            prog5:=0;
        end;


        fixpakaiipl:=Qmirrorluasrumah.Value;

{        //cek blok luas rumah ut IPL

          //-- blok1
          if(fixpakaiipl>=bbipl1) and (fixpakaiipl<baipl1)then
          blokipl1:=fixpakaiipl
          else
          blokipl1:=baipl1-bbipl1;

          //-- blok2
          IF(fixpakaiipl>=bbipl2) AND (fixpakaipll<baipl2)then
            blokipl2 := fixpakaiipl - baipl1
          ELSE IF (fixpakaipll>=baipl2)then
            blokipl2 := baipl2-baipl1
          ELSE
            blokipl2 :=0;;

           //-- blok3
          IF(fixpakaiipl>=bbipl3) AND (fixpakaiipl<baipl3)then
            blokipl3 := fixpakaiipl - baipl2
          ELSE IF (fixpakaiipl>=baipl3)then
            blokipl3 := baipl3-baipl2
          ELSE
            blokipl3 :=0;;

           //-- blok4
           IF(fixpakaiipl>=bb4ipl) AND (fixpakaiipl<baipl4)then
            blokipl4 := fixpakaiipl - baipl3
          ELSE IF (fixpakaiipl>=baipl4)then
            bloiplk4 := baipl4-baipl3
          ELSE
            blokipl4 :=0;;

          // --blok 5
          IF(fixpakaiipl>=bbipl5) AND (fixpakaiipl<baipl5)then
            blokipl5 := fixpakaiipl - baipl4
          ELSE IF (fixpakaiipl>=baipl5)then
            blokipl5 := baipl5-baipl4
          ELSE
            blokipl5 :=0;;

          // --blok 6
          IF(fixpakaiipl>=bbipl6) AND (fixpakaiipl<baipl6)then
            blokipl6 := fixpakaiipl - baipl5
          ELSE IF (fixpakaiipl>=baipl6)then
            blokipl6 := baipl6-baipl5
          ELSE
            blokipl6 :=0;;

          // --blok 7
          IF(fixpakaiipl>=bbipl7) AND (fixpakaiipl<baipl7)then
            blokipl7 := fixpakaiipl - baipl6
          ELSE IF (fixpakaiipl>=baipl7)then
            blokipl7 := baipl7-baipl6
          ELSE
            blokipl7 :=0;;

     //progresif

        if(tetap1='0')then
          prog1:=ROUND(blok1*t1)
        else
        begin
          if (blok1>=bb1) and (blok1<=ba1) then
            prog1:=ROUND(t1)
          else
            prog1:=0;
        end;

        if(tetap2='0')then
          prog2:=ROUND(blok2*t2)
        else
        begin
          if (blok1+blok2>bb2) and (blok1+blok2<=ba2) then
            prog2:=ROUND(t2)
          else
            prog2:=0;
        end;

        if(tetap3='0')then
          prog3:=ROUND(blok3*t3)
        else
        begin
          if (blok1+blok2+blok3>bb3) and (blok1+blok2+blok3<=ba3) then
            prog3:=ROUND(t3)
          else
            prog3:=0;
        end;

        if(tetap4='0')then
          prog4:=ROUND(blok4*t4)
        else
        begin
          if (blok1+blok2+blok3+blok4>bb4) and (blok1+blok2+blok3+blok4<=ba4) then
            prog4:=ROUND(t4)
          else
            prog4:=0;
        end;

         if(tetap5='0')then
          prog5:=ROUND(blok5*t5)
        else
        begin
          if (blok1+blok2+blok3+blok4+blok5>bb5) and (blok1+blok2+blok3+blok4+blok5<=ba5) then
            prog5:=ROUND(t5)
          else
            prog5:=0;
        end;
}

        //Biasa

        if(tetapipl1='0')then
        begin
          if (fixpakaiipl>=bbipl1) and (fixpakaiipl<=baipl1) then
            progipl1:=ROUND(fixpakaiipl*tipl1)
          else
            progipl1:=0;
        end
        else
        begin
          if (fixpakaiipl>=bbipl1) and (fixpakaiipl<=baipl1) then
            progipl1:=ROUND(tipl1)
          else
            progipl1:=0;
        end;

        if(tetapipl2='0')then
        begin
          if (fixpakaiipl>bbipl2) and (fixpakaiipl<=baipl2) then
            progipl2:=ROUND(fixpakaiipl*tipl2)
          else
            progipl2:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl2) and (fixpakaiipl<=baipl2) then
            progipl2:=ROUND(tipl2)
          else
            progipl2:=0;
        end;

        if(tetapipl3='0')then
        begin
          if (fixpakaiipl>bbipl3) and (fixpakaiipl<=baipl3) then
            progipl3:=ROUND(fixpakaiipl*tipl3)
          else
            progipl3:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl3) and (fixpakaiipl<=baipl3) then
            progipl3:=ROUND(tipl3)
          else
            progipl3:=0;
        end;

        if(tetapipl4='0')then
        begin
          if (fixpakaiipl>bbipl4) and (fixpakaiipl<=baipl4) then
            progipl4:=ROUND(fixpakaiipl*tipl4)
          else
            progipl4:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl4) and (fixpakaiipl<=baipl4) then
            progipl4:=ROUND(tipl4)
          else
            progipl4:=0;
        end;

        if(tetapipl5='0')then
        begin
          if (fixpakaiipl>bbipl5) and (fixpakaiipl<=baipl5) then
            progipl5:=ROUND(fixpakaiipl*tipl5)
          else
            progipl5:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl5) and (fixpakaiipl<=baipl5) then
            progipl5:=ROUND(tipl5)
          else
            progipl5:=0;
        end;

        if(tetapipl6='0')then
        begin
          if (fixpakaiipl>bbipl6) and (fixpakaiipl<=baipl6) then
            progipl6:=ROUND(fixpakaiipl*tipl6)
          else
            progipl6:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl6) and (fixpakaiipl<=baipl6) then
            progipl6:=ROUND(tipl6)
          else
            progipl6:=0;
        end;

        if(tetapipl7='0')then
        begin
          if (fixpakaiipl>bbipl7) and (fixpakaiipl<=baipl7) then
            progipl7:=ROUND(fixpakaiipl*tipl7)
          else
            progipl7:=0;
        end
        else
        begin
          if (fixpakaiipl>bbipl7) and (fixpakaiipl<=baipl7) then
            progipl7:=ROUND(tipl7)
          else
            progipl7:=0;
        end;

        { if(Qmirrorflagaktif.Value='3')then
         begin
            prog1:=0;
            prog2:=0;
            prog3:=0;
            prog4:=0;
            prog5:=0;
            xbiayapemakaian:=0;
         end
         else
         begin
          xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;
         end;}

         if (DM._segel_tanpa_biaya_pakai='1') and (Qmirrorflagaktif.Value='2') then
           xbiayapemakaian:=0
         else
         if (DM._putus_sementara_tanpa_biaya_pakai='1') and (Qmirrorflagaktif.Value='3') then
           xbiayapemakaian:=0
         else
           xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;

      if(xbiayapemakaian>=Qmirrorbatasadm1.Value) and (xbiayapemakaian<Qmirrorbatasadm2.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi1.Value
      else
      if(xbiayapemakaian>=Qmirrorbatasadm2.Value) and (xbiayapemakaian<Qmirrorbatasadm3.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi2.Value
      else
      if(xbiayapemakaian>=Qmirrorbatasadm3.Value) then
       xadministrasi:=xadministrasi+Qmirroradministrasi3.Value
      else
       xadministrasi:=xadministrasi;

       if (Qmirrorflag.Value='3') then
       begin
           xbiayaipl:=0;
           xadministrasi:=0;
           xtaxipl:=0
       end
       else
       begin
           xbiayaipl:=progipl1+progipl2+progipl3+progipl4+progipl5+progipl6+progipl7;
           xtaxipl:=round((xbiayaipl+xadministrasi+xpemeliharaan)*xppnipl/100);
       end;

         xakumulasi:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain+
                     xbiayaipl+
                     xtaxipl;



      if (Qmirrorflag.Value='3') then
      begin
        xmeterai:=0;
      end
      else
      begin
        if(xakumulasi>=Qmirrorbatas1.Value) and (xakumulasi<Qmirrorbatas2.Value) then
         xmeterai:=Qmirrormeterai1.Value
        else if(xakumulasi>=Qmirrorbatas2.Value) and (xakumulasi<Qmirrorbatas3.Value) then
         xmeterai:=Qmirrormeterai2.Value
        else if(xakumulasi>=Qmirrorbatas3.Value) then
         xmeterai:=Qmirrormeterai3.Value
        else
         xmeterai:=0;
      end;

      xrekair:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain+
                     xbiayaipl+
                     xtaxipl+
                     xmeterai;

        if (DM.xppndaritotal='1') and  (Qmirrorflag.Value<>'2')then
        begin
              //dendaperbulan


               dendaperbulan:=0;    

              if(date>=Qmirrortglmulaidenda.Value) then
              begin

                  tanggal:=Qmirrortglmulaidendaperbulan.Value;

                  hari:=Trunc(Date-Qmirrortglmulaidendaperbulan.Value);

                  banyakbulan:=1;

                    for i:=1 to hari do
                    begin

                          tanggal:=IncDay(tanggal,+1);

                          if(DayOf(tanggal)=DayOf(Qmirrortglmulaidendaperbulan.Value))then
                          begin
                            banyakbulan:=banyakbulan+1;
                          end;

                    end;



              end
              else
                 banyakbulan:=0;

                 dendaperbulan:=banyakbulan*Qmirrortrf_dendatunggakanperbulan.Value;


                 if(Qmirrortrf_dendatunggakan4.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda4.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan4.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan3.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda3.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan3.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan2.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda2.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan2.Value + dendaperbulan;
                 end
                 else if(Qmirrortrf_dendatunggakan.Value>0) and (Date>=DateOf(Qmirrortglmulaidenda.Value)) then
                 begin
                    xdendatunggakan:=Qmirrortrf_dendatunggakan.Value + dendaperbulan;
                 end
                 else
                   xdendatunggakan:=0+dendaperbulan;
        end
        else
         xdendatunggakan:=0;

      

        if(DM.xppndaritotal='1')then
        begin
           xtotalppn:=(xrekair+xdendatunggakan)*xppn/100;
           xtotal:=xrekair+xdendatunggakan+xtotalppn;
        end
        else
        begin
           xtotalppn:=xrekair*xppn/100;
           xtotal:=xrekair+xdendatunggakan+xtotalppn;
        end;
      
        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET ');
        DM.Qexec.SQl.Add('pakai=:pakai,');
        DM.Qexec.SQl.Add('pakai2=:pakai2,');
        DM.Qexec.SQl.Add('blok1=:blok1,');
        DM.Qexec.SQl.Add('blok2=:blok2,');
        DM.Qexec.SQl.Add('blok3=:blok3,');
        DM.Qexec.SQl.Add('blok4=IF(:blok4<0,0,:blok4),');
        DM.Qexec.SQl.Add('blok5=IF(:blok5<0,0,:blok5),');
        DM.Qexec.SQl.Add('prog1=:prog1,');
        DM.Qexec.SQl.Add('prog2=:prog2,');
        DM.Qexec.SQl.Add('prog3=:prog3,');
        DM.Qexec.SQl.Add('prog4=:prog4,');
        DM.Qexec.SQl.Add('prog5=:prog5,');
        DM.Qexec.SQl.Add('biayapemakaian=:biayapemakaian,');
        DM.Qexec.SQl.Add('administrasi=:administrasi,');
        DM.Qexec.SQl.Add('pemeliharaan=:pemeliharaan,');
        DM.Qexec.SQl.Add('pelayanan=:pelayanan,');
        DM.Qexec.SQl.Add('retribusi=:retribusi,');
        DM.Qexec.SQl.Add('airlimbah=:airlimbah,');
        DM.Qexec.SQl.Add('dendapakai0=:dendapakai0,');
        DM.Qexec.SQl.Add('administrasilain=:administrasilain,');
        DM.Qexec.SQl.Add('pemeliharaanlain=:pemeliharaanlain,');
        DM.Qexec.SQl.Add('retribusilain=:retribusilain,');
        DM.Qexec.SQl.Add('meterai=:meterai,');
        DM.Qexec.SQl.Add('rekair=:rekair,');
        DM.Qexec.SQl.Add('dendatunggakan=:dendatunggakan,');
        DM.Qexec.SQl.Add('ppn=:ppn,');
        DM.Qexec.SQl.Add('total=:total');
       // DM.Qexec.SQl.Add('terbilang=:terbilang');
        DM.Qexec.SQl.Add('WHERE nosamb=:nosamb');
        DM.Qexec.ParamByName('nosamb').AsString := Qmirrornosamb.Value;
        DM.Qexec.ParamByName('blok1').AsCurrency := blok1;
        DM.Qexec.ParamByName('blok2').AsCurrency := blok2;
        DM.Qexec.ParamByName('blok3').AsCurrency := blok3;
        DM.Qexec.ParamByName('blok4').AsCurrency := blok4;
        DM.Qexec.ParamByName('blok5').AsCurrency := blok5;
        DM.Qexec.ParamByName('prog1').AsCurrency := prog1;
        DM.Qexec.ParamByName('prog2').AsCurrency := prog2;
        DM.Qexec.ParamByName('prog3').AsCurrency := prog3;
        DM.Qexec.ParamByName('prog4').AsCurrency := prog4;
        DM.Qexec.ParamByName('prog5').AsCurrency := prog5;
        DM.Qexec.ParamByName('biayapemakaian').AsCurrency := xbiayapemakaian;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('dendapakai0').AsCurrency := xdendapakai0;

        if DM._administrasi_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := Qmirrortrf_admlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi+Qmirrortrf_admlain.Value;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := 0;
        end;

        if DM._pemeliharaan_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := Qmirrortrf_pemlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan+Qmirrortrf_pemlain.Value;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := 0;
        end;

        if DM._retribusi_lain_drd='0' then
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := xbiayaipl;
        end
        else
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi+xbiayaipl;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := 0;
        end;

        DM.Qexec.ParamByName('meterai').AsCurrency := xmeterai;
        DM.Qexec.ParamByName('dendatunggakan').AsCurrency := xdendatunggakan;
        DM.Qexec.ParamByName('ppn').AsCurrency := xtotalppn + xtaxipl;
        DM.Qexec.ParamByName('rekair').AsCurrency := xrekair;
        DM.Qexec.ParamByName('total').AsCurrency := xtotal;
        DM.Qexec.ParamByName('pakai').AsCurrency := xpakai;
        DM.Qexec.ParamByName('pakai2').AsCurrency := fixpakai;
        //DM.Qexec.ParamByName('terbilang').AsString := ukoreksistan.fungsiterbilang(CurrToStr(xtotal));
        DM.Qexec.Execute;
      end
      else
      begin
        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET ');
        DM.Qexec.SQl.Add('administrasi=:administrasi,');
        DM.Qexec.SQl.Add('pemeliharaan=:pemeliharaan,');
        DM.Qexec.SQl.Add('pelayanan=:pelayanan,');
        DM.Qexec.SQl.Add('retribusi=:retribusi,');
        DM.Qexec.SQl.Add('airlimbah=:airlimbah,');
        DM.Qexec.SQl.Add('administrasilain=:administrasilain,');
        DM.Qexec.SQl.Add('pemeliharaanlain=:pemeliharaanlain,');
        DM.Qexec.SQl.Add('retribusilain=:retribusilain');
        DM.Qexec.SQl.Add('WHERE nosamb=:nosamb');
        DM.Qexec.ParamByName('nosamb').AsString := Qmirrornosamb.Value;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;

        if DM._administrasi_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := Qmirrortrf_admlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi+Qmirrortrf_admlain.Value;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := 0;
        end;

        if DM._pemeliharaan_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := Qmirrortrf_pemlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan+Qmirrortrf_pemlain.Value;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := 0;
        end;

        if DM._retribusi_lain_drd='0' then
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := xbiayaipl;
        end
        else
        begin
          DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi+xbiayaipl;//+xretpakai;
          DM.Qexec.ParamByName('retribusilain').AsCurrency := 0;
        end;

        DM.Qexec.Execute;
      end;





  Qrek.SQLRefresh.Clear;
  Qrek.SQLRefresh.Add('SELECT c.*,c.administrasi+c.administrasilain as administrasicampur,c.pemeliharaan+c.pemeliharaanlain as pemeliharaancampur,c.retribusi+c.retribusilain as retribusicampur FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
  Qrek.RefreshRecord;

 


end;

procedure TFRrekening.Hitung1Click(Sender: TObject);
begin
 if(Qrek.recordcount>0)then
 begin

    if(Qrekflagpublish.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Publish !!   '+char(13)+char(13)+
       '- User : '+Qrekuserpublish.Value+char(13)+
       '- Tanggal : '+datetostr(Qrektglpublish.Value), mtInformation, [mbOk], 0)

     else if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi !!   '+char(13)+char(13)+
       '- Kasir : '+Qrekkasir.Value+char(13)+
       '- Loket : '+Qrekloketbayar.Value+char(13)+
       '- Tgl.Bayar : '+FormatDateTime('dd mmmm yyyy',Qrektglbayar.Value), mtInformation, [mbOk], 0) 
     else
        hitungulangsatu();


 end;
end;



procedure TFRrekening.pindahperiodeClick(Sender: TObject);
begin
   pindahperiode.Visible:=false;
   periode.Enabled:=true;
   periode.SetFocus;

   Qrek.close;
   Qtunggakan.close;
   //Qbayar.close;
   Umain.Caption:='DAFTAR REKENING AIR';
end;



procedure TFRrekening.cekrayonClick(Sender: TObject);
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

procedure TFRrekening.cekgolonganClick(Sender: TObject);
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

procedure TFRrekening.cekcabangClick(Sender: TObject);
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

procedure TFRrekening.cekdiameterClick(Sender: TObject);
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

procedure TFRrekening.ceknosambClick(Sender: TObject);
begin
  if(ceknosamb.Checked=true)then
  begin
    nosamb.Enabled:=true;
    nosamb.SetFocus;
  end
  else
    nosamb.Enabled:=false;
end;

procedure TFRrekening.ceknorekClick(Sender: TObject);
begin
   if(ceknorek.Checked=true)then
   begin
    norekening.Enabled:=true;
    norekening.SetFocus;
  end
  else
    norekening.Enabled:=false;
end;

procedure TFRrekening.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
 begin
    nama.Enabled:=true;
    nama.SetFocus;
 end
 else
    nama.Enabled:=false;
end;

procedure TFRrekening.cekserimeterClick(Sender: TObject);
begin

 if(cekserimeter.Checked=true)then
 begin
    serimeter.Enabled:=true;
    serimeter.SetFocus;
 end
 else
    serimeter.Enabled:=false;
end;

procedure TFRrekening.cekwmClick(Sender: TObject);
begin
 if(cekwm.Checked=true)then
 begin
    merkwm.Enabled:=true;
    merkwm.SetFocus;
  end
  else
    merkwm.Enabled:=false;
end;

procedure TFRrekening.cekalamatClick(Sender: TObject);
begin
 if(cekalamat.Checked=true)then
 begin
    alamat.Enabled:=true;
    alamat.SetFocus;
 end
  else
    alamat.Enabled:=false;
end;

procedure TFRrekening.cekkolektifClick(Sender: TObject);
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

procedure TFRrekening.cektglbayarClick(Sender: TObject);
begin
  if(cektglbayar.Checked=true)then
  begin
    tglbayar1.Enabled:=true;
    tglbayar2.Enabled:=true;
    tglbayar1.SetFocus;
   end
  else
  begin
    tglbayar1.Enabled:=false;
    tglbayar2.Enabled:=false;
  end;
end;

procedure TFRrekening.cekrekairClick(Sender: TObject);
begin
    if(cekrekair.Checked=true)then
  begin
    rekair1.Enabled:=true;
    rekair2.Enabled:=true;
    rekair1.SetFocus;
   end
  else
  begin
    rekair1.Enabled:=false;
    rekair2.Enabled:=false;
  end;
end;

procedure TFRrekening.cektotalClick(Sender: TObject);
begin
     if(cektotal.Checked=true)then
  begin
    total1.Enabled:=true;
    total2.Enabled:=true;
    total1.SetFocus;
   end
  else
  begin
    total1.Enabled:=false;
    total2.Enabled:=false;
  end;
end;

procedure TFRrekening.Koreksi1Click(Sender: TObject);
begin
koreksistan();
end;

procedure TFRrekening.PerbaruiData1Click(Sender: TObject);
begin
perbaruidata();
end;

procedure TFRrekening.cekstatusClick(Sender: TObject);
begin
 if(cekstatus.Checked=true)then
    status.Enabled:=true
  else
    status.Enabled:=false;
end;

procedure TFRrekening.ceklainnyaClick(Sender: TObject);
begin
if(ceklainnya.Checked=true)then
begin
    lainnya.Enabled:=true;
    lainnya.SetFocus;
end
else
    lainnya.Enabled:=false;
end;

procedure TFRrekening.koderayonPropertiesChange(Sender: TObject);
begin
  namarayon.itemindex:=koderayon.itemindex;
end;

procedure TFRrekening.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFRrekening.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TFRrekening.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TFRrekening.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure TFRrekening.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;

procedure TFRrekening.kodekelurahanPropertiesChange(Sender: TObject);
begin
kelurahan.ItemIndex:=kodekelurahan.ItemIndex;
end;

procedure TFRrekening.kelurahanPropertiesChange(Sender: TObject);
begin
kodekelurahan.ItemIndex:=kelurahan.ItemIndex;
end;

procedure TFRrekening.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRrekening.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRrekening.kodediameterPropertiesChange(Sender: TObject);
begin
ukuran.ItemIndex:=kodediameter.ItemIndex;
end;

procedure TFRrekening.ukuranPropertiesChange(Sender: TObject);
begin
   kodediameter.ItemIndex:=ukuran.ItemIndex;
end;

procedure TFRrekening.cekkelurahanClick(Sender: TObject);
begin
 if(cekkelurahan.Checked=true)then
  begin
    kodekelurahan.Enabled:=true;
    kelurahan.Enabled:=true;
    kodekelurahan.SetFocus;
  end
  else
  begin
    kodekelurahan.Enabled:=false;
    kelurahan.Enabled:=false;
  end;
end;

procedure TFRrekening.cekwilayahClick(Sender: TObject);
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

procedure TFRrekening.cekpembayaranClick(Sender: TObject);
begin
      DM.Qcek.close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select * from hosting where idx="1"');
      DM.Qcek.Open;


       try
        Umain.host.Close;
        Umain.host.Username:=DM.Qcek.FIeldbyname('user').AsString;
        Umain.host.Password:=DM.Qcek.FIeldbyname('pass').AsString;
        Umain.host.Server:=DM.Qcek.FIeldbyname('ip').AsString;
        Umain.host.Port:= DM.Qcek.FIeldbyname('port').AsInteger;
        Umain.host.Database :=DM.Qcek.FIeldbyname('DB').AsString;
        Umain.host.Open;


             Qhost.close;
             Qhost.SQL.clear;
             Qhost.SQL.add('select * from drd where kode=:kode');
             Qhost.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.date)+'.'+Qmirrornosamb.Value;
             Qhost.open;



       except
      on E: Exception do
      begin
        MessageDlg('Koneksi Internet Mengalami Gangguan...!!'+char(13)+char(13)+
                   E.Message+char(13)+char(13)+
                   'Harap Hubungi Administrator', mtInformation, [MbOk], 0);
      end;
      end;
end;

procedure TFRrekening.PasswordPembatalan1Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin

    if MessageDlg('Lihat Password Pembatalan Bayar ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,concat(:periode,".",:nosamb))),5)) AS passwordbatal');
      DM.Qcek.parambyname('nosamb').asstring:=Qrek.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('periode').asstring:=formatdatetime('YYYYMM',periode.date);
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg(Qrek.Fieldbyname('nama').AsString+' untuk Tagihan Rek. Bulan '+formatdatetime('MMM YYYY',periode.date)+char(13)+
                  'Password Pembatalan : '+DM.Qcek.fieldbyname('passwordbatal').asstring+char(13)+
                  'Lakukan Pembatalan Pada Aplikasi Pembayaran (Loket) dengan password tersebut.....', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Pembatalan Bayar '+Qrek.FieldByName('nama').AsString+' Untuk Bln '+formatdatetime('MMM YYYY',periode.date);
     DM.targetlogakses:= Qrek.FieldByName('nama').AsString;
     DM.logakses;

    end
    else
      Exit;

end;


 
end;

procedure TFRrekening.HistoriPembayaran1Click(Sender: TObject);
begin

  if( Qrek.recordcount>0)then
  begin
    DM.Xnosamb:=Qrek.Fieldbyname('nosamb').asstring;
    uhisbayar.showmodal;


  end;

end;

procedure TFRrekening.foto1DblClick(Sender: TObject);
begin






    if(wm1=1)then
    begin
     if FileExists(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\'+Qreknosamb.Value+'.jpg')then
     begin
          ufotobesar.foto.Picture.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\'+Qreknosamb.Value+'.jpg');
          ufotobesar.showmodal;

     end
     else
       MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0);

    end;

  
  
end;

procedure TFRrekening.foto2DblClick(Sender: TObject);
begin

if(wm2=1)then
begin
 if FileExists(DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\'+Qreknosamb.Value+'.jpg')then
 begin
      ufotobesar.foto.Picture.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\'+Qreknosamb.Value+'.jpg');
      ufotobesar.showmodal;
 end
 else
   MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0);
end;
end;

procedure TFRrekening.foto3DblClick(Sender: TObject);
begin

if(map1=1)then
begin
 if FileExists(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\.maps\'+Qreknosamb.Value+'.png')then
 begin
      ufotobesar.foto.Picture.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto1+'\.maps\'+Qreknosamb.Value+'.png');
      ufotobesar.showmodal;
 end
 else
   MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0);
end;
end;

procedure TFRrekening.foto4DblClick(Sender: TObject);
begin
if(map2=1)then
begin
 if FileExists(DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\.maps\'+Qreknosamb.Value+'.png')then
 begin
      ufotobesar.foto.Picture.LoadFromFile(DM._LOKASIFOTOMETER+'\'+xblnfoto2+'\.maps\'+Qreknosamb.Value+'.png');
      ufotobesar.showmodal;
 end
 else
   MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0);
end;
end;

procedure TFRrekening.cekkasirClick(Sender: TObject);
begin
 if(cekkasir.Checked=true)then
 begin
    kasir.Enabled:=true;
    kasir.SetFocus;
 end
  else
    kasir.Enabled:=false;
end;

procedure TFRrekening.cekloketClick(Sender: TObject);
begin
 if(cekloket.Checked=true)then
 begin
    loket.Enabled:=true;
    loket.SetFocus;
 end
  else
    loket.Enabled:=false;
end;

procedure TFRrekening.ceksumberairClick(Sender: TObject);
begin
 if(ceksumberair.Checked=true)then
 begin
    sumberair.Enabled:=true;
    sumberair.SetFocus;
 end
  else
    sumberair.Enabled:=false;
end;

procedure TFRrekening.cekkepemlilikanClick(Sender: TObject);
begin
 if(cekkepemlilikan.Checked=true)then
 begin
    kepemilikan.Enabled:=true;
    kepemilikan.SetFocus;
 end
  else
    kepemilikan.Enabled:=false;
end;

procedure TFRrekening.ceknolppClick(Sender: TObject);
begin
  if(ceknolpp.Checked=true)then
  begin
    nolpp.Enabled:=true;
     nolpp.SetFocus;
  end
  else
    nolpp.Enabled:=false;
end;

procedure TFRrekening.cekflagClick(Sender: TObject);
begin
if(cekflag.Checked=true)then
begin
    kodeflag.Enabled:=true;
    flag.Enabled:=true;
    kodeflag.SetFocus;
  end
  else
  begin
    flag.Enabled:=false;
    kodeflag.Enabled:=false;
  end;
end;

procedure TFRrekening.PasswordCetakUlang1Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin

    if MessageDlg('Lihat Password Cetak Rekening Ulang ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,concat('+formatdatetime('YYYYMM',periode.date)+',".",nosamb),"123")),5)) AS passwordcetakulang FROM drd'+formatdatetime('YYYYMM',periode.date)+' where nosamb=:nosamb');
      DM.Qcek.parambyname('nosamb').asstring:=Qrek.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg(Qrek.Fieldbyname('nama').AsString+' untuk Tagihan Rek. Bulan '+formatdatetime('MMM YYYY',periode.date)+char(13)+
                  'Password Cetak Ulang  : '+DM.Qcek.fieldbyname('passwordcetakulang').asstring+char(13)+
                  'Lakukan Cetak Ulang Pada Aplikasi Pembayaran (Loket) dengan password tersebut.....', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Cetak Ulang '+Qrek.FieldByName('nama').AsString+' Untuk Bln '+formatdatetime('MMM YYYY',periode.date);
     DM.targetlogakses:= Qrek.FieldByName('nama').AsString;
     DM.logakses;

    end
    else
      Exit;
end;
end;

procedure TFRrekening.UploadUlang1Click(Sender: TObject);
var
  _nolpp : String;
begin


            if(Qrek.recordcount=0)then
            begin
               MessageDlg('Tidak ada data..', mtWarning, [mbOk], 0);
               exit;
            end;

            if (Qrek.fieldbyname('flagpublish').asstring='0')then
            begin
               MessageDlg('Maaf, Rekening Belum Di Publish !!', mtWarning, [mbOk], 0);
               exit;
            end;

            if (Qrek.fieldbyname('flaglunas').asstring='1')then
            begin
               MessageDlg('Maaf, Rekening Sudah Lunas !!', mtWarning, [mbOk], 0);
               exit;
            end;


            if MessageDlg('Yakin Upload Ulang Tagihan ?? '+char(13)+
                            'Upload Ulang Akan Mengganti Data Yang Ada di VPS !!', mtConfirmation, [mbYes, mbNo], 0) = mryes then
            begin

              TRY

                Enabled:=false;
                umain.Enabled:=false;

                TRY

                   umain.openkoneksi_host;

                   if(umain.host.Connected=false)then
                   begin   
                      MessageDlg('Tidak dapat tehubung ke VPS...!!', mtWarning, [mbOk], 0);
                      exit;
                   end; 

                   Qupload.close;
                   Qupload.SQL.clear;
                   Qupload.SQL.add(Qupload.SQlrefresh.text);
                   Qupload.parambyname('kode').asstring:= FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nosamb').asstring;
                   Qupload.parambyname('bulan').asstring:= FormatDateTime('MMM YYYY',periode.date);
                   Qupload.open;

                   if(Qupload.recordcount=0)then
                   begin
                      MessageDlg('Data tidak tersedia !!', mtWarning, [mbOk], 0);
                      exit;
                   end;

                   Qcek.close;
                   Qcek.SQL.clear;
                   Qcek.SQL.add(Qcek.SQlrefresh.text);
                   Qcek.parambyname('kode').AsString:= FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nosamb').asstring;
                   Qcek.open;

                   if(Qcek.RecordCount<>0)then
                   begin
                      MessageDlg('Maaf, Ada Dugaan Rekening Sudah Terlunaskan !!'+char(13)+'Silahkan untuk melakukan Download Transaksi terlebih dahulu', mtWarning, [mbOk], 0);
                      exit;
                   end;


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('START TRANSACTION');
                      Qexec.Execute;

                      Qexec.Close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add(Qexec.SQLInsert.Text);
                      Qexec.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                      Qexec.ParamByName('periode').AsString:=LeftStr(Qupload.Fieldbyname('kode').AsString,6);
                      Qexec.ParamByName('nosamb').AsString:=Qupload.Fieldbyname('nosamb').AsString;
                      Qexec.ParamByName('nama').AsString:=Qupload.Fieldbyname('nama').AsString;
                      Qexec.ParamByName('alamat').AsString:=Qupload.Fieldbyname('alamat').AsString;
                      Qexec.ParamByName('kodegol').AsString:=Qupload.Fieldbyname('kodegol').AsString;
                      Qexec.ParamByName('kodegolyangberlaku').AsString:=Qupload.Fieldbyname('kodegolyangberlaku').AsString;
                      Qexec.ParamByName('kodediameter').AsString:=Qupload.Fieldbyname('kodediameter').AsString;
                      Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qupload.Fieldbyname('kodediameteryangberlaku').AsString;
                      Qexec.ParamByName('koderayon').AsString:=Qupload.Fieldbyname('koderayon').AsString;
                     // Qexec.ParamByName('kodekelurahan').AsString:=Qupload.Fieldbyname('kodekelurahan').AsString;
                      Qexec.ParamByName('kodekolektif').AsString:=Qupload.Fieldbyname('kodekolektif').AsString;
                      Qexec.ParamByName('stanlalu').AsCurrency:=Qupload.Fieldbyname('stanlalu').AsCurrency;
                      Qexec.ParamByName('stanskrg').AsCurrency:=Qupload.Fieldbyname('stanskrg').AsCurrency;
                      Qexec.ParamByName('stanangkat').AsCurrency:=Qupload.Fieldbyname('stanangkat').AsCurrency;
                      Qexec.ParamByName('pakai').AsCurrency:=Qupload.Fieldbyname('pakai').AsCurrency;
                      Qexec.ParamByName('biayapemakaian').AsCurrency:=Qupload.Fieldbyname('biayapemakaian').AsCurrency;
                      Qexec.ParamByName('administrasi').AsCurrency:=Qupload.Fieldbyname('administrasi').AsCurrency;
                      Qexec.ParamByName('pemeliharaan').AsCurrency:=Qupload.Fieldbyname('pemeliharaan').AsCurrency;
                      Qexec.ParamByName('retribusi').AsCurrency:=Qupload.Fieldbyname('retribusi').AsCurrency;
                      Qexec.ParamByName('meterai').AsCurrency:=Qupload.Fieldbyname('meterai').AsCurrency;
                      Qexec.ParamByName('dendatunggakan').AsCurrency:=Qupload.Fieldbyname('dendatunggakan').AsCurrency;
                      Qexec.ParamByName('rekair').AsCurrency:=Qupload.Fieldbyname('rekair').AsCurrency;
                      Qexec.ParamByName('total').AsCurrency:=Qupload.Fieldbyname('total').AsCurrency;
                      Qexec.ParamByName('tglmulaidenda').AsDate:=Qupload.Fieldbyname('tglmulaidenda').AsDateTime;
                      Qexec.ParamByName('tglmulaidenda2').AsDate:=Qupload.Fieldbyname('tglmulaidenda2').AsDateTime;
                      Qexec.ParamByName('tglmulaidenda3').AsDate:=Qupload.Fieldbyname('tglmulaidenda3').AsDateTime;
                      Qexec.ParamByName('tglmulaidenda4').AsDate:=Qupload.Fieldbyname('tglmulaidenda4').AsDateTime;
                      Qexec.ParamByName('tglmulaidendaperbulan').AsDate:=Qupload.Fieldbyname('tglmulaidendaperbulan').AsDateTime;
                      Qexec.ParamByName('bulan').AsString:=Qupload.Fieldbyname('bulan').AsString;
                      Qexec.ParamByName('prog1').AsCurrency:=Qupload.Fieldbyname('prog1').AsCurrency;
                      Qexec.ParamByName('prog2').AsCurrency:=Qupload.Fieldbyname('prog2').AsCurrency;
                      Qexec.ParamByName('prog3').AsCurrency:=Qupload.Fieldbyname('prog3').AsCurrency;
                      Qexec.ParamByName('prog4').AsCurrency:=Qupload.Fieldbyname('prog4').AsCurrency;
                      Qexec.ParamByName('prog5').AsCurrency:=Qupload.Fieldbyname('prog5').AsCurrency;
                      //Qexec.ParamByName('tglupload').AsDateTime:=now;
                      Qexec.ParamByName('flag').AsString:=Qupload.Fieldbyname('flag').AsString;
                      Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qupload.Fieldbyname('trf_dendatunggakan').AsCurrency;
                      Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qupload.Fieldbyname('trf_dendatunggakan2').AsCurrency;
                      Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qupload.Fieldbyname('trf_dendatunggakan3').AsCurrency;
                      Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qupload.Fieldbyname('trf_dendatunggakan4').AsCurrency;
                      Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qupload.Fieldbyname('trf_dendatunggakanperbulan').AsCurrency;
                      Qexec.ParamByName('dendatunggakan').AsCurrency:=Qupload.Fieldbyname('dendatunggakan').AsCurrency;
                      Qexec.ParamByName('kodeadministrasilain').AsString:=Qupload.Fieldbyname('kodeadministrasilain').AsString;
                      Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qupload.Fieldbyname('kodepemeliharaanlain').AsString;
                      Qexec.ParamByName('koderetribusilain').AsString:=Qupload.Fieldbyname('koderetribusilain').AsString;
                      Qexec.ParamByName('administrasilain').AsCurrency:=Qupload.Fieldbyname('administrasilain').AsCurrency;
                      Qexec.ParamByName('pemeliharaanlain').AsCurrency:=Qupload.Fieldbyname('pemeliharaanlain').AsCurrency;
                      Qexec.ParamByName('retribusilain').AsCurrency:=Qupload.Fieldbyname('retribusilain').AsCurrency;
                      Qexec.ParamByName('pelayanan').AsCurrency:=Qupload.Fieldbyname('pelayanan').AsCurrency;
                      Qexec.ParamByName('airlimbah').AsCurrency:=Qupload.Fieldbyname('airlimbah').AsCurrency;
                      Qexec.ParamByName('dendapakai0').AsCurrency:=Qupload.Fieldbyname('dendapakai0').AsCurrency;
                      //Qexec.ParamByName('angsuran').AsCurrency:=Qupload.Fieldbyname('angsuran').AsCurrency;
                      Qexec.ParamByName('persenppn').AsCurrency:=Qupload.Fieldbyname('persenppn').AsCurrency;
                      Qexec.ParamByName('ppn').AsCurrency:=Qupload.Fieldbyname('ppn').AsCurrency;
                      Qexec.ParamByName('flagangsur').AsString:=Qupload.Fieldbyname('flagangsur').AsString;
                      Qexec.ParamByName('noangsuran').AsString:=Qupload.Fieldbyname('noangsuran').AsString;
                      Qexec.ParamByName('blok1').AsCurrency:=Qupload.Fieldbyname('blok1').AsCurrency;
                      Qexec.ParamByName('blok2').AsCurrency:=Qupload.Fieldbyname('blok2').AsCurrency;
                      Qexec.ParamByName('blok3').AsCurrency:=Qupload.Fieldbyname('blok3').AsCurrency;
                      Qexec.ParamByName('blok4').AsCurrency:=Qupload.Fieldbyname('blok4').AsCurrency;
                      Qexec.ParamByName('blok5').AsCurrency:=Qupload.Fieldbyname('blok5').AsCurrency;
                      Qexec.ParamByName('kelainan').AsString:=Qupload.Fieldbyname('kelainan').AsString;
                      Qexec.ParamByName('trf_denda_berdasarkan_persen').AsString:=Qupload.Fieldbyname('trf_denda_berdasarkan_persen').AsString;
                      Qexec.Execute;

                      Qcek.Close;
                      Qcek.SQL.Clear;
                      Qcek.SQL.Add('select p.*,u.namauser,u.kodeloket FROM param_diskon p LEFT JOIN userloket u ON p.keterangan=u.nama WHERE p.jenis=:jenis AND (:kodegol=p.kodegol OR :nosamb=p.nosamb) AND :periode>=p.periodeawal AND :periode<=p.periodeakhir AND ');
                      Qcek.SQL.Add('((NOW()>=p.tglmulaiberlaku AND NOW()<=p.tglberakhir) OR (p.tglmulaiberlaku IS NULL AND p.tglberakhir IS NULL))');
                      Qcek.ParamByName('jenis').AsString:= 'REK.AIR';
                      Qcek.ParamByName('kodegol').AsString:=Qupload.Fieldbyname('kodegol').AsString;
                      Qcek.ParamByName('nosamb').AsString:=Qupload.Fieldbyname('nosamb').AsString;
                      //Qcek.ParamByName('tanggal').AsDate:=Date;
                      Qcek.ParamByName('periode').AsString:=LeftStr(Qupload.Fieldbyname('kode').AsString,6);
                      Qcek.Open;
                      if (Qcek.RecordCount>0) and ((Qcek.FieldByName('persendiskon').AsCurrency=100) or ((Qcek.FieldByName('nominaldiskon').AsCurrency>=Qupload.Fieldbyname('rekair').AsCurrency) and (Qcek.FieldByName('nominaldiskon').AsCurrency>0)) or ((Qcek.FieldByName('kubikasidiskon').AsCurrency>=Qupload.Fieldbyname('pakai').AsCurrency) and (Qcek.FieldByName('kubikasidiskon').AsCurrency>0))) then
                      begin
                        _nolpp := Qcek.Fieldbyname('namauser').AsString+'-'+Qcek.Fieldbyname('kodeloket').AsString+'-'+FormatDateTime('DDMMYYYYhhmmss',Now);

                        Qexec.close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add(Qlunasair.SQLUpdate.Text);
                        Qexec.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                        Qexec.ParamByName('loketupdate').AsString:=Qcek.Fieldbyname('kodeloket').AsString;
                        Qexec.ParamByName('kasir').AsString:=Qcek.Fieldbyname('keterangan').AsString;
                        Qexec.ParamByName('loketbayar').AsString:=Qcek.Fieldbyname('kodeloket').AsString;
                        Qexec.ParamByName('nolpp').AsString:=_nolpp;
                        Qexec.ParamByName('terbilang').AsString:=DM.EjaAngkasen(FormatCurr('#.#0',Qupload.Fieldbyname('rekair').AsCurrency));
                        Qexec.Execute;

                        Qexecsend.Close;
                        Qexecsend.SQL.Clear;
                        Qexecsend.SQL.Add(Qexecsend.SQLRefresh.Text);
                        Qexecsend.ParamByName('nolpp').AsString:=_nolpp;
                        Qexecsend.Execute;

                        if Qcek.FieldByName('nominaldiskon').AsCurrency>0 then
                        begin
                          Qexec.close;
                          Qexec.SQL.Clear;
                          Qexec.SQL.Add(Qlunasair.SQLRefresh.Text);
                          Qexec.ParamByName('nominaldiskon').AsCurrency:= Qcek.FieldByName('nominaldiskon').AsCurrency-Qupload.Fieldbyname('rekair').AsCurrency;
                          Qexec.ParamByName('periodeawal').AsString:= FormatDateTime('YYYYMM',Now);
                          Qexec.ParamByName('periodeakhir').AsString:= FormatDateTime('YYYYMM',Now);

                          Qexec.ParamByName('jenis').AsString:= 'REK.AIR';
                          Qexec.ParamByName('kodegol').AsString:=Qupload.Fieldbyname('kodegol').AsString;
                          Qexec.ParamByName('nosamb').AsString:=Qupload.Fieldbyname('nosamb').AsString;
                          //Qcek.ParamByName('tanggal').AsDate:=Date;
                          Qexec.ParamByName('periode').AsString:=LeftStr(Qupload.Fieldbyname('kode').AsString,6);
                          Qexec.Execute;

                        end;
                      end
                      else
                      begin
                        Qexec.Close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('CREATE TABLE IF NOT EXISTS nosamb_koreksi ( nosamb VARCHAR(30),waktuupdate DATETIME DEFAULT NULL, PRIMARY KEY (`nosamb`))');
                        Qexec.SQL.Add('ENGINE=INNODB DEFAULT CHARSET=latin1');
                        Qexec.Execute;

                        Qexec.Close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('REPLACE INTO nosamb_koreksi ');
                        Qexec.SQL.Add('(nosamb,waktuupdate) VALUES (:nosamb,now())');
                        Qexec.parambyname('nosamb').asstring:=Qupload.Fieldbyname('nosamb').AsString;
                        Qexec.Execute;
                      end;



                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update drd'+leftstr(Qupload.fieldbyname('kode').AsString,6)+' set flagkirim="1",userkirim=:user,tglkirim=NOW() WHERE nosamb=:nosamb');
                      DM.Qexec.ParamByName('nosamb').AsString:=Qupload.Fieldbyname('nosamb').AsString;
                      DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update piutang set flagkirim="1",userkirim=:user,tglkirim=NOW() WHERE kode=:kode');
                      DM.Qexec.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                      DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('replace into loguploadulang values (now(),:kode,:nosamb,:periode,:user)');
                      DM.Qexec.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                      DM.Qexec.ParamByName('nosamb').AsString:=Qupload.Fieldbyname('nosamb').AsString;
                      DM.Qexec.ParamByName('periode').AsString:=LeftStr(Qupload.Fieldbyname('kode').AsString,6);
                      DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                      DM.Qexec.Execute;

                      Qcek_.Close;
                      Qcek_.SQL.Clear;
                      Qcek_.SQL.Add('SELECT norekening,waktuupdate FROM norekening WHERE kode=:kode');
                      Qcek_.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                      Qcek_.Open;

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('REPLACE into norekening values (:kode,:norekening,:waktuupdate)');
                      Qexec.ParamByName('kode').AsString:=Qupload.Fieldbyname('kode').AsString;
                      Qexec.ParamByName('norekening').AsString:=Qcek_.Fieldbyname('norekening').AsString;
                      Qexec.ParamByName('waktuupdate').AsDateTime:=Qcek_.Fieldbyname('waktuupdate').AsDateTime;
                      Qexec.Execute;

                      DM.uraianlogakses:='Upload Ulang Rekening '+Qreknama.Value+'/'+Qreknosamb.Value+' untuk Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                      DM.targetlogakses:=Qreknosamb.Value;
                      DM.logakses;



                      Qrek.SQLRefresh.Clear;
                      Qrek.SQLRefresh.Add('SELECT * FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' WHERE nosamb=:nosamb');
                      Qrek.RefreshRecord;


                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('COMMIT');
                      Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      MessageDlg('Upload Selesai', mtInformation, [mbOk], 0);


                EXCEPT On E:Exception do
                BEGIN

                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('ROLLBACK');
                      Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('ROLLBACK');
                      DM.Qexec.Execute;

                      MessageDlg('Terjadi Kesalahan :'+char(13)+
                      E.message, mtwarning, [MbOk], 0);

                END;
                END;

              FINALLY
                umain.host.close;
                Enabled:=true;
                umain.Enabled:=true;
              END;

            end
            else
              exit;

              
end;


procedure TFRrekening.kodeadm_lainPropertiesChange(Sender: TObject);
begin
  adm_lain.ItemIndex:=kodeadm_lain.ItemIndex;
end;

procedure TFRrekening.kodepem_lainPropertiesChange(Sender: TObject);
begin
pem_lain.ItemIndex:=kodepem_lain.ItemIndex;
end;

procedure TFRrekening.koderet_lainPropertiesChange(Sender: TObject);
begin
ret_lain.ItemIndex:=koderet_lain.ItemIndex;
end;

procedure TFRrekening.adm_lainPropertiesChange(Sender: TObject);
begin
kodeadm_lain.ItemIndex:=adm_lain.ItemIndex;
end;

procedure TFRrekening.pem_lainPropertiesChange(Sender: TObject);
begin
kodepem_lain.ItemIndex:=pem_lain.ItemIndex;
end;

procedure TFRrekening.ret_lainPropertiesChange(Sender: TObject);
begin
koderet_lain.ItemIndex:=ret_lain.ItemIndex;
end;

procedure TFRrekening.cekadmlainClick(Sender: TObject);
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

procedure TFRrekening.cekpemlainClick(Sender: TObject);
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

procedure TFRrekening.cekretlainClick(Sender: TObject);
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

procedure TFRrekening.cekpakaiClick(Sender: TObject);
begin
     if(cekpakai.Checked=true)then
  begin
    pakai1.Enabled:=true;
    pakai2.Enabled:=true;
    pakai1.SetFocus;
   end
  else
  begin
    pakai1.Enabled:=false;
    pakai2.Enabled:=false;
  end;
end;

procedure TFRrekening.cekcatatClick(Sender: TObject);
begin
if(cekcatat.Checked=true)then
begin
    
    namapembaca.Enabled:=true
  end
  else
  begin

    namapembaca.Enabled:=false;
  end;
end;

procedure TFRrekening.PasswordKoreksi1Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin

    if MessageDlg('Lihat Password Koreksi Ulang Loket ??', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('SELECT UPPER(RIGHT(MD5(CONCAT(:date,concat('+formatdatetime('YYYYMM',periode.date)+',".",nosamb),"1234")),5)) AS password FROM drd'+formatdatetime('YYYYMM',periode.date)+' where nosamb=:nosamb');
      DM.Qcek.parambyname('nosamb').asstring:=Qrek.FieldByName('nosamb').asstring;
      DM.Qcek.parambyname('date').asdate:=date;
      Dm.Qcek.Open;

      MessageDlg(Qrek.Fieldbyname('nama').AsString+' untuk Tagihan Rek. Bulan '+formatdatetime('MMM YYYY',periode.date)+char(13)+
                  'Password Koreksi Ulang Loket  : '+DM.Qcek.fieldbyname('password').asstring+char(13)+
                  'Lakukan Koreksi Ulang Loket , Pada Aplikasi Pembayaran (Loket) dengan password tersebut.....', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Melihat Password Koreksi Ulang '+Qrek.FieldByName('nama').AsString+' Untuk Bln '+formatdatetime('MMM YYYY',periode.date);
     DM.targetlogakses:= Qrek.FieldByName('nama').AsString;
     DM.logakses;

    end
    else
      Exit;
end;
end;

procedure TFRrekening.unpublish1Click(Sender: TObject);
begin
unpublishsatu();
end;

procedure TFRrekening.HistoriPemakaian1Click(Sender: TObject);
begin
if( Qrek.recordcount>0)then
  begin
    DM.Xnosamb:=Qrek.Fieldbyname('nosamb').asstring;
    uhispakai.nama.Caption:= Qrek.Fieldbyname('nama').asstring+' / '+Qrek.Fieldbyname('nosamb').asstring+' / '+Qrek.Fieldbyname('alamat').asstring;
    uhispakai.showmodal;
  end;
end;

procedure TFRrekening.HistoriLog1Click(Sender: TObject);
begin
  if(Qrek.RecordCount>0)then
  begin
    ulog.nosamb:=Qreknosamb.Value;
    ulog.showmodal;
  end;
end;

procedure TFRrekening.HapusAkun1Click(Sender: TObject);
begin


    if(Qrek.recordcount>0)then
    begin

          Dm.Qexec.close;
          Dm.Qexec.SQL.clear;
          DM.Qexec.SQL.add('UPDATE drd'+formatdatetime('YYYYMM',periode.date)+' SET flagpublish="0",flaglunas="0" WHERE nosamb=:nosamb');
          DM.Qexec.parambyname('nosamb').asstring:=Qreknosamb.value;
          DM.Qexec.execute;


          Dm.Qexec.close;
          Dm.Qexec.SQL.clear;
          DM.Qexec.SQL.add('DELETE FROM bayar WHERE kode=:kode');
          DM.Qexec.parambyname('kode').asstring:=formatdatetime('YYYYMM',periode.date)+'.'+Qreknosamb.value;
          DM.Qexec.execute;

          Qrek.SQLRefresh.Clear;
          Qrek.SQLRefresh.Add('SELECT c.* FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
          Qrek.RefreshRecord;



    end;

end;

procedure TFRrekening.kodeflagPropertiesChange(Sender: TObject);
begin
flag.itemindex:=kodeflag.itemindex;
end;

procedure TFRrekening.flagPropertiesChange(Sender: TObject);
begin
kodeflag.itemindex:=flag.itemindex;
end;

procedure TFRrekening.terbitkanpelangganClick(Sender: TObject);
begin
  if (pindahperiode.visible=true) then
  begin
            uterbitkan.caption:='Terbitkan Pelanggan ke Rekening '+formatdatetime('MMMM YYYY',periode.date);
            uterbitkan.periode.date:=periode.date;
            uterbitkan.refresh.click;
            uterbitkan.showmodal;
  end;
end;

procedure TFRrekening.cxButton3Click(Sender: TObject);
begin
if not Qrek.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(Gridrek.FocusedView.PatternGridView));
  end;
end;

procedure TFRrekening.cxButton1Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR REKENING AIR';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRrekening.publishsemuaClick(Sender: TObject);
var
J:integer;
//nomorrek:String;

begin
  if(pindahperiode.Visible=true)then
  begin
    Umain.openkoneksi_host;
    Qcek.Close;
    with Qcek do
    begin
      SQL.Clear;
      SQL.Add('SELECT nosamb FROM permohonan_rubah_rayon WHERE flaghapus="0" AND  flagprosesdata="0"');
    end;
    Qcek.Open;
    if Qcek.RecordCount>0 then
    begin
      MessageDlg('Perhatian!!'+#13+'Terdapat '+IntToStr(Qcek.RecordCount)+' pelanggan masih memiliki permohonan pindah rayon yang belum diverifikasi.'+'Rekening pelanggan tersebut tidak akan dipublish.', mtWarning, [mbOk], 0);
    end;

    if upasspublishsemua.showmodal=mrOk then
    begin
      TRY
        TRY
          Enabled:=false;

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('START TRANSACTION');
          DM.Qexec.Execute;

          mirror();

          Qmirror.first;

          if(Qmirror.RecordCount>0)then
          begin

              uloading.proses.Caption:='Publish Rekening Tampil...';
              uloading.Progress.PartsComplete:=0;
              uloading.Progress.TotalParts:=Qmirror.RecordCount;
              uloading.proses.Visible:=true;
              uloading.Progress.Visible:=true;
              uloading.Show;
              Application.ProcessMessages;

                for j:=1 to Qmirror.RecordCount do
                begin

                    if(Qmirrorflagpublish.Value='0') and
                    (Qmirrorflagkoreksi.Value='1') and
                    (Qmirrorflaglunas.Value='0') and
                    (Qmirrorpakai.Value>=0)
                    then
                    begin
                         Qcek_.Close;
                         Qcek_.SQL.Clear;
                         Qcek_.SQL.Add('SELECT CONCAT(:periode,LEFT(LPAD(COALESCE(RIGHT(MAX(norekening),6),0)+1,6,0),6)) AS norekening FROM norekening WHERE LEFT(kode,6)=:periode ');
                         Qcek_.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                         Qcek_.Open;

                         //nomorrek:=StrToInt(Qcek_.FieldByName('norekening').AsString);
//                         nomorrek:=Qcek_.FieldByName('norekening').AsString;

//                         nomorrek:=IntToStr(StrToInt(nomorrek)+1);

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('REPLACE INTO norekening VALUES (:kode,:norekening,NOW())');
                         DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qmirrornosamb.Value;
                         DM.Qexec.ParamByName('norekening').AsString:=Qcek_.FieldByName('norekening').AsString;
                         DM.Qexec.Execute;

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET flagpublish="1",userpublish=:user,tglpublish=NOW()');
                         DM.Qexec.SQL.add('where nosamb=:nosamb');
                         DM.Qexec.ParamByName('nosamb').AsString:=Qmirrornosamb.Value;
                         DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
                         DM.Qexec.Execute;

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('REPLACE INTO piutang select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c WHERE c.nosamb=:nosamb');
                         DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qmirrornosamb.Value;
                         DM.Qexec.ParamByName('nosamb').AsString:=Qmirrornosamb.Value;
                         DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                         DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.date);
                         DM.Qexec.ParamByName('flag').AsString:=Qmirrorflag.Value;
                         DM.Qexec.ParamByName('golongan').AsString:=Qmirrorgolongan.Value;
                         DM.Qexec.ParamByName('namaloket').AsString:='';
                         DM.Qexec.ParamByName('kodewil').AsString:=Qmirrorkodewil.Value;
                         DM.Qexec.ParamByName('namawil').AsString:=Qmirrorwilayah.Value;
                         DM.Qexec.Execute;

                    //     IF(YearOf(Qrektglpublish.Value)>1900)THEN
                         BEGIN

                              Qkoreksi.close;
                              Qkoreksi.SQL.Clear;
                              Qkoreksi.SQL.Add(Qkoreksi.SQLRefresh.Text);
                              Qkoreksi.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c,');
                              Qkoreksi.SQL.Add('(select * FROm drdkoreksi where kode=:kode GROUP By id DESC LIMIT 1) d,pelanggan p,beritaacarakoreksi b WHERE c.`nosamb`=d.nosamb AND d.kode=:kode ');
                              Qkoreksi.SQL.Add('AND c.nosamb=p.nosamb AND d.beritaacara=b.beritaacara ');
                              Qkoreksi.SQL.Add('AND c.`nosamb`=:nosamb');
                              Qkoreksi.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                              Qkoreksi.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                              Qkoreksi.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                              Qkoreksi.ParamByName('user').AsString:=umain.user.Caption;
                              Qkoreksi.Open;


                              if Qkoreksi.RecordCount>0 then
                              begin


                                TRY

                                    Umain.openkoneksi_host;


                                    Qexec.close;
                                    Qexec.SQL.Clear;
                                    Qexec.SQL.Add('START TRANSACTION');
                                    Qexec.Execute;


                                    Qexec.close;
                                    Qexec.SQL.Clear;
                                    Qexec.SQl.Add('REPLACE INTO ba_koreksi_rekening ');
                                    Qexec.SQl.Add('(`nomorba`,`tanggalba`,`alasan`,nosamb,periode,bulan,koderayon,kodegol,kodediameter,nama,alamat,`stanlalu_lama`,`stankini_lama`,`pakai_lama`,`biayapemakaian_lama`,`administrasi_lama`,`pemeliharaan_lama`,`retribusi_lama`,`rekair_lama`,');
                                    Qexec.SQl.Add('`stanlalu_baru`,stankini_baru,pakai_baru,`biayapemakaian_baru`,');
                                    Qexec.SQl.Add('administrasi_baru,`pemeliharaan_baru`,`retribusi_baru`,rekair_baru,petugas,`flaghapus` )');
                                    Qexec.SQl.Add(' VALUES                                 ');
                                    Qexec.SQl.Add(' (:nomorba,:tanggalba,:alasan,:nosamb,:periode,:bulan,:koderayon,:kodegol,:kodediameter,:nama,:alamat,:stanlalu_lama,:stankini_lama,:pakai_lama,:biayapemakaian_lama,:administrasi_lama,:pemeliharaan_lama,:retribusi_lama,:rekair_lama,');
                                    Qexec.SQl.Add(':stanlalu_baru,:stankini_baru,:pakai_baru,:biayapemakaian_baru,');
                                    Qexec.SQl.Add(':administrasi_baru,:pemeliharaan_baru,:retribusi_baru,:rekair_baru,:petugas,:flaghapus ) ');
                                    Qexec.parambyname('nomorba').asstring:=Qkoreksi.fieldbyname('beritaacara').asstring;
                                    Qexec.parambyname('tanggalba').AsDate:=Qkoreksi.fieldbyname('tglinput').AsDateTime;
                                    Qexec.parambyname('alasan').asstring:=Qkoreksi.fieldbyname('alasan').asstring;
                                    Qexec.parambyname('nosamb').asstring:=Qkoreksi.fieldbyname('nosamb').asstring;
                                    Qexec.parambyname('periode').asstring:=FormatDateTime('YYYYMM',periode.date);
                                    Qexec.parambyname('bulan').asstring:=Qkoreksi.fieldbyname('bulan').asstring;
                                    Qexec.parambyname('koderayon').asstring:=Qkoreksi.fieldbyname('koderayon').asstring;
                                    Qexec.parambyname('kodegol').asstring:=Qkoreksi.fieldbyname('kodegol').asstring;
                                    Qexec.parambyname('kodediameter').asstring:=Qkoreksi.fieldbyname('kodediameter').asstring;
                                    Qexec.parambyname('nama').asstring:=Qkoreksi.fieldbyname('nama').asstring;
                                    Qexec.parambyname('alamat').asstring:=Qkoreksi.fieldbyname('alamat').asstring;
                                    Qexec.parambyname('petugas').asstring:=Umain.user.Caption;                             
                                    Qexec.parambyname('stanlalu_lama').AsCurrency:=Qkoreksi.fieldbyname('stanlalu2').AsCurrency;
                                    Qexec.parambyname('stankini_lama').AsCurrency:=Qkoreksi.fieldbyname('stanskrg2').AsCurrency;
                                    Qexec.parambyname('pakai_lama').AsCurrency:=Qkoreksi.fieldbyname('pakai2').AsCurrency;
                                    Qexec.parambyname('biayapemakaian_lama').AsCurrency:=Qkoreksi.fieldbyname('biayapemakaian2').AsCurrency;
                                    Qexec.parambyname('administrasi_lama').AsCurrency:=Qkoreksi.fieldbyname('administrasi2').AsCurrency;
                                    Qexec.parambyname('pemeliharaan_lama').AsCurrency:=Qkoreksi.fieldbyname('pemeliharaan2').AsCurrency;
                                    Qexec.parambyname('retribusi_lama').AsCurrency:=Qkoreksi.fieldbyname('retribusi2').AsCurrency;
                                    Qexec.parambyname('rekair_lama').AsCurrency:=Qkoreksi.fieldbyname('rekair2').AsCurrency;
                                    Qexec.parambyname('stanlalu_baru').AsCurrency:=Qkoreksi.fieldbyname('stanlalu').AsCurrency;
                                    Qexec.parambyname('stankini_baru').AsCurrency:=Qkoreksi.fieldbyname('stanskrg').AsCurrency;
                                    Qexec.parambyname('pakai_baru').AsCurrency:=Qkoreksi.fieldbyname('pakai').AsCurrency;
                                    Qexec.parambyname('biayapemakaian_baru').AsCurrency:=Qkoreksi.fieldbyname('biayapemakaian').AsCurrency;
                                    Qexec.parambyname('administrasi_baru').AsCurrency:=Qkoreksi.fieldbyname('administrasi').AsCurrency;
                                    Qexec.parambyname('pemeliharaan_baru').AsCurrency:=Qkoreksi.fieldbyname('pemeliharaan').AsCurrency;
                                    Qexec.parambyname('retribusi_baru').AsCurrency:=Qkoreksi.fieldbyname('retribusi').AsCurrency;
                                    Qexec.parambyname('rekair_baru').AsCurrency:=Qkoreksi.fieldbyname('rekair').AsCurrency;

                                   DM.Qcek.close;
                                   DM.Qcek.SQL.Clear;
                                   DM.Qcek.SQL.Add('select IF((SELECT COUNT(*) FROM `drdhapussecaraakuntansi` WHERE nosamb=:nosamb AND periode=:periode)=1,"4",p.flag) AS flag ');
                                   DM.Qcek.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.nosamb=:nosamb');
                                   DM.Qcek.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                                   DM.Qcek.Open;

                                    if DM.Qcek.fieldbyname('flag').AsString='4' then
                                      Qexec.parambyname('flaghapus').asstring:='1'
                                    else
                                      Qexec.parambyname('flaghapus').asstring:='0';
                                    Qexec.Execute;


                                    Qexec.close;
                                    Qexec.SQL.Clear;
                                    Qexec.SQL.Add('COMMIT');
                                    Qexec.Execute;

                                 EXCEPT ON E:Exception DO
                                 BEGIN
          
                                     Qexec.close;
                                     Qexec.SQL.Clear;
                                     Qexec.SQL.Add('ROLLBACK');
                                     Qexec.Execute;

                                     MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
                         
                                  END;
                                  END;

                              {  koreksi.LoadFromFile(GetCurrentDir+'\koreksirek.fr3');

                                TfrxMemoView(koreksi.FindObject('xheader1')).Memo.Text:= DM.Xheader1;
                                TfrxMemoView(koreksi.FindObject('xheader2')).Memo.Text:= DM.Xheader2;
                                TfrxMemoView(koreksi.FindObject('xfooter1')).Memo.Text:= DM.Xfooter1;
                                koreksi.ShowReport() ;
                               }
                              end;


                         END;
                      
                    end;

              uloading.Progress.IncPartsByOne;
              Application.ProcessMessages;
              Qmirror.Next;
              end;

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('COMMIT');
           DM.Qexec.Execute;


           uloading.proses.Visible:=false;
           uloading.Progress.Visible:=false;
           uloading.Close;


          end;

        except
          On E:exception  do
          begin

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
        end;
      FINALLY

      tampilkan.click;
      Enabled:=true;

      END;

    end;
  end;

end;

procedure TFRrekening.hitungulangrekeningClick(Sender: TObject);
begin
 if(pindahperiode.Visible=true)then
  begin

      mirror();

      if(Qmirror.RecordCount>0)then
      begin
        Qmirror.First;
        hitungulang();
      end;

  end;
end;

procedure TFRrekening.updatebcmeterClick(Sender: TObject);
var
BC_user,BC_pass,BC_ip,BC_port,BC_db:String;
f:textfile;
j:integer;
_config:String;
hasilbaca:String;

begin


  TRY

    Enabled:=false;
    umain.enabled:=false;



  if(pindahperiode.Visible=true)then
  begin

      {if upilihunit.showmodal=MrOk then
      begin
          if upilihunit.config.itemindex=0 then
            _config:='bacameter_tanjungpinang'
          else  if upilihunit.config.itemindex=1 then
            _config:='bacameter_uban'
          else  if upilihunit.config.itemindex=2 then
            _config:='bacameter_kijang';

      end;}

      _config:='config';


//     if FileExists('C:\'+_config+'.ini')then
    if FileExists(GetCurrentDir+'\koneksibacameter.ini')then
    begin
//        assignFile(f,'C:\'+_config+'.ini');
        assignFile(f,GetCurrentDir+'\koneksibacameter.ini');
        Reset(f);
        ReadLn(f,BC_user);
        ReadLn(f,BC_pass);
        ReadLn(f,BC_ip);
        ReadLn(f,BC_port);
        ReadLn(f,BC_db);
        CloseFile(f);

         try

          bacameter.Close;
          bacameter.Username:=BC_user;
          bacameter.Password:=Decrypt(BC_pass,1,1,1);
          bacameter.Server:=BC_ip;
          bacameter.Port:=StrToInt(BC_port);
          bacameter.Database:=BC_db;
          bacameter.Open;
         except
           Enabled:=true;
           MessageDlg('Terjadi Kesalahan !! '+#13+
           'Tidak Dapat Terhubung Dengan Server Bacameter', mtInformation, [mbOK], 0);
           exit;
         end;

         if(bacameter.Connected=true)then
         begin
         try

                   IF(DM.Qsetting.FieldByName('selisihbcmeter').AsInteger=0)then
                    hasilbaca:=FormatDateTime('MMMM YYYY',periode.Date)
                   else
                    hasilbaca:=FormatDateTime('MMMM YYYY',IncMonth(periode.Date,DM.Qsetting.Fieldbyname('selisihbcmeter').AsInteger));

                  if MessageDlg('Download Hasil Bacameter "Bimasakti"    '+char(13)+char(13)+
                                '- Pencatatan Meter Bulan : '+hasilbaca+char(13)+
                                '- Untuk Rekening Bulan : '+FormatDateTime('MMMM YYYY',periode.Date)+char(13)+char(13)+
                                'Hanya akan mendownload hasil pembacaan yang tampil di Grid dan belum di publish ,Lanjutkan ??', mtConfirmation, [mbYes,mbNo], 0)=mrYes then
                   begin

                      Enabled:=false;

                      Qbacameter1.close;
                      Qbacameter1.SQL.Clear;
                      Qbacameter1.SQL.Add('DROP TABLE IF EXISTS `dump_001`');
                      Qbacameter1.Execute;

                      Qbacameter1.Close;
                      Qbacameter1.SQL.Clear;
                      Qbacameter1.SQL.Add('CREATE TABLE dump_001 ( idpelanggan VARCHAR(30),PRIMARY KEY (`idpelanggan`))');
                      Qbacameter1.SQL.Add(' ENGINE=MEMORY');
                      //Qbacameter1.SQL.Add(' ENGINE=MyISAM DEFAULT CHARSET=latin1');
                      Qbacameter1.Execute;


                      mirror();

                     // if(Qrek.RecordCount>0)then
                      if(Qmirror.RecordCount>0)then
                      begin

                            Qmirror.First;

                            uloading.proses.Caption:='Step 1...';
                            uloading.Progress.PartsComplete:=0;
                            uloading.Progress.TotalParts:=Qmirror.RecordCount;
                            uloading.proses.Visible:=true;
                            uloading.Progress.Visible:=true;
                            uloading.Show;
                            Application.ProcessMessages;
                            for j:=1 to Qmirror.RecordCount do
                            begin
                              if(Qmirrorflagpublish.Value='0')then
                              begin



                                Qbacameter1.close;
                                Qbacameter1.SQL.Clear;
                                Qbacameter1.SQL.Add('REPLACE INTO dump_001 VALUES (:idpelanggan)');
                                Qbacameter1.ParamByName('idpelanggan').AsString:=Qmirrornosamb.Value;
                                Qbacameter1.Execute;
                              end;;
                            uloading.Progress.IncPartsByOne;
                            Qmirror.Next;
                            end;

                            uloading.proses.Visible:=false;
                            uloading.Progress.Visible:=false;
                            uloading.Close;

//ShowMessage('SELESAI TEST');
//exit;
                            ////CEK DI BACAMETER YANG SUDAH DI VERIFIKASI
                            Qbacameter1.Close;
                            Qbacameter1.SQL.Clear;
                            IF(DM.Qsetting.FieldByName('selisihbcmeter').AsInteger=0)THEN
                              begin


                                Qbacameter1.SQL.Add('SELECT *,IF(taksir="1", CONCAT(kelainan," (TAKSIR)"),kelainan) AS kelainantaksir FROM hasilbaca'+FormatDateTime('MMYY',periode.Date)+' WHERE verifikasi="1" AND idpelanggan IN (SELECT idpelanggan FROm dump_001)' ) ;


                                QTemp.close;
                                QTemp.SQL.Clear;
                                QTemp.SQL.Add('UPDATE hasilbaca'+FormatDateTime('MMYY',periode.Date)+' SET flagsudahupload="1" WHERE verifikasi="1" AND idpelanggan IN (SELECT idpelanggan FROm dump_001)');
                                QTemp.ExecSQL;


                              end
                              ELSE
                              begin


                                Qbacameter1.SQL.Add('SELECT *,IF(taksir="1", CONCAT(kelainan," (TAKSIR)"),kelainan) AS kelainantaksir FROM hasilbaca'+FormatDateTime('MMYY',IncMonth(periode.Date,DM.Qsetting.Fieldbyname('selisihbcmeter').AsInteger))+' WHERE verifikasi="1" AND idpelanggan IN (SELECT idpelanggan FROm dump_001)' );

                                QTemp.close;
                                QTemp.SQL.Clear;
                                QTemp.SQL.Add('UPDATE hasilbaca'+FormatDateTime('MMYY',IncMonth(periode.Date,DM.Qsetting.Fieldbyname('selisihbcmeter').AsInteger))+' SET flagsudahupload="1" WHERE verifikasi="1" AND idpelanggan IN (SELECT idpelanggan FROm dump_001)');
                                QTemp.ExecSQL;  

                              end;
                              
                            Qbacameter1.Open;

                            Qbacameter1.First;


                            uloading.proses.Caption:='Step 2...';
                            uloading.Progress.PartsComplete:=0;
                            uloading.Progress.TotalParts:=Qbacameter1.RecordCount;
                            uloading.proses.Visible:=true;
                            uloading.Progress.Visible:=true;
                            uloading.Show;


                            Application.ProcessMessages;
                            for j:=1 to Qbacameter1.RecordCount do
                            begin




                                Qcek_.close;
                                Qcek_.SQL.clear;
                                Qcek_.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',periode.date)+' WHERE nosamb=:nosamb AND stanangkat>0') ;
                                Qcek_.ParamByName('nosamb').AsString:=Qbacameter1.fieldbyname('idpelanggan').AsString;
                                Qcek_.open;

                                if Qcek_.RecordCount=0 then
                                begin    

                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' set flagkoreksi="1",stanlalu=:stanlalu,stanskrg=:stanskrg,stanangkat=:stanangkat,pakai=:pakai,kelainan=:kelainan,pembacameter=:pembacameter where nosamb=:nosamb and flaglunas="0" and flagpublish="0"');
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qbacameter1.fieldbyname('idpelanggan').AsString;
                                  DM.Qexec.ParamByName('kelainan').AsString:=Qbacameter1.fieldbyname('kelainantaksir').AsString;
                                  DM.Qexec.ParamByName('pembacameter').AsString:=UpperCase(Qbacameter1.fieldbyname('namapetugas').AsString)+' ( '+formatdateTime('DD-MM-YYYY hh:mm:ss',Qbacameter1.fieldbyname('waktubaca').asdatetime) + ' )';
                                  DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qbacameter1.fieldbyname('stanlalu').AsCurrency;
                                  DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qbacameter1.fieldbyname('stanskrg').AsCurrency;
                                  DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qbacameter1.fieldbyname('stanangkat').AsCurrency;
                                  DM.Qexec.ParamByName('pakai').AsCurrency:=Qbacameter1.fieldbyname('pakaiskrg').AsCurrency;
                                  DM.Qexec.Execute;

                                end
                                else
                                begin


                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' set flagkoreksi="1",stanlalu=:stanlalu,stanskrg=:stanskrg,kelainan=:kelainan,pembacameter=:pembacameter where nosamb=:nosamb and flaglunas="0" and flagpublish="0"');
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qbacameter1.fieldbyname('idpelanggan').AsString;
                                  DM.Qexec.ParamByName('kelainan').AsString:=Qbacameter1.fieldbyname('kelainantaksir').AsString;
                                  DM.Qexec.ParamByName('pembacameter').AsString:=UpperCase(Qbacameter1.fieldbyname('namapetugas').AsString)+' ( '+formatdateTime('DD-MM-YYYY hh:mm:ss',Qbacameter1.fieldbyname('waktubaca').asdatetime) + ' )';
                                  DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qbacameter1.fieldbyname('stanlalu').AsCurrency;
                                  DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qbacameter1.fieldbyname('stanskrg').AsCurrency;
                                  DM.Qexec.Execute;


                                end;

                                 //JIKA TAKSAKSI
                                if(Qbacameter1.fieldbyname('flagkoreksi').asstring<>'0')then
                                begin

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('REPLACE INTO taksasi (kode,nosamb,periode,stanlalu,stanskrg,stanangkat,pakai,flagkoreksi) values (concat(:periode,".",:nosamb),:nosamb,:periode,:stanlalu,:stanskrg,:stanangkat,:pakai,:flagkoreksi)');
                                    DM.Qexec.ParamByName('nosamb').AsString:=Qbacameter1.fieldbyname('idpelanggan').AsString;
                                    DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date); 
                                    DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qbacameter1.fieldbyname('stanlalu').AsCurrency;
                                    DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qbacameter1.fieldbyname('stanskrg').AsCurrency;
                                    DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qbacameter1.fieldbyname('stanangkat').AsCurrency;
                                    DM.Qexec.ParamByName('pakai').AsCurrency:=Qbacameter1.fieldbyname('pakaiskrg').AsCurrency;
                                    DM.Qexec.ParamByName('flagkoreksi').AsString:=Qbacameter1.fieldbyname('flagkoreksi').AsString;
                                    DM.Qexec.Execute;

                                end;                                 




                            uloading.Progress.IncPartsByOne;
                            Application.ProcessMessages;
                            Qbacameter1.Next;
                            end;


                            

                            //mirror();


                            //Qmirror.First;
                            hitungulangrekening.Click;

                                                                                                                  

                            Qbacameter1.close;
                            Qbacameter1.SQL.Clear;
                            Qbacameter1.SQL.Add('select * FROm petugasbaca');
                            Qbacameter1.Open;



                            DM.Qexec.close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQL.Add('replace into pembacameter (nama,alamat) values (:nama,:alamat)');
                            DM.Qexec.ParamByName('nama').AsString:=UpperCase(Qbacameter1.fieldbyname('nama').AsString);
                            DM.Qexec.ParamByName('alamat').AsString:=UpperCase(Qbacameter1.fieldbyname('alamat').AsString);
                            DM.Qexec.Execute;


                            uloading.proses.Caption:='Step 2...';
                            uloading.Progress.PartsComplete:=0;
                            uloading.Progress.TotalParts:=Qbacameter1.RecordCount;
                            uloading.proses.Visible:=true;
                            uloading.Progress.Visible:=true;
                            uloading.Show;

                            Application.ProcessMessages;
                            for j:=1 to Qbacameter1.RecordCount do
                            begin

                                DM.Qexec.close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQL.Add('replace into pembacameter (nama,alamat) values (:nama,:alamat)');
                                DM.Qexec.ParamByName('nama').AsString:=UpperCase(Qbacameter1.fieldbyname('nama').AsString);
                                DM.Qexec.ParamByName('alamat').AsString:=UpperCase(Qbacameter1.fieldbyname('alamat').AsString);
                                DM.Qexec.Execute;
                                uloading.Progress.IncPartsByOne;
                                Application.ProcessMessages;
                                Qbacameter1.Next;
                            end;


                           Enabled:=true; 


                           uloading.close;

                           tampilkan.Click;



                      end;

                  end
                  else
                    exit;

            except On E:exception  do
            begin 

             enabled:=true;

              MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
            end;
            end;


         end
         else
          MessageDlg('Tidak Terhubung Dengan Database Bacameter', mtError, [mbOk], 0);

    end
    else
     MessageDlg('File Config.ini ('+_config+') Tidak Ditemukan!!', mtError, [mbOk], 0);
  end;

  FINALLY
     Enabled:=true;
    umain.enabled:=true;
    uloading.close;

  END;

end;
procedure TFRrekening.unpublishsemuaClick(Sender: TObject);
var
J:integer;
sudahbayar,_baKoreksi:Integer;
beritaacara:String;
begin

 sudahbayar:=0;

  if(pindahperiode.Visible=true)then
  begin
//  mirror();
  if(Qrek.RecordCount>0)then

  begin



        if upass.showmodal=mrOk then
        begin

             TRY
              umain.openkoneksi_host;

{              if MessageDlg('Terapkan BA Koreksi Rekening?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
                _baKoreksi:=1
              else
                _baKoreksi:=0;
}
              uloading.proses.Caption:='Un-Publish Rekening Tampil...';
              uloading.Progress.PartsComplete:=0;
              uloading.Progress.TotalParts:=Qrek.RecordCount;
              uloading.proses.Visible:=true;
              uloading.Progress.Visible:=true;
              uloading.Show;
              Application.ProcessMessages;
              for j:=1 to Qrek.RecordCount do
              begin

                if(Qrekflagpublish.Value='1')
                and
                (Qrekflaglunas.Value='0')

                 then

                begin


                   Qcekhost.close;
                   Qcekhost.SQL.Clear;
                   Qcekhost.SQL.Add('select flaglunas FROm bayar WHERE kode=:kode');
                   Qcekhost.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                   Qcekhost.Open;

                   if(Qcekhost.fieldbyname('flaglunas').AsString='1')then
                   begin
                        sudahbayar:=sudahbayar+1;
                   end
                   else
                   begin
                            DM.Qcek.Close;
                            DM.Qcek.SQL.Clear;
                            DM.Qcek.SQL.Add('SHOW TABLES LIKE "drdposting'+FormatDateTime('YYYYMM',periode.date)+'"');
                            DM.Qcek.open;

                            if(Dm.Qcek.RecordCount>0)then
                            begin

                             DM.Qcek.Close;
                             DM.Qcek.SQL.Clear;
//                             DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="1"');
                             DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="1"');
                             DM.Qcek.ParamByName('bulan').AsInteger:=MonthOf(date);
                             DM.Qcek.ParamByName('tahun').AsInteger:=YearOf(date);
                             Dm.Qcek.Open;

                             beritaacara:=DM.Qcek.fieldbyname('jumlah').AsString+' / DRD-KOREKSI / '+upass.alasan.Text+' / '+
                                          FormatDateTime('MM',Date)+' / '+
                                          FormatDateTime('YYYY',Date);



                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;   
                              DM.Qexec.Execute;

                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"1")');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                              DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                              DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                              DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                              DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek.fieldbyname('jumlah').AsString);
                              DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                              DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                              DM.Qexec.Execute;


                              DM.Qexec.close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                              DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                              DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                              DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                              DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                              DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                              DM.Qexec.ParamByName('tanggal').AsDate:=date;
                              DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                              DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                              DM.Qexec.ParamByName('namaloket').AsString:='';
                              DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                              DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                              DM.Qexec.Execute; 

                              //// ---------------------- ////

                             end
                             else
                             begin



                                 DM.Qcek.Close;
                                 DM.Qcek.SQL.Clear;
//                                 DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+upass.alasan.Text+'" AND flagdrdkoreksi="0" ' );
                                 DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="0" ' );
                                 DM.Qcek.ParamByName('bulan').AsInteger:=MonthOf(date);
                                 DM.Qcek.ParamByName('tahun').AsInteger:=YearOf(date);
                                 Dm.Qcek.Open;

                                 beritaacara:=DM.Qcek.fieldbyname('jumlah').AsString+' / KOREKSI-BIASA / '+upass.alasan.Text+' / '+
                                              FormatDateTime('MM',Date)+' / '+
                                              FormatDateTime('YYYY',Date);



                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;   
                                  DM.Qexec.Execute;

                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"0")');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                                  DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                                  DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek.fieldbyname('jumlah').AsString);
                                  DM.Qexec.ParamByName('alasan').AsString:=upass.alasan.Text;
                                  DM.Qexec.ParamByName('perhitungan').AsString:=upass.perhitungan.Text;
                                  DM.Qexec.Execute;


                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
                                  DM.Qexec.ParamByName('kode').AsString:=  FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
                                  DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                                  DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                                  DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
                                  DM.Qexec.ParamByName('flag').AsString:=Qrekflag.Value;
                                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                                  DM.Qexec.ParamByName('golongan').AsString:=Qrekgolongan.Value;
                                  DM.Qexec.ParamByName('namaloket').AsString:='';
                                  DM.Qexec.ParamByName('kodewil').AsString:=Qrekkodewil.Value;
                                  DM.Qexec.ParamByName('namawil').AsString:=Qrekwilayah.Value;
                                  DM.Qexec.Execute; 

                             end;

                     Qexec.close;
                     Qexec.SQL.Clear;
                     Qexec.SQL.Add('delete from piutang where kode=:kode');
                     Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                     Qexec.Execute;


                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.Date)+' SET flagpublish="0",flagkirim="0"');
                     DM.Qexec.SQL.add('where nosamb=:nosamb');
                     DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                     DM.Qexec.Execute;

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('delete from piutang where kode=:kode');
                     DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qreknosamb.Value;
                     DM.Qexec.Execute;



                   end;


                end;

              uloading.Progress.IncPartsByOne;
              Application.ProcessMessages;
              Qrek.Next;
              end;

            except On E:exception  do
            begin

                    MessageDlg('Terjadi Kesalahan : '+ E.message, mtwarning, [MbOk], 0);
            end;
            end;


            uloading.proses.Visible:=false;
            uloading.Progress.Visible:=false;
            uloading.Close;



            if(sudahbayar>0)then
            begin
             MessageDlg('Perhatian : '+char(13)+
             'Sudah ada '+IntToStr(sudahbayar)+' rekening yang sudah di lunasi di loket '+Char(13)+
             'namun belum terupdate di Pusat'+char(13)+
             'Harap Lakukan Download Transaksi.... ', mtInformation, [MbOk], 0);
            end;


            Umain.host.close;



            tampilkan.Click;

       
  end;
  end;
  end;
end;

procedure TFRrekening.gtvpiutangCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
      IF (gtvpiutang.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  TColor($00CAFFFF); 
        ACanvas.Canvas.Font.Color := clBlack;
      END;
end;

procedure TFRrekening.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.itemindex:=kodekolektif.itemindex;
end;

procedure TFRrekening.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.itemindex:=kolektif.itemindex;
end;

procedure TFRrekening.LihatPiutang1Click(Sender: TObject);
begin
  if( Qrek.recordcount>0)then
  begin
    DM.Xnosamb:=Qrek.Fieldbyname('nosamb').asstring;

    upiutang.refresh.click;

    upiutang.nama.Caption:= Qrek.Fieldbyname('nama').asstring+' / '+Qrek.Fieldbyname('nosamb').asstring+' / '+Qrek.Fieldbyname('alamat').asstring;

    upiutang.showmodal;
  end;
end;

procedure TFRrekening.Publish1Click(Sender: TObject);
begin
publishsatu();
end;

procedure TFRrekening.KarenaKesalahanBacaInput1Click(Sender: TObject);
begin


  DM.Qcek.close;
  DM.Qcek.SQl.Clear;
  DM.Qcek.SQL.add('select * FROM beritaacarakoreksi WHERE kode=:kode AND alasan=:alasan');
  DM.Qcek.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.date) +'.'+Qrek.fieldbyname('nosamb').asstring;
  DM.Qcek.parambyname('alasan').asstring:='TEMP BA KESALAHAN PEMBACAAN/INPUT';
  DM.Qcek.Open;


  if(DM.Qcek.recordcount=0)then
  begin

      DM.Qcek.close;
      DM.Qcek.SQl.Clear;
      DM.Qcek.SQL.add('select coalesce(max(urutan),0)+1 as urutan FROM beritaacarakoreksi WHERE alasan=:alasan AND DATE_FORMAT(tglinput,"%Y%m")=:bulantahun');
      DM.Qcek.parambyname('bulantahun').asstring:=FormatDateTime('YYYYMM',date);
      DM.Qcek.parambyname('alasan').asstring:='TEMP BA KESALAHAN PEMBACAAN/INPUT';
      DM.Qcek.Open;

      DM.Qexec.close;
      DM.Qexec.SQl.Clear;
      DM.Qexec.SQL.add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan) values (:beritaacara,:kode,:nosamb,:tglinput,:urutan,:alasan)');
      DM.Qexec.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.date) +'.'+Qrek.fieldbyname('nosamb').asstring;
      DM.Qexec.parambyname('nosamb').asstring:= Qrek.fieldbyname('nosamb').asstring;
      DM.Qexec.parambyname('tglinput').asdatetime:= Now;
      DM.Qexec.parambyname('alasan').asstring:= 'TEMP BA KESALAHAN PEMBACAAN/INPUT';
      DM.Qexec.parambyname('urutan').AsInteger:= DM.Qcek.fieldbyname('urutan').asinteger;
      DM.Qexec.parambyname('beritaacara').AsString:= DM.Qcek.fieldbyname('urutan').asstring+'/KR/'+FormatDateTime('MM',date)+'/'+FormatDateTime('YYYY',date);
      DM.Qexec.execute;


  end;

  ubakoreksi2.Qrek.close;
  ubakoreksi2.Qrek.SQL.Clear;
  ubakoreksi2.Qrek.SQL.Add(ubakoreksi2.Qrek.SQLRefresh.Text);
  ubakoreksi2.Qrek.ParamByName('periode').asinteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  ubakoreksi2.Qrek.ParamByName('nosamb').AsString:= Qrek.fieldbyname('nosamb').asstring;
  ubakoreksi2.Qrek.ParamByName('bulan').asstring:=FormatDateTime('MMM YYYY',periode.date);
  ubakoreksi2.Qrek.ParamByName('kode').asstring:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nosamb').asstring;
  ubakoreksi2.Qrek.parambyname('alasan').asstring:='TEMP BA KESALAHAN PEMBACAAN/INPUT';
  ubakoreksi2.Qrek.Open;

  ubakoreksi2.ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan1.fr3');
  ubakoreksi2.ba1.ShowReport(true);

end;

procedure TFRrekening.Akurasi1Click(Sender: TObject);
begin
DM.Qcek.close;
  DM.Qcek.SQl.Clear;
  DM.Qcek.SQL.add('select * FROM beritaacarakoreksi WHERE kode=:kode AND alasan=:alasan');
  DM.Qcek.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.date) +'.'+Qrek.fieldbyname('nosamb').asstring;
  DM.Qcek.parambyname('alasan').asstring:='TEMP BA HASIL AKURASI METER';
  DM.Qcek.Open;


  if(DM.Qcek.recordcount=0)then
  begin

      DM.Qcek.close;
      DM.Qcek.SQl.Clear;
      DM.Qcek.SQL.add('select coalesce(max(urutan),0)+1 as urutan FROM beritaacarakoreksi WHERE alasan=:alasan AND DATE_FORMAT(tglinput,"%Y%m")=:bulantahun');
      DM.Qcek.parambyname('bulantahun').asstring:=FormatDateTime('YYYYMM',date);
      DM.Qcek.parambyname('alasan').asstring:='TEMP BA HASIL AKURASI METER';
      DM.Qcek.Open;

      DM.Qexec.close;
      DM.Qexec.SQl.Clear;
      DM.Qexec.SQL.add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan) values (:beritaacara,:kode,:nosamb,:tglinput,:urutan,:alasan)');
      DM.Qexec.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.date) +'.'+Qrek.fieldbyname('nosamb').asstring;
      DM.Qexec.parambyname('nosamb').asstring:= Qrek.fieldbyname('nosamb').asstring;
      DM.Qexec.parambyname('tglinput').asdatetime:= Now;
      DM.Qexec.parambyname('alasan').asstring:= 'TEMP BA HASIL AKURASI METER';
      DM.Qexec.parambyname('urutan').AsInteger:= DM.Qcek.fieldbyname('urutan').asinteger;
      DM.Qexec.parambyname('beritaacara').AsString:= DM.Qcek.fieldbyname('urutan').asstring+'/KR/'+FormatDateTime('MM',date)+'/'+FormatDateTime('YYYY',date);
      DM.Qexec.execute;


  end;

  ubakoreksi2.Qrek.close;
  ubakoreksi2.Qrek.SQL.Clear;
  ubakoreksi2.Qrek.SQL.Add(ubakoreksi2.Qrek.SQLRefresh.Text);
  ubakoreksi2.Qrek.ParamByName('periode').asinteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
  ubakoreksi2.Qrek.ParamByName('nosamb').AsString:= Qrek.fieldbyname('nosamb').asstring;
  ubakoreksi2.Qrek.ParamByName('bulan').asstring:=FormatDateTime('MMM YYYY',periode.date);
  ubakoreksi2.Qrek.ParamByName('kode').asstring:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nosamb').asstring;
  ubakoreksi2.Qrek.parambyname('alasan').asstring:='TEMP BA HASIL AKURASI METER';
  ubakoreksi2.Qrek.Open;

  ubakoreksi2.ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan2.fr3');
  ubakoreksi2.ba1.ShowReport(true);

end;

procedure TFRrekening.cekkondisimeterClick(Sender: TObject);
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

procedure TFRrekening.kodekondisiPropertiesChange(Sender: TObject);
begin
kondisimeter.ItemIndex:=kodekondisi.ItemIndex;
end;

procedure TFRrekening.kondisimeterPropertiesChange(Sender: TObject);
begin
kodekondisi.ItemIndex:=kondisimeter.ItemIndex;
end;

procedure TFRrekening.cekcabClick(Sender: TObject);
begin
if(cekcab.Checked=true)then
  begin
    kodecab.Enabled:=true;
    cab.Enabled:=true;
  end
  else
  begin
    kodecab.Enabled:=false;
    cab.Enabled:=false;
  end;

end;


procedure TFRrekening.kodecabPropertiesChange(Sender: TObject);
begin
  cab.ItemIndex:=kodecab.ItemIndex;
end;

procedure TFRrekening.cabPropertiesChange(Sender: TObject);
begin
kodecab.ItemIndex:=cab.ItemIndex;
end;

procedure TFRrekening.cekkelClick(Sender: TObject);
begin
  if(cekkel.Checked=true)then
  begin
    kodekel.Enabled:=true;
    kel.Enabled:=true;
  end
  else
  begin
    kodekel.Enabled:=false;
    kel.Enabled:=false;
  end;

end;

procedure TFRrekening.kodekelPropertiesChange(Sender: TObject);
begin
 kel.ItemIndex:=kodekel.itemindex;
end;

procedure TFRrekening.kelPropertiesChange(Sender: TObject);
begin
 kodekel.ItemIndex:=kel.itemindex;
end;

procedure TFRrekening.HanyaRekeningygdiPilih1Click(Sender: TObject);
begin
   if(Qrek.RecordCount>0) then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else
  if(Qrekflagpublish.Value='0')then
       MessageDlg('Maaf, Rekening Belum di Publish !!   ', mtInformation, [mbOk], 0)
    else

    begin

      if MessageDlg('Anda Yakin Set Tanpa Denda Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update piutang set flag="2" where nosamb=:nosamb and periode=:periode and flag="1"');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 DM.Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set flag="2" where nosamb=:nosamb and periode=:periode and flag="1"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set trf_dendatunggakan=0,trf_dendatunggakan2=0,trf_dendatunggakan3=0,trf_dendatunggakan4=0,trf_dendatunggakanperbulan=0 where nosamb=:nosamb and periode=:periode and flag="4"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

{                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set trf_dendatunggakan=0,trf_dendatunggakan2=0,trf_dendatunggakan3=0,trf_dendatunggakan4=0,trf_dendatunggakanperbulan=0 where nosamb=:nosamb and periode=:periode and flag="4"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;
}
                  DM.uraianlogakses:='Set Tanpa Denda Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


{                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;
}

            end
            else
              Exit;
    end;
  end;



end;

procedure TFRrekening.SemuaRekeningBelumLunas1Click(Sender: TObject);
begin
   if(Qrek.RecordCount>0) then
  begin

  if(Qrekflaglunas.Value='1')then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else
  if(Qrekflagpublish.Value='0')then
       MessageDlg('Maaf, Rekening Belum di Publish !!   ', mtInformation, [mbOk], 0)
    else

    begin

      if MessageDlg('Anda Yakin Set Tanpa Denda Rekening sd Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update piutang set flag="2" where nosamb=:nosamb and periode<=:periode and flag="1"');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 DM.Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set flag="2" where nosamb=:nosamb and periode<=:periode and flag="1"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set trf_dendatunggakan=0,trf_dendatunggakan2=0,trf_dendatunggakan3=0,trf_dendatunggakan4=0,trf_dendatunggakanperbulan=0 where nosamb=:nosamb and periode<=:periode and flag="4"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

{                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set trf_dendatunggakan=0,trf_dendatunggakan2=0,trf_dendatunggakan3=0,trf_dendatunggakan4=0,trf_dendatunggakanperbulan=0 where nosamb=:nosamb and periode<=:periode and flag="4"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;
}
                  DM.uraianlogakses:='Set Tanpa Denda Rekening '+Qrek.Fieldbyname('nosamb').AsString+' sd Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


{                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;
}

            end
            else
              Exit;
    end;
  end;



end;

procedure TFRrekening.HanyaRekeningygdiPilih2Click(Sender: TObject);
begin
   if(Qrek.RecordCount>0) then
  begin

  if(Qrekflaglunas.Value='1') then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else
  if(Qrekflagpublish.Value='0') then
       MessageDlg('Maaf, Rekening Belum di Publish !!   ',mtInformation, [mbOk], 0)
    else

    begin

      if MessageDlg('Anda Yakin Set Normal Rekening Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update piutang set flag="1" where nosamb=:nosamb and periode=:periode and flag="2"');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 DM.Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set flag="1" where nosamb=:nosamb and periode=:periode and flag="2"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

                  DM.uraianlogakses:='Set Normal Rekening '+Qrek.Fieldbyname('nosamb').AsString+' Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


{                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;
}

            end
            else
              Exit;
    end;
  end;


end;

procedure TFRrekening.SemuaRekeningBelumLunas2Click(Sender: TObject);
begin
   if(Qrek.RecordCount>0) then
  begin

  if(Qrekflaglunas.Value='1') then
       MessageDlg('Maaf, Rekening Sudah di Lunasi pada Tanggal '+DateToStr(Qrektglbayar.Value)+ ' !!', mtInformation, [mbOk], 0)
  else
  if(Qrekflagpublish.Value='0') then
       MessageDlg('Maaf, Rekening Belum di Publish !!   ',mtInformation, [mbOk], 0)
    else

    begin

      if MessageDlg('Anda Yakin Set Normal Rekening sd Bulan '+FormatDateTime('MMM YYYY',periode.Date)+'??'+char(13)+char(13)+
                          '- Nosamb : '+Qrek.Fieldbyname('nosamb').AsString+char(13)+
                          '- Nama   : '+Qrek.Fieldbyname('nama').AsString+'   '+char(13)+
                          '- Alamat : '+Qrek.Fieldbyname('alamat').AsString+'    '+char(13)+
                          '- KD.Rayon : '+Qrek.Fieldbyname('koderayon').AsString+char(13)+
                          '- Golongan : '+Qrek.Fieldbyname('golongan').AsString+char(13)+
                          '- Ukuran WM : '+Qrek.Fieldbyname('ukuran').AsString+char(13)+char(13)+
                          'Lanjutkan ?'
                          , mtInformation, [mbYes,MbNo], 0)=mrYes then
            begin

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('update piutang set flag="1" where nosamb=:nosamb and periode<=:periode and flag="2"');
                 DM.Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 DM.Qexec.Execute;

                 Qexec.close;
                 Qexec.SQL.Clear;
                 Qexec.SQL.Add('update piutang set flag="1" where nosamb=:nosamb and periode<=:periode and flag="2"');
                 Qexec.ParamByName('nosamb').AsString:=Qreknosamb.Value;
                 Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
                 Qexec.Execute;

                  DM.uraianlogakses:='Set Normal Rekening '+Qrek.Fieldbyname('nosamb').AsString+' sd Bulan '+FormatDateTime('MMM YYYY',periode.Date);
                  DM.targetlogakses:=Qreknosamb.Value;
                  DM.logakses;


{                  Qrek.SQLRefresh.Clear;
                  Qrek.SQLRefresh.Add('select flagaktif,IF(flagaktif="1","Aktif",IF(flagaktif="2","Segel",IF(flagaktif="3","Tutup Sementara","Tutup Total / Non Aktif"))) as aktif FROm drd'+FormatDateTime('YYYYMM',periode.Date)+' where nosamb=:nosamb');
                  Qrek.RefreshRecord;
}

            end
            else
              Exit;
    end;
  end;


end;

procedure TFRrekening.cekKecClick(Sender: TObject);
begin
  if(cekKec.Checked=true)then
  begin
    kodekec.Enabled:=true;
    kecamatan.Enabled:=true;
  end
  else
  begin
    kodekec.Enabled:=false;
    kecamatan.Enabled:=false;
  end;

end;

procedure TFRrekening.kodekecPropertiesChange(Sender: TObject);
begin
  kecamatan.ItemIndex:=kodekec.ItemIndex;
end;

procedure TFRrekening.kecamatanPropertiesChange(Sender: TObject);
begin
  kodekec.ItemIndex:=kecamatan.ItemIndex;
end;

procedure TFRrekening.HapusDRD1Click(Sender: TObject);
begin
  hapusrekening();
end;

procedure TFRrekening.HapusDRDLoket1Click(Sender: TObject);
begin
  hapusrekeningloket();
end;

procedure TFRrekening.BeritaAcaraKoreksi1Click(Sender: TObject);
begin
  IF(YearOf(Qrektglpublish.Value)>1900)THEN
  BEGIN
    Qkoreksi.close;
    Qkoreksi.SQL.Clear;
    Qkoreksi.SQL.Add(Qkoreksi.SQLRefresh.Text);
    Qkoreksi.SQL.Add('FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c,');
    Qkoreksi.SQL.Add('(select * FROm drdkoreksi where kode=:kode GROUP By id DESC LIMIT 1) d,pelanggan p,beritaacarakoreksi b WHERE c.`nosamb`=d.nosamb AND d.kode=:kode ');
    Qkoreksi.SQL.Add('AND c.nosamb=p.nosamb AND d.beritaacara=b.beritaacara ');
    Qkoreksi.SQL.Add('AND c.`nosamb`=:nosamb');
    Qkoreksi.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.Value;
    Qkoreksi.ParamByName('nosamb').AsString:=Qreknosamb.Value;
    Qkoreksi.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.Date);
    Qkoreksi.ParamByName('user').AsString:=umain.user.Caption;
    Qkoreksi.Open;
    if Qkoreksi.RecordCount>0 then
    begin
      koreksi.LoadFromFile(GetCurrentDir+'\koreksirek.fr3');

      TfrxMemoView(koreksi.FindObject('xheader1')).Memo.Text:= DM.Xheader1;
      TfrxMemoView(koreksi.FindObject('xheader2')).Memo.Text:= DM.Xheader2;
      TfrxMemoView(koreksi.FindObject('xfooter1')).Memo.Text:= DM.Xfooter1;
      koreksi.ShowReport() ;
    end
  END
end;

procedure TFRrekening.F5Execute(Sender: TObject);
begin
    koreksi.LoadFromFile(GetCurrentDir+'\koreksirek.fr3');
    koreksi.DesignReport;
end;

procedure TFRrekening.PeriodeIni1Click(Sender: TObject);
begin
  if(Qrek.recordcount>0)then
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

          Qexec.close;
          Qexec.SQL.clear;
          Qexec.SQL.add('DELETE FROM piutang WHERE kode=:kode');
          Qexec.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.value;
          Qexec.execute;

          Qexec.Close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('CREATE TABLE IF NOT EXISTS nosamb_hapus ( nosamb VARCHAR(30),waktuupdate DATETIME DEFAULT NULL, PRIMARY KEY (`nosamb`))');
          Qexec.SQL.Add('ENGINE=INNODB DEFAULT CHARSET=latin1');
          Qexec.Execute;

          Qexec.Close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('REPLACE INTO nosamb_hapus ');
          Qexec.SQL.Add('(nosamb,waktuupdate) VALUES (:nosamb,now())');
          Qexec.parambyname('nosamb').asstring:=Qreknosamb.Value;
          Qexec.Execute;

          Dm.Qexec.close;
          Dm.Qexec.SQL.clear;
          DM.Qexec.SQL.add('REPLACE INTO piutangdihapusdariloket  SELECT * FROM piutang  WHERE kode=:kode');
          DM.Qexec.parambyname('kode').asstring:=FormatDateTime('YYYYMM',periode.Date)+'.'+Qreknosamb.value;
          DM.Qexec.execute;

          Qrek.SQLRefresh.Clear;
          Qrek.SQLRefresh.Add('SELECT c.* FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
          Qrek.RefreshRecord;


         Qexec.close;
         Qexec.SQL.Clear;
         Qexec.SQL.Add('COMMIT');
         Qexec.Execute; 

         DM.Qexec.close;
         DM.Qexec.SQL.Clear;
         DM.Qexec.SQL.Add('COMMIT');
         DM.Qexec.Execute;


          ShowMessage('HAPUS TAGIHAN DI LOKET BERHASIl !!');


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

procedure TFRrekening.DibawahPeriodeIni1Click(Sender: TObject);
var
  i : Integer;
begin
  if(Qrek.recordcount>0)then
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


{          Qcek.close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('SELECT kode FROM piutang WHERE nosamb=:nosamb AND periode<=:periode ');
          Qcek.parambyname('nosamb').asstring:=Qreknosamb.value;
          Qcek.parambyname('periode').asstring:=FormatDateTime('YYYYMM',periode.Date);
          Qcek.Open;

          for i := 1 to Qcek.RecordCount do
          begin

            Qexec.close;
            Qexec.SQL.clear;
            Qexec.SQL.add('DELETE FROM piutang WHERE kode=:kode');
            Qexec.parambyname('kode').asstring:=Qcek.FieldByName('kode').AsString;
            Qexec.execute;

            Dm.Qexec.close;
            Dm.Qexec.SQL.clear;
            DM.Qexec.SQL.add('REPLACE INTO piutangdihapusdariloket  SELECT * FROM piutang  WHERE kode=:kode');
            DM.Qexec.parambyname('kode').asstring:=Qcek.FieldByName('kode').AsString;
            DM.Qexec.execute;

            Qcek.Next;
          end;
}

          Qexec.close;
          Qexec.SQL.clear;
          Qexec.SQL.add('DELETE FROM piutang WHERE nosamb=:nosamb AND periode<=periode');
          Qexec.parambyname('nosamb').asstring:=Qreknosamb.value;
          Qexec.parambyname('periode').asstring:=FormatDateTime('YYYYMM',periode.Date);
          Qexec.execute;

          Dm.Qexec.close;
          Dm.Qexec.SQL.clear;
          DM.Qexec.SQL.add('REPLACE INTO piutangdihapusdariloket  SELECT * FROM piutang  WHERE nosamb=:nosamb AND periode<=periode');
          DM.Qexec.parambyname('nosamb').asstring:=Qreknosamb.value;
          DM.Qexec.parambyname('periode').asstring:=FormatDateTime('YYYYMM',periode.Date);
          DM.Qexec.execute;

          Qexec.Close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('CREATE TABLE IF NOT EXISTS nosamb_hapus ( nosamb VARCHAR(30),waktuupdate DATETIME DEFAULT NULL, PRIMARY KEY (`nosamb`))');
          Qexec.SQL.Add('ENGINE=INNODB DEFAULT CHARSET=latin1');
          Qexec.Execute;

          Qexec.Close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('REPLACE INTO nosamb_hapus ');
          Qexec.SQL.Add('(nosamb,waktuupdate) VALUES (:nosamb,now())');
          Qexec.parambyname('nosamb').asstring:=Qreknosamb.Value;
          Qexec.Execute;


          Qrek.SQLRefresh.Clear;
          Qrek.SQLRefresh.Add('SELECT c.* FROM drd'+FormatDateTime('YYYYMM',periode.Date)+' c WHERE c.nosamb=:nosamb');
          Qrek.RefreshRecord;

         Qexec.close;
         Qexec.SQL.Clear;
         Qexec.SQL.Add('COMMIT');
         Qexec.Execute; 

         DM.Qexec.close;
         DM.Qexec.SQL.Clear;
         DM.Qexec.SQL.Add('COMMIT');
         DM.Qexec.Execute;


          ShowMessage('HAPUS TAGIHAN DI LOKET BERHASIl !!');


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

procedure TFRrekening.cekKodeIPLClick(Sender: TObject);
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

procedure TFRrekening.cekLuasTanahClick(Sender: TObject);
begin
 if(cekLuasTanah.Checked=true)then
    luastanah.Enabled:=true
  else
    luastanah.Enabled:=false;
end;

procedure TFRrekening.kodeIPLPropertiesChange(Sender: TObject);
begin
  namaIPL.ItemIndex:=kodeIPL.ItemIndex;
end;

procedure TFRrekening.namaIPLPropertiesChange(Sender: TObject);
begin
  kodeIPL.ItemIndex:=namaIPL.ItemIndex;
end;

end.



