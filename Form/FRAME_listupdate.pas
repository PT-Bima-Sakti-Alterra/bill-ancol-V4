unit FRAME_listupdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinOffice2013White, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, MemDS, DBAccess, MyAccess, ActnList, cxCalendar, dxmdaset,
  RzLabel, cxPCdxBarPopupMenu, cxPC, cxCurrencyEdit, cxImageComboBox,
  cxContainer, cxImage,jpeg, RzPrgres,
  cxCheckBox, cxTextEdit;

type
  TFRlistupdate = class(TFrame)
    RzPanel1: TRzPanel;
    info: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    DSloket: TMyDataSource;
    Qhost: TMyQuery;
    Qcek: TMyQuery;
    Qinisial: TMyQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QcekHost1: TMyQuery;
    Qcekhost2: TMyQuery;
    Qcekhost3: TMyQuery;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel18: TRzPanel;
    proses2: TcxButton;
    refresh2: TcxButton;
    cxGrid1: TcxGrid;
    grid: TcxGridDBTableView;
    gridjenis: TcxGridDBColumn;
    gridnomor: TcxGridDBColumn;
    gridnosamb: TcxGridDBColumn;
    gridnama: TcxGridDBColumn;
    gridalamat: TcxGridDBColumn;
    gridkodegol: TcxGridDBColumn;
    gridkoderayon: TcxGridDBColumn;
    gridkodewil: TcxGridDBColumn;
    gridtanggal: TcxGridDBColumn;
    gridketerangan: TcxGridDBColumn;
    gridlama: TcxGridDBColumn;
    gridbaru: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gtvlist: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Qlist: TMyQuery;
    DSlist: TMyDataSource;
    gtvlistColumn1: TcxGridDBColumn;
    gtvlistjumlah: TcxGridDBColumn;
    RzPanel4: TRzPanel;
    Qdaftar: TMyQuery;
    DSdaftar: TMyDataSource;
    Qbaliknama: TMyQuery;
    Qrubahgol: TMyQuery;
    Qptssementara: TMyQuery;
    RzPanel5: TRzPanel;
    proses: TcxButton;
    refresh_: TcxButton;
    Qsambkembali: TMyQuery;
    Qsambbaru: TMyQuery;
    refreshlist: TcxButton;
    RzPanel6: TRzPanel;
    Qcek2: TMyQuery;
    Qbukasegel: TMyQuery;
    Qptstunggakan: TMyQuery;
    Qsegel: TMyQuery;
    list_: TdxMemData;
    list_jenis: TStringField;
    list_jumlah: TIntegerField;
    data_: TdxMemData;
    data_nomor: TStringField;
    data_nosamb: TStringField;
    data_nama: TStringField;
    data_alamat: TStringField;
    data_kodegol: TStringField;
    data_koderayon: TStringField;
    data_kodewil: TStringField;
    data_keterangan: TStringField;
    data_tanggal: TDateField;
    data_nomorba: TStringField;
    RzPanel7: TRzPanel;
    RzLabel1: TRzLabel;
    data_baru: TStringField;
    data_lama: TStringField;
    data_norab: TStringField;
    Qkoreksirek: TMyQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    gtv: TcxGridDBTableView;
    gtvColumn1: TcxGridDBColumn;
    gtvColumn2: TcxGridDBColumn;
    gtvColumn3: TcxGridDBColumn;
    gtvColumn4: TcxGridDBColumn;
    gtvColumn5: TcxGridDBColumn;
    gtvColumn6: TcxGridDBColumn;
    gtvColumn7: TcxGridDBColumn;
    gtvColumn8: TcxGridDBColumn;
    gtvColumn9: TcxGridDBColumn;
    gtvColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    gtv2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    data_stanlalu_lama: TCurrencyField;
    data_stankini_lama: TCurrencyField;
    data_pakai_lama: TCurrencyField;
    gtv2RecId: TcxGridDBColumn;
    gtv2stanlalu_lama: TcxGridDBColumn;
    gtv2stankini_lama: TcxGridDBColumn;
    gtv2pakai_lama: TcxGridDBColumn;
    data_stanlalu_baru: TCurrencyField;
    data_stankini_baru: TCurrencyField;
    data_pakai_baru: TCurrencyField;
    gtv2stanlalu_baru: TcxGridDBColumn;
    gtv2stankini_baru: TcxGridDBColumn;
    gtv2pakai_baru: TcxGridDBColumn;
    data_selisih_pakai: TCurrencyField;
    data_biayapemakaian_lama: TCurrencyField;
    data_biayapemakaian_baru: TCurrencyField;
    data_selisih_biayapemakaian: TCurrencyField;
    gtv2selisih_pakai: TcxGridDBColumn;
    gtv2biayapemakaian_lama: TcxGridDBColumn;
    gtv2biayapemakaian_baru: TcxGridDBColumn;
    gtv2selisih_biayapemakaian: TcxGridDBColumn;
    data_flagpublish: TStringField;
    gtv2Column1: TcxGridDBColumn;
    data_periode: TStringField;
    gtv2Column2: TcxGridDBColumn;
    data_bulan: TStringField;
    data_flag: TStringField;
    MyQuery1: TMyQuery;
    PopupMenu1: TPopupMenu;
    Publish1: TMenuItem;
    Unpublish1: TMenuItem;
    Qcekhost: TMyQuery;
    Qkoreksi: TMyQuery;
    Selesai1: TMenuItem;
    N1: TMenuItem;
    Qupload: TMyQuery;
    Qexec: TMyQuery;
    data_flaglunas: TStringField;
    gtv2Column3: TcxGridDBColumn;
    list_pelanggan: TStringField;
    refresh: TcxButton;
    Qsambbarulimbah: TMyQuery;
    Qsambbarulltt: TMyQuery;
    Qsegeltunggakan: TMyQuery;
    data_kodekelurahan: TStringField;
    cxTabSheet3: TcxTabSheet;
    foto: TcxImage;
    LihatFoto1: TMenuItem;
    Qfoto: TMyQuery;
    RzPanel8: TRzPanel;
    cxButton1: TcxButton;
    gtv2Column4: TcxGridDBColumn;
    gtv2Column5: TcxGridDBColumn;
    Qptstotal: TMyQuery;
    list_kategori: TStringField;
    gtvlistColumn4: TcxGridDBColumn;
    data_nosambyangdiberikan: TStringField;
    MyDataSource1: TMyDataSource;
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
    Qmirrorflagkirim: TStringField;
    Qmirrorrekair: TFloatField;
    Qmirrornosamb: TStringField;
    Qmirrorzbiayapemakaian: TFloatField;
    Qmirrorzmeterai: TFloatField;
    Qmirrorzpemeliharaan: TFloatField;
    Qmirrorzretribusi: TFloatField;
    Qmirrorzadministrasi: TFloatField;
    Qmirrorzpelayanan: TFloatField;
    Qmirrorzdendatunggakan: TFloatField;
    Qmirrorflag: TStringField;
    Qmirrortrf_dendatunggakan: TFloatField;
    Qmirrortrf_dendatunggakan2: TFloatField;
    Qmirrorbb5: TFloatField;
    Qmirrorba5: TFloatField;
    Qmirrort5: TFloatField;
    Qmirrort5_tetap: TStringField;
    Qmirrortrf_admlain: TFloatField;
    Qmirrortrf_pemlain: TFloatField;
    Qmirrortglmulaidenda2: TDateField;
    Qmirrorzairlimbah: TFloatField;
    Qmirrorzdendapakai0: TFloatField;
    Qmirrorzadministrasilain: TFloatField;
    Qmirrorzpemeliharaanlain: TFloatField;
    Qmirrorzretribusilain: TFloatField;
    Qmirrortrf_retlain: TFloatField;
    Qmirrorxppn: TFloatField;
    Qmirrortglmulaidenda3: TDateField;
    Qmirrortrf_dendatunggakan3: TFloatField;
    Qmirrortrf_dendatunggakanperbulan: TFloatField;
    Qmirrortglmulaidendaperbulan: TDateField;
    Qmirrorxretribusipakai: TFloatField;
    Qmirrortglmulaidenda4: TDateField;
    Qmirrortrf_dendatunggakan4: TFloatField;
    Qgol: TMyQuery;
    QGantiMeter: TMyQuery;
    tabgantimeter: TcxTabSheet;
    cxGrid5: TcxGrid;
    gtv3: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    data_merkmeterlama: TStringField;
    data_serimeterlama: TStringField;
    data_angkameterlama: TCurrencyField;
    data_ukuranlama: TStringField;
    data_merkmeterbaru: TStringField;
    data_serimeterbaru: TStringField;
    data_ukuranbaru: TStringField;
    data_angkameterbaru: TCurrencyField;
    gtv3Column1: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    PerbaruiData1: TMenuItem;
    Qpel: TMyQuery;
    Qgol1: TMyQuery;
    Qdiameter: TMyQuery;
    Progress: TRzProgressBar;
    Qperiodeterbaru: TMyQuery;
    data_wilayah: TStringField;
    data_golongan: TStringField;
    ProsesAll: TMenuItem;
    list_tipekoreksi: TStringField;
    RzPanel9: TRzPanel;
    txt_nama: TcxTextEdit;
    nama: TcxCheckBox;
    nosamb: TcxCheckBox;
    txt_nosamb: TcxTextEdit;
    procedure refresh2Click(Sender: TObject);
    procedure proses2Click(Sender: TObject);
    procedure gridCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure refreshlistClick(Sender: TObject);
    procedure prosesClick(Sender: TObject);
    procedure refresh_Click(Sender: TObject);
    procedure gtvlistCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Unpublish1Click(Sender: TObject);
    procedure gtvlistFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Publish1Click(Sender: TObject);
    procedure gtv2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Selesai1Click(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure LihatFoto1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure gtvlistCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gtv3DblClick(Sender: TObject);
    procedure gtv3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PerbaruiData1Click(Sender: TObject);
    procedure ProsesAllClick(Sender: TObject);
    procedure nosambClick(Sender: TObject);
    procedure namaClick(Sender: TObject);
    procedure txt_nosambKeyPress(Sender: TObject; var Key: Char);
    procedure txt_namaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    _periode :string;

    _periodeterbaru :string;


    procedure tutupsementaraair;
    procedure tutupsementaralimbah;
    procedure tutupsementaralltt;

    procedure tutuptotalair;
    procedure tutuptotallimbah;
    procedure tutuptotallltt;


    procedure segelair;
    procedure segellimbah;
    procedure segellltt;

    procedure segelairtunggakan;
    procedure segellimbahtunggakan;
    procedure segellltttunggakan;

    procedure bukasegelair;
    procedure bukasegellimbah;
    procedure bukasegellltt;

    procedure baliknamaair;
    procedure baliknamalimbah;
    procedure baliknamalltt;


    procedure rubahgolair;
    procedure rubahgollimbah;
    procedure rubahgollltt;


    procedure pemutusantunggakanair;
    procedure pemutusantunggakanlimbah;
    procedure pemutusantunggakanlltt;



    procedure koreksirek;
    procedure koreksirekabodemen;
    procedure sambbaru;
    procedure sambbarulimbah;
    procedure sambbarulltt;
    
    procedure sambungkembaliair;
    procedure sambungkembalilimbah;
    procedure sambungkembalilltt;

    procedure GantiMeter;

    procedure unpublish;
    procedure publish;
    procedure selesai;
    procedure upload;
    procedure uploadabodemen;
    procedure hitungulang();
    procedure hitungulang2();

    



  end;

implementation

{$R *.dfm}

uses Module, UnitMain, DateUtils, UnitTpelanggan, UnitKoreksiStan,Strutils,
  UnitTpelanggan2, UnitTpelangganlimbah2, UnitTpelangganlltt2,
  unitgantimeter,UnitCombo, cxDropDownEdit, UnitUpdate, unit_perbaruidata,
  unitloading;



procedure TFRlistupdate.hitungulang();
var
j:integer;
blok1,blok2,blok3,blok4,blok5:Currency;
prog1,prog2,prog3,prog4,prog5:Currency;
bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
t1,t2,t3,t4,t5:Currency;
tetap1,tetap2,tetap3,tetap4,tetap5:String;
xdendapakai0,xdendatunggakan,xakumulasi:Currency;
xbiayapemakaian,xadministrasi,xpemeliharaan,xpelayanan,xretribusi,xairlimbah,xmeterai,xrekair,xtotal:Currency;
xpakai,fixpakai,akumulasi:Currency;
xadmlain,xpemlain,xretlain:currency;
xppn,xtotalppn:Currency;
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
          Qmirror.SQL.Add('FROm drd'+FormatDateTime('YYYYMM',date)+' c ');
          Qmirror.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
          Qmirror.SQL.Add('left join golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku left join diameter d On c.kodediameteryangberlaku=d.kodediameteryangberlaku left join rayon r On c.koderayon=r.koderayon');
          Qmirror.SQL.add('LEFT JOIn kelurahan x ON c.kodekelurahan=x.kodekelurahan');
          Qmirror.SQL.Add('left join kolektif k on c.kodekolektif=k.kodekolektif LEFT JOIN meterai m ON m.idx="1"');
          Qmirror.SQL.Add('LEFT JOIN byadministrasi_lain b1 ON c.kodeadministrasilain=b1.kode LEFT JOIN bypemeliharaan_lain b2 ON c.`kodepemeliharaanlain`=b2.kode ');
          Qmirror.SQL.Add('LEFT JOIN byretribusi_lain b3 ON c.`koderetribusilain`=b3.kode ');
          Qmirror.SQL.Add('where c.nosamb=:nosamb');
          Qmirror.ParamByName('nosamb').AsString:=DM.Xnosamb;
          Qmirror.Open;



              xadministrasi:=Qmirrorxadministrasi.Value;
              xpemeliharaan:=Qmirrorxpemeliharaan.Value;
              xpelayanan:=Qmirrorxpelayanan.Value;
              xretribusi:=Qmirrorxretribusi.Value;
              xairlimbah:=Qmirrorxairlimbah.Value;
              xadmlain:= Qmirrortrf_admlain.Value;
              xpemlain:= Qmirrortrf_pemlain.Value;
              xretlain:= Qmirrortrf_retlain.Value;
              xppn:=Qmirrorxppn.Value;

              xretpakai:=0;

      
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

            
          //pakai
          if(Qmirrorstanangkat.Value<>0)then
             xpakai:=Qmirrorstanangkat.Value-Qmirrorstanlalu.Value+Qmirrorstanskrg.Value
          else
            xpakai:=Qmirrorstanskrg.Value-Qmirrorstanlalu.Value;


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

         //-- blok4
           IF(fixpakai>bb4) AND (fixpakai<=ba4)then
            blok4 := fixpakai - ba3
          ELSE IF (fixpakai>ba4)then
            blok4 := ba4-ba3
          ELSE
            blok4 :=0;;



         // --blok 5
         IF(fixpakai>bb5) AND (fixpakai<=ba5)then
            blok5 := fixpakai - ba4
          ELSE IF (fixpakai>ba5)then
            blok5 := ba5-ba4
          ELSE
            blok5 :=0;;


     //progresif

        if(tetap1='0')then
          prog1:=blok1*t1
        else
          prog1:=t1;

        if(tetap2='0')then
          prog2:=blok2*t2
        else
          prog2:=t2;

        if(tetap3='0')then
          prog3:=blok3*t3
        else
          prog3:=t3;

        if(tetap4='0')then
          prog4:=blok4*t4
        else
          prog4:=t4;

        if(tetap5='0')then
          prog5:=blok5*t5
        else
          prog5:=t5;

        {if(Qmirrorflag.Value='3')then
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
        end; }

        xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;

         xakumulasi:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain;



      if(xakumulasi>=Qmirrorbatas1.Value) and
        (xakumulasi<Qmirrorbatas2.Value) then
       xmeterai:=Qmirrormeterai1.Value
      else if(xakumulasi>=Qmirrorbatas2.Value) and
        (xakumulasi<Qmirrorbatas3.Value) then
       xmeterai:=Qmirrormeterai2.Value
      else if(xakumulasi>=Qmirrorbatas3.Value)then
       xmeterai:=Qmirrormeterai3.Value
      else
       xmeterai:=0;

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
                     xmeterai;





      ///cek apakah pelanggan Flag nya "2" ( tanpa denda )
      if (DM.xppndaritotal='1') and (Qmirrorflag.Value<>'2')then
      begin

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
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET ');
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
        DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
        DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi+xretpakai;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('dendapakai0').AsCurrency := xdendapakai0;
        DM.Qexec.ParamByName('administrasilain').AsCurrency := xadmlain;
        DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := xpemlain;
        DM.Qexec.ParamByName('retribusilain').AsCurrency := xretlain;
        DM.Qexec.ParamByName('meterai').AsCurrency := xmeterai;
        DM.Qexec.ParamByName('dendatunggakan').AsCurrency := xdendatunggakan;
        DM.Qexec.ParamByName('ppn').AsCurrency := xtotalppn;
        DM.Qexec.ParamByName('rekair').AsCurrency := xrekair;
        DM.Qexec.ParamByName('total').AsCurrency := xtotal;
        DM.Qexec.ParamByName('pakai').AsCurrency := xpakai;
        DM.Qexec.ParamByName('pakai2').AsCurrency := fixpakai;
        DM.Qexec.Execute;
       end
       else
       begin
        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET ');
        DM.Qexec.SQl.Add('administrasi=:administrasi,');
        DM.Qexec.SQl.Add('pemeliharaan=:pemeliharaan,');
        DM.Qexec.SQl.Add('pelayanan=:pelayanan,');
        DM.Qexec.SQl.Add('retribusi=:retribusi,');
        DM.Qexec.SQl.Add('airlimbah=:airlimbah,');
        DM.Qexec.SQl.Add('administrasilain=:administrasilain,');
        DM.Qexec.SQl.Add('pemeliharaanlain=:pemeliharaanlain,');
        DM.Qexec.SQl.Add('retribusilain=:retribusilain');
        DM.Qexec.SQl.Add('WHERE nosamb=:nosamb');
        DM.Qexec.ParamByName('nosamb').AsString :=DM.Xnosamb;
        DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
        DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('administrasilain').AsCurrency := xadmlain;
        DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := xpemlain;
        DM.Qexec.ParamByName('retribusilain').AsCurrency := xretlain;
        DM.Qexec.Execute;
       end;


      

        

end;



procedure TFRlistupdate.hitungulang2();
var
j:integer;
blok1,blok2,blok3,blok4,blok5:Currency;
prog1,prog2,prog3,prog4,prog5:Currency;
bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
t1,t2,t3,t4,t5:Currency;
tetap1,tetap2,tetap3,tetap4,tetap5:String;
xdendapakai0,xdendatunggakan,xakumulasi:Currency;
xbiayapemakaian,xadministrasi,xpemeliharaan,xpelayanan,xretribusi,xairlimbah,xmeterai,xrekair,xtotal:Currency;
xpakai,fixpakai,akumulasi:Currency;
xadmlain,xpemlain,xretlain:currency;
xppn,xtotalppn:Currency;
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
          Qmirror.SQL.Add('FROm drd'+_periodeterbaru+' c ');
          Qmirror.SQL.Add('LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
          Qmirror.SQL.Add('left join golongan g On c.kodegolyangberlaku=g.kodegolyangberlaku left join diameter d On c.kodediameteryangberlaku=d.kodediameteryangberlaku left join rayon r On c.koderayon=r.koderayon');
          Qmirror.SQL.add('LEFT JOIn kelurahan x ON c.kodekelurahan=x.kodekelurahan');
          Qmirror.SQL.Add('left join kolektif k on c.kodekolektif=k.kodekolektif LEFT JOIN meterai m ON m.idx="1"');
          Qmirror.SQL.Add('LEFT JOIN byadministrasi_lain b1 ON c.kodeadministrasilain=b1.kode LEFT JOIN bypemeliharaan_lain b2 ON c.`kodepemeliharaanlain`=b2.kode ');
          Qmirror.SQL.Add('LEFT JOIN byretribusi_lain b3 ON c.`koderetribusilain`=b3.kode ');
          Qmirror.SQL.Add('where c.nosamb=:nosamb');
          Qmirror.ParamByName('nosamb').AsString:=DM.Xnosamb;
          Qmirror.Open;



              xadministrasi:=Qmirrorxadministrasi.Value;
              xpemeliharaan:=Qmirrorxpemeliharaan.Value;
              xpelayanan:=Qmirrorxpelayanan.Value;
              xretribusi:=Qmirrorxretribusi.Value;
              xairlimbah:=Qmirrorxairlimbah.Value;
              xadmlain:= Qmirrortrf_admlain.Value;
              xpemlain:= Qmirrortrf_pemlain.Value;
              xretlain:= Qmirrortrf_retlain.Value;
              xppn:=Qmirrorxppn.Value;

              xretpakai:=0;

      
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

            
          //pakai
          if(Qmirrorstanangkat.Value<>0)then
             xpakai:=Qmirrorstanangkat.Value-Qmirrorstanlalu.Value+Qmirrorstanskrg.Value
          else
            xpakai:=Qmirrorstanskrg.Value-Qmirrorstanlalu.Value;


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

         //-- blok4
           IF(fixpakai>bb4) AND (fixpakai<=ba4)then
            blok4 := fixpakai - ba3
          ELSE IF (fixpakai>ba4)then
            blok4 := ba4-ba3
          ELSE
            blok4 :=0;;



         // --blok 5
         IF(fixpakai>bb5) AND (fixpakai<=ba5)then
            blok5 := fixpakai - ba4
          ELSE IF (fixpakai>ba5)then
            blok5 := ba5-ba4
          ELSE
            blok5 :=0;;


     //progresif

        if(tetap1='0')then
          prog1:=blok1*t1
        else
          prog1:=t1;

        if(tetap2='0')then
          prog2:=blok2*t2
        else
          prog2:=t2;

        if(tetap3='0')then
          prog3:=blok3*t3
        else
          prog3:=t3;

        if(tetap4='0')then
          prog4:=blok4*t4
        else
          prog4:=t4;

        if(tetap5='0')then
          prog5:=blok5*t5
        else
          prog5:=t5;

        {if(Qmirrorflag.Value='3')then
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
        end; }

        xbiayapemakaian:=prog1+prog2+prog3+prog4+prog5;

         xakumulasi:=xbiayapemakaian+
                     xadministrasi+
                     xpemeliharaan+
                     xpelayanan+
                     xretribusi+
                     xairlimbah+
                     xdendapakai0+
                     xadmlain+
                     xpemlain+
                     xretlain;



      if(xakumulasi>=Qmirrorbatas1.Value) and
        (xakumulasi<Qmirrorbatas2.Value) then
       xmeterai:=Qmirrormeterai1.Value
      else if(xakumulasi>=Qmirrorbatas2.Value) and
        (xakumulasi<Qmirrorbatas3.Value) then
       xmeterai:=Qmirrormeterai2.Value
      else if(xakumulasi>=Qmirrorbatas3.Value)then
       xmeterai:=Qmirrormeterai3.Value
      else
       xmeterai:=0;

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
                     xmeterai;





      ///cek apakah pelanggan Flag nya "2" ( tanpa denda )
      if (DM.xppndaritotal='1') and (Qmirrorflag.Value<>'2')then
      begin

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
        DM.Qexec.SQL.Add('UPDATE drd'+_periodeterbaru+' SET ');
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
        DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
        DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi+xretpakai;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('dendapakai0').AsCurrency := xdendapakai0;
        DM.Qexec.ParamByName('administrasilain').AsCurrency := xadmlain;
        DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := xpemlain;
        DM.Qexec.ParamByName('retribusilain').AsCurrency := xretlain;
        DM.Qexec.ParamByName('meterai').AsCurrency := xmeterai;
        DM.Qexec.ParamByName('dendatunggakan').AsCurrency := xdendatunggakan;
        DM.Qexec.ParamByName('ppn').AsCurrency := xtotalppn;
        DM.Qexec.ParamByName('rekair').AsCurrency := xrekair;
        DM.Qexec.ParamByName('total').AsCurrency := xtotal;
        DM.Qexec.ParamByName('pakai').AsCurrency := xpakai;
        DM.Qexec.ParamByName('pakai2').AsCurrency := fixpakai;
        DM.Qexec.Execute;
       end
       else
       begin
        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE drd'+_periodeterbaru+' SET ');
        DM.Qexec.SQl.Add('administrasi=:administrasi,');
        DM.Qexec.SQl.Add('pemeliharaan=:pemeliharaan,');
        DM.Qexec.SQl.Add('pelayanan=:pelayanan,');
        DM.Qexec.SQl.Add('retribusi=:retribusi,');
        DM.Qexec.SQl.Add('airlimbah=:airlimbah,');
        DM.Qexec.SQl.Add('administrasilain=:administrasilain,');
        DM.Qexec.SQl.Add('pemeliharaanlain=:pemeliharaanlain,');
        DM.Qexec.SQl.Add('retribusilain=:retribusilain');
        DM.Qexec.SQl.Add('WHERE nosamb=:nosamb');
        DM.Qexec.ParamByName('nosamb').AsString :=DM.Xnosamb;
        DM.Qexec.ParamByName('administrasi').AsCurrency := xadministrasi;
        DM.Qexec.ParamByName('pemeliharaan').AsCurrency := xpemeliharaan;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := xpelayanan;
        DM.Qexec.ParamByName('retribusi').AsCurrency := xretribusi;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := xairlimbah;
        DM.Qexec.ParamByName('administrasilain').AsCurrency := xadmlain;
        DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := xpemlain;
        DM.Qexec.ParamByName('retribusilain').AsCurrency := xretlain;
        DM.Qexec.Execute;
       end;


      

        

end;



procedure TFRlistupdate.upload();
var
beritaacara:String;
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
                   Qupload.parambyname('kode').asstring:= data_periode.AsString+'.'+data_nosamb.AsString;
                   Qupload.parambyname('bulan').asstring:= data_bulan.AsString;
                   Qupload.open;

                   if(Qupload.recordcount=0)then
                   begin
                      MessageDlg('Data tidak tersedia !!', mtWarning, [mbOk], 0);
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

                
                      DM.uraianlogakses:='Upload Ulang Rekening '+data_nama.AsString+'/'+data_nosamb.AsString+' untuk Bulan '+data_bulan.AsString;
                      DM.targetlogakses:=data_nosamb.AsString;
                      DM.logakses;  


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



end;

procedure TFRlistupdate.uploadabodemen();
var
beritaacara:String;
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
                   Qupload.parambyname('kode').asstring:= data_periode.AsString+'.'+data_nosamb.AsString;
                   Qupload.parambyname('bulan').asstring:= data_bulan.AsString;
                   Qupload.open;

                   if(Qupload.recordcount=0)then
                   begin
                      data_.Next;
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

                
                      DM.uraianlogakses:='Upload Ulang Rekening '+data_nama.AsString+'/'+data_nosamb.AsString+' untuk Bulan '+data_bulan.AsString;
                      DM.targetlogakses:=data_nosamb.AsString;
                      DM.logakses;  


                      Qexec.close;
                      Qexec.SQL.Clear;
                      Qexec.SQL.Add('COMMIT');
                      Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;



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



end;

procedure TFRlistupdate.unpublish();
var
beritaacara:String;
begin



  TRY

    Enabled:=false;

     Umain.openkoneksi_host;


      Qcekhost.close;
      Qcekhost.SQL.Clear;
      Qcekhost.SQL.Add('select * FROm bayar WHERE kode=:kode AND flaglunas="1"');
      Qcekhost.parambyname('kode').asstring:= data_periode.AsString+'.'+data_nosamb.AsString;
      Qcekhost.Open;

      if(Qcekhost.recordcount>0) then
      begin
          MessageDlg('Maaf, Rekening sudah di Lunasi !!! di Loket...', mtInformation, [MbOk], 0);

      end
      else
      begin

        TRY

      
          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('START TRANSACTION');
          DM.Qexec.Execute;

          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('START TRANSACTION');
          Qexec.Execute;

           Qexec.close;
           Qexec.SQL.Clear;
           Qexec.SQL.Add('delete from piutang where kode=:kode');
           Qexec.ParamByName('kode').AsString:=data_periode.AsString+'.'+data_nosamb.AsString;
           Qexec.Execute;

           Qexec.close;
           Qexec.SQL.Clear;
           Qexec.SQL.Add('replace into hapusdrd (kode,waktu,user) values (:kode,NOW(),:user)');
           Qexec.ParamByName('kode').AsString:=data_periode.AsString+'.'+data_nosamb.AsString;
           Qexec.ParamByName('user').AsString:=umain.user.Caption;
           Qexec.Execute;


            DM.Qcek.Close;
            DM.Qcek.SQL.Clear;
            DM.Qcek.SQL.Add('SHOW TABLES LIKE "drdposting'+data_periode.AsString+'"');
            DM.Qcek.open;

            if(Dm.Qcek.RecordCount>0)then
            begin

                 DM.Qcek.Close;
                 DM.Qcek.SQL.Clear;
                 //DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+data_keterangan.AsString+'" AND flagdrdkoreksi="1"');
                 DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="1"');
                 DM.Qcek.ParamByName('bulan').AsInteger:=MonthOf(date);
                 DM.Qcek.ParamByName('tahun').AsInteger:=YearOf(date);
                 Dm.Qcek.Open;

                 beritaacara:=DM.Qcek.fieldbyname('jumlah').AsString+' / DRD-KOREKSI / '+data_keterangan.AsString+' / '+
                              FormatDateTime('MM',Date)+' / '+
                              FormatDateTime('YYYY',Date);


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                  DM.Qexec.ParamByName('kode').AsString:= data_periode.AsString+'.'+data_nosamb.AsString;
                  DM.Qexec.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"1")');
                  DM.Qexec.ParamByName('kode').AsString:=  data_periode.AsString+'.'+data_nosamb.AsString;
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                  DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek.fieldbyname('jumlah').AsString);
                  DM.Qexec.ParamByName('alasan').AsString:=data_keterangan.AsString;
                  DM.Qexec.ParamByName('perhitungan').AsString:='-';
                  DM.Qexec.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+data_periode.AsString+' c WHERE c.nosamb=:nosamb');
                  DM.Qexec.ParamByName('kode').AsString:=   data_periode.AsString+'.'+data_nosamb.AsString;
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;;
                  DM.Qexec.ParamByName('periode').AsString:=data_periode.AsString;
                  DM.Qexec.ParamByName('bulan').AsString:=data_bulan.AsString;
                  DM.Qexec.ParamByName('flag').AsString:=data_flag.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                  DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                  DM.Qexec.ParamByName('golongan').AsString:=data_golongan.asstring;
                  DM.Qexec.ParamByName('namaloket').AsString:='-';
                  DM.Qexec.ParamByName('kodewil').AsString:=data_kodewil.asstring;
                  DM.Qexec.ParamByName('namawil').AsString:=data_wilayah.asstring;
                  DM.Qexec.Execute;

            end
            else
            begin



                 DM.Qcek.Close;
                 DM.Qcek.SQL.Clear;
//                 DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND alasan="'+data_keterangan.AsString+'" AND flagdrdkoreksi="0" ' );
                 DM.Qcek.SQL.Add('select LPAD( COALESCE(MAX(urutan),0)+1,4,0) AS jumlah FROM beritaacarakoreksi WHERE month(tglinput)=:bulan AND year(tglinput)=:tahun AND flagdrdkoreksi="0" ' );
                 DM.Qcek.ParamByName('bulan').AsInteger:=MonthOf(date);
                 DM.Qcek.ParamByName('tahun').AsInteger:=YearOf(date);
                 Dm.Qcek.Open;

                 beritaacara:=DM.Qcek.fieldbyname('jumlah').AsString+' / KOREKSI-BIASA / '+data_keterangan.AsString+' / '+
                              FormatDateTime('MM',Date)+' / '+
                              FormatDateTime('YYYY',Date);



            
                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('UPDATE beritaacarakoreksi SET flaghapus="1" WHERE kode=:kode ');
                DM.Qexec.ParamByName('kode').AsString:= data_periode.AsString+'.'+data_nosamb.AsString;
                DM.Qexec.Execute;

                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('REPLACE INTO beritaacarakoreksi (beritaacara,kode,nosamb,tglinput,urutan,alasan,perhitungan,flagdrdkoreksi) values (:beritaacara,:kode,:nosamb,:tanggal,:urutan,:alasan,:perhitungan,"0")');
                DM.Qexec.ParamByName('kode').AsString:=  data_periode.AsString+'.'+data_nosamb.AsString;
                DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                DM.Qexec.ParamByName('tanggal').AsDateTime:=now;
                DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                DM.Qexec.ParamByName('urutan').AsInteger:=StrToInt(DM.Qcek.fieldbyname('jumlah').AsString);
                DM.Qexec.ParamByName('alasan').AsString:=data_keterangan.AsString;
                DM.Qexec.ParamByName('perhitungan').AsString:='-';
                DM.Qexec.Execute;


                DM.Qexec.close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('REPLACE INTO drdkoreksi select null,:kode,:periode,:bulan,c.*,:flag,:beritaacara,:tanggal,:golongan,:namaloket,:kodewil,:namawil FROm drd'+data_periode.AsString+' c WHERE c.nosamb=:nosamb');
                DM.Qexec.ParamByName('kode').AsString:=  data_periode.AsString+'.'+data_nosamb.AsString;
                DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                DM.Qexec.ParamByName('periode').AsString:=data_periode.AsString;
                DM.Qexec.ParamByName('bulan').AsString:=data_bulan.AsString;
                DM.Qexec.ParamByName('flag').AsString:=data_flag.AsString;
                DM.Qexec.ParamByName('tanggal').AsDate:=date;
                DM.Qexec.ParamByName('beritaacara').AsString:=beritaacara;
                DM.Qexec.ParamByName('golongan').AsString:=data_golongan.AsString;
                DM.Qexec.ParamByName('namaloket').AsString:='';
                DM.Qexec.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                DM.Qexec.ParamByName('namawil').AsString:=data_wilayah.AsString;
                DM.Qexec.Execute; 

           end;


             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('UPDATE drd'+data_periode.AsString+' SET flagpublish="0",flagkirim="0"');
             DM.Qexec.SQL.add('where nosamb=:nosamb');
             DM.Qexec.ParamByName('nosamb').asstring:=data_nosamb.AsString;
             DM.Qexec.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('delete from piutang where kode=:kode');
             DM.Qexec.ParamByName('kode').AsString:=data_periode.AsString+'.'+data_nosamb.AsString;
             DM.Qexec.Execute;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('COMMIT');
            Qexec.Execute;    

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('COMMIT');
            DM.Qexec.Execute;


            data_.Edit;
            data_flagpublish.AsString:='0';
            data_.Post;


           

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

     end;


    FINALLY
        Enabled:=true;
        umain.host.close;
    END;



end;


procedure TFRlistupdate.publish();
begin


    TRY
          
      TRY

            Umain.openkoneksi_host;

             Enabled:=false;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('START TRANSACTION');  
             DM.Qexec.Execute;



             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('UPDATE drd'+data_periode.AsString+' SET flagpublish="1",userpublish=:user,tglpublish=NOW(),flagkirim="0"');
             DM.Qexec.SQL.add('where nosamb=:nosamb');
             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
             DM.Qexec.ParamByName('user').AsString:=umain.user.caption;
             DM.Qexec.Execute;


             DM.Qcek.close;
             DM.Qcek.SQL.Clear;
             DM.Qcek.SQL.Add('select c.*,g.golongan,r.kodewil,r.wilayah FROM drd'+data_periode.AsString+' c LEFT JOIN (select kodegol,golongan FROM golongan GROUP BY kodegol) g ON c.kodegol=g.kodegol LEFT JOIN rayon r ON c.koderayon=r.koderayon WHERE c.nosamb=:nosamb');
             DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
             DM.Qcek.Open;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('REPLACE INTO piutang select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROm drd'+data_periode.AsString+' c WHERE c.nosamb=:nosamb');
             DM.Qexec.ParamByName('kode').AsString:=  data_periode.AsString+'.'+data_nosamb.AsString;
             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
             DM.Qexec.ParamByName('periode').AsString:=data_periode.AsString;
             DM.Qexec.ParamByName('bulan').AsString:=data_bulan.AsString;
             DM.Qexec.ParamByName('flag').AsString:=data_flag.AsString;
             DM.Qexec.ParamByName('golongan').AsString:=DM.Qcek.fieldbyname('golongan').AsString;
             DM.Qexec.ParamByName('namaloket').AsString:='';
             DM.Qexec.ParamByName('kodewil').AsString:=DM.Qcek.fieldbyname('kodewil').AsString;
             DM.Qexec.ParamByName('namawil').AsString:=DM.Qcek.fieldbyname('wilayah').AsString;
             DM.Qexec.Execute;



//             IF(YearOf(DM.Qcek.fieldbyname('tglpublish').AsDateTime)>1900)THEN
             BEGIN

                  Qkoreksi.close;
                  Qkoreksi.SQL.Clear;
                  Qkoreksi.SQL.Add(Qkoreksi.SQLRefresh.Text);
                  Qkoreksi.SQL.Add('FROM drd'+data_periode.AsString+' c,');
                  Qkoreksi.SQL.Add('(select * FROm drdkoreksi where kode=:kode GROUP By id DESC LIMIT 1) d,pelanggan p,beritaacarakoreksi b WHERE c.`nosamb`=d.nosamb AND d.kode=:kode ');
                  Qkoreksi.SQL.Add('AND c.nosamb=p.nosamb AND d.beritaacara=b.beritaacara ');
                  Qkoreksi.SQL.Add('AND c.`nosamb`=:nosamb');
                  Qkoreksi.ParamByName('kode').AsString:=data_periode.AsString+'.'+data_nosamb.AsString;
                  Qkoreksi.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  Qkoreksi.ParamByName('bulan').AsString:=data_bulan.AsString;
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
                        Qexec.SQl.Add('(`nomorba`,`tanggalba`,`alasan`,nosamb,periode,bulan,koderayon,kodegol,kodediameter,nama,alamat,`stanlalu_lama`,`stankini_lama`,`pakai_lama`,`biayapemakaian_lama`,`administrasi_lama`,`pemeliharaan_lama`,');
                        Qexec.SQl.Add('`pelayanan_lama`,`retribusi_lama`,`meterai_lama`,`rekair_lama`,`stanlalu_baru`,stankini_baru,pakai_baru,`biayapemakaian_baru`,');
                        Qexec.SQl.Add('administrasi_baru,`pemeliharaan_baru`,pelayanan_baru,`retribusi_baru`,meterai_baru,rekair_baru,petugas,`flaghapus` )');
                        Qexec.SQl.Add(' VALUES                                 ');
                        Qexec.SQl.Add(' (:nomorba,:tanggalba,:alasan,:nosamb,:periode,:bulan,:koderayon,:kodegol,:kodediameter,:nama,:alamat,:stanlalu_lama,:stankini_lama,:pakai_lama,:biayapemakaian_lama,:administrasi_lama,:pemeliharaan_lama,');
                        Qexec.SQl.Add(':pelayanan_lama,:retribusi_lama,:meterai_lama,:rekair_lama,:stanlalu_baru,:stankini_baru,:pakai_baru,:biayapemakaian_baru,');
                        Qexec.SQl.Add(':administrasi_baru,:pemeliharaan_baru,:pelayanan_baru,:retribusi_baru,:meterai_baru,:rekair_baru,:petugas,:flaghapus ) ');
                        Qexec.parambyname('nomorba').asstring:=Qkoreksi.fieldbyname('beritaacara').asstring;
                        Qexec.parambyname('tanggalba').AsDate:=Qkoreksi.fieldbyname('tglinput').AsDateTime;
                        Qexec.parambyname('alasan').asstring:=Qkoreksi.fieldbyname('alasan').asstring;
                        Qexec.parambyname('nosamb').asstring:=Qkoreksi.fieldbyname('nosamb').asstring;
                        Qexec.parambyname('periode').asstring:=data_periode.AsString;
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
                        if data_flag.Value='4' then
                          Qexec.parambyname('flaghapus').asstring:='1'
                        else
                          Qexec.parambyname('flaghapus').asstring:='0';
                        Qexec.Execute;

                        Qexec.Close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('CREATE TABLE IF NOT EXISTS nosamb_koreksi ( nosamb VARCHAR(30),waktuupdate DATETIME DEFAULT NULL, PRIMARY KEY (`nosamb`))');
                        Qexec.SQL.Add('ENGINE=INNODB DEFAULT CHARSET=latin1');
                        Qexec.Execute;

                        Qexec.Close;
                        Qexec.SQL.Clear;
                        Qexec.SQL.Add('REPLACE INTO nosamb_koreksi ');
                        Qexec.SQL.Add('(nosamb,waktuupdate) VALUES (:nosamb,now())');
                        Qexec.parambyname('nosamb').asstring:=data_nosamb.AsString;;
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


                   data_.Edit;
                   data_flagpublish.AsString:='1';
                   data_.Post;


              end;

             end;



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


procedure TFRlistupdate.selesai(); 
begin


    TRY
          
      TRY

            Umain.openkoneksi_host;

            Enabled:=false;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('START TRANSACTION');
            Qexec.Execute;


            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('UPDATE ba_usulan_koreksi_rekening SET flagprosesdata="1" WHERE nomorba=:nomorba');
            Qexec.ParamByName('nomorba').AsString:=data_nomorba.AsString;  
            Qexec.Execute;

            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('UPDATE ba_usulan_koreksi_rekening_periode SET flagprosesdata="1" WHERE nomorba=:nomorba AND periode=:periode');
            Qexec.ParamByName('nomorba').AsString:=data_nomorba.AsString;
            Qexec.ParamByName('periode').AsString:=data_periode.AsString;
            Qexec.Execute;


            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('COMMIT');
            Qexec.Execute;


            data_.Delete;



      EXCEPT ON E:Exception DO
      BEGIN
          
         Qexec.close;
         Qexec.SQL.Clear;
         Qexec.SQL.Add('ROLLBACK');
         Qexec.Execute;

         MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);

      END;
      END;
    FINALLY
      Enabled:=true;
      Umain.host.close;
    END;



end;


procedure TFRlistupdate.baliknamaair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;



   TRY





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET nama=:nama,alamat=:alamat WHERE nosamb="'+data_nosamb.AsString+'"');
                 DM.Qexec.ParamByName('nama').AsString:=data_baru.AsString;
                 DM.Qexec.ParamByName('alamat').AsString:=data_alamat.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET nama=:nama,alamat=:alamat,waktuupdate=NOW() WHERE nosamb="'+data_nosamb.AsString+'"');
                 Umain.Qhost1.ParamByName('nama').AsString:=data_baru.AsString;
                 Umain.Qhost1.ParamByName('alamat').AsString:=data_alamat.AsString;
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama,alamat=:alamat WHERE nosamb="'+data_nosamb.AsString+'"');
                 DM.Qexec.ParamByName('nama').AsString:=data_baru.AsString;
                 DM.Qexec.ParamByName('alamat').AsString:=data_alamat.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama,alamat=:alamat,waktuupdate=NOW() WHERE nosamb="'+data_nosamb.AsString+'"');
                 Umain.Qhost1.ParamByName('nama').AsString:=data_baru.AsString;
                 Umain.Qhost1.ParamByName('alamat').AsString:=data_alamat.AsString;
                 Umain.Qhost1.Execute;

                

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Date;
                  DM.Qexec.ParamByName('tipe').AsString:='Balik Nama';
                  DM.Qexec.ParamByName('uraian').AsString:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;





                  ///// INPUT BA


                  
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

    
                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA BALIK NAMA AIR" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;


                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / BALIK NAMA / AIR / '+romawi+' / '+FormatDateTime('YYYY',date);


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                  Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                  Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                  Umain.Qhost1.ParamByName('jenis').AsString:='BA BALIK NAMA AIR';
                  Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO ba_balik_nama (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                  Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                  Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                  Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                  Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.Execute;






                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BALIK NAMA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;


end;


procedure TFRlistupdate.baliknamalimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;



   TRY





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET nama=:nama,alamat=:alamat WHERE nomorlimbah="'+data_nosamb.AsString+'"');
                 DM.Qexec.ParamByName('nama').AsString:=data_baru.AsString;
                 DM.Qexec.ParamByName('alamat').AsString:=data_alamat.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET nama=:nama,alamat=:alamat,waktuupdate=NOW() WHERE nomorlimbah="'+data_nosamb.AsString+'"');
                 Umain.Qhost1.ParamByName('nama').AsString:=data_baru.AsString;
                 Umain.Qhost1.ParamByName('alamat').AsString:=data_alamat.AsString;
                 Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Date;
                  DM.Qexec.ParamByName('tipe').AsString:='Balik Nama';
                  DM.Qexec.ParamByName('uraian').AsString:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;



                  ///// INPUT BA


                  
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

    
                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA BALIK NAMA LIMBAH" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;



                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / BALIK NAMA / LIMBAH / '+romawi+' / '+FormatDateTime('YYYY',date);


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                  Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                  Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                  Umain.Qhost1.ParamByName('jenis').AsString:='BA BALIK NAMA LIMBAH';
                  Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO ba_balik_nama (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                  Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                  Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                  Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                  Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.Execute;





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BALIK NAMA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;


end;


procedure TFRlistupdate.baliknamalltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;



   TRY





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama WHERE nomorlltt="'+data_nosamb.AsString+'"');
                 DM.Qexec.ParamByName('nama').AsString:=data_baru.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET nama=:nama,waktuupdate=NOW() WHERE nomorlltt="'+data_nosamb.AsString+'"');
                 Umain.Qhost1.ParamByName('nama').AsString:=data_baru.AsString;
                 Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Date;
                  DM.Qexec.ParamByName('tipe').AsString:='Balik Nama';
                  DM.Qexec.ParamByName('uraian').AsString:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;





                  ///// INPUT BA


                  
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

    
                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA BALIK NAMA L2T2" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;



                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / BALIK NAMA / L2T2 / '+romawi+' / '+FormatDateTime('YYYY',date);


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                  Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                  Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                  Umain.Qhost1.ParamByName('jenis').AsString:='BA BALIK NAMA L2T2';
                  Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('INSERT INTO ba_balik_nama (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                  Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                  Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                  Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                  Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                  Umain.Qhost1.Execute;





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Balik Nama : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BALIK NAMA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;


end;




procedure TFRlistupdate.rubahgolair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;



                 /////////////// ------------


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET kodegol=:kodegol WHERE nosamb="'+data_nosamb.asstring+'"');
                 DM.Qexec.ParamByName('kodegol').AsString:=data_baru.asstring;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET kodegol=:kodegol,waktuupdate=NOW() WHERE nosamb="'+data_nosamb.asstring+'"');
                 Umain.Qhost1.ParamByName('kodegol').AsString:=data_baru.asstring;
                 Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.asstring;
                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                  DM.Qexec.ParamByName('tipe').AsString:='Rubah Golongan';
                  DM.Qexec.ParamByName('uraian').AsString:='Rubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;




                 /////////////// -------------------



                  ///// INPUT BA



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


                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA RUBAH GOL AIR" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;


                 
                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / RUBAH GOLONGAN / AIR / '+romawi+' / '+FormatDateTime('YYYY',date);


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                    Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                    Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                    Umain.Qhost1.ParamByName('jenis').AsString:='BA RUBAH GOL AIR';
                    Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                    Umain.Qhost1.Execute;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO ba_rubah_gol (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                    Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                    Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                    Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                    Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                    Umain.Qhost1.Execute;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.Execute;




                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin          

                             DM.Qcek.close;
                             DM.Qcek.SQL.Clear;
                             DM.Qcek.SQL.Add('select kodegolyangberlaku FROM golongan WHERE kodegol=:kodegol AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
                             DM.Qcek.ParamByName('kodegol').AsString:=data_baru.asstring;
                             DM.Qcek.ParamByName('periode').AsString:= FormatDateTime('YYYYMM',date);
                             DM.Qcek.Open;

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET kodegol=:kodegol,kodegolyangberlaku=:kodegolyangberlaku WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.ParamByName('kodegol').AsString:=data_baru.asstring;
                             DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=DM.Qcek.fieldbyname('kodegolyangberlaku').AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;

                   end;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('COMMIT');
                  Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Ruubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.asstring;
                  DM.logakses;

                  MessageDlg('PROSES RUBAH GOLONGAN BERHASIL !!', mtInformation, [mbOK], 0);  


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
          refresh.Click;
          Enabled:=true;
      END;








end;


procedure TFRlistupdate.rubahgollimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;



                 /////////////// ------------


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET kodelimbah=:kodelimbah WHERE nomorlimbah="'+data_nosamb.asstring+'"');
                 DM.Qexec.ParamByName('kodelimbah').AsString:=data_baru.asstring;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET kodelimbah=:kodelimbah,waktuupdate=NOW() WHERE nomorlimbah="'+data_nosamb.asstring+'"');
                 Umain.Qhost1.ParamByName('kodelimbah').AsString:=data_baru.asstring;
                 Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.asstring;
                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                  DM.Qexec.ParamByName('tipe').AsString:='Rubah Golongan';
                  DM.Qexec.ParamByName('uraian').AsString:='Rubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;




                 /////////////// -------------------



                  ///// INPUT BA



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


                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA RUBAH GOL LIMBAH" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;


                 
                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / RUBAH GOLONGAN / LIMBAH / '+romawi+' / '+FormatDateTime('YYYY',date);


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                    Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                    Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                    Umain.Qhost1.ParamByName('jenis').AsString:='BA RUBAH GOL LIMBAH';
                    Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                    Umain.Qhost1.Execute;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO ba_rubah_gol (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                    Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                    Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                    Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                    Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                    Umain.Qhost1.Execute;

                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin          

                             DM.Qcek.close;
                             DM.Qcek.SQL.Clear;
                             DM.Qcek.SQL.Add('SELECT kodelimbahyangberlaku,biaya FROM golongan_limbah WHERE kodelimbah=:kodelimbah AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
                             DM.Qcek.ParamByName('kodelimbah').AsString:=data_baru.asstring;
                             DM.Qcek.ParamByName('periode').AsString:= FormatDateTime('YYYYMM',date);
                             DM.Qcek.Open;

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET kodelimbah=:kodelimbah,kodelimbahyangberlaku=:kodelimbahyangberlaku,total=:total WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.ParamByName('kodelimbah').AsString:=data_baru.asstring;
                             DM.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=DM.Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                             DM.Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('biaya').AsCurrency;
                             DM.Qexec.Execute;

                       end;

                   end;



                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('COMMIT');
                  Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Ruubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.asstring;
                  DM.logakses;

                  MessageDlg('PROSES RUBAH GOLONGAN BERHASIL !!', mtInformation, [mbOK], 0);  


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
          refresh.Click;
          Enabled:=true;
      END;








end;




procedure TFRlistupdate.rubahgollltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;



                 /////////////// ------------


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET kodelltt=:kodelltt WHERE nomorlltt="'+data_nosamb.asstring+'"');
                 DM.Qexec.ParamByName('kodelltt').AsString:=data_baru.asstring;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET kodelltt=:kodelltt,waktuupdate=NOW() WHERE nomorlltt="'+data_nosamb.asstring+'"');
                 Umain.Qhost1.ParamByName('kodelltt').AsString:=data_baru.asstring;
                 Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.asstring;
                  DM.Qexec.ParamByName('tanggal').AsDate:=date;
                  DM.Qexec.ParamByName('tipe').AsString:='Rubah Golongan';
                  DM.Qexec.ParamByName('uraian').AsString:='Rubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;




                 /////////////// -------------------



                  ///// INPUT BA



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


                  Qcek.close;
                  Qcek.SQL.Clear;
                  Qcek.SQL.Add('select coalesce(MAX(urutan),0) +1  as urutan FROm penomoran WHERE jenis="BA RUBAH GOL L2T2" and DATE_FORMAT(waktu,"%Y%m")=:tahunbulan');
                  Qcek.ParamByName('tahunbulan').AsString:=FormatDateTime('YYYYMM',date);
                  Qcek.Open;


                 
                  _urutan:=StrToInt(Qcek.fieldbyname('urutan').AsString) ;

                  _nomor:= Qcek.fieldbyname('urutan').AsString+' / BA / RUBAH GOLONGAN / L2T2 / '+romawi+' / '+FormatDateTime('YYYY',date);


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO penomoran (nomor,urutan,waktu,jenis,kodewil) VALUES (:nomor,:urutan,:waktu,:jenis,:kodewil)');
                    Umain.Qhost1.ParamByName('nomor').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('urutan').AsInteger:= _urutan;
                    Umain.Qhost1.ParamByName('waktu').AsDateTime:=Now;
                    Umain.Qhost1.ParamByName('jenis').AsString:='BA RUBAH GOL L2T2';
                    Umain.Qhost1.ParamByName('kodewil').AsString:=data_kodewil.AsString;
                    Umain.Qhost1.Execute;


                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('INSERT INTO ba_rubah_gol (nomorba,nomorspk,nomorpermohonan,tanggalba,flaghapus)');
                    Umain.Qhost1.SQL.Add('VALUES (:nomorba,:nomorspk,:nomorpermohonan,:tanggalba,:flaghapus)');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.ParamByName('nomorspk').AsString:='';
                    Umain.Qhost1.ParamByName('nomorpermohonan').AsString:=data_nomor.AsString;
                    Umain.Qhost1.ParamByName('tanggalba').AsDate:=date;
                    Umain.Qhost1.ParamByName('flaghapus').AsString:='0';
                    Umain.Qhost1.Execute;

                    Umain.Qhost1.close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                    Umain.Qhost1.ParamByName('nomorba').AsString:=_nomor;
                    Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qcek.close;
                             DM.Qcek.SQL.Clear;
                             DM.Qcek.SQL.Add('SELECT kodellttyangberlaku,biaya FROM golongan_lltt WHERE kodelltt=:kodelltt AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
                             DM.Qcek.ParamByName('kodelltt').AsString:=data_baru.asstring;
                             DM.Qcek.ParamByName('periode').AsString:= FormatDateTime('YYYYMM',date);
                             DM.Qcek.Open;

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET kodelltt=:kodelltt,kodellttyangberlaku=:kodellttyangberlaku,total=:total WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.ParamByName('kodelltt').AsString:=data_baru.asstring;
                             DM.Qexec.ParamByName('kodellttyangberlaku').AsString:=DM.Qcek.fieldbyname('kodellttyangberlaku').AsString;
                             DM.Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('biaya').AsCurrency;
                             DM.Qexec.Execute;

                       end;

                   end;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('COMMIT');
                  Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Ruubah Golongan : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.asstring;
                  DM.logakses;

                  MessageDlg('PROSES RUBAH GOLONGAN BERHASIL !!', mtInformation, [mbOK], 0);  


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
          refresh.Click;
          Enabled:=true;
      END;








end;


procedure TFRlistupdate.segelair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="2" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="2",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='SEGEL SEMENTARA KARENA PERMINTAAN ( AIR )';
                  DM.Qexec.ParamByName('uraian').AsString:='Segel Sementara | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Pemutusan Sementara Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;


procedure TFRlistupdate.segellimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="2" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="2",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Pts.Sementara Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Pts.Sementara Segel | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Pemutusan Sementara Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;


procedure TFRlistupdate.segellltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="2" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="2",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Pts.Sementara Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Pts.Sementara Segel | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Pemutusan Sementara Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;





procedure TFRlistupdate.segelairtunggakan();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="2" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="2",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 {DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="2" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="2",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute; }


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='SEGEL KARENA TUNGGAKAN ( AIR )';
                  DM.Qexec.ParamByName('uraian').AsString:='Segel | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="2" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;
                       
                   end;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:=' Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;


procedure TFRlistupdate.segellimbahtunggakan();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="2" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="2",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Segel | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="2" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;
                       
                   end;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Pemutusan Sementara Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;


procedure TFRlistupdate.segellltttunggakan();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;  

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;  


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="2" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="2",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Pts.Sementara Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Pts.Sementara Segel | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomor.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="2" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;
                       
                   end;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Pemutusan Sementara Segel : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;






procedure TFRlistupdate.tutupsementaraair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
_updaterekening:byte;
begin




        




   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="3" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="3",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 {DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="3" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="3",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute; }




                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP SEMENTARA ( AIR )';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Sementara ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="3" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;
                       
                   end;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Sementara ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP SEMENTARA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;



procedure TFRlistupdate.sambungkembaliair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="1" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="1",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 DM.Qcek.close;
                 DM.Qcek.SQL.Clear;
                 DM.Qcek.SQL.Add('select nosamb FROM pelanggan_limbah WHERE nosamb=:nosamb');
                 DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qcek.Open;

                 if DM.Qcek.RecordCount=0 then
                 begin

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="1" WHERE nosamb=:nosamb');
                     DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     DM.Qexec.Execute;

                     Umain.Qhost1.close;
                     Umain.Qhost1.SQL.Clear;
                     Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="1",waktuupdate=NOW() WHERE nosamb=:nosamb');
                     Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     Umain.Qhost1.Execute;


                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;


                 end;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='SAMBUNG KEMBALI ( AIR )';
                  DM.Qexec.ParamByName('uraian').AsString:='SAMBUNG KEMBALI ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_sambungkembali');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;
                       
                   end;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Sambung Kembali ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SAMBUNG KEMBALI BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;


procedure TFRlistupdate.sambungkembalilimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="1" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="1",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;



                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='SAMBUNG KEMBALI ( LIMBAH )';
                  DM.Qexec.ParamByName('uraian').AsString:='SAMBUNG KEMBALI ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_sambungkembali');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;
;

                       end;
                       
                   end;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Sambung Kembali ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SAMBUNG KEMBALI BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;



procedure TFRlistupdate.sambungkembalilltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="1" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="1",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;



                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='SAMBUNG KEMBALI ( L2T2 )';
                  DM.Qexec.ParamByName('uraian').AsString:='SAMBUNG KEMBALI ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_sambungkembali');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;



                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;
;

                       end;
                       
                   end;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Sambung Kembali ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES SAMBUNG KEMBALI BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;





procedure TFRlistupdate.tutuptotalair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="0" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="0",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 DM.Qcek.close;
                 DM.Qcek.SQL.Clear;
                 DM.Qcek.SQL.Add('select nosamb FROM pelanggan_limbah WHERE nosamb=:nosamb');
                 DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qcek.Open;

                 if DM.Qcek.RecordCount=0 then
                 begin

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="0" WHERE nosamb=:nosamb');
                     DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     DM.Qexec.Execute;

                     Umain.Qhost1.close;
                     Umain.Qhost1.SQL.Clear;
                     Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="0",waktuupdate=NOW() WHERE nosamb=:nosamb');
                     Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     Umain.Qhost1.Execute;


                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;


                 end;



                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP TOTAL ( AIR )';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Total ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;
                       
                   end;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Total ( AIR ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;



procedure TFRlistupdate.tutuptotallimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="0" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="0",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP TOTAL ( LIMBAH )';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Total ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;
                       
                   end;



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Total ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;


procedure TFRlistupdate.tutuptotallltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="0" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="0",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP TOTAL ( L2T2 )';
                  DM.Qexec.ParamByName('uraian').AsString:='TUTUP TOTAL ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;
                       
                   end;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Total ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;



procedure TFRlistupdate.tutupsementaralimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="3" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="3",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP SEMENTARA ( LIMBAH )';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Sementara ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="3" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                         
                       end;
                       
                   end;




                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Sementara ( LIMBAH ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP SEMENTARA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;


procedure TFRlistupdate.tutupsementaralltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;
   Umain.Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;



                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="3" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="3",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='TUTUP SEMENTARA ( L2T2 )';
                  DM.Qexec.ParamByName('uraian').AsString:='TUTUP Sementara ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor B.A "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_sementara');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="3" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                         
                       end;

                   end;




                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Tutup Sementara ( L2T2 ) dengan alasan "'+data_keterangan.AsString+'" Nomor BA "'+data_nomorba.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP SEMENTARA BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
          Umain.Enabled:=true;
      END;



end;



procedure TFRlistupdate.pemutusantunggakanair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;





                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="0" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="0",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 DM.Qcek.close;
                 DM.Qcek.SQL.Clear;
                 DM.Qcek.SQL.Add('select nosamb FROM pelanggan_limbah WHERE nosamb=:nosamb');
                 DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qcek.Open;

                 if DM.Qcek.RecordCount=0 then
                 begin

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="0" WHERE nosamb=:nosamb');
                     DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     DM.Qexec.Execute;

                     Umain.Qhost1.close;
                     Umain.Qhost1.SQL.Clear;
                     Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="0",waktuupdate=NOW() WHERE nosamb=:nosamb');
                     Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     Umain.Qhost1.Execute;


                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;


                 end;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Tutup Total';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Total | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                   Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;
                       
                   end;


                  
                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;




                  DM.uraianlogakses:='Tutup Total : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor BA : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;



procedure TFRlistupdate.pemutusantunggakanlimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;





                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="0" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="0",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Tutup Total';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Total | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;
                       
                   end;



                  
                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;




                  DM.uraianlogakses:='Tutup Total : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor BA : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;



procedure TFRlistupdate.pemutusantunggakanlltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;





                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="0" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="0",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Tutup Total';
                  DM.Qexec.ParamByName('uraian').AsString:='Tutup Total | Alasan : "'+data_keterangan.AsString+'" | Nomor B.A : "'+data_nomorba.AsString+'"';
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('UPDATE ba_pemutusan_tunggakan');
                  Umain.Qhost1.SQL.Add('SET flagprosesdata="1"');
                  Umain.Qhost1.SQL.Add('WHERE nomorba=:nomorba');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="0" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                       end;

                   end;




                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;




                  DM.uraianlogakses:='Tutup Total : "'+data_lama.AsString+'" -> "'+data_baru.AsString+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor BA : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES TUTUP TOTAL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;








procedure TFRlistupdate.bukasegelair();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY
                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan SET status="1" WHERE nosamb=:nosamb');
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan SET status="1",waktuupdate=NOW() WHERE nosamb=:nosamb');
                 Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 {DM.Qcek.Close;
                 DM.Qcek.SQL.Clear;
                 DM.Qcek.SQL.Add('select nosamb FROM pelanggan_limbah WHERE nosamb=:nosamb');
                 DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qcek.Open;

                 if DM.Qcek.RecordCount=0 then
                 begin


                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="1" WHERE nosamb=:nosamb');
                   DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                   DM.Qexec.Execute;

                   Umain.Qhost1.close;
                   Umain.Qhost1.SQL.Clear;
                   Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="1",waktuupdate=NOW() WHERE nosamb=:nosamb');
                   Umain.Qhost1.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                   Umain.Qhost1.Execute;

                 end; }



                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE ba_bukasegel SET flagprosesdata="1" WHERE nomorba=:nomorba');
                 Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                 Umain.Qhost1.Execute;

                   Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Buka Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Buka Segel | Alasan : "'+data_keterangan.AsString;
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nosamb FROM drd'+FormatDateTime('YYYYMM',date)+' WHERE nosamb=:nosamb AND flagpublish="0"');
                       DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nosamb=:nosamb');
                             DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;

                             DM.Xnosamb:=data_nosamb.AsString;
                             hitungulang;

                       end;

                   end;





                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Buka Segel : '+data_nosamb.AsString+' | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BUKA SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;



procedure TFRlistupdate.bukasegellimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY
                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_limbah SET status="1" WHERE nomorlimbah=:nomorlimbah');
                 DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_limbah SET status="1",waktuupdate=NOW() WHERE nomorlimbah=:nomorlimbah');
                 Umain.Qhost1.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE ba_bukasegel SET flagprosesdata="1" WHERE nomorba=:nomorba');
                 Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                 Umain.Qhost1.Execute;


                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Buka Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Buka Segel | Alasan : "'+data_keterangan.AsString;
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;

                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlimbah FROM drdlimbah'+FormatDateTime('YYYYMM',date)+' WHERE nomorlimbah=:nomorlimbah AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlimbah'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nomorlimbah=:nomorlimbah');
                             DM.Qexec.ParamByName('nomorlimbah').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;


                       end;

                   end;





                  ///////////////////////////////////////////////


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Buka Segel : '+data_nosamb.AsString+' | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BUKA SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;

procedure TFRlistupdate.bukasegellltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin


   TRY
   Enabled:=false;

   TRY
                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('START TRANSACTION');
                 Umain.Qhost1.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('START TRANSACTION');
                 DM.Qexec.Execute;




                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('UPDATE pelanggan_lltt SET status="1" WHERE nomorlltt=:nomorlltt');
                 DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 DM.Qexec.Execute;

                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE pelanggan_lltt SET status="1",waktuupdate=NOW() WHERE nomorlltt=:nomorlltt');
                 Umain.Qhost1.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                 Umain.Qhost1.Execute;


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('UPDATE ba_bukasegel SET flagprosesdata="1" WHERE nomorba=:nomorba');
                 Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                 Umain.Qhost1.Execute;

                  Umain.Qhost1.close;
                  Umain.Qhost1.SQL.Clear;
                  Umain.Qhost1.SQL.Add('REPLACE INTO verifikasi (nomorba,waktuverifikasi) VALUES (:nomorba,NOW())');
                  Umain.Qhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
                  Umain.Qhost1.Execute;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                  DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                  DM.Qexec.ParamByName('tanggal').AsDate:=Now;
                  DM.Qexec.ParamByName('tipe').AsString:='Buka Segel';
                  DM.Qexec.ParamByName('uraian').AsString:='Buka Segel | Alasan : "'+data_keterangan.AsString;
                  DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                  DM.Qexec.Execute;


                   DM.Qcek.close;
                   DM.Qcek.SQL.Clear;
                   DM.Qcek.SQL.Add('select periode FROM periode WHERE periode=:periode');
                   DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',date);
                   DM.Qcek.Open;

                   if DM.Qcek.RecordCount>0 then
                   begin

                       DM.Qcek.close;
                       DM.Qcek.SQL.Clear;
                       DM.Qcek.SQL.Add('select nomorlltt FROM drdlltt'+FormatDateTime('YYYYMM',date)+' WHERE nomorlltt=:nomorlltt AND flagpublish="0"');
                       DM.Qcek.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                       DM.Qcek.Open;

                       if DM.Qcek.RecordCount>0 then
                       begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',date)+' SET flagaktif="1" WHERE flagpublish="0" AND nomorlltt=:nomorlltt');
                             DM.Qexec.ParamByName('nomorlltt').AsString:=data_nosamb.AsString;
                             DM.Qexec.Execute;


                       end;

                   end;





                  ///////////////////////////////////////////////


                 Umain.Qhost1.close;
                 Umain.Qhost1.SQL.Clear;
                 Umain.Qhost1.SQL.Add('COMMIT');
                 Umain.Qhost1.Execute;


                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;



                  DM.uraianlogakses:='Buka Segel : '+data_nosamb.AsString+' | Nomor Permohonan : "'+data_nomor.AsString+'"';
                  DM.targetlogakses:=data_nosamb.AsString;
                  DM.logakses;

                  MessageDlg('PROSES BUKA SEGEL BERHASIL !!', mtInformation, [mbOK], 0);




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
          refresh.Click;
          Enabled:=true;
      END;



end;


procedure TFRlistupdate.sambbaru();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin

     DM.Xflag:='Pengaktifan';
     UTpelanggan2.status.ItemIndex:=1;
     UTpelanggan2.cxButton1.Visible:=true;
     UTpelanggan2.status.Enabled:=false;
     
     UTpelanggan2.kodegol.Enabled:=true;
     UTpelanggan2.golongan.Enabled:=true;
     UTpelanggan2.koderayon.Enabled:=true;
     UTpelanggan2.namarayon.Enabled:=true;
     UTpelanggan2.kodediameter.Enabled:=true;
     UTpelanggan2.ukuran.Enabled:=true;
     UTpelanggan2.serimeter.Enabled:=true;
     UTpelanggan2.tgldaftar.Enabled:=true;
     UTpelanggan2.alamat.Enabled:=true;
     UTpelanggan2.kodeblok.Enabled:=true;
     UTpelanggan2.namablok.Enabled:=true;
     UTpelanggan2.merkwm.Enabled:=true;
     UTpelanggan2.kelurahan.Enabled:=true;
     UTpelanggan2.kodekelurahan.Enabled:=true;
     UTpelanggan2.nama.Enabled:=true;
     UTpelanggan2.tgldaftar.date:=date;
     UTpelanggan2.tglmeter.Enabled:=true;
     UTpelanggan2.norumah.Enabled:=true;
     UTpelanggan2.rt.Enabled:=true;
     UTpelanggan2.rw.Enabled:=true;
     UTpelanggan2.tambahlltt.Text:='-';
     UTpelanggan2.panellltt.Visible:=false;
     UTpelanggan2.urutanbaca.Value:=0;

     Qcek2.close;
     Qcek2.SQL.Clear;
     Qcek2.SQL.Add('SELECT * FROM rab WHERE norab=:norab');
     Qcek2.ParamByName('norab').AsString:=data_norab.AsString;
     Qcek2.open;

     if Qcek2.RecordCount>0 then
     begin   

         UTpelanggan2.nosamb.Text:=Qcek2.fieldbyname('nosambyangdiberikan').AsString;    

         if(Qcek2.fieldbyname('nosambyangdiberikan').AsString='')then
         begin
          UTpelanggan2.nosamb.Enabled:=true;
          UTpelanggan2.znosambdaribshl:='0';
         end
         else
         begin
          UTpelanggan2.nosamb.Enabled:=false;
          UTpelanggan2.znosambdaribshl:='1';  
         end;

         UTpelanggan2.nama.Text:=Qcek2.fieldbyname('nama').AsString;
         UTpelanggan2.alamat.Text:=Qcek2.fieldbyname('alamat').AsString;
         UTpelanggan2.telp.Text:=Qcek2.fieldbyname('notelp').AsString;
         UTpelanggan2.gsmcdma.Text:=Qcek2.fieldbyname('nohp').AsString;
         UTpelanggan2.pekerjaan.Text:=Qcek2.fieldbyname('pekerjaan').AsString;
         UTpelanggan2.noktp.Text:=Qcek2.fieldbyname('noktp').AsString;
         UTpelanggan2.namapemilik.Text:=Qcek2.fieldbyname('namapemilik').AsString;
         UTpelanggan2.penghuni.Text:=Qcek2.fieldbyname('penghuni').AsString;
         UTpelanggan2.serimeter.Text:=Qcek2.fieldbyname('serimeter').AsString;
         UTpelanggan2.stan.Value:=Qcek2.fieldbyname('stanawalpasang').ascurrency;

         UTpelanggan2.zkodegol:=Qcek2.fieldbyname('kodegol').AsString;
         UTpelanggan2.zkodediameter:=Qcek2.fieldbyname('kodediameter').AsString;
         UTpelanggan2.zkodekolektif:=Qcek2.fieldbyname('kodekolektif').AsString;
         UTpelanggan2.zkoderayon:=Qcek2.fieldbyname('koderayon').AsString;
         UTpelanggan2.zmerk:= Qcek2.fieldbyname('merkmeter').AsString;
         UTpelanggan2.Zkepemilikan:= Qcek2.fieldbyname('kepemilikanbangunan').AsString;
         UTpelanggan2.Zsumberair:= Qcek2.fieldbyname('sumberair').AsString;

         UTpelanggan2.zkodeadmlain:= '-';
         UTpelanggan2.zkodepemlain:='-';
         UTpelanggan2.zkoderetlain:= '-';
         UTpelanggan2.zkodekelurahan:= Qcek2.fieldbyname('kodekelurahan').AsString;
         UTpelanggan2.znopendaftaran:= Qcek2.fieldbyname('nomorreg').AsString;
         UTpelanggan2.znorab:= Qcek2.fieldbyname('norab').AsString;

         UTpelanggan2.norumah.Text:=Qcek2.fieldbyname('norumah').AsString;
         UTpelanggan2.rt.Text:=Qcek2.fieldbyname('rt').AsString;
         UTpelanggan2.rw.Text:=Qcek2.fieldbyname('rw').AsString;

         UTpelanggan2.tglmeter.date:=Qcek2.fieldbyname('tglpasang').AsDateTime;


          if UTpelanggan2.showmodal=mrOk then
          begin
            refresh.Click;
          end;


     end;





      

end;



procedure TFRlistupdate.sambbarulimbah();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin




     DM.Xflag:='Pengaktifan';
     uTpelangganlimbah2.status.ItemIndex:=1;

     uTpelangganlimbah2.cxButton1.Visible:=true;
     uTpelangganlimbah2.status.Enabled:=false;
     uTpelangganlimbah2.nosamb.Enabled:=true;
     uTpelangganlimbah2.kodelimbah.Enabled:=true;
     uTpelangganlimbah2.golonganlimbah.Enabled:=true;
     uTpelangganlimbah2.koderayon.Enabled:=true;
     uTpelangganlimbah2.namarayon.Enabled:=true;
     uTpelangganlimbah2.tgldaftar.Enabled:=true;
     uTpelangganlimbah2.alamat.Enabled:=true;
     uTpelangganlimbah2.kodeblok.Enabled:=true;
     uTpelangganlimbah2.namablok.Enabled:=true;

     uTpelangganlimbah2.kelurahan.Enabled:=true;
     uTpelangganlimbah2.kodekelurahan.Enabled:=true;  
     uTpelangganlimbah2.nama.Enabled:=true;
     uTpelangganlimbah2.tgldaftar.date:=date;
     uTpelangganlimbah2.znorab:='';


     uTpelangganlimbah2.norumah.Enabled:=true;
     uTpelangganlimbah2.rt.Enabled:=true;
     uTpelangganlimbah2.rw.Enabled:=true;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('select * FROM rab_limbah WHERE norab=:norab');
     Umain.Qhost1.ParamByName('norab').AsString:=data_norab.AsString;
     Umain.Qhost1.Open;


     UTpelangganlimbah2.znorab:=Umain.Qhost1.fieldbyname('norab').AsString;
     UTpelangganlimbah2.nomor.Text:=Umain.Qhost1.fieldbyname('nosambyangdiberikan').AsString;
     UTpelangganlimbah2.nama.Text:=Umain.Qhost1.fieldbyname('nama').AsString;
     UTpelangganlimbah2.alamat.Text:=Umain.Qhost1.fieldbyname('alamat').AsString;
     UTpelangganlimbah2.zkodekolektif:='-';
     UTpelangganlimbah2.zkoderayon:=Umain.Qhost1.fieldbyname('koderayon').AsString;
     UTpelangganlimbah2.zkodekelurahan:=Umain.Qhost1.fieldbyname('kodekelurahan').AsString;
     UTpelangganlimbah2.Zkepemilikan:='';
     UTpelangganlimbah2.zkodelimbah:=Umain.Qhost1.fieldbyname('kodegol').AsString;
     UTpelangganlimbah2.nosamb.Text:=Umain.Qhost1.fieldbyname('nosamb').AsString;
     UTpelangganlimbah2.telp.Text:=Umain.Qhost1.fieldbyname('notelp').AsString;
     UTpelangganlimbah2.gsmcdma.Text:=Umain.Qhost1.fieldbyname('nohp').AsString;
     UTpelangganlimbah2.namapemilik.Text:=Umain.Qhost1.fieldbyname('namapemilik').AsString;
     UTpelangganlimbah2.noktp.Text:=Umain.Qhost1.fieldbyname('noktp').AsString;
     UTpelangganlimbah2.penghuni.Text:=Umain.Qhost1.fieldbyname('penghuni').AsString; 
     UTpelangganlimbah2.email.Text:=Umain.Qhost1.fieldbyname('email').AsString;


    if uTpelangganlimbah2.showmodal=mrOk then
    begin
        refresh.Click;  
    end;



      

end;


procedure TFRlistupdate.sambbarulltt();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
begin




     DM.Xflag:='Pengaktifan';
     uTpelangganlltt2.status.ItemIndex:=1;

     uTpelangganlltt2.cxButton1.Visible:=true;
     uTpelangganlltt2.status.Enabled:=false;
     uTpelangganlltt2.nosamb.Enabled:=true;
     uTpelangganlltt2.kodelltt.Enabled:=true;
     uTpelangganlltt2.golonganlltt.Enabled:=true;
     uTpelangganlltt2.koderayon.Enabled:=true;
     uTpelangganlltt2.namarayon.Enabled:=true;
     uTpelangganlltt2.tgldaftar.Enabled:=true;
     uTpelangganlltt2.alamat.Enabled:=true;
     uTpelangganlltt2.kodeblok.Enabled:=true;
     uTpelangganlltt2.namablok.Enabled:=true;

     uTpelangganlltt2.kelurahan.Enabled:=true;
     uTpelangganlltt2.kodekelurahan.Enabled:=true;  
     uTpelangganlltt2.nama.Enabled:=true;
     uTpelangganlltt2.tgldaftar.date:=date;
     uTpelangganlltt2.znorab:='';


     uTpelangganlltt2.norumah.Enabled:=true;
     uTpelangganlltt2.rt.Enabled:=true;
     uTpelangganlltt2.rw.Enabled:=true;


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('select * FROM pendaftaran_lltt WHERE nomorreg=:nomorreg');
     Umain.Qhost1.ParamByName('nomorreg').AsString:=data_nomor.AsString;
     Umain.Qhost1.Open;


     ShowMessage(Umain.Qhost1.fieldbyname('kodegol').AsString);


     uTpelangganlltt2.znorab:=Umain.Qhost1.fieldbyname('nomorreg').AsString;
     //uTpelangganlltt2.nomor.Text:=Umain.Qhost1.fieldbyname('nosambyangdiberikan').AsString;
     uTpelangganlltt2.nama.Text:=Umain.Qhost1.fieldbyname('nama').AsString;
     uTpelangganlltt2.alamat.Text:=Umain.Qhost1.fieldbyname('alamat').AsString;
     uTpelangganlltt2.zkodekolektif:='-';
     uTpelangganlltt2.zkodegol:=Umain.Qhost1.fieldbyname('kodegol').AsString;
     uTpelangganlltt2.zkoderayon:=Umain.Qhost1.fieldbyname('koderayon').AsString;
     uTpelangganlltt2.zkodekelurahan:=Umain.Qhost1.fieldbyname('kodekelurahan').AsString;
     uTpelangganlltt2.Zkepemilikan:='';
     //uTpelangganlltt2.zkodelimbah:=Umain.Qhost1.fieldbyname('kodegol').AsString;
     uTpelangganlltt2.nosamb.Text:=Umain.Qhost1.fieldbyname('nosamb').AsString;
     uTpelangganlltt2.telp.Text:=Umain.Qhost1.fieldbyname('telp').AsString;
     uTpelangganlltt2.gsmcdma.Text:=Umain.Qhost1.fieldbyname('hp').AsString;
    // uTpelangganlltt2.namapemilik.Text:=Umain.Qhost1.fieldbyname('namapemilik').AsString;
     //uTpelangganlltt2.noktp.Text:=Umain.Qhost1.fieldbyname('noktp').AsString;
     //uTpelangganlltt2.penghuni.Text:=Umain.Qhost1.fieldbyname('penghuni').AsString;
     //uTpelangganlltt2.email.Text:=Umain.Qhost1.fieldbyname('email').AsString;


    if uTpelangganlltt2.showmodal=mrOk then
    begin
        refresh.Click;  
    end;



      

end;





procedure TFRlistupdate.koreksirek();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
_beritaacara:String;
begin


   Qcekhost1.close;
   Qcekhost1.SQL.Clear;
   Qcekhost1.SQL.Add('SELECT * FROM ba_usulan_koreksi_rekening_periode WHERE nomorba=:nomorba AND periode=:periode');
   Qcekhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
   Qcekhost1.ParamByName('periode').AsString:=data_periode.AsString;
   Qcekhost1.Open;



   Qcekhost2.close;
   Qcekhost2.SQL.Clear;
   Qcekhost2.SQL.Add('SELECT * FROM bayar WHERE nosamb=:nosamb AND periode=:periode');
   Qcekhost2.ParamByName('nosamb').AsString:=Qcekhost1.fieldbyname('nosamb').asstring;
   Qcekhost2.ParamByName('periode').AsString:=Qcekhost1.fieldbyname('periode').asstring;
   Qcekhost2.Open;

   if Qcekhost2.RecordCount>0 then
   begin
       MessageDlg('REKENING SUDAH DI LUNASI !! ', mtInformation, [mbOK], 0);
       Exit;
   end;



   TRY
   Enabled:=false;


        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('SELECT c.*,p.flag,p.kodekondisimeter,COALESCE(tak.flagkoreksi,"0") AS taksasi FROM drd'+Qcekhost1.fieldbyname('periode').asstring+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb ');
        DM.Qcek.SQL.Add('LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND periode="'+Qcekhost1.fieldbyname('periode').asstring+'") tak ON c.nosamb=tak.nosamb ');
        DM.Qcek.SQL.Add('WHERE c.nosamb=:nosamb');
        DM.Qcek.ParamByName('nosamb').AsString:=Qcekhost1.fieldbyname('nosamb').asstring;
        DM.Qcek.Open;


        DM.Xperiode:=Qcekhost1.fieldbyname('periode').asstring;
        DM.Xkodegol:=DM.Qcek.fieldbyname('kodegol').AsString;
        DM.Xkodediameter:=DM.Qcek.fieldbyname('kodediameter').AsString;

        DM.Xkodegolyangberlaku:=DM.Qcek.fieldbyname('kodegolyangberlaku').AsString;
        DM.Xkodediameteryangbrlaku:=DM.Qcek.fieldbyname('kodediameteryangberlaku').AsString;

        DM.Xflagpel:=data_flag.Value; //DM.Qcek.fieldbyname('flag').AsString; 
        DM.Xnosamb:=Qcekhost1.fieldbyname('nosamb').asstring;
        DM.xkodeadmlain:=DM.Qcek.fieldbyname('kodeadministrasilain').AsString;
        DM.xkodepemlain:=DM.Qcek.fieldbyname('kodepemeliharaanlain').AsString;
        DM.xkoderetlain:=DM.Qcek.fieldbyname('koderetribusilain').AsString;



        ukoreksistan._flagaktif:=DM.Qcek.fieldbyname('flagaktif').AsString;
        ukoreksistan._tipekoreksi:=Qcekhost1.fieldbyname('tipekoreksi').asstring;
        ukoreksistan.stanlalu.Value:=Qcekhost1.fieldbyname('stanlalu_baru').AsCurrency;
        ukoreksistan.stankini.Value:=Qcekhost1.fieldbyname('stankini_baru').AsCurrency;
        ukoreksistan.stanangkat.Value:=0;
        ukoreksistan.pakai.Value:=Qcekhost1.fieldbyname('pakai_baru').AsCurrency;


        ukoreksistan._kodekondisimeter:=DM.Qcek.fieldbyname('kodekondisimeter').AsString;
        ukoreksistan.tglmulaidenda1.date:=DM.Qcek.fieldbyname('tglmulaidenda').AsDateTime;
        ukoreksistan.tglmulaidenda2.date:=DM.Qcek.fieldbyname('tglmulaidenda2').AsDateTime;
        ukoreksistan.tglmulaidenda3.date:=DM.Qcek.fieldbyname('tglmulaidenda3').AsDateTime;
        ukoreksistan.tglmulaidenda5.date:=DM.Qcek.fieldbyname('tglmulaidenda4').AsDateTime;
        ukoreksistan.tglmulaidenda4.date:=DM.Qcek.fieldbyname('tglmulaidendaperbulan').AsDateTime;

       

        ukoreksistan.trf_dendatunggakan:=DM.Qcek.fieldbyname('trf_dendatunggakan').AsCurrency;
        ukoreksistan.trf_dendatunggakan2:=DM.Qcek.fieldbyname('trf_dendatunggakan2').AsCurrency;
        ukoreksistan.trf_dendatunggakan3:=DM.Qcek.fieldbyname('trf_dendatunggakan3').AsCurrency;
        ukoreksistan.trf_dendatunggakan4:=DM.Qcek.fieldbyname('trf_dendatunggakan4').AsCurrency;
        ukoreksistan.trf_dendatunggakanperbulan:=DM.Qcek.fieldbyname('trf_dendatunggakanperbulan').AsCurrency;


        if (DM.Qcek.fieldbyname('taksasi').AsString<>'0') then
              ukoreksistan.cektaksasi.Checked:=true
        else
              ukoreksistan.cektaksasi.Checked:=false;


        if(DM.Qcek.fieldbyname('kelainan').AsString<>'')then
        begin
          ukoreksistan.cekadakelainan.Checked:=true;
          ukoreksistan.kelainan.Text:=DM.Qcek.fieldbyname('kelainan').AsString;
          ukoreksistan.kelainan.Enabled:=true;
        end
        else
        begin
          ukoreksistan.cekadakelainan.Checked:=false;
          ukoreksistan.kelainan.Clear;
          ukoreksistan.kelainan.Enabled:=false;
        end;
        

         if(DM.Qcek.fieldbyname('pembacameter').AsString<>'')then
        begin
          ukoreksistan.pembacameter.Text:='-';
        end
        else
        begin
         ukoreksistan.pembacameter.Text:=DM.Qcek.fieldbyname('pembacameter').AsString;
        end;

        ukoreksistan.lewati.Visible:=false;
        ukoreksistan.tabel:='drd'+Qcekhost1.fieldbyname('periode').asstring;

        ukoreksistan.hitung();
        ukoreksistan.flagusulankoreksi:='1';
        ukoreksistan.btnKeluar.Enabled:=False;
        if ukoreksistan.showmodal=mrOk then
        begin

          refresh.Click;

        end;







  FINALLY
      Enabled:=true;
  END;








end;

procedure TFRlistupdate.koreksirekabodemen();
var
romawi:string;
_inisial:String;
_nomor:String;
_urutan:integer;
_beritaacara:String;
begin


   Qcekhost1.close;
   Qcekhost1.SQL.Clear;
   Qcekhost1.SQL.Add('SELECT * FROM ba_usulan_koreksi_rekening_periode WHERE nomorba=:nomorba AND periode=:periode');
   Qcekhost1.ParamByName('nomorba').AsString:=data_nomorba.AsString;
   Qcekhost1.ParamByName('periode').AsString:=data_periode.AsString;
   Qcekhost1.Open;



   Qcekhost2.close;
   Qcekhost2.SQL.Clear;
   Qcekhost2.SQL.Add('SELECT * FROM bayar WHERE nosamb=:nosamb AND periode=:periode');
   Qcekhost2.ParamByName('nosamb').AsString:=Qcekhost1.fieldbyname('nosamb').asstring;
   Qcekhost2.ParamByName('periode').AsString:=Qcekhost1.fieldbyname('periode').asstring;
   Qcekhost2.Open;

   if Qcekhost2.RecordCount>0 then
   begin
       MessageDlg('REKENING SUDAH DI LUNASI !! ', mtInformation, [mbOK], 0);
       Exit;
   end;



   TRY
   Enabled:=false;


        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        DM.Qcek.SQL.Add('SELECT c.*,p.flag,p.kodekondisimeter,COALESCE(tak.flagkoreksi,"0") AS taksasi FROM drd'+Qcekhost1.fieldbyname('periode').asstring+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb ');
        DM.Qcek.SQL.Add('LEFT JOIN (select * FROm taksasi WHERE flagkoreksi<>"0" AND periode="'+Qcekhost1.fieldbyname('periode').asstring+'") tak ON c.nosamb=tak.nosamb ');
        DM.Qcek.SQL.Add('WHERE c.nosamb=:nosamb');
        DM.Qcek.ParamByName('nosamb').AsString:=Qcekhost1.fieldbyname('nosamb').asstring;
        DM.Qcek.Open;


        DM.Xperiode:=Qcekhost1.fieldbyname('periode').asstring;
        DM.Xkodegol:=DM.Qcek.fieldbyname('kodegol').AsString;
        DM.Xkodediameter:=DM.Qcek.fieldbyname('kodediameter').AsString;

        DM.Xkodegolyangberlaku:=DM.Qcek.fieldbyname('kodegolyangberlaku').AsString;
        DM.Xkodediameteryangbrlaku:=DM.Qcek.fieldbyname('kodediameteryangberlaku').AsString;

        DM.Xflagpel:=data_flag.Value;//DM.Qcek.fieldbyname('flag').AsString; 
        DM.Xnosamb:=Qcekhost1.fieldbyname('nosamb').asstring;
        DM.xkodeadmlain:=DM.Qcek.fieldbyname('kodeadministrasilain').AsString;
        DM.xkodepemlain:=DM.Qcek.fieldbyname('kodepemeliharaanlain').AsString;
        DM.xkoderetlain:=DM.Qcek.fieldbyname('koderetribusilain').AsString;



        ukoreksistan._flagaktif:=DM.Qcek.fieldbyname('flagaktif').AsString;
        ukoreksistan._tipekoreksi:=Qcekhost1.fieldbyname('tipekoreksi').asstring;
        ukoreksistan.stanlalu.Value:=Qcekhost1.fieldbyname('stanlalu_baru').AsCurrency;
        ukoreksistan.stankini.Value:=Qcekhost1.fieldbyname('stankini_baru').AsCurrency;
        ukoreksistan.stanangkat.Value:=0;
        ukoreksistan.pakai.Value:=Qcekhost1.fieldbyname('pakai_baru').AsCurrency;

        ukoreksistan._kodekondisimeter:=DM.Qcek.fieldbyname('kodekondisimeter').AsString;
        ukoreksistan.tglmulaidenda1.date:=DM.Qcek.fieldbyname('tglmulaidenda').AsDateTime;
        ukoreksistan.tglmulaidenda2.date:=DM.Qcek.fieldbyname('tglmulaidenda2').AsDateTime;
        ukoreksistan.tglmulaidenda3.date:=DM.Qcek.fieldbyname('tglmulaidenda3').AsDateTime;
        ukoreksistan.tglmulaidenda5.date:=DM.Qcek.fieldbyname('tglmulaidenda4').AsDateTime;
        ukoreksistan.tglmulaidenda4.date:=DM.Qcek.fieldbyname('tglmulaidendaperbulan').AsDateTime;

       

        ukoreksistan.trf_dendatunggakan:=DM.Qcek.fieldbyname('trf_dendatunggakan').AsCurrency;
        ukoreksistan.trf_dendatunggakan2:=DM.Qcek.fieldbyname('trf_dendatunggakan2').AsCurrency;
        ukoreksistan.trf_dendatunggakan3:=DM.Qcek.fieldbyname('trf_dendatunggakan3').AsCurrency;
        ukoreksistan.trf_dendatunggakan4:=DM.Qcek.fieldbyname('trf_dendatunggakan4').AsCurrency;
        ukoreksistan.trf_dendatunggakanperbulan:=DM.Qcek.fieldbyname('trf_dendatunggakanperbulan').AsCurrency;


        if (DM.Qcek.fieldbyname('taksasi').AsString<>'0') then
              ukoreksistan.cektaksasi.Checked:=true
        else
              ukoreksistan.cektaksasi.Checked:=false;


        if(DM.Qcek.fieldbyname('kelainan').AsString<>'')then
        begin
          ukoreksistan.cekadakelainan.Checked:=true;
          ukoreksistan.kelainan.Text:=DM.Qcek.fieldbyname('kelainan').AsString;
          ukoreksistan.kelainan.Enabled:=true;
        end
        else
        begin
          ukoreksistan.cekadakelainan.Checked:=false;
          ukoreksistan.kelainan.Clear;
          ukoreksistan.kelainan.Enabled:=false;
        end;
        

         if(DM.Qcek.fieldbyname('pembacameter').AsString<>'')then
        begin
          ukoreksistan.pembacameter.Text:='-';
        end
        else
        begin
         ukoreksistan.pembacameter.Text:=DM.Qcek.fieldbyname('pembacameter').AsString;
        end;

        ukoreksistan.lewati.Visible:=false;
        ukoreksistan.tabel:='drd'+Qcekhost1.fieldbyname('periode').asstring;

        ukoreksistan.hitung();
        ukoreksistan.flagusulankoreksi:='1';
//        if ukoreksistan.showmodal=mrOk then
//        begin

//          refresh.Click;

//        end;

  FINALLY
      Enabled:=true;
  END;


end;




procedure TFRlistupdate.refresh2Click(Sender: TObject);
begin
Qhost.close;
Qhost.SQL.Clear;
Qhost.SQL.Add(Qhost.SQLLock.Text);
Qhost.Open;
end;

procedure TFRlistupdate.proses2Click(Sender: TObject);
begin

    {if Qhost.RecordCount=0 then
    begin
      Exit;
    end;


    if Qhost.FieldByName('jenis').AsString='BALIK NAMA'  then
    begin
       if MessageDlg('PROSES DATA BALIK NAMA "'+Qhost.fieldbyname('lama').AsString+'" MENJADI "'+Qhost.fieldbyname('baru').AsString+'" ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            baliknama;
       end
       else
        Exit;
    end;



       if Qhost.FieldByName('jenis').AsString='RUBAH GOL'  then
    begin
       if MessageDlg('PROSES DATA RUBAH GOLONGAN "'+Qhost.fieldbyname('lama').AsString+'" MENJADI "'+Qhost.fieldbyname('baru').AsString+'" ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            rubahgol;
       end
       else
        Exit;
    end;


    if Qhost.FieldByName('jenis').AsString='PTS SEMENTARA'  then
    begin
       if MessageDlg('PROSES DATA PEMUTUSAN SEMENTARA ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        pemutusansementara;

       end
       else
        Exit;
    end;


      if Qhost.FieldByName('jenis').AsString='KOREKSI REKENING'  then
    begin
       if MessageDlg('PROSES DATA KOREKSI REKENING ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

            koreksirek;

       end
       else
        Exit;
    end; }







end;

procedure TFRlistupdate.gridCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
proses.Click;
end;

procedure TFRlistupdate.refreshlistClick(Sender: TObject);
var
i:integer;
begin

    if(Umain.olah_daftar_tunggu<>'1') then
    begin
        proses.Enabled:=False;
    end;


      TRY
        Enabled:=false;
      TRY

          Qlist.close;
          Qlist.SQL.Clear;
          Qlist.SQL.Add(Qlist.SQLLock.Text);
          Qlist.Open;


          list_.Close;
          list_.Open;

          for i :=1  to Qlist.RecordCount  do
          begin  

             list_.Append;
             list_kategori.AsString:=Qlist.fieldbyname('kategori').AsString;
             list_pelanggan.AsString:=Qlist.fieldbyname('pelanggan').AsString;
             list_jenis.AsString:=Qlist.fieldbyname('jenis').AsString;
             list_jumlah.AsCurrency:=Qlist.fieldbyname('jumlah').AsInteger;
             list_tipekoreksi.AsString:=Qlist.fieldbyname('tipekoreksi').AsString;
             list_.Post;


              Qlist.Next;
          end;


        list_.First;


  
      EXCEPT ON E:Exception DO
      BEGIN

           MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
      END;
      END;

      FINALLY
          Enabled:=true;
          Umain.host.close;
      END;



end;

procedure TFRlistupdate.prosesClick(Sender: TObject);
begin
  if proses.Enabled=True then
  begin
    if data_.RecordCount=0 then
    begin
      Exit;
    end;


    if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP SEMENTARA KARENA PERMOHONAN ( AIR ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutupsementaraair;

       end
       else
        Exit;
    end;


    if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP SEMENTARA KARENA PERMOHONAN ( LIMBAH ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutupsementaralimbah;

       end
       else
        Exit;
    end;


       if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP SEMENTARA KARENA PERMOHONAN ( L2T2 ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutupsementaralltt;

       end
       else
        Exit;
    end;





      if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA PERMOHONAN ( AIR ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutuptotalair;

       end
       else
        Exit;
    end;



    if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA PERMOHONAN ( LIMBAH ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutuptotallimbah;

       end
       else
        Exit;
    end;


    
    if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA PERMOHONAN ( L2T2 ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        tutuptotallltt;

       end
       else
        Exit;
    end;



     if list_jenis.AsString='BUKA SEGEL ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA BUKA SEGEL?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            bukasegelair;
       end
       else
        Exit;
    end;

    if list_jenis.AsString='BUKA SEGEL ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA BUKA SEGEL?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            bukasegellimbah;
       end
       else
        Exit;
    end;

    if list_jenis.AsString='BUKA SEGEL ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA BUKA SEGEL?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            bukasegellltt;
       end
       else
        Exit;
    end;



    if list_jenis.AsString='BALIK NAMA ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA BALIK NAMA ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            baliknamaair;
       end
       else
        Exit;
    end;


      if list_jenis.AsString='BALIK NAMA ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA BALIK NAMA ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            baliknamalimbah;
       end
       else
        Exit;
    end;

      if list_jenis.AsString='BALIK NAMA ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA BALIK NAMA ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            baliknamalltt;
       end
       else
        Exit;
    end;



     if list_jenis.AsString='RUBAH GOLONGAN ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA RUBAH GOLONGAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            rubahgolair;
       end
       else
        Exit;
    end;

     if list_jenis.AsString='RUBAH GOLONGAN ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA RUBAH GOLONGAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            rubahgollimbah;
       end
       else
        Exit;
    end;

     if list_jenis.AsString='RUBAH GOLONGAN ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA RUBAH GOLONGAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin
            rubahgollltt;
       end
       else
        Exit;
    end;




      if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA SEGEL PELANGGAN ( AIR )?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        segelairtunggakan;

       end
       else
        Exit;
    end;


     if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA SEGEL PELANGGAN ( LIMBAH ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        segellimbahtunggakan;

       end
       else
        Exit;
    end;


     if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA SEGEL PELANGGAN ( L2T2 ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        segellltttunggakan;

       end
       else
        Exit;
    end;



      if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA TUNGGAKAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        pemutusantunggakanair;

       end
       else
        Exit;
    end;


      if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA TUNGGAKAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        pemutusantunggakanlimbah;

       end
       else
        Exit;
    end;


      if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA TUTUP TOTAL KARENA TUNGGAKAN ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        pemutusantunggakanlltt;

       end
       else
        Exit;
    end;



     if list_jenis.AsString='SAMBUNGAN BARU ( AIR )'  then
    begin
        sambbaru;
    end;

       if list_jenis.AsString='SAMBUNGAN BARU ( LIMBAH )'  then
    begin
        sambbarulimbah;
    end;

       if list_jenis.AsString='SAMBUNGAN BARU ( L2T2 )'  then
    begin
        sambbarulltt;  
    end;



      if list_jenis.AsString='SAMBUNG KEMBALI ( AIR )'  then
    begin
       if MessageDlg('UPDATE DATA SAMBUNG KEMBALI ( AIR ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        sambungkembaliair;

       end
       else
        Exit;
    end;

       if list_jenis.AsString='SAMBUNG KEMBALI ( LIMBAH )'  then
    begin
       if MessageDlg('UPDATE DATA SAMBUNG KEMBALI ( LIMBAH ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        sambungkembalilimbah;

       end
       else
        Exit;
    end;

       if list_jenis.AsString='SAMBUNG KEMBALI ( L2T2 )'  then
    begin
       if MessageDlg('UPDATE DATA SAMBUNG KEMBALI ( L2T2 ) ?' , mtConfirmation, [mbYes,MbNo], 0)=mrYes then
       begin

        sambungkembalilltt;

       end
       else
        Exit;
    end;




    if list_jenis.AsString='KOREKSI REKENING ( AIR )'  then
    begin


      {if data_flagpublish.AsString='1' then
      begin
          MessageDlg('HARAP UNPUBLISH TAGIHAN TERLEBIH DAHULU !!', mtWarning, [mbOk], 0);
          Exit;
      end;   }


       if data_flaglunas.AsString='1' then
      begin
          MessageDlg('TAGIHAN SUDAH DI LUNASI !!', mtWarning, [mbOk], 0);
          Exit;
      end;

         koreksirek;


    end;

    if list_jenis.AsString='KOREKSI REKENING ABODEMEN ( AIR )'  then
    begin


      {if data_flagpublish.AsString='1' then
      begin
          MessageDlg('HARAP UNPUBLISH TAGIHAN TERLEBIH DAHULU !!', mtWarning, [mbOk], 0);
          Exit;
      end;   }


       if data_flaglunas.AsString='1' then
      begin
          MessageDlg('TAGIHAN SUDAH DI LUNASI !!', mtWarning, [mbOk], 0);
          Exit;
      end;

         koreksirek;


    end;

    if list_jenis.AsString='KOREKSI REKENING PEMAKAIAN ( AIR )'  then
    begin


      {if data_flagpublish.AsString='1' then
      begin
          MessageDlg('HARAP UNPUBLISH TAGIHAN TERLEBIH DAHULU !!', mtWarning, [mbOk], 0);
          Exit;
      end;   }


       if data_flaglunas.AsString='1' then
      begin
          MessageDlg('TAGIHAN SUDAH DI LUNASI !!', mtWarning, [mbOk], 0);
          Exit;
      end;

         koreksirek;


    end;



  end;








end;

procedure TFRlistupdate.refresh_Click(Sender: TObject);
var
i:integer;
begin
        if list_.RecordCount>0 then
          begin


            TRY
            Enabled:=false;
            TRY


            if list_jenis.AsString='BALIK NAMA' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qbaliknama.SQLLock.Text);
            Qdaftar.Open;



            end;


             if list_jenis.AsString='RUBAH GOL' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qrubahgol.SQLLock.Text);
            Qdaftar.Open;

            end;

          if list_jenis.AsString='SEGEL' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qsegel.SQLLock.Text);
            Qdaftar.Open;

            end;

           if list_jenis.AsString='PUTUS SEMENTARA KARENA PERMINTAAN' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qptssementara.SQLLock.Text);
            Qdaftar.Open;

            end;


             if list_jenis.AsString='PUTUS KARENA TUNGGAKAN' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qptstunggakan.SQLLock.Text);
            Qdaftar.Open;

            end;


      
            if list_jenis.AsString='BUKA SEGEL' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qbukasegel.SQLLock.Text);
            Qdaftar.Open;

            end;



            if list_jenis.AsString='SAMB.KEMBALI' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qsambkembali.SQLLock.Text);
            Qdaftar.Open;

            end;


             if list_jenis.AsString='SAMB.BARU' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet1;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qsambbaru.SQLLock.Text);
            Qdaftar.Open;

            end;


             if list_jenis.AsString='KOREKSI REKENING AIR' then
            begin

            cxPageControl1.ActivePage:=cxTabSheet2;

            Qdaftar.Close;
            Qdaftar.SQL.Clear;
            Qdaftar.SQL.Add(Qkoreksirek.SQLLock.Text);
            Qdaftar.Open;

            end;





      

            data_.Close;
            data_.Open;


            Qdaftar.First;


            for i :=1  to Qdaftar.RecordCount  do
            begin

              data_.Append;
              data_nomor.AsString:=Qdaftar.fieldbyname('nomor').AsString;
              data_nosamb.AsString:=Qdaftar.fieldbyname('nosamb').AsString;
              data_nama.AsString:=Qdaftar.fieldbyname('nama').AsString;
              data_alamat.AsString:=Qdaftar.fieldbyname('alamat').AsString;
              data_kodegol.AsString:=Qdaftar.fieldbyname('kodegol').AsString;
              data_koderayon.AsString:=Qdaftar.fieldbyname('koderayon').AsString;
              data_kodewil.AsString:=Qdaftar.fieldbyname('kodewil').AsString;
              data_keterangan.AsString:=Qdaftar.fieldbyname('keterangan').AsString;
              data_tanggal.AsDateTime:=Qdaftar.fieldbyname('tanggal').AsDateTime;
              data_nomorba.AsString:=Qdaftar.fieldbyname('nomorba').AsString;
              data_baru.AsString:=Qdaftar.fieldbyname('baru').AsString;
              data_lama.AsString:=Qdaftar.fieldbyname('lama').AsString;
              data_norab.AsString:=Qdaftar.fieldbyname('norab').AsString;


              if cxPageControl1.ActivePage=cxTabSheet2 then
              begin


                DM.Qcek.close;
                DM.Qcek.SQL.Clear;
                DM.Qcek.SQL.Add('select c.flagpublish,p.flag,c.flaglunas FROM drd'+Qdaftar.fieldbyname('periode').AsString+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.nosamb=:nosamb');
                DM.Qcek.ParamByName('nosamb').AsString:=Qdaftar.fieldbyname('nosamb').AsString;
                DM.Qcek.Open;


                data_stanlalu_lama.AsCurrency:=Qdaftar.fieldbyname('stanlalu_lama').AsCurrency;
                data_stankini_lama.AsCurrency:=Qdaftar.fieldbyname('stankini_lama').AsCurrency;
                data_pakai_lama.AsCurrency:=Qdaftar.fieldbyname('pakai_lama').AsCurrency;

                data_stanlalu_baru.AsCurrency:=Qdaftar.fieldbyname('stanlalu_baru').AsCurrency;
                data_stankini_baru.AsCurrency:=Qdaftar.fieldbyname('stankini_baru').AsCurrency;
                data_pakai_baru.AsCurrency:=Qdaftar.fieldbyname('pakai_baru').AsCurrency;

                data_selisih_pakai.AsCurrency:=Qdaftar.fieldbyname('selisih_pakai').AsCurrency;
                data_biayapemakaian_lama.AsCurrency:=Qdaftar.fieldbyname('biayapemakaian_lama').AsCurrency;
                data_biayapemakaian_baru.AsCurrency:=Qdaftar.fieldbyname('biayapemakaian_baru').AsCurrency;
                data_selisih_biayapemakaian.AsCurrency:=Qdaftar.fieldbyname('selisih_biayapemakaian').AsCurrency;


                data_flagpublish.AsString:=DM.Qcek.fieldbyname('flagpublish').AsString;
                data_periode.AsString:=Qdaftar.fieldbyname('periode').AsString;

                data_flag.AsString:=DM.Qcek.fieldbyname('flag').AsString;
                data_bulan.AsString:=Qdaftar.fieldbyname('bulan').AsString;

                data_flaglunas.AsString:=DM.Qcek.fieldbyname('flaglunas').AsString;
                




              end;



              data_.Post;

              Qdaftar.Next;

            end;


            data_.First;

            EXCEPT ON E:Exception DO
            BEGIN
                 MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
            END;
            END;

            FINALLY
                Enabled:=true;
                Umain.host.close;
            END;
                     

    end;

end;

procedure TFRlistupdate.gtvlistCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
refresh.Click;
end;

procedure TFRlistupdate.Unpublish1Click(Sender: TObject);
begin
  if (data_.RecordCount>0) and (cxPageControl1.ActivePage=cxTabSheet2) then
  begin

      if data_flaglunas.AsString='1' then
      begin
          MessageDlg('TAGIHAN SUDAH DI LUNASI TIDAK DAPAT DI UNPUBLISH !!', mtWarning, [mbOk], 0);
          Exit;
      end;

    {  if list_tipekoreksi.Value='2' then
      begin
        ukoreksistan.stanlalu.Properties.ReadOnly:=True;
        ukoreksistan.stankini.Properties.ReadOnly:=True;
        ukoreksistan.stanangkat.Properties.ReadOnly:=True;
      end
      else
      begin
        ukoreksistan.stanlalu.Properties.ReadOnly:=False;
        ukoreksistan.stankini.Properties.ReadOnly:=False;
        ukoreksistan.stanangkat.Properties.ReadOnly:=False;
      end;
     }
      //unpublish;
      koreksirek;

      
  end;

end;

procedure TFRlistupdate.gtvlistFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  data_.Close;
  info.Caption:='DAFTAR TUNGGU PROSES VERIFIKASI DATA';

{  if list_tipekoreksi.AsString = '1' then
    ProsesAll.Visible:=True
  else
    ProsesAll.Visible:=False;
}
end;

procedure TFRlistupdate.Publish1Click(Sender: TObject);
begin


  if (data_.RecordCount>0) and (cxPageControl1.ActivePage=cxTabSheet2) then
  begin
    publish;


      if (data_flagpublish.AsString='1') and (data_flaglunas.AsString='0') then
      begin
        upload;
        selesai;
      end;

  end;

end;

procedure TFRlistupdate.gtv2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

 

if proses.Enabled=true then
begin
  Selesai1.Enabled:=True;
  
  if (cxPageControl1.ActivePage=cxTabSheet2) and (data_.RecordCount>0) AND (data_flagpublish.AsString='1') then
  begin

    Unpublish1.Enabled:=True;
    Publish1.Enabled:=False;
    ProsesAll.Enabled:=True;
  end
  else
  begin

    Unpublish1.Enabled:=False;
    Publish1.Enabled:=True;
    ProsesAll.Enabled:=False;

  end;
end;

end;

procedure TFRlistupdate.Selesai1Click(Sender: TObject);
begin
  if (data_.RecordCount>0) and (cxPageControl1.ActivePage=cxTabSheet2) then
  begin
    selesai;
  end;
end;

procedure TFRlistupdate.refreshClick(Sender: TObject);
var
i:integer;
begin

      if list_.RecordCount=0 then
      begin
             Exit;
      end;


       TRY
            Enabled:=false;
            Umain.Enabled:=false;
            gtv.DataController.DataSource:=MyDataSource1;
            gtv2.DataController.DataSource:=MyDataSource1;
            gtv3.DataController.DataSource:=MyDataSource1;
            info.Caption:='DAFTAR TUNGGU PROSES VERIFIKASI DATA ( '+list_jenis.AsString+' )';
            
            TRY



{

                  if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptssementara.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptssementara.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;

                   if list_jenis.AsString='TUTUP SEMENTARA KARENA PERMOHONAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptssementara.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;



                  if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstotal.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstotal.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;

                   if list_jenis.AsString='TUTUP TOTAL KARENA PERMOHONAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstotal.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;





                   if list_jenis.AsString='SEGEL SEMENTARA KARENA PERMINTAAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;

                    if list_jenis.AsString='SEGEL SEMENTARA KARENA PERMINTAAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                    if list_jenis.AsString='SEGEL SEMENTARA KARENA PERMINTAAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                  if list_jenis.AsString='BUKA SEGEL ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbukasegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='BUKA SEGEL ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbukasegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='BUKA SEGEL ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbukasegel.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                   if list_jenis.AsString='BALIK NAMA ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbaliknama.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;


                   if list_jenis.AsString='BALIK NAMA ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbaliknama.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                   if list_jenis.AsString='BALIK NAMA ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qbaliknama.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                  
                   if list_jenis.AsString='RUBAH GOLONGAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qrubahgol.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;


                   if list_jenis.AsString='RUBAH GOLONGAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qrubahgol.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                   if list_jenis.AsString='RUBAH GOLONGAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qrubahgol.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                    if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                  end;

                     if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                     if list_jenis.AsString='TUTUP TOTAL KARENA TUNGGAKAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qptstunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                  if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegeltunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';
                    Qdaftar.Open;
                    //
                  end;

                  if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegeltunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                     if list_jenis.AsString='SEGEL KARENA TUNGGAKAN ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsegeltunggakan.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;




                  if list_jenis.AsString='SAMBUNGAN BARU ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambbaru.SQLLock.Text);   
                    Qdaftar.Open;
                  end;

                   if list_jenis.AsString='SAMBUNGAN BARU ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambbarulimbah.SQLLock.Text);   
                    Qdaftar.Open;
                  end;

                   if list_jenis.AsString='SAMBUNGAN BARU ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambbarulltt.SQLLock.Text);   
                    Qdaftar.Open;
                  end;


                  if list_jenis.AsString='KOREKSI REKENING ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet2;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qkoreksirek.SQLLock.Text);

                    if nosamb.Checked=true then
                    begin
                      Qdaftar.SQL.Add(' AND c.nosamb like "%":nosamb"%"');
                      Qdaftar.ParamByName('nosamb').AsString:=txt_nosamb.Text;
                    end;


                   if nama.Checked=true then
                    begin
                      Qdaftar.SQL.Add(' AND c.nama like "%":nama"%"');
                      Qdaftar.ParamByName('nama').AsString:=txt_nama.Text;
                    end;

                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='KOREKSI REKENING ABODEMEN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet2;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qkoreksirek.SQLRefresh.Text);

                    if nosamb.Checked=true then
                    begin
                      Qdaftar.SQL.Add(' AND c.nosamb like "%":nosamb"%"');
                      Qdaftar.ParamByName('nosamb').AsString:=txt_nosamb.Text;
                    end;


                   if nama.Checked=true then
                    begin
                      Qdaftar.SQL.Add(' AND c.nama like "%":nama"%"');
                      Qdaftar.ParamByName('nama').AsString:=txt_nama.Text;
                    end;

                    Qdaftar.Open;
                  end;


                    if list_jenis.AsString='SAMBUNG KEMBALI ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambkembali.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='AIR';   
                    Qdaftar.Open;
                  end;

                      if list_jenis.AsString='SAMBUNG KEMBALI ( LIMBAH )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambkembali.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='LIMBAH';
                    Qdaftar.Open;
                  end;


                      if list_jenis.AsString='SAMBUNG KEMBALI ( L2T2 )' then
                  begin
                    cxPageControl1.ActivePage:=cxTabSheet1;
                     Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(Qsambkembali.SQLLock.Text);
                    Qdaftar.ParamByName('pelanggan').AsString:='L2T2';
                    Qdaftar.Open;
                  end;


                  if list_jenis.AsString='GANTI METER ROTASI ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=tabgantimeter;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(QGantiMeter.SQLLock.Text);
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='GANTI METER PENGADUAN ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=tabgantimeter;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(QGantiMeter.SQLRefresh.Text);
                    Qdaftar.Open;
                  end;

                  if list_jenis.AsString='GANTI METER SAMB.KEMBALI ( AIR )' then
                  begin
                    cxPageControl1.ActivePage:=tabgantimeter;
                    Qdaftar.Close;
                    Qdaftar.SQL.Clear;
                    Qdaftar.SQL.Add(QGantiMeter.SQLUpdate.Text);
                    Qdaftar.Open;
                  end;

}

                      cxPageControl1.ActivePage:=cxTabSheet2;
                      Qdaftar.Close;
                      Qdaftar.SQL.Clear;
                      Qdaftar.SQL.Add(Qkoreksirek.SQLRefresh.Text);

                      if nosamb.Checked=true then
                      begin
                        Qdaftar.SQL.Add(' AND c.nosamb like "%":nosamb"%"');
                        Qdaftar.ParamByName('nosamb').AsString:=txt_nosamb.Text;
                      end;


                     if nama.Checked=true then
                      begin
                        Qdaftar.SQL.Add(' AND c.nama like "%":nama"%"');
                        Qdaftar.ParamByName('nama').AsString:=txt_nama.Text;
                      end;

                      Qdaftar.ParamByName('tipekoreksi').AsString:=list_tipekoreksi.AsString;

                      Qdaftar.Open;


                       data_.Close;
                       data_.Open;
                       Progress.PartsComplete:=0;
                       Progress.TotalParts:=Qdaftar.RecordCount;
                       Progress.Visible:=true;

                       Application.ProcessMessages;


                        for i :=1  to Qdaftar.RecordCount  do
                        begin

                          data_.Append;
                          data_nomor.AsString:=Qdaftar.fieldbyname('nomor').AsString;
                          data_nosamb.AsString:=Qdaftar.fieldbyname('nosamb').AsString;
                          data_nama.AsString:=Qdaftar.fieldbyname('nama').AsString;
                          data_alamat.AsString:=Qdaftar.fieldbyname('alamat').AsString;
                          data_kodegol.AsString:=Qdaftar.fieldbyname('kodegol').AsString;
                          data_golongan.AsString:=Qdaftar.fieldbyname('golongan').AsString;
                          data_koderayon.AsString:=Qdaftar.fieldbyname('koderayon').AsString;



                          data_kodewil.AsString:=Qdaftar.fieldbyname('kodewil').AsString;
                          data_wilayah.AsString:=Qdaftar.fieldbyname('wilayah').AsString;
                          data_keterangan.AsString:=Qdaftar.fieldbyname('keterangan').AsString;
                          data_tanggal.AsDateTime:=Qdaftar.fieldbyname('tanggal').AsDateTime;
                          data_nomorba.AsString:=Qdaftar.fieldbyname('nomorba').AsString;
                          data_baru.AsString:=Qdaftar.fieldbyname('baru').AsString;
                          data_lama.AsString:=Qdaftar.fieldbyname('lama').AsString;
                          data_norab.AsString:=Qdaftar.fieldbyname('norab').AsString;


                          if cxPageControl1.ActivePage=cxTabSheet2 then
                          begin


                            DM.Qcek.close;
                            DM.Qcek.SQL.Clear;
                            DM.Qcek.SQL.Add('select c.flagpublish,IF((SELECT COUNT(*) FROM `drdhapussecaraakuntansi` WHERE nosamb=:nosamb AND periode=:periode)=1,"4",p.flag) AS flag,c.flaglunas ');
                            DM.Qcek.SQL.Add('FROM drd'+Qdaftar.fieldbyname('periode').AsString+' c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb WHERE c.nosamb=:nosamb');
                            DM.Qcek.ParamByName('nosamb').AsString:=Qdaftar.fieldbyname('nosamb').AsString;
                            DM.Qcek.ParamByName('periode').AsString:=Qdaftar.fieldbyname('periode').AsString;
                            DM.Qcek.Open;


                            data_stanlalu_lama.AsCurrency:=Qdaftar.fieldbyname('stanlalu_lama').AsCurrency;
                            data_stankini_lama.AsCurrency:=Qdaftar.fieldbyname('stankini_lama').AsCurrency;
                            data_pakai_lama.AsCurrency:=Qdaftar.fieldbyname('pakai_lama').AsCurrency;

                            data_stanlalu_baru.AsCurrency:=Qdaftar.fieldbyname('stanlalu_baru').AsCurrency;
                            data_stankini_baru.AsCurrency:=Qdaftar.fieldbyname('stankini_baru').AsCurrency;
                            data_pakai_baru.AsCurrency:=Qdaftar.fieldbyname('pakai_baru').AsCurrency;

                            data_selisih_pakai.AsCurrency:=Qdaftar.fieldbyname('selisih_pakai').AsCurrency;
                            data_biayapemakaian_lama.AsCurrency:=Qdaftar.fieldbyname('biayapemakaian_lama').AsCurrency;
                            data_biayapemakaian_baru.AsCurrency:=Qdaftar.fieldbyname('biayapemakaian_baru').AsCurrency;
                            data_selisih_biayapemakaian.AsCurrency:=Qdaftar.fieldbyname('selisih_biayapemakaian').AsCurrency;


                            data_flagpublish.AsString:=DM.Qcek.fieldbyname('flagpublish').AsString;
                            data_periode.AsString:=Qdaftar.fieldbyname('periode').AsString;

                            data_flag.AsString:=DM.Qcek.fieldbyname('flag').AsString;
                            data_bulan.AsString:=Qdaftar.fieldbyname('bulan').AsString;

                            data_flaglunas.AsString:=DM.Qcek.fieldbyname('flaglunas').AsString;               




                          end else
                          if cxPageControl1.ActivePage=tabgantimeter then
                          begin

                             data_merkmeterlama.AsString:=Qdaftar.fieldbyname('lama').AsString;
                             data_merkmeterbaru.AsString:=Qdaftar.fieldbyname('baru').AsString;
                             data_serimeterbaru.AsString:=Qdaftar.fieldbyname('serimeterbaru').AsString;
                             data_serimeterlama.AsString:=Qdaftar.fieldbyname('serimeterlama').AsString;
                             data_angkameterbaru.AsCurrency:=Qdaftar.fieldbyname('angkameterbaru').AsCurrency;
                             data_angkameterlama.AsCurrency:=Qdaftar.fieldbyname('angkameterlama').AsCurrency;
                             data_ukuranbaru.AsString:=Qdaftar.fieldbyname('ukuranbaru').AsString;
                             data_ukuranlama.AsString:=Qdaftar.fieldbyname('ukuranlama').AsString;
                             data_flag.AsString:=Qdaftar.fieldbyname('flag').AsString;

                          end;




                          data_.Post;

                          Progress.IncPartsByOne;
                          Application.ProcessMessages;
                          Qdaftar.Next;

                        end;


                        data_.First;

                   gtv.DataController.DataSource:=DSdaftar;
                   gtv2.DataController.DataSource:=DSdaftar;
                   gtv3.DataController.DataSource:=DSdaftar;


            EXCEPT ON E:Exception DO
            BEGIN
                 MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
            END;
            END;

            FINALLY
                Enabled:=true;
                Umain.Enabled:=true;
                Umain.host.close;
                Progress.Visible:=false;
            END;







end;

procedure TFRlistupdate.LihatFoto1Click(Sender: TObject);
var
    a:TStream;
    jpg:TJpegImage;
begin


  TRY

      Enabled:=false;
      Umain.Enabled:=false;

      Qfoto.close;
      Qfoto.SQL.Clear;
      Qfoto.SQL.Add('select * FROM gambar_usulan_koreksi WHERE nomorba=:nomorba AND periode=:periode');
      Qfoto.ParamByName('nomorba').AsString:=data_nomor.AsString;
      Qfoto.ParamByName('periode').AsString:=data_periode.AsString;
      Qfoto.Open;

      if Qfoto.RecordCount>0 then
      begin

        try

          cxPageControl1.ActivePage:=cxTabSheet3;

          a:=Qfoto.CreateBlobStream(Qfoto.FieldByName('foto'),bmread);
          jpg:=TJpegImage.Create;

          jpg.LoadFromStream(a);
          foto.Picture.Assign(jpg);

        finally    
            a.Free;
            jpg.Free;
        end;

      end
      else
      begin

        MessageDlg('Tidak Ada Foto Yang Di Lampirkan !!', mtInformation, [mbOk], 0);


      end;

  FINALLY
      Enabled:=true;
      Umain.Enabled:=true;
      Umain.host.close;
  END;
end;

procedure TFRlistupdate.cxButton1Click(Sender: TObject);
begin
cxPageControl1.ActivePage:=cxTabSheet2;
end;

procedure TFRlistupdate.gtvlistCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvlistjumlah.Index], varCurrency)>0)  then
    BEGIN
      IF (gtvlist.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin

        ACanvas.Canvas.Brush.Color :=  TColor($004F4FFF);
        ACanvas.Canvas.Font.Color := clWhite;

      END;
    end;

end;

procedure TFRlistupdate.GantiMeter;
begin

   // fak sial;
end;

procedure TFRlistupdate.gtv3DblClick(Sender: TObject);
var i:integer;
begin

     if data_flag.AsString='0' then
     begin


        DM.Xnosamb:=data_nosamb.AsString;

        Ucombo.isikombo;
        ugantimeter.kodediameterbaru.Properties.Items:=Ucombo.kodediameter.Properties.Items;
        ugantimeter.merkwm.Properties.Items:=Ucombo.merk.Properties.Items;

        ugantimeter.merklama.Text:=data_merkmeterlama.AsString;
        ugantimeter.kodediameterlama.Text:=data_ukuranlama.AsString;
        ugantimeter.serimeterlama.Text:=data_serimeterlama.AsString;
        ugantimeter.kodediameterbaru.Text:=data_ukuranbaru.AsString;
        ugantimeter.serimeterbaru.Text:=data_serimeterbaru.AsString;
        ugantimeter.nomorba.Text:=data_nomorba.AsString;
        ugantimeter.tanggal.Date:=data_tanggal.AsDateTime;
        ugantimeter.merkwm.Text:=data_merkmeterbaru.AsString;
        ugantimeter.tanggal.Enabled:=false;
        ugantimeter.nomorba.Enabled:=false;
        ugantimeter.merkwm.Enabled:=false;
        ugantimeter.kodediameterlama.Enabled:=false;

        
        if ugantimeter.showmodal=MrOk then
        begin


             try

                Enabled:=false;
                Umain.Enabled:=false;

                 try



                     DM.Qexec.Close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('START TRANSACTION');
                     DM.Qexec.Execute;

                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('START TRANSACTION');
                     Qhost.Execute;



                     // pelanggan
                     DM.Qexec.Close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('UPDATE pelanggan set kodediameter=:kodediameter,merk=:merkmeter,serimeter=:serimeter,tglmeter=:tglmeter where nosamb=:nosamb');
                     DM.Qexec.ParamByName('kodediameter').AsString:=ugantimeter.kodediameterbaru.Text;
                     DM.Qexec.ParamByName('merkmeter').AsString:=ugantimeter.merkwm.Text;
                     DM.Qexec.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
                     DM.Qexec.ParamByName('tglmeter').AsDate:=ugantimeter.tanggal.Date;
                     DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     DM.Qexec.Execute;

                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('UPDATE pelanggan set kodediameter=:kodediameter,merkmeter=:merkmeter,serimeter=:serimeter,tglmeter=:tglmeter where nosamb=:nosamb');
                     Qhost.ParamByName('kodediameter').AsString:=ugantimeter.kodediameterbaru.Text;
                     Qhost.ParamByName('merkmeter').AsString:=ugantimeter.merkwm.Text;
                     Qhost.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
                     Qhost.ParamByName('tglmeter').AsDate:=ugantimeter.tanggal.Date;
                     Qhost.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     Qhost.Execute;


                     //memo listupdate
                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('INSERT INTO memolistupdate (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                     DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.asstring;
                     DM.Qexec.ParamByName('tanggal').AsDate:=date;
                     DM.Qexec.ParamByName('tipe').AsString:='Ganti Meter';
                     DM.Qexec.ParamByName('uraian').AsString:='Ganti Meter : "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor BA : "'+data_nomorba.AsString+'"';
                     DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                     DM.Qexec.Execute;


                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('UPDATE pelanggan set kodediameter=:kodediameter,merkmeter=:merkmeter,serimeter=:serimeter,tglmeter=:tglmeter where nosamb=:nosamb');
                     Qhost.ParamByName('kodediameter').AsString:=ugantimeter.kodediameterbaru.Text;
                     Qhost.ParamByName('merkmeter').AsString:=ugantimeter.merkwm.Text;
                     Qhost.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
                     Qhost.ParamByName('tglmeter').AsDateTime:=ugantimeter.tanggal.Date;
                     Qhost.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                     Qhost.Execute;

                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('UPDATE ba_ganti_meter set serimeterbaru=:serimeter,flagprosesdata="1" where nomorba=:nomorba');
                     Qhost.ParamByName('serimeter').AsString:=ugantimeter.serimeterbaru.Text;
                     Qhost.ParamByName('nomorba').AsString:=ugantimeter.nomorba.Text;
                     Qhost.Execute;

                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('INSERT INTO verifikasi (nomorba,waktuverifikasi) values(:nomorba,NOW())');
                     Qhost.ParamByName('nomorba').AsString:=ugantimeter.nomorba.Text;
                     Qhost.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian,kodegol) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian,:kodegol) ');
                      DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                      DM.Qexec.ParamByName('tanggal').AsDate:=Now();
                      DM.Qexec.ParamByName('tipe').AsString:='Ganti Meter';
                      DM.Qexec.ParamByName('uraian').AsString:='Ganti Meter : "'+ugantimeter.kodediameterlama.Text+'" -> "'+ugantimeter.kodediameterbaru.Text+'" | Nomor/Seri : "'+ugantimeter.serimeterlama.Text+'" -> "'+ugantimeter.serimeterbaru.Text+'" | Alasan : "'+ugantimeter.alasan.Text+'" | Nomor B.A : "'+ugantimeter.nomorba.Text+'"';
                      DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                      DM.Qexec.Execute;


                     DM.uraianlogakses:='Ganti Meter: "'+data_lama.asstring+'" -> "'+data_baru.asstring+'" | Alasan : "'+data_keterangan.AsString+'" | Nomor BA : "'+data_nomorba.AsString+'"';
                     DM.targetlogakses:=data_nosamb.asstring;
                     DM.logakses;


                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('COMMIT');
                     Qhost.Execute;



                     DM.Qexec.Close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('COMMIT');
                     DM.Qexec.Execute;



                 except on e:Exception do
                 begin

                     MessageDlg(e.Message,mtError,[mbOK],0);

                     Qhost.Close;
                     Qhost.SQL.Clear;
                     Qhost.SQL.Add('ROLLBACK');
                     Qhost.Execute;

                     DM.Qexec.Close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('ROLLBACK');
                     DM.Qexec.Execute;




                 end;
                 end;


             finally
               //refresh.Click;
               Enabled:=true;
               Umain.Enabled:=true;
               Umain.host.close;

             end;

             // hitung ulang
             try

               Enabled:=false;
               Umain.Enabled:=false;

               try


                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('START TRANSACTION');
                     DM.Qexec.Execute;


                     Qperiodeterbaru.Close;
                     Qperiodeterbaru.SQL.Clear;
                     Qperiodeterbaru.SQL.Add('SELECT max(periode) as periode from periode');
                     Qperiodeterbaru.Open;


                     _periodeterbaru:=Qperiodeterbaru.fieldbyname('periode').AsString;

                     DM.Qcek.Close;
                     DM.Qcek.SQL.Clear;
                     DM.Qcek.SQL.Add('Select * from drd'+_periodeterbaru+' where nosamb=:nosamb');
                     DM.Qcek.ParamByName('nosamb').AsString:=data_nosamb.Text;
                     DM.Qcek.Open;



                     if(DM.Qcek.RecordCount>0) and (DM.Qcek.Fieldbyname('flagpublish').AsString='0') and (DM.Qcek.Fieldbyname('flagkirim').AsString='0')then
                     begin





                                      Qpel.Close;
                                      Qpel.SQL.Clear;
                                      Qpel.SQL.Add('select * FROM pelanggan WHERE nosamb=:nosamb');
                                      Qpel.ParamByName('nosamb').AsString:=DM.Xnosamb;
                                      Qpel.Open;



                                      Qgol1.close;
                                      Qgol1.SQL.Clear;
                                      Qgol1.SQL.Add('SELECT kodegolyangberlaku FROM golongan WHERE kodegol=:kodegol AND periodemulaiberlaku<='+_periodeterbaru+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                                      Qgol1.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                                      Qgol1.Open;




                                      Qdiameter.close;
                                      Qdiameter.SQL.Clear;
                                      Qdiameter.SQL.Add('SELECT kodediameteryangberlaku FROM diameter WHERE kodediameter=:kodediameter AND periodemulaiberlaku<='+_periodeterbaru+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                                      Qdiameter.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                                      Qdiameter.Open;



                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('update drd'+_periodeterbaru+' set serimeter=:serimeter,kodegolyangberlaku=:kodegolyangberlaku,kodediameteryangberlaku=:kodediameteryangberlaku,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,kodekelurahan=:kodekelurahan,');
                                      DM.Qexec.SQL.add('kodekolektif=:kodekolektif,flagaktif=:flagaktif,kodeadministrasilain=:kodeadministrasilain,kodepemeliharaanlain=:kodepemeliharaanlain,koderetribusilain=:koderetribusilain,kodeblok=:kodeblok,luasrumah=:luasrumah where nosamb=:nosamb ');
                                      DM.Qexec.ParamByName('nosamb').AsString:=DM.Xnosamb;
                                      DM.Qexec.ParamByName('serimeter').AsString:=Qpel.fieldbyname('serimeter').AsString;
                                      DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qgol1.fieldbyname('kodegolyangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                                      DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qdiameter.fieldbyname('kodediameteryangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                                      DM.Qexec.ParamByName('koderayon').AsString:=Qpel.fieldbyname('koderayon').AsString;
                                      DM.Qexec.ParamByName('kodekelurahan').AsString:=Qpel.fieldbyname('kodekelurahan').AsString;
                                      DM.Qexec.ParamByName('kodekolektif').AsString:=Qpel.fieldbyname('kodekolektif').AsString;
                                      DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qpel.fieldbyname('kodeadministrasilain').AsString;
                                      DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qpel.fieldbyname('kodepemeliharaanlain').AsString;
                                      DM.Qexec.ParamByName('koderetribusilain').AsString:=Qpel.fieldbyname('koderetribusilain').AsString;
                                      DM.Qexec.ParamByName('kodeblok').AsString:=Qpel.fieldbyname('kodeblok').AsString;
                                      DM.Qexec.ParamByName('luasrumah').AsCurrency:=Qpel.fieldbyname('luasrumah').AsCurrency;
                                      DM.Qexec.ParamByName('flagaktif').AsString:=Qpel.fieldbyname('status').AsString;
                                      DM.Qexec.Execute;



                                      hitungulang2();

                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('COMMIT');
                                      DM.Qexec.Execute;

                                      MessageDlg('Update Data Rekening Selesai...', mtInformation, [mbOK], 0);



                     end;


               except on e:Exception do
               begin


               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('ROLLBACK');
               DM.Qexec.Execute;

               MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);

               end;
               end;


             finally

               refresh.Click;
               Enabled:=true;
               Umain.Enabled:=true;
             end;




        end;

   end else
   begin
       MessageDlg('Data sudah diverifikasi, Silahkan lakukan perbarui data!',mtWarning,[mbOK],0);
       Exit;
   end;



end;

procedure TFRlistupdate.gtv3CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtv3Column1.Index], varString)='1')  then
    BEGIN
      IF (gtv3.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin

        ACanvas.Canvas.Brush.Color :=  TColor($004F4FFF);
        ACanvas.Canvas.Font.Color := clWhite;

      END;
    end;
end;

procedure TFRlistupdate.PerbaruiData1Click(Sender: TObject);
begin


                            DM.Xnosamb:=data_nosamb.AsString;


                              TRY
                                  Enabled:=false;
                                  TRY

                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('START TRANSACTION');
                                      DM.Qexec.Execute;

                                      Qhost.Close;
                                      Qhost.SQL.Clear;
                                      Qhost.SQL.Add('START TRANSACTION');
                                      Qhost.Execute;



                                      Qpel.Close;
                                      Qpel.SQL.Clear;
                                      Qpel.SQL.Add('select * FROM pelanggan WHERE nosamb=:nosamb');
                                      Qpel.ParamByName('nosamb').AsString:=DM.Xnosamb;
                                      Qpel.Open;



                                      Qgol1.close;
                                      Qgol1.SQL.Clear;
                                      Qgol1.SQL.Add('SELECT kodegolyangberlaku FROM golongan WHERE kodegol=:kodegol AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',uperbaruidata.periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                                      Qgol1.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                                      Qgol1.Open;




                                      Qdiameter.close;
                                      Qdiameter.SQL.Clear;
                                      Qdiameter.SQL.Add('SELECT kodediameteryangberlaku FROM diameter WHERE kodediameter=:kodediameter AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',uperbaruidata.periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                                      Qdiameter.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                                      Qdiameter.Open;



                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',uperbaruidata.periode.date)+' set serimeter=:serimeter,kodegolyangberlaku=:kodegolyangberlaku,kodediameteryangberlaku=:kodediameteryangberlaku,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,kodekelurahan=:kodekelurahan,');
                                      DM.Qexec.SQL.add('kodekolektif=:kodekolektif,flagaktif=:flagaktif,kodeadministrasilain=:kodeadministrasilain,kodepemeliharaanlain=:kodepemeliharaanlain,koderetribusilain=:koderetribusilain,kodeblok=:kodeblok,luasrumah=:luasrumah where nosamb=:nosamb ');
                                      DM.Qexec.ParamByName('nosamb').AsString:=DM.Xnosamb;
                                      DM.Qexec.ParamByName('serimeter').AsString:=Qpel.fieldbyname('serimeter').AsString;
                                      DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qgol1.fieldbyname('kodegolyangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                                      DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qdiameter.fieldbyname('kodediameteryangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                                      DM.Qexec.ParamByName('koderayon').AsString:=Qpel.fieldbyname('koderayon').AsString;
                                      DM.Qexec.ParamByName('kodekelurahan').AsString:=Qpel.fieldbyname('kodekelurahan').AsString;
                                      DM.Qexec.ParamByName('kodekolektif').AsString:=Qpel.fieldbyname('kodekolektif').AsString;
                                      DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qpel.fieldbyname('kodeadministrasilain').AsString;
                                      DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qpel.fieldbyname('kodepemeliharaanlain').AsString;
                                      DM.Qexec.ParamByName('koderetribusilain').AsString:=Qpel.fieldbyname('koderetribusilain').AsString;
                                      DM.Qexec.ParamByName('kodeblok').AsString:=Qpel.fieldbyname('kodeblok').AsString;
                                      DM.Qexec.ParamByName('luasrumah').AsCurrency:=Qpel.fieldbyname('luasrumah').AsCurrency;
                                      DM.Qexec.ParamByName('flagaktif').AsString:=Qpel.fieldbyname('status').AsString;
                                      DM.Qexec.Execute;



                                      hitungulang2();



                                      Qhost.Close;
                                      Qhost.SQL.Clear;
                                      Qhost.SQL.Add('COMMIT');
                                      Qhost.Execute;

                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('COMMIT');
                                      DM.Qexec.Execute;

                                      MessageDlg('Update Data Rekening Selesai...', mtInformation, [mbOK], 0);



                                  EXCEPT ON E:Exception DO
                                  BEGIN

                                       Qhost.Close;
                                       Qhost.SQL.Clear;
                                       Qhost.SQL.Add('ROLLBACK');
                                       Qhost.Execute;

                                       DM.Qexec.close;
                                       DM.Qexec.SQL.Clear;
                                       DM.Qexec.SQL.Add('ROLLBACK');
                                       DM.Qexec.Execute;

                                       MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);
                                  END;
                                  END;

                              FINALLY 
                                  Enabled:=true;
                                  refresh.Click;
                              END;




end;

procedure TFRlistupdate.ProsesAllClick(Sender: TObject);
var
  j,i:integer;
begin
//  if list_jenis.AsString='KOREKSI REKENING ABODEMEN ( AIR )'  then
//  begin

  //==============================

    if(data_.RecordCount>0)then
    begin

      if MessageDlg('Koreksi && Upload Semua Data yang Tampil??' , mtConfirmation, [mbYes,mbNo], 0)=mrYes then
      begin
        data_.First;

        uloading.proses.Caption:='Koreksi && Upload Rekening...';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=data_.RecordCount;
        uloading.proses.Visible:=true;
        uloading.Progress.Visible:=true;
        uloading.Show;
        Application.ProcessMessages;

              for j:=1 to data_.RecordCount do
              begin

                 if data_flaglunas.AsString='0' then
                 begin

                    unpublish;

                    koreksirekabodemen;

                    DM.Qexec.Close;
                    DM.Qexec.SQL.clear;
                    DM.Qexec.SQL.Add('UPDATE '+ukoreksistan.tabel+' SET ');
                    DM.Qexec.SQl.Add('flagkoreksi="1",');
                    DM.Qexec.SQl.Add('flagkirim="0",');
                    DM.Qexec.SQl.Add('stanlalu=:stanlalu,');
                    DM.Qexec.SQl.Add('stanskrg=:stanskrg,');
                    DM.Qexec.SQl.Add('stanangkat=:stanangkat,');
                    DM.Qexec.SQl.Add('pakai=:pakai,');
                    DM.Qexec.SQl.Add('pakai2=:pakai2,');
                    DM.Qexec.SQl.Add('kelainan=:kelainan,');
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
                    DM.Qexec.SQl.Add('tglkoreksi=NOW(),');
                    DM.Qexec.SQl.Add('userkoreksi=:user,');
                    DM.Qexec.SQl.Add('rekair=:rekair,');
                    DM.Qexec.SQl.Add('dendatunggakan=:dendatunggakan,');
                    DM.Qexec.SQl.Add('ppn=:ppn,');
                    DM.Qexec.SQl.Add('total=:total,');
                    DM.Qexec.SQl.Add('pembacameter=:pembacameter');
                    DM.Qexec.SQl.Add('WHERE nosamb=:nosamb AND flagpublish="0" AND flaglunas="0"');
                    DM.Qexec.ParamByName('nosamb').AsString := data_nosamb.AsString;
                    DM.Qexec.ParamByName('blok1').AsCurrency := ukoreksistan.blok1;
                    DM.Qexec.ParamByName('blok2').AsCurrency := ukoreksistan.blok2;
                    DM.Qexec.ParamByName('blok3').AsCurrency := ukoreksistan.blok3;
                    DM.Qexec.ParamByName('blok4').AsCurrency := ukoreksistan.blok4;
                    DM.Qexec.ParamByName('blok5').AsCurrency := ukoreksistan.blok5;
                    DM.Qexec.ParamByName('prog1').AsCurrency := ukoreksistan.prog1;
                    DM.Qexec.ParamByName('prog2').AsCurrency := ukoreksistan.prog2;
                    DM.Qexec.ParamByName('prog3').AsCurrency := ukoreksistan.prog3;
                    DM.Qexec.ParamByName('prog4').AsCurrency := ukoreksistan.prog4;
                    DM.Qexec.ParamByName('prog5').AsCurrency := ukoreksistan.prog5;
                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency := ukoreksistan.biayapemakaian.Value;
                    DM.Qexec.ParamByName('administrasi').AsCurrency := ukoreksistan.administrasi.Value;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency := ukoreksistan.pemeliharaan.Value;
                    DM.Qexec.ParamByName('pelayanan').AsCurrency := ukoreksistan.pelayanan.Value;
                    DM.Qexec.ParamByName('retribusi').AsCurrency := ukoreksistan.retribusi.Value;
                    DM.Qexec.ParamByName('airlimbah').AsCurrency := ukoreksistan.airlimbah.Value;
                    DM.Qexec.ParamByName('dendapakai0').AsCurrency := ukoreksistan.dendapakai0.Value;
                    DM.Qexec.ParamByName('administrasilain').AsCurrency := ukoreksistan.admlain.Value;
                    DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := ukoreksistan.pemlain.Value;
                    DM.Qexec.ParamByName('retribusilain').AsCurrency := ukoreksistan.retlain.Value;
                    DM.Qexec.ParamByName('meterai').AsCurrency := ukoreksistan.meterai.Value;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency := ukoreksistan.dendatunggakan.Value;
                    DM.Qexec.ParamByName('ppn').AsCurrency := ukoreksistan.ppn.Value;
                    DM.Qexec.ParamByName('rekair').AsCurrency := ukoreksistan.rekair.Value;
                    DM.Qexec.ParamByName('total').AsCurrency := ukoreksistan.total.Value;
                    DM.Qexec.ParamByName('stanlalu').AsCurrency := ukoreksistan.stanlalu.Value;
                    DM.Qexec.ParamByName('stanskrg').AsCurrency := ukoreksistan.stankini.Value;
                    DM.Qexec.ParamByName('stanangkat').AsCurrency := ukoreksistan.stanangkat.Value;
                    DM.Qexec.ParamByName('pakai').AsCurrency := ukoreksistan.pakai.Value;

                    if(ukoreksistan.pakai.Value<ukoreksistan.minpakai.Value) then
                        DM.Qexec.ParamByName('pakai2').AsCurrency := ukoreksistan.minpakai.Value
                    else
                        DM.Qexec.ParamByName('pakai2').AsCurrency := ukoreksistan.pakai.Value;

            
                    DM.Qexec.ParamByName('kelainan').AsString := ukoreksistan.kelainan.text;
                    DM.Qexec.ParamByName('pembacameter').AsString := ukoreksistan.pembacameter.text;
                    DM.Qexec.ParamByName('user').AsString := Umain.user.Caption;  
                    DM.Qexec.Execute;

//                    flagusulankoreksi:='0';


                       publish;

                       uploadabodemen;

                       selesai;


                 

                if list_jenis.AsString='KOREKSI REKENING ABODEMEN ( AIR )'  then
                  DM.uraianlogakses:='Koreksi Rekening Abodemen (ALL) nosamb : '+data_nosamb.AsString+' Rekening Bulan '+data_periode.AsString
                else
                if list_jenis.AsString='KOREKSI REKENING PEMAKAIAN ( AIR )'  then
                  DM.uraianlogakses:='Koreksi Rekening Pemakaian (ALL) nosamb : '+data_nosamb.AsString+' Rekening Bulan '+data_periode.AsString
                else
                  DM.uraianlogakses:='Koreksi Rekening Air (ALL) nosamb : '+data_nosamb.AsString+' Rekening Bulan '+data_periode.AsString;

                DM.targetlogakses:=data_nosamb.AsString;
                DM.logakses;

              end;

            uloading.Progress.IncPartsByOne;
            data_.Next;
            end;

          uloading.proses.Visible:=false;
          uloading.Progress.Visible:=false;
          uloading.Close;
         
          if list_jenis.AsString='KOREKSI REKENING ABODEMEN ( AIR )'  then
            MessageDlg('Koreksi Rekening Abodemen (ALL), SELESAI' , mtInformation, [mbOK], 0)
          else
          if list_jenis.AsString='KOREKSI REKENING PEMAKAIAN ( AIR )'  then
            MessageDlg('Koreksi Rekening Pemakaian (ALL), SELESAI' , mtInformation, [mbOK], 0)
          else
            MessageDlg('Koreksi Rekening Air (ALL), SELESAI' , mtInformation, [mbOK], 0);

          refresh.Click;

        end
        else
          exit;


    end;
//==============================

//  end;

end;

procedure TFRlistupdate.nosambClick(Sender: TObject);
begin
   if nosamb.Checked=true then
   begin
     txt_nosamb.Enabled:=true;
   end
   else
    txt_nosamb.Enabled:=false;

end;

procedure TFRlistupdate.namaClick(Sender: TObject);
begin
  if nama.Checked=true then
  begin
    txt_nama.Enabled:=true;
  end
  else
    txt_nama.Enabled:=false;

end;

procedure TFRlistupdate.txt_nosambKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    refresh.Click;
    cxGrid2.SetFocus;
  end;

end;

procedure TFRlistupdate.txt_namaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    refresh.Click;
    cxGrid2.SetFocus; 
  end;

end;

end.