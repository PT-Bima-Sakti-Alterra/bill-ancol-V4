unit FRAME_golongan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxGroupBox, Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, DBAccess, MyAccess, MemDS,
  cxImageComboBox, dxBarBuiltInMenu, RzPanel, RzButton, ExtCtrls, RzLabel,
  cxLabel, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinOffice2013White,
  dxSkinsdxNavBarPainter, dxNavBarCollns, dxNavBarBase,
  dxNavBar, RzPrgres, dxmdaset, cxMaskEdit, cxDropDownEdit;
type
  TFRgol = class(TFrame)
    Qgolongan: TMyQuery;
    DSgol: TMyDataSource;
    Qdia: TMyQuery;
    DSdia: TMyDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    dxComponentPrinter1Link2: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    Qadmlain: TMyQuery;
    DSadmlain: TMyDataSource;
    DSpemlain: TMyDataSource;
    Qpemlain: TMyQuery;
    DSretlain: TMyDataSource;
    Qretlain: TMyQuery;
    dxComponentPrinter1Link3: TdxGridReportLink;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    dxComponentPrinter1Link4: TdxGridReportLink;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    dxComponentPrinter1Link5: TdxGridReportLink;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    Qmeterai: TMyQuery;
    RzPanel1: TRzPanel;
    RzPanel5: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    RzPanel7: TRzPanel;
    info: TRzPanel;
    cxStyle32: TcxStyle;
    cxButton7: TcxButton;
    Qmaterial: TMyQuery;
    Qongkos: TMyQuery;
    DSongkos: TMyDataSource;
    DSmaterial: TMyDataSource;
    Qpmaterial: TMyQuery;
    DSpmaterial: TMyDataSource;
    Qpmat: TMyQuery;
    DSpmat: TMyDataSource;
    DSpong: TMyDataSource;
    Qpong: TMyQuery;
    DSpongkos: TMyDataSource;
    DSprab: TMyDataSource;
    Qprab: TMyQuery;
    Qpongkos: TMyQuery;
    data_: TdxMemData;
    data_kodebarang: TStringField;
    data_namabarang: TStringField;
    data_satuan: TStringField;
    data_harganet: TCurrencyField;
    data_qty: TCurrencyField;
    data_sebelumppn: TCurrencyField;
    data_ppn: TCurrencyField;
    data_total: TCurrencyField;
    Qcekwh: TMyQuery;
    Qcek: TMyQuery;
    data_id: TIntegerField;
    data_keterangan: TStringField;
    cxButton8: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    RzPanel2: TRzPanel;
    gridgol: TcxGrid;
    gtvgol: TcxGridDBTableView;
    gtvgolColumn10: TcxGridDBColumn;
    gtvgolColumn11: TcxGridDBColumn;
    gtvgolColumn3: TcxGridDBColumn;
    gtvgolnomorba: TcxGridDBColumn;
    gtvgolgolongan: TcxGridDBColumn;
    gtvgolminpakai: TcxGridDBColumn;
    gtvgoladministrasi: TcxGridDBColumn;
    gtvgolpemeliharaan: TcxGridDBColumn;
    gtvgolpelayanan: TcxGridDBColumn;
    gtvgolretribusi: TcxGridDBColumn;
    gtvgolairlimbah: TcxGridDBColumn;
    gtvgolColumn2: TcxGridDBColumn;
    gtvgolColumn7: TcxGridDBColumn;
    gtvgoldendapakai0: TcxGridDBColumn;
    gtvgoldendatunggakan: TcxGridDBColumn;
    gtvgolColumn4: TcxGridDBColumn;
    gtvgolColumn5: TcxGridDBColumn;
    gtvgolColumn8: TcxGridDBColumn;
    gtvgolColumn6: TcxGridDBColumn;
    gtvgolstatus: TcxGridDBColumn;
    gtvgolColumn1: TcxGridDBColumn;
    gtvgolColumn9: TcxGridDBColumn;
    gridgolLevel1: TcxGridLevel;
    RzPanel6: TRzPanel;
    printgol: TcxButton;
    koreksigol: TcxButton;
    tambahgol: TcxButton;
    refreshgol: TcxButton;
    exportgol: TcxButton;
    hapusgol: TcxButton;
    RzPanel3: TRzPanel;
    cxGroupBox1: TcxGroupBox;
    d1: TcxCurrencyEdit;
    d2: TcxCurrencyEdit;
    d3: TcxCurrencyEdit;
    d4: TcxCurrencyEdit;
    d5: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox8: TcxGroupBox;
    ba1: TcxCurrencyEdit;
    ba2: TcxCurrencyEdit;
    ba3: TcxCurrencyEdit;
    ba4: TcxCurrencyEdit;
    ba5: TcxCurrencyEdit;
    cxGroupBox7: TcxGroupBox;
    bb1: TcxCurrencyEdit;
    bb2: TcxCurrencyEdit;
    bb3: TcxCurrencyEdit;
    bb4: TcxCurrencyEdit;
    bb5: TcxCurrencyEdit;
    cxGroupBox9: TcxGroupBox;
    tr1: TcxCurrencyEdit;
    tr2: TcxCurrencyEdit;
    tr3: TcxCurrencyEdit;
    tr4: TcxCurrencyEdit;
    tr5: TcxCurrencyEdit;
    cxGroupBox10: TcxGroupBox;
    tetap1: TcxTextEdit;
    tetap2: TcxTextEdit;
    tetap3: TcxTextEdit;
    tetap4: TcxTextEdit;
    tetap5: TcxTextEdit;
    RzPanel16: TRzPanel;
    RzPanel21: TRzPanel;
    cxTabSheet2: TcxTabSheet;
    RzPanel4: TRzPanel;
    RzToolButton1: TRzToolButton;
    RzSpacer9: TRzSpacer;
    RzToolButton5: TRzToolButton;
    RzSpacer10: TRzSpacer;
    cxGrid2: TcxGrid;
    gtvdia: TcxGridDBTableView;
    gtvdiaColumn2: TcxGridDBColumn;
    gtvdiaColumn3: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    gtvdiaColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    gtvdiastatus: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel8: TRzPanel;
    printdia: TcxButton;
    koreksidia: TcxButton;
    tambahdia: TcxButton;
    refreshdia: TcxButton;
    exportdia: TcxButton;
    hapusdia: TcxButton;
    cxTabSheet3: TcxTabSheet;
    RzPanel10: TRzPanel;
    RzToolButton2: TRzToolButton;
    RzSpacer13: TRzSpacer;
    RzToolButton3: TRzToolButton;
    RzSpacer16: TRzSpacer;
    RzPanel11: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1administrasilain: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel9: TRzPanel;
    printadmlain: TcxButton;
    koreksiadmlain: TcxButton;
    tambahadmlain: TcxButton;
    refreshadmlain: TcxButton;
    exportadmlain: TcxButton;
    hapusadmlain: TcxButton;
    cxTabSheet4: TcxTabSheet;
    RzPanel12: TRzPanel;
    RzToolButton13: TRzToolButton;
    RzSpacer23: TRzSpacer;
    RzToolButton14: TRzToolButton;
    RzSpacer24: TRzSpacer;
    RzPanel13: TRzPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel17: TRzPanel;
    printpemlain: TcxButton;
    koreksipemlain: TcxButton;
    tambahpemlain: TcxButton;
    refreshpemlain: TcxButton;
    RzToolButton19: TcxButton;
    hapuspemlain: TcxButton;
    cxTabSheet5: TcxTabSheet;
    RzPanel14: TRzPanel;
    RzToolButton21: TRzToolButton;
    RzSpacer31: TRzSpacer;
    RzToolButton22: TRzToolButton;
    RzSpacer32: TRzSpacer;
    RzPanel15: TRzPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    RzPanel18: TRzPanel;
    printretlain: TcxButton;
    koreksiretlain: TcxButton;
    tambahretlain: TcxButton;
    refreshretlain: TcxButton;
    exportretlain: TcxButton;
    hapusretlain: TcxButton;
    cxTabSheet6: TcxTabSheet;
    RzPanel20: TRzPanel;
    simpanmaterai: TcxButton;
    meterai1: TcxCurrencyEdit;
    meterai2: TcxCurrencyEdit;
    meterai3: TcxCurrencyEdit;
    batas2: TcxCurrencyEdit;
    batas3: TcxCurrencyEdit;
    batas1: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    refreshmeterai: TcxButton;
    cxLabel9: TcxLabel;
    periodeawal: TcxCurrencyEdit;
    cxLabel10: TcxLabel;
    periodeakhir: TcxCurrencyEdit;
    idmeterai: TcxComboBox;
    cxLabel11: TcxLabel;
    hapusMeterai: TcxButton;
    cxTabSheet7: TcxTabSheet;
    RzPanel19: TRzPanel;
    RzPanel24: TRzPanel;
    jenis: TcxComboBox;
    cxLabel8: TcxLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet10: TcxTabSheet;
    RzPanel25: TRzPanel;
    RzPanel29: TRzPanel;
    cxButton26: TcxButton;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    cxGrid10: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    RzPanel26: TRzPanel;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridDBTableView5Column5: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView5Column6: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    RzPanel28: TRzPanel;
    cxButton15: TcxButton;
    cxButton17: TcxButton;
    load: TcxButton;
    info1: TRzPanel;
    RzPanel27: TRzPanel;
    RzPanel30: TRzPanel;
    cxTabSheet11: TcxTabSheet;
    RzPanel31: TRzPanel;
    RzPanel35: TRzPanel;
    cxButton13: TcxButton;
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxButton32: TcxButton;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    RzPanel32: TRzPanel;
    RzPanel33: TRzPanel;
    RzPanel34: TRzPanel;
    cxButton19: TcxButton;
    cxButton21: TcxButton;
    cxGrid8: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    info2: TRzPanel;
    RzPanel36: TRzPanel;
    cxTabSheet12: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    RzPanel37: TRzPanel;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxTabSheet8: TcxTabSheet;
    RzPanel22: TRzPanel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxButton16: TcxButton;
    gridSubGol: TcxGrid;
    gtvSubGol: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet9: TcxTabSheet;
    RzPanel38: TRzPanel;
    cxGroupBox3: TcxGroupBox;
    ba1ipl: TcxCurrencyEdit;
    ba2ipl: TcxCurrencyEdit;
    ba3ipl: TcxCurrencyEdit;
    ba4ipl: TcxCurrencyEdit;
    ba5ipl: TcxCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    bb1ipl: TcxCurrencyEdit;
    bb2ipl: TcxCurrencyEdit;
    bb3ipl: TcxCurrencyEdit;
    bb4ipl: TcxCurrencyEdit;
    bb5ipl: TcxCurrencyEdit;
    cxGroupBox5: TcxGroupBox;
    tr1ipl: TcxCurrencyEdit;
    tr2ipl: TcxCurrencyEdit;
    tr3ipl: TcxCurrencyEdit;
    tr4ipl: TcxCurrencyEdit;
    tr5ipl: TcxCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    tetap1ipl: TcxTextEdit;
    tetap2ipl: TcxTextEdit;
    tetap3ipl: TcxTextEdit;
    tetap4ipl: TcxTextEdit;
    tetap5ipl: TcxTextEdit;
    RzPanel39: TRzPanel;
    RzPanel23: TRzPanel;
    gridgolIPL: TcxGrid;
    gtvgolIPL: TcxGridDBTableView;
    gtvgolIPLkode: TcxGridDBColumn;
    gtvgolIPLperiode: TcxGridDBColumn;
    gtvgolIPLkodegol: TcxGridDBColumn;
    gtvgolIPLnomor: TcxGridDBColumn;
    gtvgolIPLgolongan: TcxGridDBColumn;
    gtvgolIPLstatus: TcxGridDBColumn;
    gtvgolIPLkategori: TcxGridDBColumn;
    gtvgolIPLuraian: TcxGridDBColumn;
    gridgolIPLLevel1: TcxGridLevel;
    RzPanel41: TRzPanel;
    printgolipl: TcxButton;
    koreksigolipl: TcxButton;
    tambahgolipl: TcxButton;
    refreshgolipl: TcxButton;
    exportgolipl: TcxButton;
    hapusgolipl: TcxButton;
    bb6ipl: TcxCurrencyEdit;
    bb7ipl: TcxCurrencyEdit;
    ba7ipl: TcxCurrencyEdit;
    ba6ipl: TcxCurrencyEdit;
    tr6ipl: TcxCurrencyEdit;
    tr7ipl: TcxCurrencyEdit;
    tetap6ipl: TcxTextEdit;
    tetap7ipl: TcxTextEdit;
    Qgolonganipl: TMyQuery;
    DSgolipl: TMyDataSource;
    gtvgolIPLtax: TcxGridDBColumn;
    procedure gtvgolFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure refreshgolClick(Sender: TObject);
    procedure tambahgolClick(Sender: TObject);
    procedure koreksigolClick(Sender: TObject);
    procedure hapusgolClick(Sender: TObject);
    procedure gtvgolCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure refreshdiaClick(Sender: TObject);
    procedure tambahdiaClick(Sender: TObject);
    procedure koreksidiaClick(Sender: TObject);
    procedure gtvdiaCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapusdiaClick(Sender: TObject);
    procedure printgolClick(Sender: TObject);
    procedure printdiaClick(Sender: TObject);
    procedure exportgolClick(Sender: TObject);
    procedure exportdiaClick(Sender: TObject);
    procedure gtvgolCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gtvdiaCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure refreshadmlainClick(Sender: TObject);
    procedure refreshpemlainClick(Sender: TObject);
    procedure refreshretlainClick(Sender: TObject);
    procedure tambahadmlainClick(Sender: TObject);
    procedure tambahpemlainClick(Sender: TObject);
    procedure tambahretlainClick(Sender: TObject);
    procedure koreksiadmlainClick(Sender: TObject);
    procedure koreksipemlainClick(Sender: TObject);
    procedure koreksiretlainClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapusadmlainDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure hapuspemlainClick(Sender: TObject);
    procedure hapusretlainClick(Sender: TObject);
    procedure printadmlainClick(Sender: TObject);
    procedure exportadmlainClick(Sender: TObject);
    procedure RzToolButton19Click(Sender: TObject);
    procedure exportretlainClick(Sender: TObject);
    procedure RzToolButton20Click(Sender: TObject);
    procedure printretlainClick(Sender: TObject);
    procedure simpanmateraiClick(Sender: TObject);
    procedure hapusadmlainClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure refreshmeteraiClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxGridDBTableView9FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton28Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxGridDBTableView8CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton30Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure cxButton32Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxGridDBTableView9CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxGridDBTableView7CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure loadClick(Sender: TObject);
    procedure cxGridDBTableView8FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure jenisPropertiesChange(Sender: TObject);
    procedure idmeteraiPropertiesChange(Sender: TObject);
    procedure hapusMeteraiClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure tambahgoliplClick(Sender: TObject);
    procedure refreshgoliplClick(Sender: TObject);
    procedure gtvgolIPLCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gtvgolIPLCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gtvgolIPLFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure koreksigoliplClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    _whip,
    _whuser,
    _whpass,
    _whdb:String;
    _whport:integer;
    
    procedure akses();
  end;

implementation

{$R *.dfm}  uses Module, UnitTgolongan,UnitTgolonganIPL, unittdiameter,
  UnitMain, unitbiayalain, unitharganet, unitongkos, unitpaket,
  unitdaftarmaterial, unitdaftarongkos, unitpaketrab,DateUtils,Strutils,
  UnitCombo;

procedure TFRgol.gtvgolFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if(Qgolongan.RecordCount>0)then
  begin
      bb1.Value:= Qgolongan.Fieldbyname('bb1').AsCurrency;
      bb2.Value:= Qgolongan.Fieldbyname('bb2').AsCurrency;
      bb3.Value:= Qgolongan.Fieldbyname('bb3').AsCurrency;
      bb4.Value:= Qgolongan.Fieldbyname('bb4').AsCurrency;
      bb5.Value:= Qgolongan.Fieldbyname('bb5').AsCurrency;
      ba1.Value:= Qgolongan.Fieldbyname('ba1').AsCurrency;
      ba2.Value:= Qgolongan.Fieldbyname('ba2').AsCurrency;
      ba3.Value:= Qgolongan.Fieldbyname('ba3').AsCurrency;
      ba4.Value:= Qgolongan.Fieldbyname('ba4').AsCurrency;
      ba5.Value:= Qgolongan.Fieldbyname('ba5').AsCurrency;
      tr1.Value:= Qgolongan.Fieldbyname('t1').AsCurrency;
      tr2.Value:= Qgolongan.Fieldbyname('t2').AsCurrency;
      tr3.Value:= Qgolongan.Fieldbyname('t3').AsCurrency;
      tr4.Value:= Qgolongan.Fieldbyname('t4').AsCurrency;
      tr5.Value:= Qgolongan.Fieldbyname('t5').AsCurrency;

      d1.Value:= Qgolongan.Fieldbyname('dendatunggakan').AsCurrency;
      d2.Value:= Qgolongan.Fieldbyname('dendatunggakan2').AsCurrency;
      d3.Value:= Qgolongan.Fieldbyname('dendatunggakan3').AsCurrency;
      d4.Value:= Qgolongan.Fieldbyname('dendatunggakan4').AsCurrency;
      d5.Value:= Qgolongan.Fieldbyname('dendatunggakanperbulan').AsCurrency;




      IF(Qgolongan.Fieldbyname('t1_tetap').asstring='1') then
      tetap1.text:='Ya'
      ELSE
      tetap1.text:='Tidak';;

       IF(Qgolongan.Fieldbyname('t2_tetap').asstring='1') then
      tetap2.text:='Ya'
      ELSE
      tetap2.text:='Tidak';;

       IF(Qgolongan.Fieldbyname('t3_tetap').asstring='1') then
      tetap3.text:='Ya'
      ELSE
      tetap3.text:='Tidak';;

       IF(Qgolongan.Fieldbyname('t4_tetap').asstring='1') then
      tetap4.text:='Ya'
      ELSE
      tetap4.text:='Tidak';;

      IF(Qgolongan.Fieldbyname('t5_tetap').asstring='1') then
      tetap5.text:='Ya'
      ELSE
      tetap5.text:='Tidak';;

  end;;
end;

procedure TFRgol.refreshgolClick(Sender: TObject);
begin
Qgolongan.close;
Qgolongan.SQl.Clear;
Qgolongan.SQl.Add('SELECT * from golongan order by kodegol,periodemulaiberlaku asc');
Qgolongan.Open;
end;

procedure TFRgol.tambahgolClick(Sender: TObject);
begin
 DM.Xflag:='Tambah';
  Fgolongan.periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  FGolongan.kode.Enabled:=true;
  FGolongan.periode.Enabled:=true;
    if Fgolongan.ShowModal=mrOK then begin
                refreshgol.Click;
    end;
end;

procedure TFRgol.koreksigolClick(Sender: TObject);
begin
  if(Qgolongan.RecordCount>0)then
    begin

    FGolongan.kode.Enabled:=false;
    FGolongan.periode.Enabled:=false;

    DM.Xflag:='Koreksi';
    DM.Xid := Qgolongan.Fieldbyname('id').AsInteger;
    DM.Xkodegol := Qgolongan.Fieldbyname('kodegol').AsString;
    Fgolongan.kode.Text := Qgolongan.Fieldbyname('kodegol').AsString;
    Fgolongan.periode.date:=EncodeDateTime(StrToInt(leftstr(Qgolongan.Fieldbyname('periodemulaiberlaku').AsString,4)), StrToInt(RightStr(Qgolongan.Fieldbyname('periodemulaiberlaku').AsString,2)), 5, 1, 2, 3, 4);
    Fgolongan.nomorba.Text := Qgolongan.Fieldbyname('nomorba').AsString;
    Fgolongan.golongan.Text := Qgolongan.Fieldbyname('golongan').AsString;
    Fgolongan.nomorba.Text := Qgolongan.Fieldbyname('nomorba').AsString;
    Fgolongan.adm.Value := Qgolongan.Fieldbyname('administrasi').AsCurrency;
    Fgolongan.pemeliharaan.Value := Qgolongan.Fieldbyname('pemeliharaan').AsCurrency;
    Fgolongan.pelayanan.Value := Qgolongan.Fieldbyname('pelayanan').AsCurrency;
    Fgolongan.retribusi.Value := Qgolongan.Fieldbyname('retribusi').AsCurrency;
    Fgolongan.airlimbah.Value := Qgolongan.Fieldbyname('airlimbah').AsCurrency;
    Fgolongan.denda0.Value := Qgolongan.Fieldbyname('dendapakai0').AsCurrency;
    Fgolongan.dendatunggakan.Value := Qgolongan.Fieldbyname('dendatunggakan').AsCurrency;
    Fgolongan.dendatunggakan2.Value := Qgolongan.Fieldbyname('dendatunggakan2').AsCurrency;
    Fgolongan.dendatunggakan3.Value := Qgolongan.Fieldbyname('dendatunggakan3').AsCurrency;
    Fgolongan.dendatunggakan4.Value := Qgolongan.Fieldbyname('dendatunggakan4').AsCurrency;
    Fgolongan.dendatunggakanperbulan.Value := Qgolongan.Fieldbyname('dendatunggakanperbulan').AsCurrency;
    Fgolongan.retribusipakai.Value := Qgolongan.Fieldbyname('retribusi_pakai').AsCurrency;
    Fgolongan.minpakai.Value := Qgolongan.Fieldbyname('minpakai').AsCurrency;
    Fgolongan.ppn.Value := Qgolongan.Fieldbyname('ppn').AsCurrency;
    Fgolongan.bb1.Value := Qgolongan.Fieldbyname('bb1').AsCurrency;
    Fgolongan.bb2.Value := Qgolongan.Fieldbyname('bb2').AsCurrency;
    Fgolongan.bb3.Value := Qgolongan.Fieldbyname('bb3').AsCurrency;
    Fgolongan.bb4.Value := Qgolongan.Fieldbyname('bb4').AsCurrency;
    Fgolongan.bb5.Value := Qgolongan.Fieldbyname('bb5').AsCurrency;
    Fgolongan.ba1.Value := Qgolongan.Fieldbyname('ba1').AsCurrency;
    Fgolongan.ba2.Value := Qgolongan.Fieldbyname('ba2').AsCurrency;
    Fgolongan.ba3.Value := Qgolongan.Fieldbyname('ba3').AsCurrency;
    Fgolongan.ba4.Value := Qgolongan.Fieldbyname('ba4').AsCurrency;
    Fgolongan.ba5.Value := Qgolongan.Fieldbyname('ba5').AsCurrency;
    Fgolongan.t1.Value := Qgolongan.Fieldbyname('t1').AsCurrency;
    Fgolongan.t2.Value := Qgolongan.Fieldbyname('t2').AsCurrency;
    Fgolongan.t3.Value := Qgolongan.Fieldbyname('t3').AsCurrency;
    Fgolongan.t4.Value := Qgolongan.Fieldbyname('t4').AsCurrency;
    Fgolongan.t5.Value := Qgolongan.Fieldbyname('t5').AsCurrency;

    Fgolongan.kategori.Text := Qgolongan.Fieldbyname('kategori').AsString;
    Fgolongan.uraian.Text := Qgolongan.Fieldbyname('uraian').AsString;

      IF(Qgolongan.Fieldbyname('t1_tetap').asstring='1') then
        Fgolongan.tetap1.itemindex:=1
        ELSE
         Fgolongan.tetap1.itemindex:=0;;

      IF(Qgolongan.Fieldbyname('t2_tetap').asstring='1') then
        Fgolongan.tetap2.itemindex:=1
        ELSE
         Fgolongan.tetap2.itemindex:=0;;

      IF(Qgolongan.Fieldbyname('t3_tetap').asstring='1') then
        Fgolongan.tetap3.itemindex:=1
        ELSE
         Fgolongan.tetap3.itemindex:=0;;

      IF(Qgolongan.Fieldbyname('t4_tetap').asstring='1') then
        Fgolongan.tetap4.itemindex:=1
        ELSE
         Fgolongan.tetap4.itemindex:=0;;

       IF(Qgolongan.Fieldbyname('t5_tetap').asstring='1') then
        Fgolongan.tetap5.itemindex:=1
        ELSE
         Fgolongan.tetap5.itemindex:=0;;


      IF(Qgolongan.Fieldbyname('aktif').asstring='1') then
        Fgolongan.aktif.itemindex:=0
        ELSE
         Fgolongan.aktif.itemindex:=1;;
    Fgolongan.mindenda.Value := Qgolongan.Fieldbyname('mindenda').AsCurrency;

      IF(Qgolongan.Fieldbyname('trf_denda_berdasarkan_persen').asstring='1') then
        Fgolongan.trf_denda_persen.itemindex:=1
      ELSE
        Fgolongan.trf_denda_persen.itemindex:=0;


    if Fgolongan.ShowModal=mrOK then begin
           Qgolongan.SQLRefresh.Clear;
           Qgolongan.SQLRefresh.Add('select * from golongan where id=:id');
           Qgolongan.RefreshRecord;

    end;

    end;;
end;

procedure TFRgol.hapusgolClick(Sender: TObject);
begin
 if(Qgolonganipl.RecordCount>0)then
  begin



    if MessageDlg('Yakin hapus daftar golongan IPL '+Qgolonganipl.Fieldbyname('golongan').AsString+' - '+Qgolonganipl.Fieldbyname('nomorba').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

     TRY


        Umain.openkoneksi_host;



          Umain.Qhost1.close;
          Umain.Qhost1.SQl.Clear;
          Umain.Qhost1.SQL.Add('START TRANSACTION');
          Umain.Qhost1.Execute;

          DM.Qexec.close;
          DM.Qexec.SQl.Clear;
          DM.Qexec.SQL.Add('START TRANSACTION');
          DM.Qexec.Execute;



             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('DELETE FROM golongan_ipl WHERE kodegolyangberlaku=:kodegolyangberlaku');
             Umain.Qhost1.ParamByName('kodegolyangberlaku').AsString:=Qgolonganipl.Fieldbyname('kodegolyangberlaku').AsString;
             Umain.Qhost1.Execute;

             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('DELETE FROM byretribusi_lain WHERE kode=:kodegol AND kode NOT IN (SELECT kodegol FROM golongan_ipl)');
             Umain.Qhost1.ParamByName('kodegol').AsString:=Qgolonganipl.Fieldbyname('kodegol').AsString;
             Umain.Qhost1.Execute;


             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('DELETE FROM golongan_ipl WHERE kodegolyangberlaku=:kodegolyangberlaku');
             DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qgolonganipl.Fieldbyname('kodegolyangberlaku').AsString;
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('DELETE FROM byretribusi_lain WHERE kode=:kodegol AND kode NOT IN (SELECT kodegol FROM golongan_ipl)');
             DM.Qexec.ParamByName('kodegol').AsString:=Qgolonganipl.Fieldbyname('kodegol').AsString;
             DM.Qexec.Execute;


             DM.uraianlogakses:='Hapus Golongan IPL '+Qgolonganipl.Fieldbyname('kodegolyangberlaku').AsString;
             DM.targetlogakses:=TRIM(Qgolonganipl.Fieldbyname('kodegol').AsString);
             DM.logakses;


              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
              Umain.Qhost1.SQL.Add('COMMIT');
              Umain.Qhost1.Execute;

              DM.Qexec.close;
              DM.Qexec.SQl.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

             refreshgol.Click;
           
         except ON E:Exception do
        begin


                Umain.Qhost1.close;
                Umain.Qhost1.SQl.Clear;
                Umain.Qhost1.SQL.Add('ROLLBACK');
                Umain.Qhost1.Execute;

                DM.Qexec.close;
                DM.Qexec.SQl.Clear;
                DM.Qexec.SQL.Add('ROLLBACK');
                DM.Qexec.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


       umain.host.close;

    end
    else
    Exit;



   

  end;


 umain.host.close;


end;

procedure TFRgol.gtvgolCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if koreksigol.Enabled=true then
  koreksigol.Click
 else
  MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);
end;

procedure TFRgol.refreshdiaClick(Sender: TObject);
begin
Qdia.Close;
Qdia.SQL.Clear;
Qdia.SQL.Add('SELECT * FROM diameter ORDER BY kodediameter,periodemulaiberlaku ASC');
Qdia.Open;
end;

procedure TFRgol.tambahdiaClick(Sender: TObject);
begin
            DM.Xflag:='Tambah';
            Udiameter.periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
            Udiameter.kodediameter.Enabled:=true;
            Udiameter.periode.Enabled:=true;
            if Udiameter.ShowModal=mrOK then begin
                refreshdia.Click;
            end;
end;

procedure TFRgol.koreksidiaClick(Sender: TObject);
begin
 IF(Qdia.RecordCount>0)THEN BEGIN

               DM.Xflag:='Koreksi';

               Udiameter.kodediameter.Enabled:=false;
               Udiameter.periode.Enabled:=false;

               DM.Xid:= Qdia.Fieldbyname('id').AsInteger;
               DM.Xkodediameter:= Qdia.Fieldbyname('kodediameter').AsString;

               Udiameter.periode.date:=EncodeDateTime(StrToInt(leftstr(Qdia.Fieldbyname('periodemulaiberlaku').AsString,4)), StrToInt(RightStr(Qdia.Fieldbyname('periodemulaiberlaku').AsString,2)), 5, 1, 2, 3, 4);

               Udiameter.kodediameter.Text:= Qdia.Fieldbyname('kodediameter').AsString; 
               Udiameter.ukuran.Text:= Qdia.Fieldbyname('ukuran').AsString;
               Udiameter.administrasi.value:= Qdia.Fieldbyname('administrasi').AsCurrency;
               Udiameter.pemeliharan.value:= Qdia.Fieldbyname('pemeliharaan').AsCurrency;
               Udiameter.pelayanan.value:= Qdia.Fieldbyname('pelayanan').AsCurrency;
               udiameter.retribusi.value:= Qdia.Fieldbyname('retribusi').AsCurrency;
               Udiameter.airlimbah.value:= Qdia.Fieldbyname('airlimbah').AsCurrency;
               Udiameter.dendapakai0.value:=Qdia.Fieldbyname('dendapakai0').AsCurrency;

               if( Qdia.Fieldbyname('aktif').AsString='1')then
                Udiameter.aktif.itemindex:=0
               else
                Udiameter.aktif.itemindex:=1;;


              if Udiameter.ShowModal=mrOK then begin

                             Qdia.SQLRefresh.Clear;
                             Qdia.SQLRefresh.Add('SELECT * FROM diameter WHERE id=:id');
                             Qdia.RefreshRecord;
                end;
      END;;
end;

procedure TFRgol.gtvdiaCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if koreksidia.Enabled=true then
  koreksidia.Click
 else
   MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);
end;

procedure TFRgol.hapusdiaClick(Sender: TObject);
begin
 if(Qdia.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar diameter '+Qdia.Fieldbyname('ukuran').AsString+' - '+Qdia.Fieldbyname('nomorba').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY

      Umain.openkoneksi_host;


       Umain.Qhost1.close;
          Umain.Qhost1.SQl.Clear;
          Umain.Qhost1.SQL.Add('START TRANSACTION');
          Umain.Qhost1.Execute;

          DM.Qexec.close;
          DM.Qexec.SQl.Clear;
          DM.Qexec.SQL.Add('START TRANSACTION');
          DM.Qexec.Execute;

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM diameter WHERE kodediameteryangberlaku=:kodediameteryangberlaku');
     Umain.Qhost1.ParamByName('kodediameteryangberlaku').AsString:=Qdia.Fieldbyname('kodediameteryangberlaku').AsString;
     Umain.Qhost1.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM diameter WHERE kodediameteryangberlaku=:kodediameteryangberlaku');
     DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qdia.Fieldbyname('kodediameteryangberlaku').AsString;
     DM.Qexec.Execute;




     DM.uraianlogakses:='Hapus Kodediameter '+Qdia.FieldByName('ukuran').AsString+' - '+Qdia.Fieldbyname('kodediameter').AsString+ ' dengan Nomor B/A '+Qdia.Fieldbyname('nomorba').AsString+' ';
     DM.targetlogakses:=Qdia.Fieldbyname('kodediameter').AsString;
     DM.logakses;


      Umain.Qhost1.close;
          Umain.Qhost1.SQl.Clear;
          Umain.Qhost1.SQL.Add('COMMIT');
          Umain.Qhost1.Execute;

          DM.Qexec.close;
          DM.Qexec.SQl.Clear;
          DM.Qexec.SQL.Add('COMMIT');
          DM.Qexec.Execute;

      refreshdia.Click;

      except ON E:Exception do
        begin

               Umain.Qhost1.close;
          Umain.Qhost1.SQl.Clear;
          Umain.Qhost1.SQL.Add('ROLLBACK');
          Umain.Qhost1.Execute;

          DM.Qexec.close;
          DM.Qexec.SQl.Clear;
          DM.Qexec.SQL.Add('ROLLBACK');
          DM.Qexec.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


     umain.host.close;



    end
    else
      Exit;

  end;

 umain.host.close;
end;

procedure TFRgol.printgolClick(Sender: TObject);
begin
if(Qgolonganipl.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR GOLONGAN IPL';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRgol.printdiaClick(Sender: TObject);
begin
if(Qdia.RecordCount>0)then
  begin
    dxComponentPrinter1Link2.ReportTitle.Text:='DAFTAR DIAMETER';
    dxComponentPrinter1Link2.Preview(true);
  end;
end;

procedure TFRgol.akses();
begin

  if(Umain.olah_data_tarif<>'1')then
  begin

      tambahgol.Enabled:=false;
      tambahgolipl.Enabled:=false;
      tambahdia.Enabled:=false;
      tambahadmlain.Enabled:=false;
      tambahpemlain.Enabled:=false;
      tambahretlain.Enabled:=false;
      koreksigol.Enabled:=false;
      koreksigolipl.Enabled:=false;
      koreksidia.Enabled:=false;
      koreksiadmlain.Enabled:=false;
      koreksipemlain.Enabled:=false;
      koreksiretlain.Enabled:=false;
      hapusgol.Enabled:=false;
      hapusgolipl.Enabled:=false;
      hapusdia.Enabled:=false;
      hapusadmlain.Enabled:=false;
      hapuspemlain.Enabled:=false;
      hapusretlain.Enabled:=false;
      simpanmaterai.Enabled:=false;
        
  end;

  cxPageControl1.HideTabs:=true;
  cxPageControl1.Visible:=false;

  


end;


procedure TFRgol.exportgolClick(Sender: TObject);
begin
  if not Qgolonganipl.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(gridgolIPL.FocusedView.PatternGridView));
  end;
end;

procedure TFRgol.exportdiaClick(Sender: TObject);
begin
 if not Qdia.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(cxGrid2.FocusedView.PatternGridView));
  end;
end;

procedure TFRgol.gtvgolCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvgolstatus.Index], varString)='0') then
    BEGIN
    IF (gtvgol.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    end;
    END;
end;

procedure TFRgol.gtvdiaCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
 IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvdiastatus.Index], varString)='0') then
    BEGIN
    IF (gtvdia.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    end;
    END;
end;

procedure TFRgol.refreshadmlainClick(Sender: TObject);
begin
Qadmlain.Close;
Qadmlain.SQL.Clear;
Qadmlain.SQL.Add('SELECT * FROM byadministrasi_lain ORDER BY kode ASC');
Qadmlain.Open;
end;

procedure TFRgol.refreshpemlainClick(Sender: TObject);
begin
Qpemlain.Close;
Qpemlain.SQL.Clear;
Qpemlain.SQL.Add('SELECT * FROM bypemeliharaan_lain ORDER BY kode ASC');
Qpemlain.Open;
end;

procedure TFRgol.refreshretlainClick(Sender: TObject);
begin
Qretlain.Close;
Qretlain.SQL.Clear;
Qretlain.SQL.Add('SELECT * FROM byretribusi_lain ORDER BY kode ASC');
Qretlain.Open;
end;

procedure TFRgol.tambahadmlainClick(Sender: TObject);
begin

            DM.Xflag:='Tambah';
            ubiayalain.mode:='1';
            if ubiayalain.ShowModal=mrOK then begin
                refreshadmlain.Click;
            end;

end;

procedure TFRgol.tambahpemlainClick(Sender: TObject);
begin
            DM.Xflag:='Tambah';
            ubiayalain.mode:='2';
            if ubiayalain.ShowModal=mrOK then begin
                refreshpemlain.Click;
            end;

end;

procedure TFRgol.tambahretlainClick(Sender: TObject);
begin
            DM.Xflag:='Tambah';
            ubiayalain.mode:='3';
            if ubiayalain.ShowModal=mrOK then begin
                refreshretlain.Click;
            end;
end;

procedure TFRgol.koreksiadmlainClick(Sender: TObject);
begin
 IF(Qadmlain.RecordCount>0)THEN BEGIN

               DM.Xflag:='Koreksi';
               DM.Xid:= Qadmlain.Fieldbyname('id').AsInteger;
               DM.xkodeadmlain:= Qadmlain.Fieldbyname('kode').AsString;
               ubiayalain.mode:='1';
               ubiayalain.kode.Text:= Qadmlain.Fieldbyname('kode').AsString;
               ubiayalain.keterangan.Text:= Qadmlain.Fieldbyname('keterangan').AsString;
               ubiayalain.biaya.value:= Qadmlain.Fieldbyname('administrasilain').AsCurrency;



              if Ubiayalain.ShowModal=mrOK then begin

                             Qadmlain.SQLRefresh.Clear;
                             Qadmlain.SQLRefresh.Add('SELECT * FROM byadministrasi_lain WHERE id=:id');
                             Qadmlain.RefreshRecord;
                end;
      END;;
end;

procedure TFRgol.koreksipemlainClick(Sender: TObject);
begin
IF(Qpemlain.RecordCount>0)THEN BEGIN

               DM.Xflag:='Koreksi';
               DM.Xid:= Qpemlain.Fieldbyname('id').AsInteger;
               DM.xkodepemlain:= Qpemlain.Fieldbyname('kode').AsString;
               ubiayalain.mode:='2';
               ubiayalain.kode.Text:= Qpemlain.Fieldbyname('kode').AsString;
               ubiayalain.keterangan.Text:= Qpemlain.Fieldbyname('keterangan').AsString;
               ubiayalain.biaya.value:= Qpemlain.Fieldbyname('pemeliharaanlain').AsCurrency;



              if Ubiayalain.ShowModal=mrOK then begin

                             Qpemlain.SQLRefresh.Clear;
                             Qpemlain.SQLRefresh.Add('SELECT * FROM bypemeliharaan_lain WHERE id=:id');
                             Qpemlain.RefreshRecord;
                end;
      END;;
end;

procedure TFRgol.koreksiretlainClick(Sender: TObject);
begin
IF(Qretlain.RecordCount>0)THEN BEGIN

               DM.Xflag:='Koreksi';
               DM.Xid:= Qretlain.Fieldbyname('id').AsInteger;
               DM.xkoderetlain:= Qretlain.Fieldbyname('kode').AsString;
               ubiayalain.mode:='3';
               ubiayalain.kode.Text:= Qretlain.Fieldbyname('kode').AsString;
               ubiayalain.keterangan.Text:= Qretlain.Fieldbyname('keterangan').AsString;
               ubiayalain.biaya.value:= Qretlain.Fieldbyname('retribusilain').AsCurrency;



              if Ubiayalain.ShowModal=mrOK then begin

                             Qretlain.SQLRefresh.Clear;
                             Qretlain.SQLRefresh.Add('SELECT * FROM byretribusi_lain WHERE id=:id');
                             Qretlain.RefreshRecord;
                end;
      END;;
end;

procedure TFRgol.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if koreksiadmlain.Enabled=true then
  koreksiadmlain.Click
 else
  MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);
end;

procedure TFRgol.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if koreksipemlain.Enabled=true then
  koreksipemlain.Click
 else
  MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);
end;

procedure TFRgol.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if koreksiretlain.Enabled=true then
  koreksiretlain.Click
 else
   MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);
end;

procedure TFRgol.hapusadmlainDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
if(Qadmlain.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Administrasi Lain '+Qadmlain.Fieldbyname('keterangan').AsString+' - '+Qadmlain.Fieldbyname('kode').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM byadministrasi_lain WHERE id=:id');
     DM.Qexec.ParamByName('id').AsInteger:=Qadmlain.Fieldbyname('id').AsInteger;
     DM.Qexec.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('update pelanggan set kodeadministrasilain="-" WHERE kodeadministrasilain=:kodeadministrasilain');
     DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qadmlain.Fieldbyname('kode').AsString;
     DM.Qexec.Execute;

     DM.uraianlogakses:='Hapus Administrasi Lain '+Qadmlain.FieldByName('kode').AsString+' - '+Qadmlain.Fieldbyname('keterangan').AsString+ ' ';
     DM.targetlogakses:=Qadmlain.Fieldbyname('kode').AsString;
     DM.logakses;

      refreshadmlain.Click;
     Exit;
    end
    else
      Exit;

  end;
end;

procedure TFRgol.hapuspemlainClick(Sender: TObject);
begin
if(Qpemlain.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Pemeliharaan Lain '+Qpemlain.Fieldbyname('keterangan').AsString+' - '+Qpemlain.Fieldbyname('kode').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


        TRY
        Umain.openkoneksi_host;



             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('DELETE FROM bypemeliharaan_lain WHERE kode=:kode');
             Umain.Qhost1.ParamByName('kode').AsString:=Qpemlain.Fieldbyname('kode').AsString;
             Umain.Qhost1.Execute;

            
    
             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('DELETE FROM bypemeliharaan_lain WHERE id=:id');
             DM.Qexec.ParamByName('id').AsInteger:=Qpemlain.Fieldbyname('id').AsInteger;
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('update pelanggan set kodepemeliharaanlain="-" WHERE kodepemeliharaanlain=:kodepemeliharaanlain');
             DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qpemlain.Fieldbyname('kode').AsString;
             DM.Qexec.Execute;




             DM.uraianlogakses:='Hapus Pemeliharaan Lain '+Qpemlain.FieldByName('kode').AsString+' - '+Qpemlain.Fieldbyname('keterangan').AsString+ ' ';
             DM.targetlogakses:=Qpemlain.Fieldbyname('kode').AsString;
             DM.logakses;

              refreshpemlain.Click;

         except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


       umain.host.close;


    
    end
    else
      Exit;

  end;

umain.host.close;

end;

procedure TFRgol.hapusretlainClick(Sender: TObject);
begin
if(Qretlain.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Retribusi Lain '+Qretlain.Fieldbyname('keterangan').AsString+' - '+Qretlain.Fieldbyname('kode').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


    TRY
    Umain.openkoneksi_host;


             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('DELETE FROM byretribusi_lain WHERE kode=:kode');
             Umain.Qhost1.ParamByName('kode').AsString:=Qretlain.Fieldbyname('kode').AsString;
             Umain.Qhost1.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('DELETE FROM byretribusi_lain WHERE id=:id');
             DM.Qexec.ParamByName('id').AsInteger:=Qretlain.Fieldbyname('id').AsInteger;
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('update pelanggan set koderetribusilain="-" WHERE koderetribusilain=:koderetribusilain');
             DM.Qexec.ParamByName('koderetribusilain').AsString:=Qretlain.Fieldbyname('kode').AsString;
             DM.Qexec.Execute;

             DM.uraianlogakses:='Hapus Retribusi Lain '+Qretlain.FieldByName('kode').AsString+' - '+Qretlain.Fieldbyname('keterangan').AsString+ ' ';
             DM.targetlogakses:=Qretlain.Fieldbyname('kode').AsString;
             DM.logakses;

              refreshretlain.Click;

         except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;




       umain.host.close;


    end
    else
      Exit;

  end;

umain.host.close;

end;

procedure TFRgol.printadmlainClick(Sender: TObject);
begin
if(Qadmlain.RecordCount>0)then
  begin
    dxComponentPrinter1Link3.ReportTitle.Text:='DAFTAR ADMINISTRASI LAIN';
    dxComponentPrinter1Link3.Preview(true);
  end;
end;

procedure TFRgol.exportadmlainClick(Sender: TObject);
begin
 if not Qadmlain.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(cxGrid1.FocusedView.PatternGridView));
  end;
end;

procedure TFRgol.RzToolButton19Click(Sender: TObject);
begin
 if not Qpemlain.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(cxGrid3.FocusedView.PatternGridView));
  end;
end;

procedure TFRgol.exportretlainClick(Sender: TObject);
begin
 if not Qretlain.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(cxGrid4.FocusedView.PatternGridView));
  end;
end;

procedure TFRgol.RzToolButton20Click(Sender: TObject);
begin
if(Qpemlain.RecordCount>0)then
  begin
    dxComponentPrinter1Link4.ReportTitle.Text:='DAFTAR PEMELIHARAAN LAIN';
    dxComponentPrinter1Link4.Preview(true);
  end;
end;

procedure TFRgol.printretlainClick(Sender: TObject);
begin
if(Qretlain.RecordCount>0)then
  begin
    dxComponentPrinter1Link5.ReportTitle.Text:='DAFTAR RETRIBUSI LAIN';
    dxComponentPrinter1Link5.Preview(true);
  end;
end;

procedure TFRgol.simpanmateraiClick(Sender: TObject);
begin

 with DM.Qexec do
 begin
  close;
  SQL.Clear;
  SQL.Add('replace into meterai values (:idx,:batas1,:batas2,:batas3,:meterai1,:meterai2,:meterai3,:periodeawal,:periodeakhir)');
  ParamByName('idx').Value:=idmeterai.Text;
  ParamByName('batas1').AsCurrency:=batas1.Value;
  ParamByName('batas2').AsCurrency:=batas2.Value;
  ParamByName('batas3').AsCurrency:=batas3.Value;
  ParamByName('meterai1').AsCurrency:=meterai1.Value;
  ParamByName('meterai2').AsCurrency:=meterai2.Value;
  ParamByName('meterai3').AsCurrency:=meterai3.Value;
  ParamByName('periodeawal').Value:=periodeawal.Value;
  ParamByName('periodeakhir').Value:=periodeakhir.Value;
  Execute;
 end;

   DM.uraianlogakses:=umain.user.caption+' Koreksi Materai';
   DM.targetlogakses:=umain.user.caption;
   DM.logakses;

   MessageDlg('Koreksi Materai Berhasil', mtInformation, [mbOk], 0);

   refreshmeterai.Click;
end;

procedure TFRgol.hapusadmlainClick(Sender: TObject);
begin
if(Qadmlain.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Administrasi Lain '+Qadmlain.Fieldbyname('keterangan').AsString+' - '+Qadmlain.Fieldbyname('kode').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


        TRY
        Umain.openkoneksi_host;



             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('DELETE FROM byadministrasi_lain WHERE kode=:kode');
             Umain.Qhost1.ParamByName('kode').AsString:=Qadmlain.Fieldbyname('kode').AsString;
             Umain.Qhost1.Execute;

            
    
             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('DELETE FROM byadministrasi_lain WHERE id=:id');
             DM.Qexec.ParamByName('id').AsInteger:=Qadmlain.Fieldbyname('id').AsInteger;
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('update pelanggan set kodeadministrasilain="-" WHERE kodeadministrasilain=:kodeadministrasilain');
             DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qadmlain.Fieldbyname('kode').AsString;
             DM.Qexec.Execute;




             DM.uraianlogakses:='Hapus Administrasi Lain '+Qadmlain.FieldByName('kode').AsString+' - '+Qadmlain.Fieldbyname('keterangan').AsString+ ' ';
             DM.targetlogakses:=Qadmlain.Fieldbyname('kode').AsString;
             DM.logakses;

              refreshadmlain.Click;

         except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


       umain.host.close;


     
    end
    else
      Exit;

  end;

umain.host.close;


end;

procedure TFRgol.cxButton1Click(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex:=0;
  cxPageControl1.Visible:=true;
  info.Caption:='PENGATURAN TARIF "GOLONGAN"';
end;

procedure TFRgol.cxButton2Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=1;
cxPageControl1.Visible:=true;
info.Caption:='PENGATURAN TARIF "DIAMETER"';
end;

procedure TFRgol.cxButton3Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=2;
cxPageControl1.Visible:=true;
info.Caption:='PENGATURAN TARIF "ADMINISTRASI LAIN"';
end;

procedure TFRgol.cxButton4Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=3;
cxPageControl1.Visible:=true;
info.Caption:='PENGATURAN TARIF "PEMELIHARAAN LAIN"';
end;

procedure TFRgol.cxButton5Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=8;
cxPageControl1.Visible:=true;
info.Caption:='PENGATURAN TARIF "GOLONGAN IPL"';
end;

procedure TFRgol.cxButton6Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=5;
cxPageControl1.Visible:=true;
info.Caption:='PENGATURAN TARIF "MATERAI"';
end;

procedure TFRgol.refreshmeteraiClick(Sender: TObject);
begin
  Qmeterai.close;
  Qmeterai.SQL.Clear;
  Qmeterai.SQL.Add('SELECT * FROM meterai ORDER BY idx');
  Qmeterai.Open;

  idmeterai.Properties.Items.Clear;

  while not Qmeterai.Eof do
  begin
          idmeterai.Properties.Items.Add(Qmeterai.FieldByName('idx').ASstring);
          Qmeterai.Next;
  end;

  idmeterai.ItemIndex:=0;

end;

procedure TFRgol.cxButton7Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=6;
cxPageControl1.Visible:=true;


cxButton26.Click;
cxButton13.Click;
cxButton22.Click;

info.Caption:='PENGATURAN TARIF "RAB"';

end;

procedure TFRgol.cxButton26Click(Sender: TObject);
begin
TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;




    Qpmat.close;
    Qpmat.SQL.Clear;

    if jenis.Text='STANDART' then
     Qpmat.SQL.Add(Qpmat.SQLLock.Text)
    else 
     Qpmat.SQL.Add(Qpmat.SQLRefresh.Text);
     
    Qpmat.Open;
end;

procedure TFRgol.cxButton13Click(Sender: TObject);
begin
TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;



      

    Qpong.close;
    Qpong.SQL.Clear;

     if jenis.Text='STANDART' then
     Qpong.SQL.Add(Qpong.SQLLock.Text)
    else
     Qpong.SQL.Add(Qpong.SQLRefresh.Text);
     
     Qpong.Open;
     
end;

procedure TFRgol.cxGridDBTableView9FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

  if(Qpong.RecordCount=0)then
  begin
      exit;
  end;

  TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

    info2.Caption:=Qpong.fieldbyname('namapaket').AsString;

    Qpongkos.close;
    Qpongkos.SQL.Clear;

    if jenis.Text='STANDART' then
    Qpongkos.SQL.Add(Qpongkos.SQLLock.Text)
    else
    Qpongkos.SQL.Add(Qpongkos.SQLRefresh.Text);


    Qpongkos.ParamByName('namapaket').AsString:=Qpong.fieldbyname('namapaket').AsString;
    Qpongkos.Open;
end;

procedure TFRgol.cxButton22Click(Sender: TObject);
begin
TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

    Qprab.close;
    Qprab.SQL.Clear;


    if jenis.Text='STANDART' then
    Qprab.SQL.Add(Qprab.SQLLock.Text)
    else
    Qprab.SQL.Add(Qprab.SQLRefresh.Text);

    Qprab.Open;
end;

procedure TFRgol.cxButton27Click(Sender: TObject);
begin
  DM.xflag:='Tambah';

  upaket.info.Caption:='DATA PAKET MATERIAL';
  upaket._jenis:='Material';

    if jenis.Text='STANDART' then
     upaket._limbah:='0'
    else
     upaket._limbah:='1';


  if upaket.showmodal=MrOk then
  begin

      cxButton26.Click;
  end;
end;

procedure TFRgol.cxButton28Click(Sender: TObject);
begin
 if(Qpmat.RecordCount=0)then
  begin
      exit;
  end;

  DM.xflag:='Koreksi';


   upaket.info.Caption:='DATA PAKET MATERIAL';

  upaket.namapaket.Text:=Qpmat.fieldbyname('namapaket').AsString;
  upaket._namapaketlama:=Qpmat.fieldbyname('namapaket').AsString;
  upaket._jenis:='Material';


    if jenis.Text='STANDART' then
     upaket._limbah:='0'
    else
     upaket._limbah:='1';



  if upaket.showmodal=MrOk then
  begin

      cxButton26.Click;
  end;
end;

procedure TFRgol.cxButton29Click(Sender: TObject);
begin
 if(Qpmat.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Paket Material '+Qpmat.Fieldbyname('namapaket').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY
    Umain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION;');
    Umain.Qhost1.Execute;



    if jenis.Text='STANDART' then
    begin



     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paket WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpmat.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketmaterial WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpmat.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;

    end
    else
    begin

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paket_limbah WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpmat.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketmaterial_limbah WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpmat.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;



    end;




     DM.uraianlogakses:='Hapus Paket Material '+Qpmat.FieldByName('namapaket').AsString;
     DM.targetlogakses:=Qpmat.Fieldbyname('namapaket').AsString;
     DM.logakses;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('COMMIT;');
     Umain.Qhost1.Execute;

     cxButton26.Click;

      except ON E:Exception do
      begin

        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('ROLLBACK;');
        Umain.Qhost1.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
        end;
        end;


    end
    else
      Exit;

  end;
end;

procedure TFRgol.cxButton15Click(Sender: TObject);
begin


  if jenis.Text='STANDART' then
  udaftarmaterial._limbah:='0'
  else
  udaftarmaterial._limbah:='1';


  ucombo.isikombo();
  udaftarmaterial.keterangan.properties.items:= Ucombo.paketketerangan.properties.items;

 if udaftarmaterial.showmodal=MrOk then
  begin


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;

    if jenis.Text='STANDART' then
      Umain.Qhost1.SQL.Add('INSERT INTO paketmaterial (namapaket,kodebarang,qty,keterangan) values (:namapaket,:kodebarang,:qty,:keterangan)')
    else
      Umain.Qhost1.SQL.Add('INSERT INTO paketmaterial_limbah (namapaket,kodebarang,qty,keterangan) values (:namapaket,:kodebarang,:qty,:keterangan)');

      
    Umain.Qhost1.ParamByName('namapaket').AsString:=Qpmat.fieldbyname('namapaket').AsString;
    Umain.Qhost1.ParamByName('kodebarang').AsString:=udaftarmaterial.Qcek.fieldbyname('kodebarang').AsString;
    Umain.Qhost1.ParamByName('qty').AsCurrency:=udaftarmaterial.qty.Value;
    Umain.Qhost1.ParamByName('keterangan').AsString:=udaftarmaterial.keterangan.Text;
    Umain.Qhost1.Execute;


    load.Click;

  end;
end;

procedure TFRgol.cxButton17Click(Sender: TObject);
begin
 if(data_.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus Material '+data_namabarang.AsString+' dari paket '+Qpmat.Fieldbyname('namapaket').AsString+'  ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY
    Umain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION;');
    Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;

     if jenis.Text='STANDART' then
     Umain.Qhost1.SQL.Add('DELETE FROM paketmaterial WHERE id=:id')
     else
     Umain.Qhost1.SQL.Add('DELETE FROM paketmaterial_limbah WHERE id=:id');

     Umain.Qhost1.ParamByName('id').AsInteger:=data_id.AsInteger;
     Umain.Qhost1.Execute;    


     DM.uraianlogakses:='Hapus Material '+data_namabarang.AsString+' dari paket '+Qpmat.Fieldbyname('namapaket').AsString;
     DM.targetlogakses:=data_namabarang.AsString;
     DM.logakses;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('COMMIT;');
     Umain.Qhost1.Execute;

      load.Click;

      except ON E:Exception do
      begin

        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('ROLLBACK;');
        Umain.Qhost1.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
        end;
        end;


    end
    else
      Exit;

  end;
end;

procedure TFRgol.cxGridDBTableView8CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
cxButton28.Click;
end;

procedure TFRgol.cxButton30Click(Sender: TObject);
begin
 DM.xflag:='Tambah';

  upaket.info.Caption:='DATA PAKET ONGKOS';
  upaket._jenis:='Ongkos';

    if jenis.Text='STANDART' then
     upaket._limbah:='0'
    else
     upaket._limbah:='1';

  if upaket.showmodal=MrOk then
  begin

      cxButton13.Click;
  end;
end;

procedure TFRgol.cxButton31Click(Sender: TObject);
begin
if(Qpong.RecordCount=0)then
  begin
      exit;
  end;

  DM.xflag:='Koreksi';


   upaket.info.Caption:='DATA PAKET ONGKOS';

  upaket.namapaket.Text:=Qpong.fieldbyname('namapaket').AsString;
  upaket._namapaketlama:=Qpong.fieldbyname('namapaket').AsString;
  upaket._jenis:='Ongkos';


    if jenis.Text='STANDART' then
     upaket._limbah:='0'
    else
     upaket._limbah:='1';


  if upaket.showmodal=MrOk then
  begin

      cxButton13.Click;
  end;
end;

procedure TFRgol.cxButton32Click(Sender: TObject);
begin
 if(Qpong.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Paket Ongkos '+Qpong.Fieldbyname('namapaket').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY
    Umain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION;');
    Umain.Qhost1.Execute;



    if jenis.Text='STANDART' then
    begin



     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paket WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpong.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketongkos WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpong.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


    end
    else
    begin

      Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paket_limbah WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpong.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketongkos_limbah WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qpong.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;

    end;




     DM.uraianlogakses:='Hapus Paket Ongkos '+Qpong.FieldByName('namapaket').AsString;
     DM.targetlogakses:=Qpong.Fieldbyname('namapaket').AsString;
     DM.logakses;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('COMMIT;');
     Umain.Qhost1.Execute;

     cxButton13.Click;

      except ON E:Exception do
      begin

        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('ROLLBACK;');
        Umain.Qhost1.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
        end;
        end;


    end
    else
      Exit;

  end;
end;

procedure TFRgol.cxButton19Click(Sender: TObject);
begin



  if jenis.Text='STANDART' then
  udaftarongkos._limbah:='0'
  else
  udaftarongkos._limbah:='1';

  ucombo.isikombo();
  udaftarongkos.keterangan.properties.items:= Ucombo.paketketerangan.properties.items;


 if udaftarongkos.showmodal=MrOk then
  begin


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;

    if jenis.Text='STANDART' then  
    Umain.Qhost1.SQL.Add('INSERT INTO paketongkos (namapaket,kodeongkos,qty,keterangan) values (:namapaket,:kodeongkos,:qty,:keterangan)')
    else
    Umain.Qhost1.SQL.Add('INSERT INTO paketongkos_limbah (namapaket,kodeongkos,qty,keterangan) values (:namapaket,:kodeongkos,:qty,:keterangan)');

    Umain.Qhost1.ParamByName('namapaket').AsString:=Qpong.fieldbyname('namapaket').AsString;
    Umain.Qhost1.ParamByName('kodeongkos').AsString:=udaftarongkos.Qcek.fieldbyname('kodeongkos').AsString;
    Umain.Qhost1.ParamByName('qty').AsCurrency:=udaftarongkos.qty.Value;
    Umain.Qhost1.ParamByName('keterangan').AsString:=udaftarongkos.keterangan.Text;
    Umain.Qhost1.Execute;


    Qpongkos.close;
    Qpongkos.SQL.Clear;

    if jenis.Text='STANDART' then
    Qpongkos.SQL.Add(Qpongkos.SQLLock.Text)
    else
    Qpongkos.SQL.Add(Qpongkos.SQLRefresh.Text);

    Qpongkos.ParamByName('namapaket').AsString:=Qpong.fieldbyname('namapaket').AsString;
    Qpongkos.Open;

  end;
end;

procedure TFRgol.cxButton21Click(Sender: TObject);
begin
 if(Qpongkos.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus Material '+Qpongkos.Fieldbyname('namaongkos').AsString+' dari paket '+Qpong.Fieldbyname('namapaket').AsString+'  ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY
    Umain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION;');
    Umain.Qhost1.Execute;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;

     if jenis.Text='STANDART' then
     Umain.Qhost1.SQL.Add('DELETE FROM paketongkos WHERE id=:id')
     else
      Umain.Qhost1.SQL.Add('DELETE FROM paketongkos_limbah WHERE id=:id');

     Umain.Qhost1.ParamByName('id').AsInteger:=Qpongkos.Fieldbyname('id').AsInteger;
     Umain.Qhost1.Execute;    


     DM.uraianlogakses:='Hapus Ongkos '+Qpongkos.FieldByName('namaongkos').AsString+' dari paket '+Qpong.Fieldbyname('namapaket').AsString;
     DM.targetlogakses:=Qpongkos.Fieldbyname('namaongkos').AsString;
     DM.logakses;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('COMMIT;');
     Umain.Qhost1.Execute;

      Qpongkos.close;
      Qpongkos.SQL.Clear;

      if jenis.Text='STANDART' then
      Qpongkos.SQL.Add(Qpongkos.SQLLock.Text)
      else
      Qpongkos.SQL.Add(Qpongkos.SQLRefresh.Text);


      Qpongkos.ParamByName('namapaket').AsString:=Qpong.fieldbyname('namapaket').AsString;
      Qpongkos.Open;

      except ON E:Exception do
      begin

        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('ROLLBACK;');
        Umain.Qhost1.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
        end;
        end;


    end
    else
      Exit;

  end;
end;

procedure TFRgol.cxGridDBTableView9CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
cxButton31.Click;
end;

procedure TFRgol.cxButton23Click(Sender: TObject);
begin

 DM.xflag:='Tambah';
  
TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

   Umain.Qhost1.Close;
   Umain.Qhost1.SQL.Clear;

   if jenis.Text='STANDART' then
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket WHERE jenis="Material" ORDER BY namapaket ASC ')
   else
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket_limbah WHERE jenis="Material" ORDER BY namapaket ASC ');

   Umain.Qhost1.Open;

    upaketrab.paketmat.Properties.Items.Clear;

   while not Umain.Qhost1.Eof do
   begin
            upaketrab.paketmat.Properties.Items.Add(Umain.Qhost1.FieldByName('namapaket').ASstring);
            Umain.Qhost1.Next;
   end;


   Umain.Qhost1.Close;
   Umain.Qhost1.SQL.Clear;

   if jenis.Text='STANDART' then
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket WHERE jenis="Ongkos" ORDER BY namapaket ASC ')
   else
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket_limbah WHERE jenis="Ongkos" ORDER BY namapaket ASC ');


   Umain.Qhost1.Open;

    upaketrab.paketongkos.Properties.Items.Clear;

   while not Umain.Qhost1.Eof do
   begin
            upaketrab.paketongkos.Properties.Items.Add(Umain.Qhost1.FieldByName('namapaket').ASstring);
            Umain.Qhost1.Next;
   end;
   


  upaketrab.namapaket.Clear;
  upaketrab.paketmat.Text:='';
  upaketrab.paketongkos.Text:='';
  upaketrab.persen.Value:=0;


  
   if jenis.Text='STANDART' then
     upaketrab._limbah:='0'
    else
     upaketrab._limbah:='1';
  

  if upaketrab.showmodal=MrOk then
  begin 
     cxButton22.Click;
  end;

end;

procedure TFRgol.cxButton24Click(Sender: TObject);
begin
 if(Qprab.RecordCount=0)then
  begin
      exit;
  end;


  DM.xflag:='Koreksi';



  TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

   Umain.Qhost1.Close;
   Umain.Qhost1.SQL.Clear;

   
   if jenis.Text='STANDART' then
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket WHERE jenis="Material" ORDER BY namapaket ASC ')
   else
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket_limbah WHERE jenis="Material" ORDER BY namapaket ASC ');



   Umain.Qhost1.Open;

    upaketrab.paketmat.Properties.Items.Clear;

   while not Umain.Qhost1.Eof do
   begin
            upaketrab.paketmat.Properties.Items.Add(Umain.Qhost1.FieldByName('namapaket').ASstring);
            Umain.Qhost1.Next;
   end;


   Umain.Qhost1.Close;
   Umain.Qhost1.SQL.Clear;

    if jenis.Text='STANDART' then
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket WHERE jenis="Ongkos" ORDER BY namapaket ASC ')
   else
   Umain.Qhost1.SQL.Add('SELECT namapaket FROM paket_limbah WHERE jenis="Ongkos" ORDER BY namapaket ASC ');


   Umain.Qhost1.Open;

    upaketrab.paketongkos.Properties.Items.Clear;

   while not Umain.Qhost1.Eof do
   begin
            upaketrab.paketongkos.Properties.Items.Add(Umain.Qhost1.FieldByName('namapaket').ASstring);
            Umain.Qhost1.Next;
   end;
   

  upaketrab._namapaketlama:=Qprab.fieldbyname('namapaket').AsString;
  upaketrab.namapaket.text:=Qprab.fieldbyname('namapaket').AsString;
  upaketrab.paketmat.Text:=Qprab.fieldbyname('paketmat').AsString;
  upaketrab.paketongkos.Text:=Qprab.fieldbyname('paketongkos').AsString;
  upaketrab.persen.Value:=Qprab.fieldbyname('persenjasadaribahan').AsCurrency;

  if upaketrab.showmodal=MrOk then
  begin

     cxButton22.Click;
     
  end;
end;

procedure TFRgol.cxButton25Click(Sender: TObject);
begin
 if(Qprab.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Paket RAB '+Qprab.Fieldbyname('namapaket').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

    TRY
    Umain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION;');
    Umain.Qhost1.Execute;

    if jenis.Text='STANDART' then
    begin

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketrab WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qprab.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;


    end
    else
    begin

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM paketrab_limbah WHERE namapaket=:namapaket');
     Umain.Qhost1.ParamByName('namapaket').AsString:=Qprab.Fieldbyname('namapaket').AsString;
     Umain.Qhost1.Execute;

    end;



     DM.uraianlogakses:='Hapus Paket RAB '+Qprab.FieldByName('namapaket').AsString;
     DM.targetlogakses:=Qprab.Fieldbyname('namapaket').AsString;
     DM.logakses;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('COMMIT;');
     Umain.Qhost1.Execute;

     cxButton22.Click;

      except ON E:Exception do
      begin

        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('ROLLBACK;');
        Umain.Qhost1.Execute;

                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
        end;
        end;


    end
    else
      Exit;

  end;
end;

procedure TFRgol.cxGridDBTableView7CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
cxButton24.Click;
end;

procedure TFRgol.loadClick(Sender: TObject);
var
i:integer;
begin


 if(Qpmat.RecordCount=0)then
  begin
      exit;
  end;

  TRY


    Umain.openkoneksi_host;

    info1.Caption:=Qpmat.fieldbyname('namapaket').AsString;



   if jenis.Text='STANDART' then
   begin

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select c.*,p.* FROm paketmaterial c LEFT JOIN ppnrab p ON p.idx="1" WHERE c.namapaket=:namapaket');
    Qcek.ParamByName('namapaket').AsString:=Qpmat.fieldbyname('namapaket').AsString;
    Qcek.Open;

    data_.Close;
    data_.Open;

    Umain.openkoneksi_gudang;


    for i:=1 to Qcek.RecordCount do
    begin

      Qcekwh.close;
      Qcekwh.SQL.Clear;
      Qcekwh.SQL.Add('select * FROm barang WHERE kodebarang=:kodebarang');
      Qcekwh.ParamByName('kodebarang').AsString:=Qcek.fieldbyname('kodebarang').AsString;
      Qcekwh.Open;

      data_.Append;
      data_id.AsInteger:=Qcek.fieldbyname('id').AsInteger;
      data_kodebarang.AsString:=Qcek.fieldbyname('kodebarang').AsString;
      data_namabarang.AsString:=Qcekwh.fieldbyname('deskripsi').AsString;
      data_satuan.AsString:=Qcekwh.fieldbyname('unit').AsString;
      data_harganet.AsCurrency:=Qcekwh.fieldbyname('hargajual').AsCurrency;
      data_qty.AsCurrency:=Qcek.fieldbyname('qty').AsCurrency;
      data_sebelumppn.AsCurrency:=  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency;
      data_ppn.AsCurrency:=  (  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) * ( Qcek.fieldbyname('ppnmaterial').AsCurrency /100 ) ;
      data_total.AsCurrency:=  ( Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) +
                               (  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) * ( Qcek.fieldbyname('ppnmaterial').AsCurrency /100 ) ;

      data_keterangan.AsString:=Qcek.fieldbyname('keterangan').AsString;
      data_.Post;


      Qcek.Next;
    end;

    data_.First;

   end
   else
   begin

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select c.*,p.* FROm paketmaterial_limbah c LEFT JOIN ppnrab p ON p.idx="1" WHERE c.namapaket=:namapaket');
    Qcek.ParamByName('namapaket').AsString:=Qpmat.fieldbyname('namapaket').AsString;
    Qcek.Open;

    data_.Close;
    data_.Open;

    Umain.openkoneksi_gudang;


    for i:=1 to Qcek.RecordCount do
    begin

      Qcekwh.close;
      Qcekwh.SQL.Clear;
      Qcekwh.SQL.Add('select * FROm barang_limbah WHERE kodebarang=:kodebarang');
      Qcekwh.ParamByName('kodebarang').AsString:=Qcek.fieldbyname('kodebarang').AsString;
      Qcekwh.Open;

      data_.Append;
      data_id.AsInteger:=Qcek.fieldbyname('id').AsInteger;
      data_kodebarang.AsString:=Qcek.fieldbyname('kodebarang').AsString;
      data_namabarang.AsString:=Qcekwh.fieldbyname('deskripsi').AsString;
      data_satuan.AsString:=Qcekwh.fieldbyname('unit').AsString;
      data_harganet.AsCurrency:=Qcekwh.fieldbyname('hargajual').AsCurrency;
      data_qty.AsCurrency:=Qcek.fieldbyname('qty').AsCurrency;
      data_sebelumppn.AsCurrency:=  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency;
      data_ppn.AsCurrency:=  (  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) * ( Qcek.fieldbyname('ppnmaterial').AsCurrency /100 ) ;
      data_total.AsCurrency:=  ( Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) +
                               (  Qcek.fieldbyname('qty').AsCurrency * Qcekwh.fieldbyname('hargajual').AsCurrency ) * ( Qcek.fieldbyname('ppnmaterial').AsCurrency /100 ) ;

      data_keterangan.AsString:=Qcek.fieldbyname('keterangan').AsString;
      data_.Post;


      Qcek.Next;
    end;




    data_.First;



   end;

   except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

end;

procedure TFRgol.cxGridDBTableView8FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
load.Click;
end;

procedure TFRgol.jenisPropertiesChange(Sender: TObject);
begin
cxButton26.Click;
cxButton13.Click;
cxButton22.Click;
end;

procedure TFRgol.idmeteraiPropertiesChange(Sender: TObject);
begin
  Qmeterai.close;
  Qmeterai.SQL.Clear;
  Qmeterai.SQL.Add('SELECT * FROM meterai WHERE idx=:idx');
  Qmeterai.ParamByName('idx').AsString:=idmeterai.Text;
  Qmeterai.Open;

  if Qmeterai.RecordCount=0 then
  begin
    batas1.Value:=0;
    batas2.Value:=0;
    batas3.Value:=0;

    meterai1.Value:=0;
    meterai2.Value:=0;
    meterai3.Value:=0;

    periodeawal.Value:=0;
    periodeakhir.Value:=0;
  end
  else
  begin
    batas1.Value:=Qmeterai.fieldbyname('batas1').AsCurrency;
    batas2.Value:=Qmeterai.fieldbyname('batas2').AsCurrency;
    batas3.Value:=Qmeterai.fieldbyname('batas3').AsCurrency;

    meterai1.Value:=Qmeterai.fieldbyname('meterai1').AsCurrency;
    meterai2.Value:=Qmeterai.fieldbyname('meterai2').AsCurrency;
    meterai3.Value:=Qmeterai.fieldbyname('meterai3').AsCurrency;

    periodeawal.Value:=Qmeterai.fieldbyname('periodeawal').Value;
    periodeakhir.Value:=Qmeterai.fieldbyname('periodeakhir').Value;
  end
end;

procedure TFRgol.hapusMeteraiClick(Sender: TObject);
begin
 with DM.Qexec do
 begin
  close;
  SQL.Clear;
  SQL.Add('DELETE FROM meterai WHERE idx=:idx');
  ParamByName('idx').Value:=idmeterai.Text;
  Execute;
 end;

   DM.uraianlogakses:=umain.user.caption+' Hapus Materai';
   DM.targetlogakses:=umain.user.caption;
   DM.logakses;

   MessageDlg('Hapus Materai Berhasil', mtInformation, [mbOk], 0);

   refreshmeterai.Click;

end;

procedure TFRgol.cxButton8Click(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex:=7;
  cxPageControl1.Visible:=true;
  info.Caption:='PENGATURAN SUB GOLONGAN';

end;

procedure TFRgol.cxButton12Click(Sender: TObject);
begin
Qgolongan.close;
Qgolongan.SQl.Clear;
Qgolongan.SQl.Add('SELECT * from sub_golongan order by subgolongan asc');
Qgolongan.Open;
end;

procedure TFRgol.tambahgoliplClick(Sender: TObject);
begin
  DM.Xflag:='Tambah';
  FGolonganIPL.periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  FGolonganIPL.kode.Enabled:=true;
  FGolonganIPL.periode.Enabled:=true;
    if FGolonganIPL.ShowModal=mrOK then begin
                refreshgol.Click;
    end;
end;

procedure TFRgol.refreshgoliplClick(Sender: TObject);
begin
Qgolonganipl.close;
Qgolonganipl.SQl.Clear;
Qgolonganipl.SQl.Add('SELECT * from golongan_ipl order by kodegol,periodemulaiberlaku asc');
Qgolonganipl.Open;
end;

procedure TFRgol.gtvgolIPLCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if koreksigolipl.Enabled=true then
  koreksigolipl.Click
 else
  MessageDlg('Akses Ditolak !!', mtWarning, [mbOk], 0);

end;

procedure TFRgol.gtvgolIPLCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvgoliplstatus.Index], varString)='0') then
    BEGIN
    IF (gtvgolIPL.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    end;
    END;
end;

procedure TFRgol.gtvgolIPLFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if(Qgolonganipl.RecordCount>0)then
  begin
      bb1ipl.Value:= Qgolonganipl.Fieldbyname('bb1').AsCurrency;
      bb2ipl.Value:= Qgolonganipl.Fieldbyname('bb2').AsCurrency;
      bb3ipl.Value:= Qgolonganipl.Fieldbyname('bb3').AsCurrency;
      bb4ipl.Value:= Qgolonganipl.Fieldbyname('bb4').AsCurrency;
      bb5ipl.Value:= Qgolonganipl.Fieldbyname('bb5').AsCurrency;
      bb6ipl.Value:= Qgolonganipl.Fieldbyname('bb6').AsCurrency;
      bb7ipl.Value:= Qgolonganipl.Fieldbyname('bb7').AsCurrency;
      ba1ipl.Value:= Qgolonganipl.Fieldbyname('ba1').AsCurrency;
      ba2ipl.Value:= Qgolonganipl.Fieldbyname('ba2').AsCurrency;
      ba3ipl.Value:= Qgolonganipl.Fieldbyname('ba3').AsCurrency;
      ba4ipl.Value:= Qgolonganipl.Fieldbyname('ba4').AsCurrency;
      ba5ipl.Value:= Qgolonganipl.Fieldbyname('ba5').AsCurrency;
      ba6ipl.Value:= Qgolonganipl.Fieldbyname('ba6').AsCurrency;
      ba7ipl.Value:= Qgolonganipl.Fieldbyname('ba7').AsCurrency;
      tr1ipl.Value:= Qgolonganipl.Fieldbyname('t1').AsCurrency;
      tr2ipl.Value:= Qgolonganipl.Fieldbyname('t2').AsCurrency;
      tr3ipl.Value:= Qgolonganipl.Fieldbyname('t3').AsCurrency;
      tr4ipl.Value:= Qgolonganipl.Fieldbyname('t4').AsCurrency;
      tr5ipl.Value:= Qgolonganipl.Fieldbyname('t5').AsCurrency;
      tr6ipl.Value:= Qgolonganipl.Fieldbyname('t6').AsCurrency;
      tr7ipl.Value:= Qgolonganipl.Fieldbyname('t7').AsCurrency;


      IF(Qgolonganipl.Fieldbyname('t1_tetap').asstring='1') then
      tetap1ipl.text:='Ya'
      ELSE
      tetap1ipl.text:='Tidak';;

       IF(Qgolonganipl.Fieldbyname('t2_tetap').asstring='1') then
      tetap2ipl.text:='Ya'
      ELSE
      tetap2ipl.text:='Tidak';;

       IF(Qgolonganipl.Fieldbyname('t3_tetap').asstring='1') then
      tetap3ipl.text:='Ya'
      ELSE
      tetap3ipl.text:='Tidak';;

       IF(Qgolonganipl.Fieldbyname('t4_tetap').asstring='1') then
      tetap4ipl.text:='Ya'
      ELSE
      tetap4ipl.text:='Tidak';;

      IF(Qgolonganipl.Fieldbyname('t5_tetap').asstring='1') then
      tetap5ipl.text:='Ya'
      ELSE
      tetap5ipl.text:='Tidak';;

      IF(Qgolonganipl.Fieldbyname('t6_tetap').asstring='1') then
      tetap6ipl.text:='Ya'
      ELSE
      tetap6ipl.text:='Tidak';;

      IF(Qgolonganipl.Fieldbyname('t7_tetap').asstring='1') then
      tetap7ipl.text:='Ya'
      ELSE
      tetap7ipl.text:='Tidak';;

  end;;
end;

procedure TFRgol.koreksigoliplClick(Sender: TObject);
begin
  if(Qgolonganipl.RecordCount>0)then
    begin

    FGolonganIPL.kode.Enabled:=false;
    FGolonganIPL.periode.Enabled:=false;

    DM.Xflag:='Koreksi';
    DM.Xid := Qgolonganipl.Fieldbyname('id').AsInteger;
    DM.Xkodegol := Qgolonganipl.Fieldbyname('kodegol').AsString;
    FGolonganIPL.kode.Text := Qgolonganipl.Fieldbyname('kodegol').AsString;
    FGolonganIPL.periode.date:=EncodeDateTime(StrToInt(leftstr(Qgolonganipl.Fieldbyname('periodemulaiberlaku').AsString,4)), StrToInt(RightStr(Qgolonganipl.Fieldbyname('periodemulaiberlaku').AsString,2)), 5, 1, 2, 3, 4);
    FGolonganIPL.nomorba.Text := Qgolonganipl.Fieldbyname('nomorba').AsString;
    FGolonganIPL.golongan.Text := Qgolonganipl.Fieldbyname('golongan').AsString;
    FGolonganIPL.nomorba.Text := Qgolonganipl.Fieldbyname('nomorba').AsString;
    FGolonganIPL.ppn.Value := Qgolonganipl.Fieldbyname('ppn').AsCurrency;
    FGolonganIPL.bb1.Value := Qgolonganipl.Fieldbyname('bb1').AsCurrency;
    FGolonganIPL.bb2.Value := Qgolonganipl.Fieldbyname('bb2').AsCurrency;
    FGolonganIPL.bb3.Value := Qgolonganipl.Fieldbyname('bb3').AsCurrency;
    FGolonganIPL.bb4.Value := Qgolonganipl.Fieldbyname('bb4').AsCurrency;
    FGolonganIPL.bb5.Value := Qgolonganipl.Fieldbyname('bb5').AsCurrency;
    FGolonganIPL.bb6.Value := Qgolonganipl.Fieldbyname('bb6').AsCurrency;
    FGolonganIPL.bb7.Value := Qgolonganipl.Fieldbyname('bb7').AsCurrency;
    FGolonganIPL.ba1.Value := Qgolonganipl.Fieldbyname('ba1').AsCurrency;
    FGolonganIPL.ba2.Value := Qgolonganipl.Fieldbyname('ba2').AsCurrency;
    FGolonganIPL.ba3.Value := Qgolonganipl.Fieldbyname('ba3').AsCurrency;
    FGolonganIPL.ba4.Value := Qgolonganipl.Fieldbyname('ba4').AsCurrency;
    FGolonganIPL.ba5.Value := Qgolonganipl.Fieldbyname('ba5').AsCurrency;
    FGolonganIPL.ba6.Value := Qgolonganipl.Fieldbyname('ba6').AsCurrency;
    FGolonganIPL.ba7.Value := Qgolonganipl.Fieldbyname('ba7').AsCurrency;
    FGolonganIPL.t1.Value := Qgolonganipl.Fieldbyname('t1').AsCurrency;
    FGolonganIPL.t2.Value := Qgolonganipl.Fieldbyname('t2').AsCurrency;
    FGolonganIPL.t3.Value := Qgolonganipl.Fieldbyname('t3').AsCurrency;
    FGolonganIPL.t4.Value := Qgolonganipl.Fieldbyname('t4').AsCurrency;
    FGolonganIPL.t5.Value := Qgolonganipl.Fieldbyname('t5').AsCurrency;
    FGolonganIPL.t6.Value := Qgolonganipl.Fieldbyname('t6').AsCurrency;
    FGolonganIPL.t7.Value := Qgolonganipl.Fieldbyname('t7').AsCurrency;

    FGolonganIPL.kategori.Text := Qgolonganipl.Fieldbyname('kategori').AsString;
    FGolonganIPL.uraian.Text := Qgolonganipl.Fieldbyname('uraian').AsString;

      IF(Qgolonganipl.Fieldbyname('t1_tetap').asstring='1') then
        FGolonganIPL.tetap1.itemindex:=1
        ELSE
         FGolonganIPL.tetap1.itemindex:=0;;

      IF(Qgolonganipl.Fieldbyname('t2_tetap').asstring='1') then
        FGolonganIPL.tetap2.itemindex:=1
        ELSE
         FGolonganIPL.tetap2.itemindex:=0;;

      IF(Qgolonganipl.Fieldbyname('t3_tetap').asstring='1') then
        FGolonganIPL.tetap3.itemindex:=1
        ELSE
         FGolonganIPL.tetap3.itemindex:=0;;

      IF(Qgolonganipl.Fieldbyname('t4_tetap').asstring='1') then
        FGolonganIPL.tetap4.itemindex:=1
        ELSE
         FGolonganIPL.tetap4.itemindex:=0;;

       IF(Qgolonganipl.Fieldbyname('t5_tetap').asstring='1') then
        FGolonganIPL.tetap5.itemindex:=1
        ELSE
         FGolonganIPL.tetap5.itemindex:=0;;

       IF(Qgolonganipl.Fieldbyname('t6_tetap').asstring='1') then
        FGolonganIPL.tetap6.itemindex:=1
        ELSE
         FGolonganIPL.tetap6.itemindex:=0;;

       IF(Qgolonganipl.Fieldbyname('t7_tetap').asstring='1') then
        FGolonganIPL.tetap7.itemindex:=1
        ELSE
         FGolonganIPL.tetap7.itemindex:=0;;

      IF(Qgolonganipl.Fieldbyname('aktif').asstring='1') then
        FGolonganIPL.aktif.itemindex:=0
        ELSE
         FGolonganIPL.aktif.itemindex:=1;;


    if FGolonganIPL.ShowModal=mrOK then begin
           Qgolonganipl.SQLRefresh.Clear;
           Qgolonganipl.SQLRefresh.Add('select * from golongan_ipl where id=:id');
           Qgolonganipl.RefreshRecord;

    end;

    end;;
end;

end.
