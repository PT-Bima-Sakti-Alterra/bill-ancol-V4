 unit UnitMain;

interface                     
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, RzStatus,
  ExtCtrls, RzPanel, cxClasses, dxRibbon, dxBar,cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  FRAME_pelanggan, FRAME_pelangganlimbah,    FRAME_pelangganlltt,
  FRAME_golongan,
  FRAME_rekening,
  FRAME_periode,

  FRAME_pengguna,  
  FRAME_angsuran,
  ActnList, RzPrgres, frxpngimage, cxImage, dxGDIPlusClasses, DB, DBAccess,
  MyAccess, MemDS, Menus, StdCtrls, cxButtons, RzLabel,
  dxSkinOffice2013White,FRAME_loket,
  FRAME_chart1,
  FRAME_chart2,
  FRAME_chart3,FRAME_chart4, ImgList,FRAME_rab, FRAME_wilayah,FRAME_pemutihan,
  FRAME_lainnya,  RzDBStat, cxCalc,
  cxBarEditItem, jpeg,dxribbonForm, dxScreenTip,FRAME_penggunaloket,
  FRAME_laporan, FRAME_listupdate,FRAME_limbah,FRAME_lltt;

type
    TUmain = class(TdxribbonForm)
    dxBarManager1: TdxBarManager;
    manajemen: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    pelanggan: TdxBarLargeButton;
    rekening: TdxBarLargeButton;
    periode: TdxBarLargeButton;
    tarif: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    wilayah: TdxBarLargeButton;
    kolektif: TdxBarLargeButton;
    merk: TdxBarLargeButton;
    kelainan: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    log: TdxBarLargeButton;
    ActionList1: TActionList;
    enter: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    transferdata: TdxBarLargeButton;
    backup: TdxBarLargeButton;
    repair: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    pengaturan: TdxBarLargeButton;
    pengguna: TdxBarLargeButton;
    DialSaveexcel: TSaveDialog;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    host: TMyConnection;
    loket: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    Qhost1: TMyQuery;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    Qhost2: TMyQuery;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    sumberair: TdxBarLargeButton;
    penggunapusat: TdxBarLargeButton;
    penggunaloket: TdxBarLargeButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    Qcekinfo: TMyQuery;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    aksesjabatan: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    dxBarLargeButton62: TdxBarLargeButton;
    dxBarLargeButton63: TdxBarLargeButton;
    utility: TdxRibbonTab;
    lokasifoto: TdxBarLargeButton;
    setbulanberjalan: TdxBarLargeButton;
    setparaf: TdxBarLargeButton;
    sinkron: TdxBarLargeButton;
    sinkronloket: TdxBarLargeButton;
    calonpelanggan: TdxBarLargeButton;
    dxBarLargeButton64: TdxBarLargeButton;
    Qhost3: TMyQuery;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarSubItem8: TdxBarSubItem;
    pengguna_pusat: TdxBarLargeButton;
    pengguna_loket: TdxBarLargeButton;
    hak_akses: TdxBarLargeButton;
    dxBarButton21: TdxBarButton;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarLargeButton74: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton75: TdxBarLargeButton;
    dxBarLargeButton76: TdxBarLargeButton;
    dxBarLargeButton77: TdxBarLargeButton;
    dxBarLargeButton78: TdxBarLargeButton;
    dxBarLargeButton79: TdxBarLargeButton;
    dxBarLargeButton80: TdxBarLargeButton;
    dxBarLargeButton81: TdxBarLargeButton;
    dxBarLargeButton82: TdxBarLargeButton;
    dxBarLargeButton83: TdxBarLargeButton;
    dxBarLargeButton84: TdxBarLargeButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarLargeButton85: TdxBarLargeButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarLargeButton86: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    RzPanel1: TRzPanel;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarLargeButton68: TdxBarLargeButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarLargeButton87: TdxBarLargeButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarLargeButton88: TdxBarLargeButton;
    dxBarLargeButton89: TdxBarLargeButton;
    Timer2: TTimer;
    btndownloadtransaksi: TdxBarLargeButton;
    Qtabelproses: TMyQuery;
    dxBarButton48: TdxBarButton;
    daftarangsuran: TdxBarLargeButton;
    logopdam: TcxImage;
    icon: TcxImageList;
    dxBarLargeButton92: TdxBarLargeButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarLargeButton93: TdxBarLargeButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarLargeButton90: TdxBarLargeButton;
    dxBarButton57: TdxBarButton;
    dxBarLargeButton94: TdxBarLargeButton;
    dxBarSubItem22: TdxBarSubItem;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarSubItem23: TdxBarSubItem;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarLargeButton95: TdxBarLargeButton;
    dxBarButton63: TdxBarButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton64: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton65: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton66: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    dxBarButton67: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton68: TdxBarButton;
    dxBarSubItem25: TdxBarSubItem;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarSeparator7: TdxBarSeparator;
    dxBarButton74: TdxBarButton;
    dxBarSeparator8: TdxBarSeparator;
    dxBarSeparator9: TdxBarSeparator;
    dxBarButton75: TdxBarButton;
    dxBarSeparator10: TdxBarSeparator;
    dxBarLargeButton96: TdxBarLargeButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarLargeButton97: TdxBarLargeButton;
    dxBarSeparator11: TdxBarSeparator;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarSeparator12: TdxBarSeparator;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarSeparator13: TdxBarSeparator;
    dxBarButton80: TdxBarButton;
    dxBarSeparator14: TdxBarSeparator;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarLargeButton98: TdxBarLargeButton;
    dxBarSubItem27: TdxBarSubItem;
    dxBarButton84: TdxBarButton;
    dxBarSeparator15: TdxBarSeparator;
    dxBarButton85: TdxBarButton;
    dxBarSeparator16: TdxBarSeparator;
    dxBarButton86: TdxBarButton;
    dxBarSubItem28: TdxBarSubItem;
    dxBarSubItem29: TdxBarSubItem;
    dxBarSubItem30: TdxBarSubItem;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarSeparator17: TdxBarSeparator;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarSeparator18: TdxBarSeparator;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    vdb1: TdxBarButton;
    vdb2: TdxBarButton;
    vdb3: TdxBarButton;
    vdb4: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarSubItem31: TdxBarSubItem;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    Qcek: TMyQuery;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarSubItem32: TdxBarSubItem;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxBarSubItem33: TdxBarSubItem;
    dxBarSubItem34: TdxBarSubItem;
    dxBarSubItem35: TdxBarSubItem;
    dxBarButton114: TdxBarButton;
    dxBarButton115: TdxBarButton;
    dxBarButton116: TdxBarButton;
    downloadtransaksi: TdxBarLargeButton;
    dxBarButton117: TdxBarButton;
    dxBarLargeButton101: TdxBarLargeButton;
    calonsambungan: TdxBarLargeButton;
    dxBarSubItem36: TdxBarSubItem;
    dxRibbon1Tab1: TdxRibbonTab;
    daftartarif: TdxBarLargeButton;
    area: TdxBarLargeButton;
    daftarunit: TdxBarLargeButton;
    dxBarLargeButton105: TdxBarLargeButton;
    dxBarLargeButton106: TdxBarLargeButton;
    dxBarLargeButton107: TdxBarLargeButton;
    dxBarLargeButton108: TdxBarLargeButton;
    dxBarLargeButton109: TdxBarLargeButton;
    dxBarLargeButton110: TdxBarLargeButton;
    daftarpengguna: TdxBarSubItem;
    dxBarLargeButton111: TdxBarLargeButton;
    dxBarLargeButton112: TdxBarLargeButton;
    dxBarSubItem38: TdxBarSubItem;
    dxBarSubItem39: TdxBarSubItem;
    dxBarButton118: TdxBarButton;
    dxBarButton119: TdxBarButton;
    dxBarButton120: TdxBarButton;
    permohonan: TdxBarLargeButton;
    lainnya: TdxBarLargeButton;
    timer1: TTimer;
    Qceksambbaru: TMyQuery;
    lap2: TdxRibbonTab;
    Qceklpp_air: TMyQuery;
    Qceklpp_na: TMyQuery;
    dxBarLargeButton115: TdxBarLargeButton;
    dxBarLargeButton116: TdxBarLargeButton;
    dxBarLargeButton117: TdxBarLargeButton;
    dxBarLargeButton118: TdxBarLargeButton;
    dxBarLargeButton119: TdxBarLargeButton;
    dxBarLargeButton120: TdxBarLargeButton;
    dxBarLargeButton121: TdxBarLargeButton;
    dxBarLargeButton122: TdxBarLargeButton;
    dxBarLargeButton123: TdxBarLargeButton;
    dxBarLargeButton124: TdxBarLargeButton;
    dxBarLargeButton125: TdxBarLargeButton;
    dxBarLargeButton126: TdxBarLargeButton;
    dxBarLargeButton127: TdxBarLargeButton;
    dxBarLargeButton128: TdxBarLargeButton;
    lap3: TdxRibbonTab;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton129: TdxBarLargeButton;
    dxBarLargeButton130: TdxBarLargeButton;
    dxBarLargeButton131: TdxBarLargeButton;
    dxBarLargeButton132: TdxBarLargeButton;
    dxBarLargeButton133: TdxBarLargeButton;
    dxBarLargeButton134: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton135: TdxBarLargeButton;
    dxBarLargeButton136: TdxBarLargeButton;
    dxBarLargeButton137: TdxBarLargeButton;
    dxBarLargeButton138: TdxBarLargeButton;
    dxBarLargeButton139: TdxBarLargeButton;
    Qhakakses: TMyQuery;
    Qcekprosesdownload: TMyQuery;
    Qhost4: TMyQuery;
    dxBarButton121: TdxBarButton;
    dxBarButton122: TdxBarButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton91: TdxBarLargeButton;
    dxBarLargeButton99: TdxBarLargeButton;
    dxBarManager1Bar12: TdxBar;
    dxBarLargeButton100: TdxBarLargeButton;
    dxBarLargeButton102: TdxBarLargeButton;
    dxBarLargeButton103: TdxBarLargeButton;
    dxBarLargeButton104: TdxBarLargeButton;
    dxBarLargeButton113: TdxBarLargeButton;
    uploaddrd: TdxBarSubItem;
    dxBarButton123: TdxBarButton;
    dxBarButton124: TdxBarButton;
    dxBarLargeButton114: TdxBarLargeButton;
    dxBarLargeButton140: TdxBarLargeButton;
    dxRibbon1Tab4: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton141: TdxBarLargeButton;
    dxBarLargeButton142: TdxBarLargeButton;
    dxBarLargeButton143: TdxBarLargeButton;
    dxBarLargeButton144: TdxBarLargeButton;
    lap4: TdxRibbonTab;
    dxBarManager1Bar13: TdxBar;
    dxBarLargeButton145: TdxBarLargeButton;
    dxBarLargeButton146: TdxBarLargeButton;
    dxBarLargeButton147: TdxBarLargeButton;
    dxBarLargeButton148: TdxBarLargeButton;
    RzStatusBar2: TRzStatusBar;
    //RzClockStatus2: TRzClockStatus;
    //RzResourceStatus2: TRzResourceStatus;
    user: TRzFieldStatus;
    RzClockStatus3: TRzClockStatus;
    lblPicUser: TRzFieldStatus;
    RzKeyStatus3: TRzKeyStatus;
    RzStatusPane5: TRzStatusPane;
    RzFieldStatus2: TRzFieldStatus;
    RzFieldStatus3: TRzFieldStatus;
    RzDBStateStatus1: TRzDBStateStatus;
    RzStatusPane6: TRzStatusPane;
    cxImage4: TcxImage;
    cxImage7: TcxImage;
    cxImage6: TcxImage;
    peran: TRzFieldStatus;
    noid: TRzFieldStatus;
    dxBarLargeButton149: TdxBarLargeButton;
    dxBarLargeButton150: TdxBarLargeButton;
    dxBarLargeButton151: TdxBarLargeButton;
    Qceksegel: TMyQuery;
    dxBarManager1Bar14: TdxBar;
    dxBarLargeButton152: TdxBarLargeButton;
    dxBarLargeButton153: TdxBarLargeButton;
    dxBarLargeButton154: TdxBarLargeButton;
    dxBarLargeButton155: TdxBarLargeButton;
    dxBarLargeButton156: TdxBarLargeButton;
    dxBarLargeButton157: TdxBarLargeButton;
    dxBarLargeButton158: TdxBarLargeButton;
    dxBarLargeButton159: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton125: TdxBarButton;
    kirimdrd: TdxBarLargeButton;
    RzPanel2: TRzPanel;
    panelinfo: TRzPanel;
    panelinfo2: TRzPanel;
    paneldrd: TRzPanel;
    samplefoto: TcxImage;
    dxBarLargeButton160: TdxBarLargeButton;
    dxBarLargeButton161: TdxBarLargeButton;
    dxBarLargeButton162: TdxBarLargeButton;
    dxBarLargeButton163: TdxBarLargeButton;
    dxBarLargeButton164: TdxBarLargeButton;
    dxBarManager1Bar15: TdxBar;
    dxBarLargeButton165: TdxBarLargeButton;
    dxBarLargeButton166: TdxBarLargeButton;
    dxBarLargeButton167: TdxBarLargeButton;
    dxBarLargeButton168: TdxBarLargeButton;
    dxBarLargeButton169: TdxBarLargeButton;
    dxBarLargeButton170: TdxBarLargeButton;
    dxBarLargeButton171: TdxBarLargeButton;
    panelinfo3: TRzPanel;
    Qcekposting: TMyQuery;
    dxBarLargeButton172: TdxBarLargeButton;
    dxBarLargeButton173: TdxBarLargeButton;
    dxBarLargeButton174: TdxBarLargeButton;
    dxBarManager1Bar16: TdxBar;
    dxBarManager1Bar17: TdxBar;
    dxBarManager1Bar18: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarManager1Bar19: TdxBar;
    dxBarManager1Bar20: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar21: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton175: TdxBarLargeButton;
    dxBarLargeButton176: TdxBarLargeButton;
    dxBarManager1Bar22: TdxBar;
    dxBarLargeButton177: TdxBarLargeButton;
    Qcekdaftar: TMyQuery;
    dxBarLargeButton178: TdxBarLargeButton;
    dxScreenTipRepository1: TdxScreenTipRepository;
    dxBarLargeButton179: TdxBarLargeButton;
    posting: TdxBarLargeButton;
    dxBarSubItem37: TdxBarSubItem;
    dxBarButton126: TdxBarButton;
    dxBarButton127: TdxBarButton;
    dxBarButton128: TdxBarButton;
    dxScreenTipRepository1ScreenTip1: TdxScreenTip;
    dxBarButton129: TdxBarButton;
    dxBarSeparator19: TdxBarSeparator;
    dxBarLargeButton181: TdxBarLargeButton;
    dxBarLargeButton182: TdxBarLargeButton;
    dxBarLargeButton183: TdxBarLargeButton;
    dxBarLargeButton184: TdxBarLargeButton;
    dxBarLargeButton185: TdxBarLargeButton;
    dxBarLargeButton186: TdxBarLargeButton;
    dxBarLargeButton187: TdxBarLargeButton;
    dxBarLargeButton188: TdxBarLargeButton;
    dxBarLargeButton189: TdxBarLargeButton;
    dxBarLargeButton190: TdxBarLargeButton;
    dxBarManager1Bar23: TdxBar;
    dxBarButton130: TdxBarButton;
    dxBarButton131: TdxBarButton;
    dxBarButton132: TdxBarButton;
    dxBarButton133: TdxBarButton;
    dxBarButton134: TdxBarButton;
    dxBarLargeButton191: TdxBarLargeButton;
    dxBarLargeButton192: TdxBarLargeButton;
    dxBarSubItem40: TdxBarSubItem;
    dxBarButton135: TdxBarButton;
    dxBarLargeButton193: TdxBarLargeButton;
    dxBarSubItem41: TdxBarSubItem;
    dxBarButton136: TdxBarButton;
    dxBarButton137: TdxBarButton;
    dxBarButton138: TdxBarButton;
    dxBarButton139: TdxBarButton;
    dxBarButton140: TdxBarButton;
    dxBarButton141: TdxBarButton;
    dxBarButton142: TdxBarButton;
    dxBarLargeButton194: TdxBarLargeButton;
    dxBarButton143: TdxBarButton;
    dxBarLargeButton195: TdxBarLargeButton;
    dxBarLargeButton196: TdxBarLargeButton;
    dxBarLargeButton197: TdxBarLargeButton;
    dxBarLargeButton198: TdxBarLargeButton;
    dxBarSubItem42: TdxBarSubItem;
    dxBarButton144: TdxBarButton;
    dxBarButton145: TdxBarButton;
    dxBarButton146: TdxBarButton;
    dxBarButton147: TdxBarButton;
    dxBarLargeButton180: TdxBarLargeButton;
    dxBarLargeButton199: TdxBarLargeButton;
    dxBarLargeButton200: TdxBarLargeButton;
    dxBarLargeButton201: TdxBarLargeButton;
    dxBarLargeButton202: TdxBarLargeButton;
    dxBarLargeButton203: TdxBarLargeButton;
    dxBarLargeButton204: TdxBarLargeButton;
    dxBarButton148: TdxBarButton;
    dxBarButton149: TdxBarButton;
    dxBarLargeButton205: TdxBarLargeButton;
    dxBarLargeButton206: TdxBarLargeButton;
    dxBarSubItem43: TdxBarSubItem;
    dxBarButton150: TdxBarButton;
    dxBarButton151: TdxBarButton;
    dxBarButton152: TdxBarButton;
    dxBarButton153: TdxBarButton;
    dxBarButton154: TdxBarButton;
    dxBarButton155: TdxBarButton;
    dxBarButton156: TdxBarButton;
    dxBarButton157: TdxBarButton;
    dxBarLargeButton207: TdxBarLargeButton;
    dxBarButton158: TdxBarButton;
    dxBarButton159: TdxBarButton;
    dxBarButton160: TdxBarButton;
    dxBarSubItem44: TdxBarSubItem;
    dxBarButton161: TdxBarButton;
    dxBarSubItem45: TdxBarSubItem;
    dxBarButton162: TdxBarButton;
    dxBarButton164: TdxBarButton;
    dxBarSubItem46: TdxBarSubItem;
    dxBarButton165: TdxBarButton;
    dxBarButton166: TdxBarButton;
    dxBarButton167: TdxBarButton;
    F2: TAction;
    F4: TAction;
    F5: TAction;
    F3: TAction;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton208: TdxBarLargeButton;
    dxBarSubItem47: TdxBarSubItem;
    dxBarButton163: TdxBarButton;
    dxBarButton168: TdxBarButton;
    dxBarButton169: TdxBarButton;
    dxBarButton170: TdxBarButton;
    dxBarButton171: TdxBarButton;
    dxBarButton172: TdxBarButton;
    dxBarLargeButton209: TdxBarLargeButton;
    dxBarLargeButton210: TdxBarLargeButton;
    dxBarLargeButton211: TdxBarLargeButton;
    dxBarLargeButton212: TdxBarLargeButton;
    dxBarLargeButton213: TdxBarLargeButton;
    dxBarButton173: TdxBarButton;
    dxBarButton174: TdxBarButton;
    dxBarSubItem48: TdxBarSubItem;
    dxBarButton175: TdxBarButton;
    dxBarButton176: TdxBarButton;
    dxBarSubItem49: TdxBarSubItem;
    dxBarSubItem50: TdxBarSubItem;
    dxBarButton177: TdxBarButton;
    dxBarButton178: TdxBarButton;
    dxBarButton179: TdxBarButton;
    dxBarButton180: TdxBarButton;
    dxBarButton181: TdxBarButton;
    dxBarButton182: TdxBarButton;
    dxBarManager1Bar8: TdxBar;
    dxBarManager1Bar24: TdxBar;
    dxBarLargeButton214: TdxBarLargeButton;
    dxBarLargeButton215: TdxBarLargeButton;
    dxBarLargeButton216: TdxBarLargeButton;
    dxBarSeparator20: TdxBarSeparator;
    dxBarSeparator21: TdxBarSeparator;
    dxBarSeparator22: TdxBarSeparator;
    dxBarSeparator23: TdxBarSeparator;
    dxBarLargeButton217: TdxBarLargeButton;
    dxBarLargeButton218: TdxBarLargeButton;
    dxBarManager1Bar25: TdxBar;
    dxBarLargeButton219: TdxBarLargeButton;
    dxBarLargeButton220: TdxBarLargeButton;
    dxBarButton183: TdxBarButton;
    dxBarButton184: TdxBarButton;
    dxBarSeparator24: TdxBarSeparator;
    dxBarButton185: TdxBarButton;
    dxBarSeparator25: TdxBarSeparator;
    dxBarButton186: TdxBarButton;
    dxBarButton187: TdxBarButton;
    dxBarLargeButton221: TdxBarLargeButton;
    dxBarButton188: TdxBarButton;
    dxBarButton189: TdxBarButton;
    wh: TMyConnection;
    dxBarManager1Bar26: TdxBar;
    dxBarLargeButton222: TdxBarLargeButton;
    baliknama: TdxBarButton;
    dxBarLargeButton223: TdxBarLargeButton;
    daftartunggu: TdxBarLargeButton;
    dxBarLargeButton225: TdxBarLargeButton;
    con: TRzFieldStatus;
    rekeninglimbah: TdxBarLargeButton;
    rekeninglltt: TdxBarLargeButton;
    pelangganlimbah: TdxBarLargeButton;
    pelangganlltt: TdxBarLargeButton;
    dxBarLargeButton230: TdxBarLargeButton;
    loadingMain: TRzProgressBar;
    menu_pengahapusan_piutang: TdxBarLargeButton;
    procedure pelangganClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vi(Sender: TObject);
    procedure enterExecute(Sender: TObject);
    procedure rekeningClick(Sender: TObject);
    procedure periodeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure sinkronloketClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure daftarangsuranClick(Sender: TObject);
    procedure daftartarifClick(Sender: TObject);
    procedure areaClick(Sender: TObject);
    procedure daftarunitClick(Sender: TObject);
    procedure timer1Timer(Sender: TObject);
    procedure dxBarLargeButton121Click(Sender: TObject);
    procedure dxBarLargeButton124Click(Sender: TObject);
    procedure dxBarLargeButton126Click(Sender: TObject);
    procedure dxBarLargeButton99Click(Sender: TObject);
    procedure dxBarLargeButton100Click(Sender: TObject);
    procedure dxBarLargeButton102Click(Sender: TObject);
    procedure dxBarLargeButton104Click(Sender: TObject);
    procedure dxBarLargeButton103Click(Sender: TObject);
    procedure dxBarLargeButton114Click(Sender: TObject);
    procedure dxBarLargeButton140Click(Sender: TObject);
    procedure RzStatusPane5Click(Sender: TObject);
    procedure kirimdrdClick(Sender: TObject);
    procedure dxBarLargeButton160Click(Sender: TObject);
    procedure dxBarLargeButton169Click(Sender: TObject);
    procedure dxBarLargeButton177Click(Sender: TObject);
    procedure postingClick(Sender: TObject);
    procedure dxBarButton126Click(Sender: TObject);
    procedure dxBarLargeButton185Click(Sender: TObject);
    procedure dxBarLargeButton186Click(Sender: TObject);
    procedure dxBarLargeButton187Click(Sender: TObject);
    procedure dxBarLargeButton188Click(Sender: TObject);
    procedure dxBarLargeButton189Click(Sender: TObject);
    procedure dxBarLargeButton190Click(Sender: TObject);
    procedure dxBarButton135Click(Sender: TObject);
    procedure dxBarLargeButton150Click(Sender: TObject);
    procedure dxBarButton137Click(Sender: TObject);
    procedure dxBarButton138Click(Sender: TObject);
    procedure dxBarButton146Click(Sender: TObject);
    procedure dxBarLargeButton199Click(Sender: TObject);
    procedure dxBarLargeButton201Click(Sender: TObject);
    procedure dxBarLargeButton202Click(Sender: TObject);
    procedure dxBarLargeButton203Click(Sender: TObject);
    procedure dxBarLargeButton204Click(Sender: TObject);
    procedure dxBarLargeButton205Click(Sender: TObject);
    procedure dxBarLargeButton206Click(Sender: TObject);
    procedure dxBarButton152Click(Sender: TObject);
    procedure dxBarButton153Click(Sender: TObject);
    procedure dxBarButton154Click(Sender: TObject);
    procedure dxBarButton155Click(Sender: TObject);
    procedure dxBarButton156Click(Sender: TObject);
    procedure dxBarButton157Click(Sender: TObject);
    procedure dxBarButton162Click(Sender: TObject);
    procedure dxBarButton163Click(Sender: TObject);
    procedure F2Execute(Sender: TObject);
    procedure F4Execute(Sender: TObject);
    procedure F3Execute(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure dxBarLargeButton208Click(Sender: TObject);
    procedure dxBarButton169Click(Sender: TObject);
    procedure dxBarButton170Click(Sender: TObject);
    procedure dxBarButton171Click(Sender: TObject);
    procedure dxBarButton172Click(Sender: TObject);
    procedure dxBarLargeButton209Click(Sender: TObject);
    procedure dxBarLargeButton210Click(Sender: TObject);
    procedure dxBarLargeButton211Click(Sender: TObject);
    procedure dxBarLargeButton212Click(Sender: TObject);
    procedure dxBarLargeButton222Click(Sender: TObject);
    procedure dxBarLargeButton223Click(Sender: TObject);
    procedure daftartungguClick(Sender: TObject);
    procedure rekeninglimbahClick(Sender: TObject);
    procedure rekeningllttClick(Sender: TObject);
    procedure pelangganlimbahClick(Sender: TObject);
    procedure pelangganllttClick(Sender: TObject);
    procedure dxBarLargeButton230Click(Sender: TObject);
    procedure menu_pengahapusan_piutangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


  trans_air,Trans_nonair:Integer;

  USERhost,
  PASShost,
  IPhost,
  DBhost:String;
  pORThost:integer;

  USERwh,
  PASSwh,
  IPwh,
  DBwh:string;
  pORTwh:integer;


    timer3aktif:byte;
    loginmode,mode:String;
    alamatweb:String;



    akses_laporan,
    akses_daftar_pelanggan,
    akses_daftar_tunggu,
    akses_daftar_rekening,
    akses_daftar_sambunganbaru,
    akses_daftar_angsuran,
    akses_daftar_periode,
    akses_upload_drd,
    akses_download_transaksi,
    akses_daftar_tarif ,
    akses_daftar_area ,
    akses_daftar_unitpelayanan ,
    akses_daftar_permohonan ,
    akses_daftar_pengguna ,
    akses_daftar_lainnya,
    olah_data_pelanggan,
    olah_daftar_tunggu,
    olah_sambbaru,
    olah_data_rekening ,
    publish_rekening,
    unpublish_rekening,
    olah_data_angsuran,
    olah_data_periode,
    olah_data_tarif,
    akses_tools,
    olah_data_area,
    olah_data_unit,
    olah_data_pengguna,
    olah_data_lainnya,
    lunasi_angsuran,
    hakposting:string;
    hakpenghapusanpiutang:string;



    procedure openkoneksi_host();

    procedure openkoneksi_gudang();

    procedure hakakses();
    procedure ExportViewToExcel(AView: TcxGridDBTableView);
    procedure sinkronPelangganLoket;

  end;

var
  Umain: TUmain;
  FRAME_pelanggan: TFRpelanggan; Flagpel : byte;
  FRAME_pelangganlimbah: TFRpelangganlimbah; Flagpellimbah : byte;
  FRAME_pelangganlltt: TFRpelangganlltt; Flagpellltt : byte;
  FRAME_golongan: TFRgol; Flaggol : byte;
  FRAME_rekening: TFRrekening; Flagrekening : byte;
  FRAME_limbah: TFRlimbah; Flaglimbah : byte;
  FRAME_lltt: TFRlltt; Flaglltt : byte;
  FRAME_periode: TFRperiode; Flagperiode : byte;
  //FRAME_kolektif: TFRkolektif; Flagkolektif : byte;


 
  FRAME_pengguna: TFRpengguna; Flagpengguna : byte;
  FRAME_penggunaloket: TFRuserloket; flaguserloket : byte;
  FRAME_loket: TFRloket; flagloket : byte;
  FRAME_chart1: TFRchart1; flagchart1 : byte;
  FRAME_chart2: TFRchart2; flagchart2 : byte;
  FRAME_chart3: TFRchart3; flagchart3 : byte;
  FRAME_chart4: TFRchart4; flagchart4 : byte;
  FRAME_angsuran: TFRangsuran; flagangsuran : byte;
  FRAME_lainnya: TFRlainnya; flaglainnya : byte;
  FRAME_rab: TFRrab; flagrab : byte;
  FRAME_wilayah: TFRwilayah; flagwil : byte;
  FRAME_laporan: TFRlaporan; flaglaporan : byte;
  FRAME_listupdate: TFRlistupdate; flaglistupdate : byte;
  FRAME_pemutihan: TFRpemutihan; Flagpemutihan : byte;
implementation

{$R *.dfm}    uses Module, DateUtils,
  unitlogin, UnitCombo, UnitRepair,cxGridExportLink, 
  unitbackuphosting, unitpengaturan, unitloading,
  unitdaftarjabatan,
  unitikthisar,
  ShellApi,
  rekapgolongan,
  rekapikthisar,unitupload2, unitgantipass,
  rekapikthisar4,
  drd_posting, drd_koreksi,
  drd_real, rekapperbandingan, unitlpp, tagihanbelumdibayar, ulapmemo,
  unitlpp2, unitrekaplppjogja, unitlapakun1, drd_real_karyawan,
  unitstatistik, unitmemopemutusan, unitsuratpiutang,
  unitdaftarpengesahantagihan, unitrekapmemopemutusan, unitposisisambungan,
  unitrekaplppjogja2, unitpembacaan, rekapgolongan5, rekapgolongan7,
  unitposting3, drd_posting2, drd_posting3, drd_posting5, unitdrdlancar,
  unitfilepos, unitlppharian1, unitlppharian2, unitlppharian3,
  unitlppharian4, unitlppharian5, unitlppharian7, unitlppharian8,
  unitbakoreksi, UnitPiutangGolongan, unitlapkoreksi, UnitPiutang2,
  unitbakoreksi2, UnitDaftarBA, StrUtils;

procedure TUmain.ExportViewToExcel(AView: TcxGridDBTableView);
var
  Grid: TcxGrid;
  Level: TcxGridLevel;
  View: TcxGridDBTableView;
begin
  Grid := TcxGrid.Create(self);
  Level := Grid.Levels.Add;
  View := Grid.CreateView(TcxGridDBTableView) as  TcxGridDBTableView;
  View.DataController.DataSource := AView.DataController.DataSource;
  View.DataController.CreateAllItems();
  Level.GridView := View;
  ExportGridToExcel(DialSaveexcel.FileName, Grid);
  FreeAndNil(View);
  FreeAndNil(Grid);

  MessageDlg('Export ke Excel Selesai...'+char(13)+' File Tersimpan di '+DialSaveexcel.FileName, mtConfirmation, [mbOK], 0);


end;





procedure TUmain.openkoneksi_host();
var

  f:TextFile;
  FlagMasukKoneksiError:boolean;
  PortInt:integer;
  folder:String;


begin

  if(host.Connected=false)then
   begin

    try

        repeat

          host.Connect;

        until ( host.Connected=true );

      
    except
    on E: Exception do

       MessageDlg('Terjadi Kesalahan Host : !! '+char(13)+
       E.Message, mtWarning, [mbOK], 0);
    end;

  
   end;

end;






procedure TUmain.pelangganClick(Sender: TObject);
begin


         sinkronPelangganLoket;
        if Flagpel = 0 then
          begin
            FRAME_pelanggan := TFRpelanggan.Create(Self);
            try
              FRAME_pelanggan.isicombopelanggan;
              FRAME_pelanggan.Align := alClient;
              FRAME_pelanggan.Top := 125;
              FRAME_pelanggan.Parent := Self;

              FRAME_pelanggan.akses;   
              FRAME_pelanggan.BringToFront;
              Flagpel := 1;
              DM.Xkey:='Pelanggan';

            except
              FRAME_pelanggan.Free;
            end;
          end
          else
          begin
            FRAME_pelanggan.BringToFront;
             DM.Xkey:='Pelanggan';
          end;

 
end;

procedure TUmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Application.Terminate;
end;

procedure TUmain.vi(Sender: TObject);
begin
DisableAero:=true;

//BorderStyle:=bsNone;
WindowState:=wsMaximized;
Width:=Screen.Width;
Height:=Screen.Height;

Flagpel:=0;
Flagrekening:=0;

dxRibbon1Tab5.Visible:=False;




end;

procedure TUmain.enterExecute(Sender: TObject);
begin
if(DM.Xkey='Pelanggan')then
  FRAME_pelanggan.tampilkan.Click;

if(DM.Xkey='rab')then
  FRAME_rab.refresh.Click;

if(DM.Xkey='Golongan')then
  FRAME_golongan.refreshgol.Click;


if(DM.Xkey='Rekening')then
  FRAME_rekening.tampilkan.Click;

  if(DM.Xkey='limbah')then
  FRAME_limbah.tampilkan.Click;

  if(DM.Xkey='lltt')then
  FRAME_lltt.tampilkan.Click;


if(DM.Xkey='Periode')then
  FRAME_periode.Refresh.Click;

if(DM.Xkey='Angsuran')then
  FRAME_angsuran.tampilkan.Click;


if(DM.Xkey='pelangganlimbah')then
  FRAME_pelangganlimbah.tampilkan.Click;

  if(DM.Xkey='pelangganlltt')then
  FRAME_pelangganlltt.tampilkan.Click;
  
end;

procedure TUmain.openkoneksi_gudang();
var

  f:TextFile; 
  FlagMasukKoneksiError:boolean;
  PortInt:integer;
  folder:String;


begin

if(wh.Connected=false)then
begin


 try

      wh.Connect;

  except
  on E: Exception do

     MessageDlg('Terjadi Kesalahan Host : !! '+char(13)+
     E.Message, mtWarning, [mbOK], 0);
  end;

  
 end;

end;

procedure TUmain.rekeningClick(Sender: TObject);
begin




if Flagrekening = 0 then
  begin
    FRAME_rekening := TFRrekening.Create(Self);
    try

      FRAME_rekening.isicomborekening;
      FRAME_rekening.Align := alClient;
      FRAME_rekening.Top := 125;
      FRAME_rekening.Parent := Self;
      FRAME_rekening.BringToFront;
      Flagrekening := 1;
      DM.Xkey:='Rekening';
      FRAME_rekening.akses;

      
      FRAME_rekening.periode.Date:= EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);


      //FRAME_rekening.periode.date:=DateOf(date);

      FRAME_rekening.periode.SetFocus;
    except
      FRAME_rekening.Free;
    end;
  end
  else
  begin
    FRAME_rekening.BringToFront;
    FRAME_rekening.isicomborekening;
     DM.Xkey:='Rekening';
  end;

  
end;

procedure TUmain.periodeClick(Sender: TObject);
begin





if Flagperiode = 0 then
  begin
    FRAME_periode := TFRperiode.Create(Self);
    try
      FRAME_periode.Align := alClient;
      FRAME_periode.Top := 125;
      FRAME_periode.Parent := Self;
      FRAME_periode.BringToFront;
      Flagperiode := 1;
      DM.Xkey:='Periode';
      FRAME_periode.akses;
      FRAME_periode.refresh.Click;
    except
      FRAME_periode.Free;
    end;
  end
  else
  begin
    FRAME_periode.BringToFront;
     DM.Xkey:='Periode';
  end;
end;

procedure TUmain.FormShow(Sender: TObject);
begin

    timer1.Enabled:=True;
    loginmode:='Keluar';
    mode:='';


     if Flogin.ShowModal=mrOK then begin
          if(loginmode='Masuk')then
          begin

             TRY
                Flogin.close;

                //cari waktu di cloud
                DM.Qtanggalkini.close;
                DM.Qtanggalkini.SQL.Clear;
                DM.Qtanggalkini.SQL.Add('CALL caritanggal');
                DM.Qtanggalkini.open;

                 if(Date<>DM.Qtanggalkini.fieldbyname('tanggalkini').AsDateTime) then
                 begin
                      MessageDlg('Tanggal Pada Komputer Tidak Sesuai !!'+char(13)+
                    'Sistem Akan Memperbarui Tanggal....', mtInformation, [MbOk], 0);
                    DM.perbaruitanggal;
                 end;

                timer3aktif:=0;
                hakakses();

                
                if(DM._fitur_airlimbah='0') then
                begin
                  pelangganlimbah.Visible:=ivNever;
                  rekeninglimbah.Visible:=ivNever;
                end;

                 if(DM._fitur_lltt='0') then
                begin
                  pelangganlltt.Visible:=ivNever;
                  rekeninglltt.Visible:=ivNever;
                end;


                host.close;

            EXCEPT ON E:Exception DO
            BEGIN

                 MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);
                 DM.uraianError := e.Message;
                 DM.eventError := 'Login';
                 DM.logERROR();

                 Application.Terminate;

            END;
            END;

          end
          else
           Application.Terminate;
     end;


end;

procedure TUmain.dxBarLargeButton62Click(Sender: TObject);
begin
uikthisar.showmodal;
end;

procedure TUmain.sinkronloketClick(Sender: TObject);
var
j:integer;
begin


TRY
openkoneksi_host;

      if MessageDlg('Yakin Lakukan Sinkronisasi Loket ?? '+char(13)+char(13)+
      'Proses Sinkron Akan Mensingkronkan : '+char(13)+

      '- Daftar Rayon '+char(13)+
      '- Daftar Kelurahan '+char(13)+
      '- Daftar Golongan && Denda Tunggakan '+char(13)+
      '- Daftar Diameter'+char(13)+
      '- Daftar Loket'+char(13)+
      '- Daftar Flag'+char(13)+
      '- Daftar Sumber Air'+char(13)+
      '- Daftar Kepemilikan Bangunan'+char(13)+
      '- Daftar Merk Meter'+char(13)+
      '- Daftar Kolektif', mtInformation, [mbyes,mbNo], 0)=MrYes then
      begin







                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select kodegol,golongan,aktif FROM golongan ORDER BY kodegol ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table golongan');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Golongan';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;
                  uloading.Show;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into golongan values (:kodegol,:golongan,:aktif)');
                    Qhost1.ParamByName('kodegol').AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
                    Qhost1.ParamByName('golongan').AsString:=DM.Qcek.fieldbyname('golongan').AsString;
                    Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
                    Qhost1.Execute;
                    Application.ProcessMessages;
                    uloading.Progress.IncPartsByOne;

                    DM.Qcek.Next;
                  end;


                  //diameter

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select kodediameter,ukuran,aktif FROM diameter ORDER BY kodediameter ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table diameter');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Diameter';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into diameter values (:kodediameter,:ukuran,:aktif)');
                    Qhost1.ParamByName('kodediameter').AsString:=DM.Qcek.fieldbyname('kodediameter').AsString;
                    Qhost1.ParamByName('ukuran').AsString:=DM.Qcek.fieldbyname('ukuran').AsString;
                    Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;

                   //rayon

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM rayon ORDER BY koderayon ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table rayon');
                  Qhost1.Execute;



                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Rayon';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;


                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into rayon values (:koderayon,:namarayon,:kodewil,:wilayah)');
                    Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                    Qhost1.ParamByName('namarayon').AsString:=DM.Qcek.fieldbyname('namarayon').AsString;
                    Qhost1.ParamByName('kodewil').AsString:=DM.Qcek.fieldbyname('kodewil').AsString;
                    Qhost1.ParamByName('wilayah').AsString:=DM.Qcek.fieldbyname('wilayah').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                   //kelurahan

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM kelurahan ORDER BY kodekelurahan ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table kelurahan');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kelurahan';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into kelurahan values (:kodekelurahan,:kelurahan,:kodecabang,:cabang)');
                    Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
                    Qhost1.ParamByName('kelurahan').AsString:=DM.Qcek.fieldbyname('kelurahan').AsString;
                    Qhost1.ParamByName('kodecabang').AsString:=DM.Qcek.fieldbyname('kodecabang').AsString;
                    Qhost1.ParamByName('cabang').AsString:=DM.Qcek.fieldbyname('cabang').AsString;
                    Qhost1.Execute;
                    Application.ProcessMessages;
                    uloading.Progress.IncPartsByOne;

                    DM.Qcek.Next;
                  end;

                  //kolektif

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM kolektif ORDER BY kodekolektif ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table kolektif');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into kolektif values (:kodekolektif,:kolektif,:ket)');
                    Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
                    Qhost1.ParamByName('kolektif').AsString:=DM.Qcek.fieldbyname('kolektif').AsString;
                    Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('ket').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;

                   //Loket

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM loket ORDER BY kodeloket ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table loket');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Loket';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into loket values (:kodeloket,:loket,:wilayahbayar,:kodewillokasi,:aktif)');
                    Qhost1.ParamByName('kodeloket').AsString:=DM.Qcek.fieldbyname('kodeloket').AsString;
                    Qhost1.ParamByName('loket').AsString:=DM.Qcek.fieldbyname('loket').AsString;
                    Qhost1.ParamByName('wilayahbayar').AsString:=DM.Qcek.fieldbyname('wilayahbayar').AsString;
                    Qhost1.ParamByName('kodewillokasi').AsString:=DM.Qcek.fieldbyname('kodewillokasi').AsString;
                    Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                  //flag

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM flag ORDER BY kodeflag ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table flag');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into flag values (:kodeflag,:flag)');
                    Qhost1.ParamByName('kodeflag').AsString:=DM.Qcek.fieldbyname('kodeflag').AsString;
                    Qhost1.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;



                   //jenisnonair

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM jenisnonair ORDER BY jenis ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table jenisnonair');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into jenisnonair values (:jenis)');
                    Qhost1.ParamByName('jenis').AsString:=DM.Qcek.fieldbyname('jenis').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;



                    //kepemilikan

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM kepemilikan ORDER BY kepemilikanbangunan ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table kepemilikan');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into kepemilikan values (:kepemilikan)');
                    Qhost1.ParamByName('kepemilikan').AsString:=DM.Qcek.fieldbyname('kepemilikanbangunan').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                    //merk

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM merkmeter ORDER BY merk ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table merkmeter');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into merkmeter values (:merk)');
                    Qhost1.ParamByName('merk').AsString:=DM.Qcek.fieldbyname('merk').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                    //sumberair

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM sumberair ORDER BY sumberair ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table sumberair');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron kolektif';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into sumberair values (:sumberair)');
                    Qhost1.ParamByName('sumberair').AsString:=DM.Qcek.fieldbyname('sumberair').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                      //sumberair

                  DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM byadministrasi_lain ORDER BY kode ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table admlain');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Admlain';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into admlain values (:kode,:ket)');
                    Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                    Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                    DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM bypemeliharaan_lain ORDER BY kode ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table pemlain');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Pem Lain';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into pemlain values (:kode,:ket)');
                    Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                    Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                    DM.Qcek.close;
                  DM.Qcek.SQL.Clear;
                  DM.Qcek.SQL.Add('select * FROM byretribusi_lain ORDER BY kode ASC');
                  Dm.Qcek.Open;

                  Qhost1.close;
                  Qhost1.SQL.Clear;
                  Qhost1.SQL.Add('truncate table retlain');
                  Qhost1.Execute;

                  uloading.Progress.Visible:=true;
                  uloading.proses.Visible:=true;
                  uloading.proses.Caption:='Sinkron Ret Lain';
                  uloading.Progress.PartsComplete:=0;
                  uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                  Application.ProcessMessages;

                  for j:=1 to DM.Qcek.RecordCount do
                  begin

                    Qhost1.close;
                    Qhost1.SQL.Clear;
                    Qhost1.SQL.Add('replace into retlain values (:kode,:ket)');
                    Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
                    Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
                    Qhost1.Execute;

                    uloading.Progress.IncPartsByOne;
                    Application.ProcessMessages;
                    DM.Qcek.Next;
                  end;


                  uloading.Close;

                  MessageDlg('Selesai...', mtInformation, [mbOK], 0);

              
     end
     else
      exit;
      
  except
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
  end;


end;

procedure TUmain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if MessageDlg('Yakin Keluar Dari Aplikasi ?  ', mtConfirmation, [mbYes,mbNo], 0)=MrYes then
 begin
  TRY
    DM.Qexec.Close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('DELETE from `login_session` WHERE module="BSBS" AND userID=:user AND loginNumber=:loginNumber');
    DM.Qexec.ParamByName('user').AsString:=DM.NamaUser;
    DM.Qexec.ParamByName('loginNumber').AsInteger:=DM.loginNumber;
    DM.Qexec.Execute;
  EXCEPT ON E:Exception DO
  BEGIN
    //ShowMessage(e.Message);

  END;
  END;

   CanClose:=true;
   Application.Terminate;
 end
 else
  CanClose:=false;
end;

procedure TUmain.daftarangsuranClick(Sender: TObject);
begin






        if flagangsuran = 0 then
          begin
            FRAME_angsuran := TFRangsuran.Create(Self);
            try
              FRAME_angsuran.Align := alClient;
              FRAME_angsuran.Top := 125;
              FRAME_angsuran.Parent := Self;
              FRAME_angsuran.BringToFront;
              flagangsuran := 1;
              DM.Xkey:='Angsuran';
              FRAME_angsuran.akses;
              //FRAME_angsuran.isicombopelanggan;
              FRAME_angsuran.tampilkan.Click;
              //FRAME_angsuran.cxButton1.Click;
            except
              FRAME_angsuran.Free;
            end;
          end
          else
          begin
            FRAME_angsuran.BringToFront;
             DM.Xkey:='Angsuran';
          end;

end;

procedure TUmain.daftartarifClick(Sender: TObject);
begin



     if Flaggol = 0 then
          begin
            Frame_golongan := TFRgol.Create(Self);
            try
              Frame_golongan.Align := alClient;
              Frame_golongan.Top := 125;
              Frame_golongan.Parent := Self;
              Frame_golongan.BringToFront;
              Flaggol := 1;
              Frame_golongan.akses;
              Frame_golongan.refreshgol.Click;
              Frame_golongan.refreshgolipl.Click;
              Frame_golongan.refreshdia.Click;
              Frame_golongan.refreshadmlain.Click;
              Frame_golongan.refreshpemlain.Click;
              Frame_golongan.refreshretlain.Click;
              Frame_golongan.refreshmeterai.Click;
               DM.Xkey:='Golongan';

            except
              Frame_golongan.Free;
            end;
          end
          else
          begin
            Frame_golongan.BringToFront;
            Frame_golongan.refreshgol.Click;
            Frame_golongan.refreshgolipl.Click;
            Frame_golongan.refreshdia.Click;
            Frame_golongan.refreshadmlain.Click;
            Frame_golongan.refreshpemlain.Click;
            Frame_golongan.refreshretlain.Click;
            Frame_golongan.refreshmeterai.Click;
            DM.Xkey:='Golongan';
          end;

end;

procedure TUmain.areaClick(Sender: TObject);
begin


 if flagwil = 0 then
  begin
    FRAME_wilayah := TFRwilayah.Create(Self);
    try
      FRAME_wilayah.Align := alClient;
      FRAME_wilayah.Top := 125;
      FRAME_wilayah.Parent := Self;
      FRAME_wilayah.BringToFront;
      flagwil := 1;
      DM.Xkey:='Wilayah';
      //FRAME_wilayah.akses;
      FRAME_wilayah.refreshwil.Click;
    except
      FRAME_wilayah.Free;
    end;
  end
  else
  begin
    FRAME_wilayah.BringToFront;
    DM.Xkey:='Wilayah';
  end;
end;

procedure TUmain.daftarunitClick(Sender: TObject);
begin



 if flagloket = 0 then
          begin
            FRAME_loket := TFRloket.Create(Self);
            try
              FRAME_loket.Align := alClient;
              FRAME_loket.Top := 125;
              FRAME_loket.Parent := Self;
              FRAME_loket.BringToFront;
              flagloket := 1;
              DM.Xkey:='Loket';
              FRAME_loket.akses;
              FRAME_loket.Refresh.Click;
            except
              FRAME_loket.Free;
            end;
          end
          else
          begin
            FRAME_loket.BringToFront;
             DM.Xkey:='Loket';
          end;
end;

procedure TUmain.timer1Timer(Sender: TObject);
begin
  TRY

    DM.Qexec.Close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('UPDATE login_session set timeUpdate=now() WHERE module="BSBS" AND userID=:user and deviceID=:deviceID');
    DM.Qexec.ParamByName('user').AsString:=DM.NamaUser;
    DM.Qexec.ParamByName('deviceID').AsString:=DM.devideID;
    DM.Qexec.Execute;

  EXCEPT ON E:Exception DO
  BEGIN
    //ShowMessage(e.Message);

  END;
  END;

   if host.Connected=true then
    con.Caption:='VPS ON'
   else
    con.Caption:='VPS OFF';

 
end;

procedure TUmain.dxBarLargeButton121Click(Sender: TObject);
begin
host.close;
urekapgolongan.showmodal;
end;

procedure TUmain.dxBarLargeButton124Click(Sender: TObject);
begin
host.close;
urekapperbandingan.showmodal;
end;

procedure TUmain.dxBarLargeButton126Click(Sender: TObject);
begin
host.close;
urekapikthisar.showmodal;
end;

procedure TUmain.hakakses();
begin


Qhakakses.close;
Qhakakses.SQL.Clear;
Qhakakses.SQL.Add('select * FROm hakakses WHERE hak_akses="'+peran.caption+'"');
Qhakakses.Open;


Umain.akses_laporan:=Qhakakses.fieldbyname('akses_laporan').AsString;
Umain.akses_daftar_pelanggan:=Qhakakses.fieldbyname('akses_daftar_pelanggan').AsString;
Umain.akses_daftar_tunggu:=Qhakakses.fieldbyname('akses_daftar_tunggu').AsString;
Umain.akses_daftar_rekening:=Qhakakses.fieldbyname('akses_daftar_rekening').AsString;
Umain.akses_daftar_sambunganbaru:=Qhakakses.fieldbyname('akses_daftar_sambunganbaru').AsString;
Umain.akses_daftar_angsuran:=Qhakakses.fieldbyname('akses_daftar_angsuran').AsString;
Umain.akses_daftar_periode:=Qhakakses.fieldbyname('akses_daftar_periode').AsString;
Umain.akses_upload_drd:=Qhakakses.fieldbyname('akses_upload_drd').AsString;
Umain.akses_download_transaksi:=Qhakakses.fieldbyname('akses_download_transaksi').AsString;
Umain.akses_daftar_tarif:=Qhakakses.fieldbyname('akses_daftar_tarif').AsString;
Umain.akses_daftar_area:=Qhakakses.fieldbyname('akses_daftar_area').AsString;
Umain.akses_daftar_unitpelayanan :=Qhakakses.fieldbyname('akses_daftar_unitpelayanan').AsString;
Umain.akses_daftar_pengguna :=Qhakakses.fieldbyname('akses_daftar_pengguna').AsString;
Umain.akses_daftar_lainnya :=Qhakakses.fieldbyname('akses_daftar_lainnya').AsString;
Umain.olah_data_pelanggan :=Qhakakses.fieldbyname('olah_data_pelanggan').AsString;
Umain.olah_daftar_tunggu :=Qhakakses.fieldbyname('olah_daftar_tunggu').AsString;
Umain.olah_sambbaru :=Qhakakses.fieldbyname('olah_sambbaru').AsString;
Umain.olah_data_rekening :=Qhakakses.fieldbyname('olah_data_rekening').AsString;
Umain.publish_rekening :=Qhakakses.fieldbyname('publish_rekening').AsString;
Umain.unpublish_rekening :=Qhakakses.fieldbyname('unpublish_rekening').AsString;
Umain.olah_data_angsuran :=Qhakakses.fieldbyname('olah_data_angsuran').AsString;
Umain.olah_data_periode :=Qhakakses.fieldbyname('olah_data_periode').AsString;
Umain.olah_data_tarif:=Qhakakses.fieldbyname('olah_data_tarif').AsString;
Umain.akses_tools:=Qhakakses.fieldbyname('akses_tools').AsString;
Umain.olah_data_area:=Qhakakses.fieldbyname('olah_data_area').AsString;
Umain.olah_data_unit:=Qhakakses.fieldbyname('olah_data_unit').AsString;
Umain.olah_data_pengguna:=Qhakakses.fieldbyname('olah_data_pengguna').AsString;
Umain.olah_data_lainnya:=Qhakakses.fieldbyname('olah_data_lainnya').AsString;
Umain.lunasi_angsuran:=Qhakakses.fieldbyname('lunasi_angsuran').AsString;
Umain.hakposting:=Qhakakses.fieldbyname('posting').AsString;
Umain.hakpenghapusanpiutang:=Qhakakses.fieldbyname('olah_penghapusan_piutang').AsString;




      if(akses_laporan<>'1') then
      begin
          //laporanjogja.Visible:=false;
      end
      else
      begin
         //laporanjogja.Visible:=true;  
      end;

       if(akses_daftar_pelanggan<>'1') then
      begin
          pelanggan.Enabled:=False;
      end
      else
      begin
          pelanggan.Enabled:=true;
      end;

       if(akses_daftar_tunggu<>'1') then
      begin
          daftartunggu.Enabled:=False;
      end
      else
      begin
          daftartunggu.Enabled:=true;
      end;

       if(akses_daftar_rekening<>'1') then
      begin
          rekening.Enabled:=False;
      end
      else
      begin
          rekening.Enabled:=true;
      end;

         if(akses_daftar_sambunganbaru<>'1') then
      begin
          calonsambungan.Enabled:=False;
      end
      else
      begin
          calonsambungan.Enabled:=true;
      end;



      if(akses_daftar_angsuran<>'1') then
      begin
          daftarangsuran.Enabled:=False;
      end
      else
      begin
          daftarangsuran.Enabled:=true;
      end;


              
      if(akses_daftar_periode<>'1') then
      begin
          periode.Enabled:=False;
      end
      else
      begin
          periode.Enabled:=true;
      end;

        if(akses_upload_drd<>'1') then
      begin
          kirimdrd.Enabled:=False;
      end
      else
      begin
          kirimdrd.Enabled:=true;
      end;



      if(akses_download_transaksi<>'1') then
      begin
          downloadtransaksi.Enabled:=False;
      end
      else
      begin
          downloadtransaksi.Enabled:=true;
      end;


              
           if(akses_daftar_tarif<>'1') then
      begin
          daftartarif.Enabled:=False;
      end
      else
      begin
          daftartarif.Enabled:=true;
      end;



      if(akses_daftar_area<>'1') then
      begin
          area.Enabled:=False;
      end
      else
      begin
          area.Enabled:=true;
      end;

              

      if(akses_daftar_unitpelayanan<>'1') then
      begin
          daftarunit.Enabled:=False;
      end
      else
      begin
          daftarunit.Enabled:=true;
      end;


       if(akses_daftar_permohonan<>'1') then
      begin
          permohonan.Enabled:=False;
      end
      else
      begin
          permohonan.Enabled:=true;
      end;



      if(akses_daftar_pengguna<>'1') then
      begin
          daftarpengguna.Enabled:=False;
      end
      else
      begin
          daftarpengguna.Enabled:=true;
      end;


        if(akses_daftar_lainnya<>'1') then
      begin
          lainnya.Enabled:=False;
      end
      else
      begin
          lainnya.Enabled:=true;
      end;


        if(hakposting<>'1') then
      begin
          posting.Enabled:=False;
      end
      else
      begin
          posting.Enabled:=true;
      end;

      if(hakpenghapusanpiutang<>'1') then
      begin
          menu_pengahapusan_piutang.Enabled:=False;
      end
      else
      begin
          menu_pengahapusan_piutang.Enabled:=true;
      end;






end;

procedure TUmain.dxBarLargeButton99Click(Sender: TObject);
var
j:integer;
begin



      if MessageDlg('Yakin Lakukan Sinkronisasi Parameter Unit Layanan ?? '+char(13)+char(13)+
      'Proses Sinkron Akan Meng-Singkronkan Data : '+char(13)+

      '- Daftar Rayon '+char(13)+
      '- Daftar Kelurahan '+char(13)+
      '- Daftar Golongan '+char(13)+
      '- Daftar Diameter'+char(13)+
      '- Daftar Loket'+char(13)+
      '- Daftar Flag'+char(13)+
      '- Daftar Sumber Air'+char(13)+
      '- Daftar Kepemilikan Bangunan'+char(13)+
      '- Daftar Jenis Non Air'+char(13)+
      '- Daftar Jenis Lainnya'+char(13)+
      '- Daftar Merk Meter'+char(13)+
     // '- Daftar Paraf Laporan'+char(13)+
      '- Daftar Kolektif', mtInformation, [mbyes,mbNo], 0)=MrYes then
      begin


        TRY
        openkoneksi_host;


        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select kodegol,golongan,aktif,kategori,t1,t2,t3,t4 FROM golongan ORDER BY kodegol ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table golongan');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Golongan';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;
        uloading.Show;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into golongan values (:kodegol,:golongan,:aktif,:kategori,:t1,:t2,:t3,:t4)');
          Qhost1.ParamByName('kodegol').AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
          Qhost1.ParamByName('golongan').AsString:=DM.Qcek.fieldbyname('golongan').AsString;
          Qhost1.ParamByName('kategori').AsString:=DM.Qcek.fieldbyname('kategori').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.ParamByName('t1').AsCurrency:=DM.Qcek.fieldbyname('t1').AsCurrency;
          Qhost1.ParamByName('t2').AsCurrency:=DM.Qcek.fieldbyname('t2').AsCurrency;
          Qhost1.ParamByName('t3').AsCurrency:=DM.Qcek.fieldbyname('t3').AsCurrency;
          Qhost1.ParamByName('t4').AsCurrency:=DM.Qcek.fieldbyname('t4').AsCurrency;
          Qhost1.Execute;

          Application.ProcessMessages;
          uloading.Progress.IncPartsByOne;
          DM.Qcek.Next;
          
        end;


        //diameter

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select kodediameter,ukuran,aktif FROM diameter ORDER BY kodediameter ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table diameter');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Diameter';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into diameter values (:kodediameter,:ukuran,:aktif)');
          Qhost1.ParamByName('kodediameter').AsString:=DM.Qcek.fieldbyname('kodediameter').AsString;
          Qhost1.ParamByName('ukuran').AsString:=DM.Qcek.fieldbyname('ukuran').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

         //rayon

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM rayon ORDER BY koderayon ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table rayon');
        Qhost1.Execute;



        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Rayon';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;


        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into rayon values (:koderayon,:namarayon,:kodewil,:wilayah,:kodeloket)');
          Qhost1.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
          Qhost1.ParamByName('namarayon').AsString:=DM.Qcek.fieldbyname('namarayon').AsString;
          Qhost1.ParamByName('kodewil').AsString:=DM.Qcek.fieldbyname('kodewil').AsString;
          Qhost1.ParamByName('wilayah').AsString:=DM.Qcek.fieldbyname('wilayah').AsString;
          Qhost1.ParamByName('kodeloket').AsString:=DM.Qcek.fieldbyname('kodeloket').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


         //kelurahan

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kelurahan ORDER BY kodekelurahan ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table kelurahan');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kelurahan';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kelurahan values (:kodekelurahan,:kelurahan,:kodecabang,:cabang)');
          Qhost1.ParamByName('kodekelurahan').AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
          Qhost1.ParamByName('kelurahan').AsString:=DM.Qcek.fieldbyname('kelurahan').AsString;
          Qhost1.ParamByName('kodecabang').AsString:=DM.Qcek.fieldbyname('kodecabang').AsString;
          Qhost1.ParamByName('cabang').AsString:=DM.Qcek.fieldbyname('cabang').AsString;
          Qhost1.Execute;
          Application.ProcessMessages;
          uloading.Progress.IncPartsByOne;

          DM.Qcek.Next;
        end;

        //kolektif

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kolektif ORDER BY kodekolektif ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table kolektif');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kolektif values (:kodekolektif,:kolektif,:ket)');
          Qhost1.ParamByName('kodekolektif').AsString:=DM.Qcek.fieldbyname('kodekolektif').AsString;
          Qhost1.ParamByName('kolektif').AsString:=DM.Qcek.fieldbyname('kolektif').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('ket').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;

         //Loket

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM loket ORDER BY kodeloket ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table loket');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Loket';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into loket values (:kodeloket,:loket,:kodewillokasi,:aktif,:serialgate)');
          Qhost1.ParamByName('kodeloket').AsString:=DM.Qcek.fieldbyname('kodeloket').AsString;
          Qhost1.ParamByName('loket').AsString:=DM.Qcek.fieldbyname('loket').AsString;          
          Qhost1.ParamByName('kodewillokasi').AsString:=DM.Qcek.fieldbyname('kodewillokasi').AsString;
          Qhost1.ParamByName('aktif').AsString:=DM.Qcek.fieldbyname('aktif').AsString;
          Qhost1.ParamByName('serialgate').AsString:=DM.Qcek.fieldbyname('serialgate').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        //flag

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM flag ORDER BY kodeflag ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table flag');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into flag values (:kodeflag,:flag)');
          Qhost1.ParamByName('kodeflag').AsString:=DM.Qcek.fieldbyname('kodeflag').AsString;
          Qhost1.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;



         //jenisnonair

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM jenisnonair ORDER BY jenis ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table jenisnonair');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Jenis Non Air';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin


          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into jenisnonair (jenis,biaya,persenppn,ke_na,ke_angsuran) values (:jenis,:biaya,:persenppn,:ke_na,:ke_angsuran)');
          Qhost1.ParamByName('jenis').AsString:=DM.Qcek.fieldbyname('jenis').AsString;
          Qhost1.ParamByName('biaya').AsCurrency:=DM.Qcek.fieldbyname('biaya').AsCurrency;
          Qhost1.ParamByName('persenppn').AsCurrency:=DM.Qcek.fieldbyname('persenppn').AsCurrency;
          Qhost1.ParamByName('ke_na').AsString:=DM.Qcek.fieldbyname('ke_na').AsString;
          Qhost1.ParamByName('ke_angsuran').AsString:=DM.Qcek.fieldbyname('ke_angsuran').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


          //jenisnonair

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM jenislainnya ORDER BY jenis ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table jenislainnya');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin


          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into jenislainnya (jenis) values (:jenis)');
          Qhost1.ParamByName('jenis').AsString:=DM.Qcek.fieldbyname('jenis').AsString;

          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;



          //kepemilikan

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM kepemilikan ORDER BY kepemilikanbangunan ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table kepemilikan');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into kepemilikan values (:kepemilikan)');
          Qhost1.ParamByName('kepemilikan').AsString:=DM.Qcek.fieldbyname('kepemilikanbangunan').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


          //merk

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM merkmeter ORDER BY merk ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table merkmeter');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into merkmeter values (:merk)');
          Qhost1.ParamByName('merk').AsString:=DM.Qcek.fieldbyname('merk').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


          //sumberair

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM sumberair ORDER BY sumberair ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table sumberair');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron kolektif';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into sumberair values (:sumberair)');
          Qhost1.ParamByName('sumberair').AsString:=DM.Qcek.fieldbyname('sumberair').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


            //sumberair

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM byadministrasi_lain ORDER BY kode ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table admlain');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Admlain';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into admlain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


          DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM bypemeliharaan_lain ORDER BY kode ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table pemlain');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Pem Lain';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into pemlain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


          DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM byretribusi_lain ORDER BY kode ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table retlain');
        Qhost1.Execute;

        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Ret Lain';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;

        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into retlain values (:kode,:ket)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('ket').AsString:=DM.Qcek.fieldbyname('keterangan').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end;


        {DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('select * FROM paraf ORDER BY kode ASC');
        Dm.Qcek.Open;

        Qhost1.close;
        Qhost1.SQL.Clear;
        Qhost1.SQL.Add('truncate table paraf');
        Qhost1.Execute;


       
        
        uloading.Progress.Visible:=true;
        uloading.proses.Visible:=true;
        uloading.proses.Caption:='Sinkron Paraf';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
        Application.ProcessMessages;
        for j:=1 to DM.Qcek.RecordCount do
        begin

          Qhost1.close;
          Qhost1.SQL.Clear;
          Qhost1.SQL.Add('replace into paraf (kode,ket1,jab1,nama1,nik1,ket2,jab2,nama2,nik2,ket3,jab3,nama3,nik3) values (:kode,:ket1,:jab1,:nama1,:nik1,:ket2,:jab2,:nama2,:nik2,:ket3,:jab3,:nama3,:nik3)');
          Qhost1.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString;
          Qhost1.ParamByName('jab1').AsString:=DM.Qcek.fieldbyname('jab1').AsString;
          Qhost1.ParamByName('nama1').AsString:=DM.Qcek.fieldbyname('nama1').AsString;
          Qhost1.ParamByName('nik1').AsString:=DM.Qcek.fieldbyname('nik1').AsString;
          Qhost1.ParamByName('jab2').AsString:=DM.Qcek.fieldbyname('jab2').AsString;
          Qhost1.ParamByName('nama2').AsString:=DM.Qcek.fieldbyname('nama2').AsString;
          Qhost1.ParamByName('nik2').AsString:=DM.Qcek.fieldbyname('nik2').AsString;
          Qhost1.ParamByName('jab3').AsString:=DM.Qcek.fieldbyname('jab3').AsString;
          Qhost1.ParamByName('nama3').AsString:=DM.Qcek.fieldbyname('nama3').AsString;
          Qhost1.ParamByName('nik3').AsString:=DM.Qcek.fieldbyname('nik3').AsString;
          Qhost1.ParamByName('ket1').AsString:=DM.Qcek.fieldbyname('ket1').AsString;
          Qhost1.ParamByName('ket2').AsString:=DM.Qcek.fieldbyname('ket2').AsString;
          Qhost1.ParamByName('ket3').AsString:=DM.Qcek.fieldbyname('ket3').AsString;
          Qhost1.Execute;

          uloading.Progress.IncPartsByOne;
          Application.ProcessMessages;
          DM.Qcek.Next;
        end; }





        uloading.Close;
        host.close;


        
        MessageDlg('Sinkronisasi Unit Pelayanan Selesai !!', mtInformation, [MbOk], 0);

        umain.host.close;
          
        EXCEPT
                ON E : Exception do
                BEGIN

                   MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                              E.Message, mtError, [MbOk], 0);
                END;
         END;


     end
     else
     begin
      host.close;
      exit;
     end;


   
  umain.host.close;
end;

procedure TUmain.dxBarLargeButton100Click(Sender: TObject);
begin
host.close;
DM.Xflag:='Backup';
urepair.info.Caption:='BACKUP DATABASE BILLING';
urepair.btnOK.Caption:='Backup';
urepair.showmodal;
end;

procedure TUmain.dxBarLargeButton102Click(Sender: TObject);
begin
 host.close;
DM.Xflag:='Repair';
urepair.info.Caption:='REPAIR DATABASE BILLING';
urepair.btnOK.Caption:='Perbaiki';
urepair.showmodal;
end;

procedure TUmain.dxBarLargeButton104Click(Sender: TObject);
begin

TRY
openkoneksi_host;


         ubackuphost.Xflag:='Backup';
         ubackuphost.info.Caption:='BACKUP DATABASE LOKET';
         ubackuphost.showmodal;
 except
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
  end;
end;

procedure TUmain.dxBarLargeButton103Click(Sender: TObject);
begin
TRY
openkoneksi_host;


         ubackuphost.Xflag:='Repair';
         ubackuphost.info.Caption:='REPAIR DATABASE LOKET';
         ubackuphost.showmodal;

 except
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
  end;
end;

procedure TUmain.dxBarLargeButton114Click(Sender: TObject);
begin
if Flagpengguna = 0 then
  begin
    FRAME_pengguna := TFRpengguna.Create(Self);
    try
      FRAME_pengguna.Align := alClient;
      FRAME_pengguna.Top := 125;
      FRAME_pengguna.Parent := Self;
      FRAME_pengguna.BringToFront;
      Flagpengguna := 1;
      FRAME_pengguna.akses;
      FRAME_pengguna.refresh.Click;
      DM.Xkey:='Pengguna';
    except
      FRAME_pengguna.Free;
    end;
  end
  else
  begin
     FRAME_pengguna.BringToFront;
     DM.Xkey:='Pengguna';
  end;
end;

procedure TUmain.dxBarLargeButton140Click(Sender: TObject);
begin


if Flaguserloket = 0 then
  begin
    FRAME_penggunaloket := TFRuserloket.Create(Self);
    try
      FRAME_penggunaloket.Align := alClient;
      FRAME_penggunaloket.Top := 125;
      FRAME_penggunaloket.Parent := Self;
      FRAME_penggunaloket.BringToFront;
      Flaguserloket := 1;
      FRAME_penggunaloket.akses;
      FRAME_penggunaloket.refresh.Click;
      FRAME_penggunaloket.refresh2.Click;
      DM.Xkey:='Pengguna';
    except
      FRAME_penggunaloket.Free;
    end;
  end
  else
  begin
     FRAME_penggunaloket.BringToFront;
     DM.Xkey:='Pengguna';
  end;

end;

procedure TUmain.RzStatusPane5Click(Sender: TObject);
begin
      ugantipass.RzPanel1.Visible:=True;
      ugantipass.RzPanel2.Visible:=False;
      if ugantipass.showmodal=MrOk then
      begin

          MessageDlg('Password Anda Berhasil di Update ', mtInformation, [mbOK], 0);

      end;
end;

procedure TUmain.kirimdrdClick(Sender: TObject);
begin
  TRY
{
    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SELECT nosamb FROM permohonan_rubah_rayon WHERE flaghapus="0" AND  flagprosesdata="0"');
    Qcek.Open;
    if(Qcek.RecordCount>0)then
    begin
      MessageDlg('Proses Upload belum bisa dilakukan karena masih terdapat aduan Pindah Alamat yang belum diverifikasi.'+#13+
                 'Harap menghubungi bagian terkait untuk menyelesaikan proses pindah alamat terlebih dahulu!',mtInformation,[mbOK],0);
      exit;
    end;
}
    //download();
    uupload2.ShowModal;
  except
    on E: Exception do
    begin
      MessageDlg('TERJADI KESALAHAN : '+E.Message, mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TUmain.dxBarLargeButton160Click(Sender: TObject);
begin

ulokasifoto.showmodal;
end;

procedure TUmain.dxBarLargeButton169Click(Sender: TObject);
begin
host.close;
urekapgolongan5.showmodal;
end;

procedure TUmain.dxBarLargeButton177Click(Sender: TObject);
begin
host.close;
urekapgolongan7.showmodal;
end;

procedure TUmain.postingClick(Sender: TObject);
begin
upostingdrd.showmodal;
end;

procedure TUmain.dxBarButton126Click(Sender: TObject);
begin
  host.close;
  udrd_posting.showmodal;
end;

procedure TUmain.dxBarLargeButton185Click(Sender: TObject);
begin
    if flagrab = 0 then
          begin
            FRAME_rab := TFRrab.Create(Self);
            try
              FRAME_rab.Align := alClient;
              FRAME_rab.Top := 125;
              FRAME_rab.Parent := Self;

              FRAME_rab.akses;
              
              FRAME_rab.isicombopelanggan;
              FRAME_rab.refresh.Click;
              FRAME_rab.BringToFront;
              flagrab := 1;
              DM.Xkey:='rab';

            except
              FRAME_rab.Free;
            end;
          end
          else
          begin
            FRAME_rab.BringToFront;
            FRAME_rab.akses;
            DM.Xkey:='rab';
          end;
end;

procedure TUmain.dxBarLargeButton186Click(Sender: TObject);
begin


  if flaglainnya = 0 then
    begin
      FRAME_lainnya := TFRlainnya.Create(Self);
      try
        FRAME_lainnya.Align := alClient;
        FRAME_lainnya.Top := 125;
        FRAME_lainnya.Parent := Self;
        FRAME_lainnya.akses;
        FRAME_lainnya.cxPageControl1.ActivePageIndex:=0;
        FRAME_lainnya.cxPageControl1.Visible:=true;
        FRAME_lainnya.BringToFront;
        flaglainnya := 1;
        DM.Xkey:='lainnya'; 
      except
        FRAME_lainnya.Free;
      end;
    end
    else
    begin
      FRAME_lainnya.akses;
      FRAME_lainnya.cxPageControl1.ActivePageIndex:=0;
      FRAME_lainnya.cxPageControl1.Visible:=true;
      FRAME_lainnya.BringToFront; 
      DM.Xkey:='lainnya';
    end;
end;

procedure TUmain.dxBarLargeButton187Click(Sender: TObject);
begin



if flaglainnya = 0 then
    begin
      FRAME_lainnya := TFRlainnya.Create(Self);
      try
        FRAME_lainnya.Align := alClient;
        FRAME_lainnya.Top := 125;
        FRAME_lainnya.Parent := Self;
        FRAME_lainnya.akses;
        FRAME_lainnya.cxPageControl1.ActivePageIndex:=1;
        FRAME_lainnya.cxPageControl1.Visible:=true;
        FRAME_lainnya.BringToFront;
        flaglainnya := 1;
        DM.Xkey:='lainnya'; 
      except
        FRAME_lainnya.Free;
      end;
    end
    else
    begin
      FRAME_lainnya.akses;
      FRAME_lainnya.cxPageControl1.ActivePageIndex:=1;
      FRAME_lainnya.cxPageControl1.Visible:=true;
      FRAME_lainnya.BringToFront; 
      DM.Xkey:='lainnya';
    end;
end;

procedure TUmain.dxBarLargeButton188Click(Sender: TObject);
begin


if flaglainnya = 0 then
    begin
      FRAME_lainnya := TFRlainnya.Create(Self);
      try
        FRAME_lainnya.Align := alClient;
        FRAME_lainnya.Top := 125;
        FRAME_lainnya.Parent := Self;
        FRAME_lainnya.akses;
        FRAME_lainnya.cxPageControl1.ActivePageIndex:=2;
        FRAME_lainnya.cxPageControl1.Visible:=true;
        FRAME_lainnya.BringToFront;
        flaglainnya := 1;
        DM.Xkey:='lainnya'; 
      except
        FRAME_lainnya.Free;
      end;
    end
    else
    begin
      FRAME_lainnya.akses;
      FRAME_lainnya.cxPageControl1.ActivePageIndex:=2;
      FRAME_lainnya.cxPageControl1.Visible:=true;
      FRAME_lainnya.BringToFront; 
      DM.Xkey:='lainnya';
    end;
end;

procedure TUmain.dxBarLargeButton189Click(Sender: TObject);
begin



if flaglainnya = 0 then
    begin
      FRAME_lainnya := TFRlainnya.Create(Self);
      try
        FRAME_lainnya.Align := alClient;
        FRAME_lainnya.Top := 125;
        FRAME_lainnya.Parent := Self;
        FRAME_lainnya.akses;
        FRAME_lainnya.cxPageControl1.ActivePageIndex:=3;
        FRAME_lainnya.cxPageControl1.Visible:=true;
        FRAME_lainnya.BringToFront;
        flaglainnya := 1;
        DM.Xkey:='lainnya'; 
      except
        FRAME_lainnya.Free;
      end;
    end
    else
    begin
      FRAME_lainnya.akses;
      FRAME_lainnya.cxPageControl1.ActivePageIndex:=3;
      FRAME_lainnya.cxPageControl1.Visible:=true;
      FRAME_lainnya.BringToFront; 
      DM.Xkey:='lainnya';
    end;
end;

procedure TUmain.dxBarLargeButton190Click(Sender: TObject);
begin



if flaglainnya = 0 then
    begin
      FRAME_lainnya := TFRlainnya.Create(Self);
      try
        FRAME_lainnya.Align := alClient;
        FRAME_lainnya.Top := 125;
        FRAME_lainnya.Parent := Self;
        FRAME_lainnya.akses;
        FRAME_lainnya.cxPageControl1.ActivePageIndex:=4;
        FRAME_lainnya.cxPageControl1.Visible:=true;
        FRAME_lainnya.BringToFront;
        flaglainnya := 1;
        DM.Xkey:='lainnya'; 
      except
        FRAME_lainnya.Free;
      end;
    end
    else
    begin
      FRAME_lainnya.akses;
      FRAME_lainnya.cxPageControl1.ActivePageIndex:=4;
      FRAME_lainnya.cxPageControl1.Visible:=true;
      FRAME_lainnya.BringToFront; 
      DM.Xkey:='lainnya';
    end;
end;

procedure TUmain.dxBarButton135Click(Sender: TObject);
begin
lapmemo.showmodal;
end;

procedure TUmain.dxBarLargeButton150Click(Sender: TObject);
begin
host.close;
urekapikthisar4.showmodal;
end;

procedure TUmain.dxBarButton137Click(Sender: TObject);
begin
ShowMessage('Dalam Pengerjaan');
end;

procedure TUmain.dxBarButton138Click(Sender: TObject);
begin
ShowMessage('Dalam Pengerjaan');
end;

procedure TUmain.dxBarButton146Click(Sender: TObject);
begin
  host.close;
  udrd_koreksi.showmodal;
end;

procedure TUmain.dxBarLargeButton199Click(Sender: TObject);
begin
host.close;
ustatistik.showmodal;
end;

procedure TUmain.dxBarLargeButton201Click(Sender: TObject);
begin

 TRY
    umain.openkoneksi_host;

  except ON E:Exception DO
  BEGIn
    MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
               E.Message, mtwarning, [MbOk], 0);
    Exit;
  END;
  end;


umemopemutusan.showmodal;
end;

procedure TUmain.dxBarLargeButton202Click(Sender: TObject);
begin

 TRY
    umain.openkoneksi_host;

  except ON E:Exception DO
  BEGIn
    MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
               E.Message, mtwarning, [MbOk], 0);
    Exit;
  END;
  end;


  usuratpiutang.showmodal;
end;

procedure TUmain.dxBarLargeButton203Click(Sender: TObject);
begin
udaftarpengesahantagihan.showmodal;
end;

procedure TUmain.dxBarLargeButton204Click(Sender: TObject);
begin
urekapmemopemutusan.showmodal;
end;

procedure TUmain.dxBarLargeButton205Click(Sender: TObject);
begin
uposisisambungan.showmodal;
end;

procedure TUmain.dxBarLargeButton206Click(Sender: TObject);
begin
uikthisar.showmodal;
end;

procedure TUmain.dxBarButton152Click(Sender: TObject);
begin
upembacaan.showmodal;
end;

procedure TUmain.dxBarButton153Click(Sender: TObject);
begin
lapmemo.showmodal;
end;

procedure TUmain.dxBarButton154Click(Sender: TObject);
begin
  umain.host.close;
        if Flagchart1 = 0 then
          begin
            FRAME_chart1 := TFRchart1.Create(Self);
            try
              FRAME_chart1.Align := alClient;
              FRAME_chart1.Top := 125;
              FRAME_chart1.Parent := Self;
              FRAME_chart1.BringToFront;
              flagchart1 := 1;
              DM.Xkey:='Chart1';
              FRAME_chart1.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
            except
              FRAME_chart1.Free;
            end;
          end
          else
          begin
            FRAME_chart1.BringToFront;
             DM.Xkey:='Chart1';
          end;
end;

procedure TUmain.dxBarButton155Click(Sender: TObject);
begin
 umain.host.close;
        if Flagchart2 = 0 then
          begin
            FRAME_chart2 := TFRchart2.Create(Self);
            try
              FRAME_chart2.Align := alClient;
              FRAME_chart2.Top := 125;
              FRAME_chart2.Parent := Self;
              FRAME_chart2.BringToFront;
              flagchart2 := 1;
              DM.Xkey:='Chart2';
              FRAME_chart2.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart2.akses;
            except
              FRAME_chart2.Free;
            end;
          end
          else
          begin
            FRAME_chart2.BringToFront;
             DM.Xkey:='Chart2';
          end;
end;

procedure TUmain.dxBarButton156Click(Sender: TObject);
begin
 umain.host.close;
        if Flagchart3 = 0 then
          begin
            FRAME_chart3 := TFRchart3.Create(Self);
            try
              FRAME_chart3.Align := alClient;
              FRAME_chart3.Top := 125;
              FRAME_chart3.Parent := Self;
              FRAME_chart3.BringToFront;
              flagchart3 := 1;
              DM.Xkey:='Chart3';
              FRAME_chart3.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart3.akses;
            except
              FRAME_chart3.Free;
            end;
          end
          else
          begin
            FRAME_chart3.BringToFront;
             DM.Xkey:='Chart3';
          end;
end;

procedure TUmain.dxBarButton157Click(Sender: TObject);
begin
        umain.host.close;

        if Flagchart4 = 0 then
          begin
            FRAME_chart4 := TFRchart4.Create(Self);
            try
              FRAME_chart4.Align := alClient;
              FRAME_chart4.Top := 125;
              FRAME_chart4.Parent := Self;
              FRAME_chart4.BringToFront;
              flagchart4 := 1;
              DM.Xkey:='Chart4';
              FRAME_chart4.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart4.akses;
            except
              FRAME_chart4.Free;
            end;
          end
          else
          begin
            FRAME_chart4.BringToFront;
             DM.Xkey:='Chart4';
          end;
end;

procedure TUmain.dxBarButton162Click(Sender: TObject);
begin
  host.close;
  udrd_posting.showmodal;
end;

procedure TUmain.dxBarButton163Click(Sender: TObject);
begin

  lapmemo.showmodal;

end;

procedure TUmain.F2Execute(Sender: TObject);
begin
  if DM.Xkey='Rekening' then
    FRAME_rekening.Publish1.Click;

    if DM.Xkey='limbah' then
    FRAME_limbah.Publish1.Click;

    if DM.Xkey='lltt' then
    FRAME_lltt.Publish1.Click;

  

end;

procedure TUmain.F4Execute(Sender: TObject);
begin
  if DM.Xkey='Rekening' then
  FRAME_rekening.unpublish1.Click;

  if DM.Xkey='limbah' then
  FRAME_limbah.Unpublish1.Click;

  
  if DM.Xkey='lltt' then
  FRAME_lltt.Unpublish1.Click;
end;

procedure TUmain.F3Execute(Sender: TObject);
begin
  if (DM.Xkey='Rekening') then
  begin
     FRAME_rekening.foto1DblClick(self);
  end;

end;

procedure TUmain.F5Execute(Sender: TObject);
begin
 if DM.Xkey='Rekening' then
  FRAME_rekening.LihatPiutang1.click;

  if DM.Xkey='Pelanggan' then
  FRAME_pelanggan.LihatPiutang1.click;

end;

procedure TUmain.dxBarLargeButton208Click(Sender: TObject);
begin
udrd_posting.showmodal;
end;

procedure TUmain.dxBarButton169Click(Sender: TObject);
begin
 
        if Flagchart1 = 0 then
          begin
            FRAME_chart1 := TFRchart1.Create(Self);
            try
              FRAME_chart1.Align := alClient;
              FRAME_chart1.Top := 125;
              FRAME_chart1.Parent := Self;
              FRAME_chart1.BringToFront;
              flagchart1 := 1;
              DM.Xkey:='Chart1';
              FRAME_chart1.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
            except
              FRAME_chart1.Free;
            end;
          end
          else
          begin
            FRAME_chart1.BringToFront;
             DM.Xkey:='Chart1';
          end;
end;

procedure TUmain.dxBarButton170Click(Sender: TObject);
begin
        if Flagchart2 = 0 then
          begin
            FRAME_chart2 := TFRchart2.Create(Self);
            try
              FRAME_chart2.Align := alClient;
              FRAME_chart2.Top := 125;
              FRAME_chart2.Parent := Self;
              FRAME_chart2.BringToFront;
              flagchart2 := 1;
              DM.Xkey:='Chart2';
              FRAME_chart2.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart2.akses;
            except
              FRAME_chart2.Free;
            end;
          end
          else
          begin
            FRAME_chart2.BringToFront;
             DM.Xkey:='Chart2';
          end;
end;

procedure TUmain.dxBarButton171Click(Sender: TObject);
begin
          if Flagchart3 = 0 then
          begin
            FRAME_chart3 := TFRchart3.Create(Self);
            try
              FRAME_chart3.Align := alClient;
              FRAME_chart3.Top := 125;
              FRAME_chart3.Parent := Self;
              FRAME_chart3.BringToFront;
              flagchart3 := 1;
              DM.Xkey:='Chart3';
              FRAME_chart3.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart3.akses;
            except
              FRAME_chart3.Free;
            end;
          end
          else
          begin
            FRAME_chart3.BringToFront;
             DM.Xkey:='Chart3';
          end;
end;

procedure TUmain.dxBarButton172Click(Sender: TObject);
begin
        if Flagchart4 = 0 then
          begin
            FRAME_chart4 := TFRchart4.Create(Self);
            try
              FRAME_chart4.Align := alClient;
              FRAME_chart4.Top := 125;
              FRAME_chart4.Parent := Self;
              FRAME_chart4.BringToFront;
              flagchart4 := 1;
              DM.Xkey:='Chart4';
              FRAME_chart4.periode.date:=EncodeDateTime(YearOf(date),MonthOf(date), 5, 1, 2, 3, 4);
              FRAME_chart4.akses;
            except
              FRAME_chart4.Free;
            end;
          end
          else
          begin
            FRAME_chart4.BringToFront;
             DM.Xkey:='Chart4';
          end;
end;

procedure TUmain.dxBarLargeButton209Click(Sender: TObject);
begin
udrd_real_karyawan.showmodal;
end;

procedure TUmain.dxBarLargeButton210Click(Sender: TObject);
begin
udrd_posting2.showmodal;
end;

procedure TUmain.dxBarLargeButton211Click(Sender: TObject);
begin
udrd_posting3.showmodal;
end;

procedure TUmain.dxBarLargeButton212Click(Sender: TObject);
begin
udrd_posting5.showmodal;
end;

procedure TUmain.dxBarLargeButton222Click(Sender: TObject);
begin
if flaglaporan = 0 then
  begin
    FRAME_laporan := TFRlaporan.Create(Self);
    try
      FRAME_laporan.Align := alClient;
      FRAME_laporan.Top := 125;
      FRAME_laporan.Parent := Self;
      FRAME_laporan.BringToFront;
      flaglaporan := 1;
      DM.Xkey:='Laporan';
      FRAME_laporan.akses;
      FRAME_laporan.panel_download.Visible:=false;
      FRAME_laporan.panel_laporan.Visible:=true;
      FRAME_laporan.info.Caption:='LAPORAN';
    except
      FRAME_laporan.Free;
    end;
  end
  else
  begin
    FRAME_laporan.akses;
    FRAME_laporan.panel_download.Visible:=false;
    FRAME_laporan.panel_laporan.Visible:=true;
    FRAME_laporan.BringToFront;
    FRAME_laporan.info.Caption:='LAPORAN';
    DM.Xkey:='Laporan';
  end;
end;

procedure TUmain.dxBarLargeButton223Click(Sender: TObject);
begin
       TRY

  TRY

    umain.Enabled:=false;
    Enabled:=false;

    Umain.openkoneksi_host;


      UdaftarBA.Qcek.close;
      UdaftarBA.Qcek.SQL.Clear;
      UdaftarBA.Qcek.SQL.Add('SELECT b.nomorba AS nomor,p.nosamb,p.nama,p.alamat,p.baru,b.tanggalba,p.keterangan FROM ba_balik_nama b LEFT JOIN permohonan_balik_nama p ON b.nomorpermohonan=p.nomor WHERE b.flaghapus="0"');
      UdaftarBA.Qcek.SQL.Add('ORDER BY b.tanggalba,CAST(b.nomorba AS UNSIGNED) ASC ');
      UdaftarBA.Qcek.Open;


      if udaftarBA.showmodal=mrOk then
      begin


          {namabaru.Text:=UdaftarBA.Qcek.fieldbyname('baru').AsString;
          nomorba.Text:=UdaftarBA.Qcek.fieldbyname('nomor').AsString;
          tanggal.date:=UdaftarBA.Qcek.fieldbyname('tanggalba').AsDateTime;
          alasan.Text:=UdaftarBA.Qcek.fieldbyname('keterangan').AsString; }


      end;

   EXCEPT On E:EXCEPTION  DO
   BEGIN

        MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

   END;
   END;
  FINALLY
     
      umain.Enabled:=true;
      Enabled:=true;
  END;

end;

procedure TUmain.daftartungguClick(Sender: TObject);
begin
          if flaglistupdate = 0 then
          begin
            FRAME_listupdate := TFRlistupdate.Create(Self);
            try
              FRAME_listupdate.Align := alClient;
              FRAME_listupdate.Top := 125;
              FRAME_listupdate.Parent := Self;
              FRAME_listupdate.cxPageControl1.HideTabs:=true;
              FRAME_listupdate.refreshlist.Click;
              FRAME_listupdate.BringToFront;
              flaglistupdate := 1;
              DM.Xkey:='listupdate';

            except
              FRAME_listupdate.Free;
            end;
          end
          else
          begin
            FRAME_listupdate.BringToFront;
            FRAME_listupdate.refreshlist.Click;
            DM.Xkey:='listupdate';
          end;
end;

procedure TUmain.rekeninglimbahClick(Sender: TObject);
begin

if Flaglimbah = 0 then
  begin
    FRAME_limbah := TFRlimbah.Create(Self);
    try

      FRAME_limbah.isicomborekening;
      FRAME_limbah.Align := alClient;
      FRAME_limbah.Top := 125;
      FRAME_limbah.Parent := Self;
      FRAME_limbah.BringToFront;
      Flaglimbah := 1;
      DM.Xkey:='limbah';
     // FRAME_limbah.akses;

      
      FRAME_limbah.periode.Date:= EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);


      //FRAME_limbah.periode.date:=DateOf(date);

      FRAME_limbah.periode.SetFocus;
    except
      FRAME_limbah.Free;
    end;
  end
  else
  begin
    FRAME_limbah.BringToFront;
    FRAME_limbah.isicomborekening;
     DM.Xkey:='limbah';
  end;

end;

procedure TUmain.rekeningllttClick(Sender: TObject);
begin
if Flaglltt = 0 then
  begin
    FRAME_lltt := TFRlltt.Create(Self);
    try

      FRAME_lltt.isicomborekening;
      FRAME_lltt.Align := alClient;
      FRAME_lltt.Top := 125;
      FRAME_lltt.Parent := Self;
      FRAME_lltt.BringToFront;
      Flaglltt := 1;
      DM.Xkey:='lltt';
     // FRAME_lltt.akses;

      
      FRAME_lltt.periode.Date:= EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);


      //FRAME_lltt.periode.date:=DateOf(date);

      FRAME_lltt.periode.SetFocus;
    except
      FRAME_lltt.Free;
    end;
  end
  else
  begin
    FRAME_lltt.BringToFront;
    FRAME_lltt.isicomborekening;
     DM.Xkey:='lltt';
  end;
end;

procedure TUmain.pelangganlimbahClick(Sender: TObject);
begin
  if Flagpellimbah = 0 then
          begin
            FRAME_pelangganlimbah := TFRpelangganlimbah.Create(Self);
            try
              FRAME_pelangganlimbah.Align := alClient;
              FRAME_pelangganlimbah.Top := 125;
              FRAME_pelangganlimbah.Parent := Self;

              FRAME_pelangganlimbah.akses;
              FRAME_pelangganlimbah.isicombopelanggan;
             // FRAME_pelangganlimbah.tampilkan.Click;

              FRAME_pelangganlimbah.BringToFront;
              Flagpellimbah := 1;
              DM.Xkey:='pelangganlimbah';

            except
              FRAME_pelangganlimbah.Free;
            end;
          end
          else
          begin
            FRAME_pelangganlimbah.BringToFront;
             DM.Xkey:='pelangganlimbah';
          end;
end;

procedure TUmain.pelangganllttClick(Sender: TObject);
begin
  if Flagpellltt = 0 then
          begin
            FRAME_pelangganlltt := TFRpelangganlltt.Create(Self);
            try
              FRAME_pelangganlltt.Align := alClient;
              FRAME_pelangganlltt.Top := 125;
              FRAME_pelangganlltt.Parent := Self;

              FRAME_pelangganlltt.akses;
              FRAME_pelangganlltt.isicombopelanggan;
             // FRAME_pelangganlltt.tampilkan.Click;

              FRAME_pelangganlltt.BringToFront;
              Flagpellltt := 1;
              DM.Xkey:='pelangganlltt';

            except
              FRAME_pelangganlltt.Free;
            end;
          end
          else
          begin
            FRAME_pelangganlltt.BringToFront;
             DM.Xkey:='pelangganlltt';
          end;
end;

procedure TUmain.dxBarLargeButton230Click(Sender: TObject);
begin
  if flaglaporan = 0 then
  begin
    FRAME_laporan := TFRlaporan.Create(Self);
    try
      FRAME_laporan.Align := alClient;
      FRAME_laporan.Top := 125;
      FRAME_laporan.Parent := Self;
      FRAME_laporan.BringToFront;
      flaglaporan := 1;
      DM.Xkey:='Laporan';
      FRAME_laporan.akses;
      FRAME_laporan.panel_download.Visible:=true;
      FRAME_laporan.panel_laporan.Visible:=false;
      FRAME_laporan.info.Caption:='DOWNLOAD TRANSAKSI';
      FRAME_laporan.btnload2.Click;

    except
      FRAME_laporan.Free;
    end;
  end
  else
  begin
    FRAME_laporan.akses;
    FRAME_laporan.panel_download.Visible:=true;
    FRAME_laporan.panel_laporan.Visible:=false;
    FRAME_laporan.info.Caption:='DOWNLOAD TRANSAKSI';
    FRAME_laporan.BringToFront;
    FRAME_laporan.btnload.Click;
     DM.Xkey:='Laporan';
  end;
  
end;

procedure TUmain.menu_pengahapusan_piutangClick(Sender: TObject);
begin
if Flagpemutihan = 0 then
  begin
    FRAME_pemutihan := TFRpemutihan.Create(Self);
    try

      FRAME_pemutihan.isicomborekening;
      FRAME_pemutihan.Align := alClient;
      FRAME_pemutihan.Top := 125;
      FRAME_pemutihan.Parent := Self;
      FRAME_pemutihan.BringToFront;
      Flagpemutihan := 1;
      DM.Xkey:='pemutihan';
      FRAME_pemutihan.akses;


      FRAME_pemutihan.periode.Date:= EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4); 
      FRAME_pemutihan.periode.SetFocus;
    except
      FRAME_pemutihan.Free;
    end;
  end
  else
  begin
    FRAME_pemutihan.BringToFront;
    FRAME_pemutihan.isicomborekening;
    DM.Xkey:='pemutihan';
  end;
end;

procedure TUmain.sinkronPelangganLoket;
var
  i,rubahnosamb:integer;
  waktuupdateterakhir:TDateTime;
  waktuupdateterbaru:TDateTime;
begin
  TRY
    TRY
      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('START TRANSACTION;');
      DM.Qexec.Execute;

      DM.Qcek.close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('SELECT last_pelanggan FROM  prosesdownload WHERE idx="1"');
      DM.Qcek.Open;

      waktuupdateterakhir:=DM.Qcek.fieldbyname('last_pelanggan').AsDateTime;

      rubahnosamb:=0;
      Qcek.close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('SELECT nosamb,flaghapus,tanggal_hapus,keterangan_hapus,nosamb_baru FROM pelanggan WHERE flaghapus="1" AND tanggal_hapus>:tanggal_hapus');
      Qcek.parambyname('tanggal_hapus').AsDateTime:=waktuupdateterakhir;
      Qcek.Open;
      if(Qcek.RecordCount>0)then
      begin
        rubahnosamb:=Qcek.RecordCount;
        loadingMain.Show;
        loadingMain.TotalParts:=Qcekinfo.RecordCount;
        loadingMain.PartsComplete:=0;
        for i:=1 to Qcek.RecordCount do
        begin
          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('update pelanggan set flaghapus=:flaghapus,tanggal_hapus=:tanggal_hapus,keterangan_hapus=:keterangan_hapus,nosamb_baru=:nosamb_baru WHERE nosamb=:nosamb');
          DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
          DM.Qexec.ParamByName('flaghapus').AsString:='1';
          DM.Qexec.ParamByName('tanggal_hapus').Value:=Qcek.fieldbyname('tanggal_hapus').AsDateTime;
          DM.Qexec.ParamByName('keterangan_hapus').Value:=Qcek.fieldbyname('keterangan_hapus').AsString;
          DM.Qexec.ParamByName('nosamb_baru').Value:=Qcek.fieldbyname('nosamb_baru').AsString;
          DM.Qexec.Execute;

          waktuupdateterbaru:=Qcek.fieldbyname('tanggal_hapus').AsDateTime;
          loadingMain.IncPartsByOne;
          Application.ProcessMessages;
          Qcek.Next;
        end;
        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('UPDATE prosesdownload SET last_pelanggan=:last_pelanggan WHERE idx="1"');
        DM.Qexec.ParamByName('last_pelanggan').AsDateTime:=waktuupdateterbaru;
        DM.Qexec.Execute;

        loadingMain.Hide;
      end;

      Qcek.close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('SELECT nosamb,norekening,nama,alamat,koderayon,kodekelurahan,kodebanjar,kodediameter,kodekolektif,merkmeter,kodegol,nohp,notelp,serimeter,nosegelmeter,periodeterbitrekening,status,');
      Qcek.SQL.Add('kepemilikanbangunan,namapemilik,pekerjaan,noktp,penghuni,kodesumberair,dayalistrik,flag,kodeadministrasilain,kodepemeliharaanlain,koderetribusilain,nopendaftaran,norab,');
      Qcek.SQL.Add('keterangan,"0" AS adaangsuran,kodeblok,luasrumah,email,rt,rw,kodekondisimeter,tgldaftar,tglmeter,urutanbaca,stan_awal_pasang,flaghapus,nosamb_baru,keterangan_hapus,');
      Qcek.SQL.Add('tanggal_hapus,tglputus,waktuupdate');
      Qcek.SQL.Add('FROM pelanggan WHERE waktuupdate>:waktuupdate AND flaghapus<>"1" ORDER BY waktuupdate ASC');
      Qcek.parambyname('waktuupdate').AsDateTime:=waktuupdateterakhir;
      Qcek.Open;
      if(Qcek.RecordCount>0)then
      begin
        waktuupdateterbaru:=waktuupdateterakhir;
        loadingMain.TotalParts:=Qcek.RecordCount;
        loadingMain.PartsComplete:=0;
        loadingMain.Visible:=true;
        Application.ProcessMessages;

        for i:=1 to Qcek.RecordCount do
        begin
          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('REPLACE INTO pelanggan (nosamb,norekening,nama,alamat,koderayon,kodekelurahan,kodebanjar,kodediameter,kodekolektif,merkmeter,kodegol,nohp,notelp,serimeter,nosegelmeter,');
          DM.Qexec.SQL.Add('periodeterbitrekening,status,kepemilikanbangunan,namapemilik,pekerjaan,noktp,penghuni,kodesumberair,dayalistrik,flag,kodeadministrasilain,kodepemeliharaanlain,');
          DM.Qexec.SQL.Add('koderetribusilain,nopendaftaran,norab,keterangan,adaangsuran,kodeblok,luasrumah,email,rt,rw,kodekondisimeter,tgldaftar,tglmeter,urutanbaca,stan_awal_pasang,');
          DM.Qexec.SQL.Add('flaghapus,nosamb_baru,keterangan_hapus,tanggal_hapus,tglputus)');
          DM.Qexec.SQL.Add('VALUES (:nosamb,:norekening,:nama,:alamat,:koderayon,:kodekelurahan,:kodebanjar,:kodediameter,:kodekolektif,:merkmeter,:kodegol,:nohp,:notelp,:serimeter,:nosegelmeter,');
          DM.Qexec.SQL.Add(':periodeterbitrekening,:status,:kepemilikanbangunan,:namapemilik,:pekerjaan,:noktp,:penghuni,:kodesumberair,:dayalistrik,:flag,:kodeadministrasilain,:kodepemeliharaanlain,');
          DM.Qexec.SQL.Add(':koderetribusilain,:nopendaftaran,:norab,:keterangan,:adaangsuran,:kodeblok,:luasrumah,:email,:rt,:rw,:kodekondisimeter,:tgldaftar,:tglmeter,:urutanbaca,:stan_awal_pasang,');
          DM.Qexec.SQL.Add(':flaghapus,:nosamb_baru,:keterangan_hapus,:tanggal_hapus,:tglputus)');
          DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
          DM.Qexec.ParamByName('norekening').AsString:=Qcek.fieldbyname('norekening').AsString;
          DM.Qexec.ParamByName('nama').AsString:=Qcek.fieldbyname('nama').AsString;
          DM.Qexec.ParamByName('alamat').AsString:=Qcek.fieldbyname('alamat').AsString;  
          DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
          DM.Qexec.ParamByName('kodekelurahan').AsString:=Qcek.fieldbyname('kodekelurahan').AsString;
          DM.Qexec.ParamByName('kodebanjar').AsString:=Qcek.fieldbyname('kodebanjar').AsString;
          DM.Qexec.ParamByName('kodediameter').AsString:=Qcek.fieldbyname('kodediameter').AsString;
          DM.Qexec.ParamByName('kodekolektif').AsString:=Qcek.fieldbyname('kodekolektif').AsString; 
          DM.Qexec.ParamByName('merkmeter').AsString:=Qcek.fieldbyname('merkmeter').AsString;
          DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
          DM.Qexec.ParamByName('nohp').AsString:=Qcek.fieldbyname('nohp').AsString;
          DM.Qexec.ParamByName('notelp').AsString:=Qcek.fieldbyname('notelp').AsString;
          DM.Qexec.ParamByName('serimeter').AsString:=Qcek.fieldbyname('serimeter').AsString;
          DM.Qexec.ParamByName('nosegelmeter').AsString:=Qcek.fieldbyname('nosegelmeter').AsString;
          DM.Qexec.ParamByName('periodeterbitrekening').AsString:=Qcek.fieldbyname('periodeterbitrekening').AsString;
          DM.Qexec.ParamByName('status').AsString:=Qcek.fieldbyname('status').AsString;
          DM.Qexec.ParamByName('kepemilikanbangunan').AsString:=Qcek.fieldbyname('kepemilikanbangunan').AsString;
          DM.Qexec.ParamByName('namapemilik').AsString:=Qcek.fieldbyname('namapemilik').AsString;
          DM.Qexec.ParamByName('pekerjaan').AsString:=Qcek.fieldbyname('pekerjaan').AsString;
          DM.Qexec.ParamByName('noktp').AsString:=Qcek.fieldbyname('noktp').AsString;
          DM.Qexec.ParamByName('penghuni').AsString:=Qcek.fieldbyname('penghuni').AsString;
          DM.Qexec.ParamByName('kodesumberair').AsString:=Qcek.fieldbyname('kodesumberair').AsString;
          DM.Qexec.ParamByName('dayalistrik').Value:=Qcek.fieldbyname('dayalistrik').AsCurrency;
          DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
          DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qcek.fieldbyname('kodeadministrasilain').AsString;
          DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qcek.fieldbyname('kodepemeliharaanlain').AsString;
          DM.Qexec.ParamByName('koderetribusilain').AsString:=Qcek.fieldbyname('koderetribusilain').AsString;
          DM.Qexec.ParamByName('nopendaftaran').AsString:=Qcek.fieldbyname('nopendaftaran').AsString;
          DM.Qexec.ParamByName('norab').AsString:=Qcek.fieldbyname('norab').AsString;
          DM.Qexec.ParamByName('keterangan').AsString:=Qcek.fieldbyname('keterangan').AsString;
          DM.Qexec.ParamByName('adaangsuran').AsString:=Qcek.fieldbyname('adaangsuran').AsString;
          DM.Qexec.ParamByName('kodeblok').AsString:=Qcek.fieldbyname('kodeblok').AsString;
          DM.Qexec.ParamByName('luasrumah').AsCurrency:=Qcek.fieldbyname('luasrumah').AsCurrency;
          DM.Qexec.ParamByName('email').AsString:=Qcek.fieldbyname('email').AsString;
          DM.Qexec.ParamByName('rt').AsString:=Qcek.fieldbyname('rt').AsString;
          DM.Qexec.ParamByName('rw').AsString:=Qcek.fieldbyname('rw').AsString;
          DM.Qexec.ParamByName('kodekondisimeter').AsString:=Qcek.fieldbyname('kodekondisimeter').AsString;
          DM.Qexec.ParamByName('tgldaftar').Value:=Qcek.fieldbyname('tgldaftar').Value;                       
          DM.Qexec.ParamByName('tglmeter').Value:=Qcek.fieldbyname('tglmeter').Value;
          DM.Qexec.ParamByName('urutanbaca').Value:=Qcek.fieldbyname('urutanbaca').Value;
          DM.Qexec.ParamByName('stan_awal_pasang').Value:=Qcek.fieldbyname('stan_awal_pasang').Value;
          DM.Qexec.ParamByName('flaghapus').Value:=Qcek.fieldbyname('flaghapus').Value;
          DM.Qexec.ParamByName('nosamb_baru').Value:=Qcek.fieldbyname('nosamb_baru').Value;
          DM.Qexec.ParamByName('keterangan_hapus').Value:=Qcek.fieldbyname('keterangan_hapus').Value;
          DM.Qexec.ParamByName('tanggal_hapus').Value:=Qcek.fieldbyname('tanggal_hapus').Value;
          DM.Qexec.ParamByName('tglputus').Value:=Qcek.fieldbyname('tglputus').Value;
          DM.Qexec.Execute;

          waktuupdateterbaru:=Qcek.fieldbyname('waktuupdate').AsDateTime;
          loadingMain.IncPartsByOne;
          Application.ProcessMessages;
          Qcek.Next;
        end;

        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('UPDATE prosesdownload SET last_pelanggan=:last_pelanggan WHERE idx="1"');
        DM.Qexec.ParamByName('last_pelanggan').AsDateTime:=waktuupdateterbaru;
        DM.Qexec.Execute;
        loadingMain.Hide;

      end;


      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('COMMIT;');
      DM.Qexec.Execute;
      if rubahnosamb>0 then MessageDlg('Terdapat '+IntToStr(rubahnosamb)+' pelanggan mengalami perubahan Nosamb.'+#13+'Silakan melakukan supervisi data pembacaan dan rekening bulan berjalan.',mtWarning,[mbOK],0);
    except
      on E: Exception do
      begin
        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('ROLLBACK;');
        DM.Qexec.Execute;
        MessageDlg('TERJADI KESALAHAN : '+E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  FINALLY
    loadingMain.Visible:=false;
  END;
end;

end.


