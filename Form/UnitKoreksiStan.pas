unit UnitKoreksiStan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,
  Menus, cxMemo, cxTextEdit, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCheckBox, cxLabel, cxCurrencyEdit, RzLabel, DB, MemDS,
  DBAccess, MyAccess, ComCtrls, dxCore, cxDateUtils, cxCalendar, ActnList,
  ExtCtrls, RzPanel, cxImage, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC,
  dxSkinOffice2013White;

type
  Tukoreksistan = class(TForm)
    lewati: TcxButton;
    Qgol: TMyQuery;
    Qdia: TMyQuery;
    Qmeterai: TMyQuery;
    tglmulaidenda1: TcxDateEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    KoreksiBP: TAction;
    RzPanel1: TRzPanel;
    minus: TRzLabel;
    pakai: TcxCurrencyEdit;
    minpakai: TcxCurrencyEdit;
    biayapemakaian: TcxCurrencyEdit;
    administrasi: TcxCurrencyEdit;
    pemeliharaan: TcxCurrencyEdit;
    pelayanan: TcxCurrencyEdit;
    retribusi: TcxCurrencyEdit;
    airlimbah: TcxCurrencyEdit;
    dendapakai0: TcxCurrencyEdit;
    meterai: TcxCurrencyEdit;
    rekair: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel16: TcxLabel;
    cekpakai: TcxCheckBox;
    kelainan: TcxComboBox;
    cekadakelainan: TcxCheckBox;
    stanangkat: TcxCurrencyEdit;
    cekstanangkat: TcxCheckBox;
    stankini: TcxCurrencyEdit;
    cekstankini: TcxCheckBox;
    stanlalu: TcxCurrencyEdit;
    cekstanlalu: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel3: TcxLabel;
    total: TcxCurrencyEdit;
    Qadministrasilain: TMyQuery;
    Qpemeliharaanlain: TMyQuery;
    tglmulaidenda2: TcxDateEdit;
    admlain: TcxCurrencyEdit;
    pemlain: TcxCurrencyEdit;
    btnKeluar: TcxButton;
    btnOK: TcxButton;
    retlain: TcxCurrencyEdit;
    Qretribusilain: TMyQuery;
    cxLabel24: TcxLabel;
    pembacameter: TcxComboBox;
    cxLabel25: TcxLabel;
    ppn: TcxCurrencyEdit;
    tglmulaidenda3: TcxDateEdit;
    tglmulaidenda4: TcxDateEdit;
    tglmulaidenda5: TcxDateEdit;
    cxLabel1: TcxLabel;
    dendatunggakan: TcxCurrencyEdit;
    RzPanel8: TRzPanel;
    cektaksasi: TcxCheckBox;
    Qadm: TMyQuery;
    QgolIPL: TMyQuery;
    procedure stanlaluPropertiesChange(Sender: TObject);
    procedure stankiniPropertiesChange(Sender: TObject);
    procedure stanangkatPropertiesChange(Sender: TObject);
    procedure pakaiPropertiesChange(Sender: TObject);
    procedure cekstanlaluClick(Sender: TObject);
    procedure cekstankiniClick(Sender: TObject);
    procedure cekstanangkatClick(Sender: TObject);
    procedure cekpakaiClick(Sender: TObject);
    procedure cekadakelainanClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure foto1DblClick(Sender: TObject);
    procedure foto2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure KoreksiBPExecute(Sender: TObject);
    procedure biayapemakaianPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations } 

    blok1,blok2,blok3,blok4,blok5:Currency;
    prog1,prog2,prog3,prog4,prog5:Currency;
    bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
    t1,t2,t3,t4,t5:Currency;
    tetap1,tetap2,tetap3,tetap4,tetap5:String;
    progipl1,progipl2,progipl3,progipl4,progipl5,progipl6,progipl7:Currency;
    bbipl1,bbipl2,bbipl3,bbipl4,bbipl5,bbipl6,bbipl7,baipl1,baipl2,baipl3,baipl4,baipl5,baipl6,baipl7:Currency;
    tipl1,tipl2,tipl3,tipl4,tipl5,tipl6,tipl7:Currency;
    tetapipl1,tetapipl2,tetapipl3,tetapipl4,tetapipl5,tetapipl6,tetapipl7:String;
    tabel:String;
    blnfoto1,blnfoto2:String;
    xdendapakai0,xakumulasi:Currency;
    fixpakai,fixpakaiipl,akumulasi,xbiayaipl,xppnipl:Currency;
    trf_dendatunggakan,trf_dendatunggakan2,trf_dendatunggakan3,trf_dendatunggakan4,trf_dendatunggakanperbulan:Currency;
    _biayapemakaian,_rekair,_total : Currency;
    _kodekondisimeter:String;
    _flagaktif:String;
    _tipekoreksi:String;
    _taksasi:String;
//    _periode_rek:String;
    flagusulankoreksi:Char;
    
    procedure hitung();
    function fungsiterbilang(sValue: string):string;

  end;

var
  ukoreksistan: Tukoreksistan;

implementation

{$R *.dfm} uses Module, UnitMain, UnitCombo, FRAME_rekening,
  DateUtils;

procedure Tukoreksistan.stanlaluPropertiesChange(Sender: TObject);
begin
  if _tipekoreksi<>'2' then
  begin
    if(cekstanlalu.Checked=true) then
      if (stanangkat.Value <> 0 ) then
        pakai.Value := stanangkat.Value - stanlalu.Value + stankini.Value
      else
        pakai.Value := stankini.Value - stanlalu.Value;;
  end;
end;

procedure Tukoreksistan.stankiniPropertiesChange(Sender: TObject);
begin
  if _tipekoreksi<>'2' then
  begin
         if(cekstankini.Checked=true) then
          if (stanangkat.Value <> 0 ) then
                 pakai.Value := stanangkat.Value - stanlalu.Value + stankini.Value


          else
                pakai.Value := stankini.Value - stanlalu.Value;
  end;
end;

procedure Tukoreksistan.stanangkatPropertiesChange(Sender: TObject);
begin
  if _tipekoreksi<>'2' then
  begin
    if(cekstanangkat.Checked=true) then
      pakai.Value := stanangkat.Value - stanlalu.Value + stankini.Value;
  end;

end;

procedure Tukoreksistan.pakaiPropertiesChange(Sender: TObject);
begin
      if _tipekoreksi<>'2' then
      begin

         IF(cekpakai.Checked=true) then begin
          if (stanangkat.Value <> 0 ) then
            pakai.Value := stanangkat.Value - stanlalu.Value + stankini.Value
          else
            stankini.Value := stanlalu.Value + pakai.Value;
         END;
      end;

      if(pakai.Value<0)then
        minus.Visible:=true
      else
        minus.Visible:=false;

      hitung;
end;

procedure Tukoreksistan.hitung();
var
dendaperbulan:Currency;
i:integer;
hari: longint;
banyakbulan:integer;
tanggal:Tdate;
dumpadm:currency;
xadmlain,xpemlain,xretlain:Currency;

begin



//


  Qgol.close;
  Qgol.SQL.Clear;
  Qgol.SQL.Add(Qgol.SQLRefresh.Text);
  Qgol.ParamByName('kodegolyangberlaku').AsString:=DM.Xkodegolyangberlaku;
  Qgol.Open;

  QgolIPL.close;
  QgolIPL.SQL.Clear;
  QgolIPL.SQL.Add(QgolIPL.SQLRefresh.Text);
  QgolIPL.ParamByName('kodegolyangberlaku').AsString:=DM.XkodegolIPLyangberlaku;
  QgolIPL.Open;

  Qdia.close;
  Qdia.SQL.Clear;
  Qdia.SQL.Add(Qdia.SQLRefresh.Text);
  Qdia.ParamByName('kodediameteryangberlaku').AsString:=DM.Xkodediameteryangbrlaku;
  Qdia.Open;

  Qadministrasilain.close;
  Qadministrasilain.SQL.Clear;
  Qadministrasilain.SQL.Add(Qadministrasilain.SQLRefresh.Text);
  Qadministrasilain.ParamByName('kode').AsString:=DM.xkodeadmlain;
  Qadministrasilain.Open;


  Qpemeliharaanlain.close;
  Qpemeliharaanlain.SQL.Clear;
  Qpemeliharaanlain.SQL.Add(Qpemeliharaanlain.SQLRefresh.Text);
  Qpemeliharaanlain.ParamByName('kode').AsString:=DM.xkodepemlain;
  Qpemeliharaanlain.Open;

  Qretribusilain.close;
  Qretribusilain.SQL.Clear;
  Qretribusilain.SQL.Add(Qretribusilain.SQLRefresh.Text);
  Qretribusilain.ParamByName('kode').AsString:=DM.xkoderetlain;
  Qretribusilain.Open;

  Qmeterai.close;
  Qmeterai.SQL.Clear;
  Qmeterai.SQL.Add(Qmeterai.SQLRefresh.Text);
  Qmeterai.ParamByName('periode').AsString:=DM.Xperiode;
  Qmeterai.Open;

  Qadm.close;
  Qadm.SQL.Clear;
  Qadm.SQL.Add(Qadm.SQLRefresh.Text);
  Qadm.ParamByName('periode').AsString:=DM.Xperiode;
  Qadm.Open;


  administrasi.Value:=Qgol.fieldbyname('administrasi').AsCurrency+
                 Qdia.fieldbyname('administrasi').AsCurrency;

  if pakai.Value>0 then
    administrasi.Value:=administrasi.Value*pakai.Value
  else
    administrasi.Value:=500;

  admlain.Value:= Qadministrasilain.fieldbyname('administrasilain').AsCurrency;


  /////JIKA KONDISI METERNYA 4 ( TANPA METER ) TIDAK KENA PEMELIHARAAN

  if _kodekondisimeter='4' then
  begin
    pemeliharaan.Value:=0;
    pemlain.Value:=0;
  end
  else
  begin

    pemeliharaan.Value:=Qgol.fieldbyname('pemeliharaan').AsCurrency+
                 Qdia.fieldbyname('pemeliharaan').AsCurrency;

    pemlain.Value:= Qpemeliharaanlain.fieldbyname('pemeliharaanlain').AsCurrency;

  end;


  if DM._administrasi_lain_drd='0' then
     xadmlain:=0
  else
    xadmlain:=admlain.Value;

  if DM._pemeliharaan_lain_drd='0' then
     xpemlain:=0
  else
    xpemlain:=pemlain.Value;

  if DM._retribusi_lain_drd='0' then
     xretlain:=0
  else
    xretlain:=retlain.Value;


  pelayanan.Value:=Qgol.fieldbyname('pelayanan').AsCurrency+
              Qdia.fieldbyname('pelayanan').AsCurrency;


  airlimbah.Value:=Qgol.fieldbyname('airlimbah').AsCurrency+
              Qdia.fieldbyname('airlimbah').AsCurrency;

  xdendapakai0:=Qgol.fieldbyname('dendapakai0').AsCurrency+
                Qdia.fieldbyname('dendapakai0').AsCurrency;





  bb1:=Qgol.fieldbyname('bb1').AsCurrency;
  bb2:=Qgol.fieldbyname('bb2').AsCurrency;
  bb3:=Qgol.fieldbyname('bb3').AsCurrency;
  bb4:=Qgol.fieldbyname('bb4').AsCurrency;
  bb5:=Qgol.fieldbyname('bb5').AsCurrency;
  ba1:=Qgol.fieldbyname('ba1').AsCurrency;
  ba2:=Qgol.fieldbyname('ba2').AsCurrency;
  ba3:=Qgol.fieldbyname('ba3').AsCurrency;
  ba4:=Qgol.fieldbyname('ba4').AsCurrency;
  ba5:=Qgol.fieldbyname('ba5').AsCurrency;
  t1:=Qgol.fieldbyname('t1').AsCurrency;
  t2:=Qgol.fieldbyname('t2').AsCurrency;
  t3:=Qgol.fieldbyname('t3').AsCurrency;
  t4:=Qgol.fieldbyname('t4').AsCurrency;
  t5:=Qgol.fieldbyname('t5').AsCurrency;
  tetap1:=Qgol.fieldbyname('t1_tetap').AsString;
  tetap2:=Qgol.fieldbyname('t2_tetap').AsString;
  tetap3:=Qgol.fieldbyname('t3_tetap').AsString;
  tetap4:=Qgol.fieldbyname('t4_tetap').AsString;
  tetap5:=Qgol.fieldbyname('t5_tetap').AsString;
  minpakai.Value:=Qgol.fieldbyname('minpakai').AsCurrency;

  bbipl1:=QgolIPL.fieldbyname('bb1').AsCurrency;
  bbipl2:=QgolIPL.fieldbyname('bb2').AsCurrency;
  bbipl3:=QgolIPL.fieldbyname('bb3').AsCurrency;
  bbipl4:=QgolIPL.fieldbyname('bb4').AsCurrency;
  bbipl5:=QgolIPL.fieldbyname('bb5').AsCurrency;
  bbipl6:=QgolIPL.fieldbyname('bb6').AsCurrency;
  bbipl7:=QgolIPL.fieldbyname('bb7').AsCurrency;
  baipl1:=QgolIPL.fieldbyname('ba1').AsCurrency;
  baipl2:=QgolIPL.fieldbyname('ba2').AsCurrency;
  baipl3:=QgolIPL.fieldbyname('ba3').AsCurrency;
  baipl4:=QgolIPL.fieldbyname('ba4').AsCurrency;
  baipl5:=QgolIPL.fieldbyname('ba5').AsCurrency;
  baipl6:=QgolIPL.fieldbyname('ba6').AsCurrency;
  baipl7:=QgolIPL.fieldbyname('ba7').AsCurrency;
  tipl1:=QgolIPL.fieldbyname('t1').AsCurrency;
  tipl2:=QgolIPL.fieldbyname('t2').AsCurrency;
  tipl3:=QgolIPL.fieldbyname('t3').AsCurrency;
  tipl4:=QgolIPL.fieldbyname('t4').AsCurrency;
  tipl5:=QgolIPL.fieldbyname('t5').AsCurrency;
  tipl6:=QgolIPL.fieldbyname('t6').AsCurrency;
  tipl7:=QgolIPL.fieldbyname('t7').AsCurrency;
  tetapipl1:=QgolIPL.fieldbyname('t1_tetap').AsString;
  tetapipl2:=QgolIPL.fieldbyname('t2_tetap').AsString;
  tetapipl3:=QgolIPL.fieldbyname('t3_tetap').AsString;
  tetapipl4:=QgolIPL.fieldbyname('t4_tetap').AsString;
  tetapipl5:=QgolIPL.fieldbyname('t5_tetap').AsString;
  tetapipl6:=QgolIPL.fieldbyname('t6_tetap').AsString;
  tetapipl7:=QgolIPL.fieldbyname('t7_tetap').AsString;

  
//cari fixpakai

  if(minpakai.Value>0) and (minpakai.Value>pakai.Value)then
    fixpakai:=minpakai.Value
  else
    fixpakai:=pakai.Value;

//cek apakah ada denda pakai0

   if(pakai.Value=0)then
    dendapakai0.Value:= xdendapakai0
    else
    dendapakai0.Value:=0;

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

  {if(_flagaktif='3') then
  begin

    prog1:=0;
    prog2:=0;
    prog3:=0;
    prog4:=0;
    prog5:=0;
    biayapemakaian.Value:=0;
  end
  else
  begin 
    biayapemakaian.Value:=prog1+prog2+prog3+prog4+prog5;
  end;}

   if (_tipekoreksi='1') then
     biayapemakaian.Value:=0
   else
   if (DM._segel_tanpa_biaya_pakai='1') and (_flagaktif='2') then
     biayapemakaian.Value:=0
   else
   if (DM._putus_sementara_tanpa_biaya_pakai='1') and (_flagaktif='3') then
     biayapemakaian.Value:=0
   else
     biayapemakaian.Value:=prog1+prog2+prog3+prog4+prog5;

  if(biayapemakaian.Value>=Qadm.FieldByName('batasadm1').AsCurrency) and (biayapemakaian.Value<Qadm.FieldByName('batasadm2').AsCurrency) then
   administrasi.Value:=administrasi.Value+Qadm.FieldByName('administrasi1').AsCurrency
  else
  if(biayapemakaian.Value>=Qadm.FieldByName('batasadm2').AsCurrency) and (biayapemakaian.Value<Qadm.FieldByName('batasadm3').AsCurrency) then
   administrasi.Value:=administrasi.Value+Qadm.FieldByName('administrasi2').AsCurrency
  else
  if(biayapemakaian.Value>=Qadm.FieldByName('batasadm3').AsCurrency) then
   administrasi.Value:=administrasi.Value+Qadm.FieldByName('administrasi3').AsCurrency
  else
   administrasi.Value:=administrasi.Value;

   xppnipl:=QgolIPL.fieldbyname('ppn').AsCurrency;

   if (DM.Xflagpel='3') then
   begin
       xbiayaipl:=0;
       administrasi.Value:=0;
       ppn.Value:=0
   end
   else
   begin
       xbiayaipl:=progipl1+progipl2+progipl3+progipl4+progipl5+progipl6+progipl7;
       ppn.Value:=round((xbiayaipl+administrasi.Value+pemeliharaan.Value)*xppnipl/100);
   end;

   retribusi.Value:=xbiayaipl+Qgol.fieldbyname('retribusi').AsCurrency+
              Qdia.fieldbyname('retribusi').AsCurrency+
             (Qgol.fieldbyname('retribusi_pakai').AsCurrency*pakai.Value);

   retlain.Value:= Qretribusilain.fieldbyname('retribusilain').AsCurrency;



  akumulasi:=biayapemakaian.Value+
             administrasi.Value+
             pemeliharaan.Value+
             pelayanan.Value+
             retribusi.Value+
             airlimbah.Value+
             dendapakai0.Value+
             admlain.Value+
             pemlain.Value+
             retlain.Value+
             ppn.Value;

      if (DM.Xflagpel='3') then
      begin
        meterai.Value:=0;
      end
      else
      begin
        if(akumulasi>=Qmeterai.FieldByName('batas1').AsCurrency) and
          (akumulasi<Qmeterai.FieldByName('batas2').AsCurrency) then
          meterai.Value:=Qmeterai.FieldByName('meterai1').AsCurrency
        else if(akumulasi>=Qmeterai.FieldByName('batas2').AsCurrency) and
          (akumulasi<Qmeterai.FieldByName('batas3').AsCurrency) then
          meterai.Value:=Qmeterai.FieldByName('meterai2').AsCurrency
        else if(akumulasi>=Qmeterai.FieldByName('batas3').AsCurrency)then
          meterai.Value:=Qmeterai.FieldByName('meterai3').AsCurrency
        else
          meterai.Value:=0;
      end;

      rekair.Value:=biayapemakaian.Value+
                       administrasi.Value+
                       pemeliharaan.Value+
                       pelayanan.Value+
                       retribusi.Value+
                       airlimbah.Value+
                       dendapakai0.Value+
                       xadmlain+
                       xpemlain+
                       xretlain+
                       ppn.Value+
                       meterai.Value;







 if (DM.xppndaritotal='1') and  (DM.xflagpel<>'2')then
 begin

         //dendaperbulan


         dendaperbulan:=0;


        if(date>=tglmulaidenda4.date) then
        begin

            tanggal:=tglmulaidenda4.date;

            hari:=Trunc(Date-tglmulaidenda4.Date);

            banyakbulan:=1;

              for i:=1 to hari do
              begin

                    tanggal:=IncDay(tanggal,+1);

                    if(DayOf(tanggal)=DayOf(tglmulaidenda4.date))then
                    begin
                      banyakbulan:=banyakbulan+1; 
                    end;

              end;



        end
        else
           banyakbulan:=0;

           


          dendaperbulan:=banyakbulan*trf_dendatunggakanperbulan;

          
       if(trf_dendatunggakan4>0) and (Date>=DateOf(tglmulaidenda5.date)) then
       begin
          dendatunggakan.Value:=trf_dendatunggakan4 + dendaperbulan;
       end
       else if(trf_dendatunggakan3>0) and (Date>=DateOf(tglmulaidenda3.date)) then
       begin
          dendatunggakan.Value:=trf_dendatunggakan3 + dendaperbulan;
       end
       else if(trf_dendatunggakan2>0) and (Date>=DateOf(tglmulaidenda2.date)) then
       begin
          dendatunggakan.Value:=trf_dendatunggakan2 + dendaperbulan;
       end
       else if(trf_dendatunggakan>0) and (Date>=DateOf(tglmulaidenda1.date)) then
       begin
          dendatunggakan.Value:=trf_dendatunggakan + dendaperbulan;
       end
       else
         dendatunggakan.Value:=0+dendaperbulan;  

 end
 else
  dendatunggakan.Value:=0;  



  if(DM.xppndaritotal='1')then
  begin
     ppn.Value:=ppn.Value+round((biayapemakaian.Value+dendatunggakan.Value)*Qgol.fieldbyname('ppn').AsCurrency/100);
  end
  else
  begin
    ppn.Value:=ppn.Value+round(biayapemakaian.Value*Qgol.fieldbyname('ppn').AsCurrency/100);
  end;

  total.Value:=rekair.Value+dendatunggakan.Value;


end;

procedure Tukoreksistan.cekstanlaluClick(Sender: TObject);
begin
 if(cekstanlalu.Checked=true)then
    begin
      stanlalu.Enabled:=true;
      stanlalu.SetFocus;
      pakai.Enabled:=false;
      stanangkat.Enabled:=false;
      stankini.Enabled:=false;
      cekstanangkat.Checked:=false;
      cekstankini.Checked:=false;
      cekpakai.Checked:=false;
    end;;
end;

procedure Tukoreksistan.cekstankiniClick(Sender: TObject);
begin
 if(cekstankini.Checked=true)then begin
    stankini.Enabled:=true;
    stankini.SetFocus;
    stanlalu.Enabled:=false;
    stanangkat.Enabled:=false;
    pakai.Enabled:=false;
    cekstanangkat.Checked:=false;
    cekstanlalu.Checked:=false;
    cekpakai.Checked:=false;
    end;;
end;

procedure Tukoreksistan.cekstanangkatClick(Sender: TObject);
begin
 if(cekstanangkat.Checked=true)then begin
    stanangkat.Enabled:=true;
    stanangkat.SetFocus;
    stanlalu.Enabled:=false;
    pakai.Enabled:=false;
    stankini.Enabled:=false;   
    cekstanlalu.Checked:=false;
    cekstankini.Checked:=false;
    cekpakai.Checked:=false;
    end;;
end;

procedure Tukoreksistan.cekpakaiClick(Sender: TObject);
begin
  if(cekpakai.Checked=true)then begin
      pakai.Enabled:=true;
      pakai.SetFocus;
      stanlalu.Enabled:=false;
      stanangkat.Enabled:=false;
      stankini.Enabled:=false;
      cekstanangkat.Checked:=false;
      cekstanlalu.Checked:=false;
      cekstankini.Checked:=false;

  end;;
end;

procedure Tukoreksistan.cekadakelainanClick(Sender: TObject);
begin
if(cekadakelainan.Checked=true)then begin
  kelainan.Enabled:=true;
end
else
begin
  kelainan.Enabled:=false;
  kelainan.Text:='';
  end;
end;

procedure Tukoreksistan.btnOKClick(Sender: TObject);
begin
        if flagusulankoreksi='1' then
        begin
          FRAME_listupdate.unpublish;
        end;
        
        DM.Qexec.Close;
        DM.Qexec.SQL.clear;
        DM.Qexec.SQL.Add('UPDATE '+tabel+' SET ');
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
        DM.Qexec.ParamByName('nosamb').AsString := DM.Xnosamb;
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
        DM.Qexec.ParamByName('biayapemakaian').AsCurrency := biayapemakaian.Value;
        DM.Qexec.ParamByName('pelayanan').AsCurrency := pelayanan.Value;
        DM.Qexec.ParamByName('airlimbah').AsCurrency := airlimbah.Value;
        DM.Qexec.ParamByName('dendapakai0').AsCurrency := dendapakai0.Value;

        if DM._administrasi_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := administrasi.Value;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := admlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('administrasi').AsCurrency := administrasi.Value+admlain.Value;
           DM.Qexec.ParamByName('administrasilain').AsCurrency := 0;
        end;

        if DM._pemeliharaan_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := pemeliharaan.Value;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := pemlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('pemeliharaan').AsCurrency := pemeliharaan.Value+pemlain.Value;
           DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency := 0;
        end;

        if DM._retribusi_lain_drd='0' then
        begin
           DM.Qexec.ParamByName('retribusi').AsCurrency := retribusi.Value;
           DM.Qexec.ParamByName('retribusilain').AsCurrency := retlain.Value;
        end
        else
        begin
           DM.Qexec.ParamByName('retribusi').AsCurrency := retribusi.Value+retlain.Value;
           DM.Qexec.ParamByName('retribusilain').AsCurrency := 0;
        end;

        DM.Qexec.ParamByName('meterai').AsCurrency := meterai.Value;
        DM.Qexec.ParamByName('dendatunggakan').AsCurrency := dendatunggakan.Value;
        DM.Qexec.ParamByName('ppn').AsCurrency := ppn.Value;
        DM.Qexec.ParamByName('rekair').AsCurrency := rekair.Value;
        DM.Qexec.ParamByName('total').AsCurrency := total.Value;
        DM.Qexec.ParamByName('stanlalu').AsCurrency := stanlalu.Value;
        DM.Qexec.ParamByName('stanskrg').AsCurrency := stankini.Value;
        DM.Qexec.ParamByName('stanangkat').AsCurrency := stanangkat.Value;
        DM.Qexec.ParamByName('pakai').AsCurrency := pakai.Value;

        if(pakai.Value<minpakai.Value) then
            DM.Qexec.ParamByName('pakai2').AsCurrency := minpakai.Value
        else
            DM.Qexec.ParamByName('pakai2').AsCurrency := pakai.Value;

            
        DM.Qexec.ParamByName('kelainan').AsString := kelainan.text;
        DM.Qexec.ParamByName('pembacameter').AsString := pembacameter.text;
        DM.Qexec.ParamByName('user').AsString := Umain.user.Caption;  
        DM.Qexec.Execute;

        flagusulankoreksi:='0';
        biayapemakaian.Enabled:=False;
        btnKeluar.Enabled:=True;
        ModalResult:=mrOK;
end;

procedure Tukoreksistan.btnKeluarClick(Sender: TObject);
begin
  biayapemakaian.Enabled:=False;
  close;
end;

procedure Tukoreksistan.Action2Execute(Sender: TObject);
begin
  if btnKeluar.Enabled=true then
  begin
    biayapemakaian.Enabled:=False;

    if(lewati.Visible=true) then
      lewati.Click
    else
      btnKeluar.Click;
  end;
end;

function Tukoreksistan.fungsiterbilang(sValue: string):string;
const
Angka : array [1..20] of string = ('', 'Satu', 'Dua', 'Tiga', 'Empat','Lima', 'Enam', 'Tujuh', 'Delapan','Sembilan', 'Sepuluh', 'Sebelas','Dua Belas', 'Tiga Belas', 'Empat Belas','Lima Belas', 'Enam Belas', 'Tujuh Belas','Delapan Belas', 'Sembilan Belas');
sPattern: string = '000000000000000';

var
S,Rupiah : string;
  Satu, Dua, Tiga, Belas, Gabung: string;
Sen, Sen1, Sen2: string;
  Hitung : integer;
  one, two, three: integer;

begin
One := 4;
Two := 5;
Three := 6;
Hitung := 1;
Rupiah := '';
S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
Sen1 := Copy(S, 14, 1);
Sen2 := Copy(S, 15, 1);
Sen := Sen1 + Sen2;
while Hitung < 5 do
begin
Satu := Copy(S, One, 1);
Dua := Copy(S, Two, 1);
Tiga := Copy(S, Three, 1);
Gabung := Satu + Dua + Tiga;

if StrToInt(Satu) = 1 then
Rupiah := Rupiah + 'Seratus '
else
if StrToInt(Satu) > 1 Then
Rupiah := Rupiah + Angka[StrToInt(satu)+1] + ' Ratus ';

if StrToInt(Dua) = 1 then
begin
Belas := Dua + Tiga;
Rupiah := Rupiah + Angka[StrToInt(Belas)+1];
end
else
if StrToInt(Dua) > 1 Then
Rupiah := Rupiah + Angka[StrToInt(Dua)+1] + ' Puluh ' +
Angka[StrToInt(Tiga)+1]
else
if (StrToInt(Dua) = 0) and (StrToInt(Tiga) > 0) Then
begin
if ((Hitung = 3) and (Gabung = '001')) or
((Hitung = 3) and (Gabung = ' 1')) then
Rupiah := Rupiah + 'Seribu '
else
Rupiah := Rupiah + Angka[StrToInt(Tiga)+1];
end;

if (hitung = 1) and (StrToInt(Gabung) > 0) then
Rupiah := Rupiah + ' Milyar '
else
if (Hitung = 2) and (StrToInt(Gabung) > 0) then
Rupiah := Rupiah + ' Juta '
else
if (Hitung = 3) and (StrToInt(Gabung) > 0) then
begin
if (Gabung = '001') or (Gabung = ' 1') then
Rupiah := Rupiah + ''
else
Rupiah := Rupiah + ' Ribu ';
end;
Hitung := Hitung + 1;
One := One + 3;
Two := Two + 3;
Three := Three + 3;
end;
if length(Rupiah) > 1 then Rupiah := Rupiah + ' Rupiah ';
Result := Rupiah;
end;

procedure Tukoreksistan.FormShow(Sender: TObject);
begin
  ucombo.isikombo;
  kelainan.Properties.Items:=Ucombo.kelainan.Properties.Items;
  pembacameter.Properties.Items:=Ucombo.namapembaca.Properties.Items;

  if _tipekoreksi<>'2' then
  begin
    if(cekstankini.Checked=true) then
      if (stanangkat.Value > 0 ) then
        pakai.Value := stanangkat.Value - stanlalu.Value + stankini.Value
      else
        pakai.Value := stankini.Value - stanlalu.Value;;

    stankini.SetFocus;

  end;

  hitung();
end;

procedure Tukoreksistan.foto1DblClick(Sender: TObject);
begin
 {if FileExists(DM.Qfoto.fieldbyname('lokasi').AsString+'\'+blnfoto1+'\'+nosamb.Text+'.jpg')then
 begin
      ufotobesar.foto.Picture.LoadFromFile(DM.Qfoto.fieldbyname('lokasi').AsString+'\'+blnfoto1+'\'+nosamb.Text+'.jpg');
      ufotobesar.showmodal;

 end
 else
   MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0);}
end;

procedure Tukoreksistan.foto2DblClick(Sender: TObject);
begin
 {if FileExists(DM.Qfoto.fieldbyname('lokasi').AsString+'\'+blnfoto2+'\'+nosamb.Text+'.jpg')then
 begin
      ufotobesar.foto.Picture.LoadFromFile(DM.Qfoto.fieldbyname('lokasi').AsString+'\'+blnfoto2+'\'+nosamb.Text+'.jpg');
      ufotobesar.showmodal;

 end
 else
   MessageDlg('Foto Tidak Ditemukan...', mtInformation, [mbOK], 0); }
end;

procedure Tukoreksistan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
pakai.Clear;
cekstankini.Checked:=true;
cekstanangkat.Checked:=false;
cekstanlalu.Checked:=false;
cekadakelainan.Checked:=false;
cekpakai.Checked:=false;
pembacameter.Text:='-';
end;

procedure Tukoreksistan.KoreksiBPExecute(Sender: TObject);
begin
  biayapemakaian.Enabled:=True;

  _biayapemakaian:=biayapemakaian.Value;
  _rekair:=rekair.Value;
  _total:=total.Value;

  biayapemakaian.SetFocus;
end;

procedure Tukoreksistan.biayapemakaianPropertiesChange(Sender: TObject);
begin
  akumulasi:=(_rekair-_biayapemakaian)+biayapemakaian.Value;

  if(akumulasi>=Qmeterai.FieldByName('batas1').AsCurrency) and
    (akumulasi<Qmeterai.FieldByName('batas2').AsCurrency) then
    meterai.Value:=Qmeterai.FieldByName('meterai1').AsCurrency
  else if(akumulasi>=Qmeterai.FieldByName('batas2').AsCurrency) and
    (akumulasi<Qmeterai.FieldByName('batas3').AsCurrency) then
    meterai.Value:=Qmeterai.FieldByName('meterai2').AsCurrency
  else if(akumulasi>=Qmeterai.FieldByName('batas3').AsCurrency)then
    meterai.Value:=Qmeterai.FieldByName('meterai3').AsCurrency
  else
    meterai.Value:=0;

  rekair.Value:=akumulasi+meterai.Value;
  total.Value:=rekair.Value+ppn.Value;

end;

end.
