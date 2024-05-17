unit UnitUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,
  Menus, ActnList, DB, MemDS, DBAccess, MyAccess, StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, ComCtrls, RzDTP,
  ExtCtrls, RzPanel, dxSkinOffice2013White;

type
  TUupdate = class(TForm)
    RzPanel1: TRzPanel;
    Qisi: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qmirror_: TMyQuery;
    Qmirror_flagaktif: TStringField;
    Qmirror_flaglunas: TStringField;
    Qmirror_flagpublish: TStringField;
    Qmirror_flagkoreksi: TStringField;
    Qmirror_stanlalu: TFloatField;
    Qmirror_stanskrg: TFloatField;
    Qmirror_stanangkat: TFloatField;
    Qmirror_kodegol: TStringField;
    Qmirror_kodediameter: TStringField;
    Qmirror_minpakai: TFloatField;
    Qmirror_xadministrasi: TFloatField;
    Qmirror_xpemeliharaan: TFloatField;
    Qmirror_xpelayanan: TFloatField;
    Qmirror_xretribusi: TFloatField;
    Qmirror_xairlimbah: TFloatField;
    Qmirror_xdendapakai0: TFloatField;
    Qmirror_bb1: TFloatField;
    Qmirror_bb2: TFloatField;
    Qmirror_bb3: TFloatField;
    Qmirror_bb4: TFloatField;
    Qmirror_ba1: TFloatField;
    Qmirror_ba2: TFloatField;
    Qmirror_ba3: TFloatField;
    Qmirror_ba4: TFloatField;
    Qmirror_t1: TFloatField;
    Qmirror_t2: TFloatField;
    Qmirror_t3: TFloatField;
    Qmirror_t4: TFloatField;
    Qmirror_t1_tetap: TStringField;
    Qmirror_t2_tetap: TStringField;
    Qmirror_t3_tetap: TStringField;
    Qmirror_t4_tetap: TStringField;
    Qmirror_idx: TStringField;
    Qmirror_batas1: TFloatField;
    Qmirror_batas2: TFloatField;
    Qmirror_batas3: TFloatField;
    Qmirror_meterai1: TFloatField;
    Qmirror_meterai2: TFloatField;
    Qmirror_meterai3: TFloatField;
    Qmirror_tglmulaidenda: TDateField;
    Qmirror_pakai: TFloatField;
    Qmirror_flagkirim: TStringField;
    Qmirror_rekair: TFloatField;
    Qmirror_nosamb: TStringField;
    Qmirror_zbiayapemakaian: TFloatField;
    Qmirror_zmeterai: TFloatField;
    Qmirror_zpemeliharaan: TFloatField;
    Qmirror_zretribusi: TFloatField;
    Qmirror_zadministrasi: TFloatField;
    Qmirror_zpelayanan: TFloatField;
    Qmirror_zdendatunggakan: TFloatField;
    Qmirror_flag: TStringField;
    Qmirror_trf_dendatunggakan: TFloatField;
    Qmirror_trf_dendatunggakan2: TFloatField;
    Qmirror_bb5: TFloatField;
    Qmirror_ba5: TFloatField;
    Qmirror_t5: TFloatField;
    Qmirror_t5_tetap: TStringField;
    Qmirror_trf_admlain: TFloatField;
    Qmirror_trf_pemlain: TFloatField;
    Qmirror_tglmulaidenda2: TDateField;
    Qmirror_zairlimbah: TFloatField;
    Qmirror_zdendapakai0: TFloatField;
    Qmirror_zadministrasilain: TFloatField;
    Qmirror_zpemeliharaanlain: TFloatField;
    Qmirror_zretribusilain: TFloatField;
    Qmirror_trf_retlain: TFloatField;
    Qmirror_xppn: TFloatField;
    Qmirror_tglmulaidenda3: TDateField;
    Qmirror_trf_dendatunggakan3: TFloatField;
    Qmirror_trf_dendatunggakanperbulan: TFloatField;
    Qmirror_tglmulaidendaperbulan: TDateField;
    Qmirror_xretribusipakai: TFloatField;
    Qmirror_tglmulaidenda4: TDateField;
    Qmirror_trf_dendatunggakan4: TFloatField;
    ok: TcxButton;
    no: TcxButton;
    periode: TRzDateTimePicker;
    RzPanel8: TRzPanel;
    Qgol: TMyQuery;
    Qdiameter: TMyQuery;
    Qpel: TMyQuery;
    QgolIPL: TMyQuery;
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
    Qmirrortglpublish: TDateTimeField;
    Qmirrorkodewil: TStringField;
    Qmirrorwilayah: TStringField;
    Qmirrorgolongan: TStringField;
    Qmirrortaksasi: TStringField;
    Qmirrorkodekondisimeter: TStringField;
    Qmirrorbatasadm1: TCurrencyField;
    Qmirrorbatasadm2: TCurrencyField;
    Qmirrorbatasadm3: TCurrencyField;
    Qmirroradministrasi1: TCurrencyField;
    Qmirroradministrasi2: TCurrencyField;
    Qmirroradministrasi3: TCurrencyField;
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
    Qmirrorbaipl5: TFloatField;
    Qmirrorbaipl6: TFloatField;
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
    procedure noClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    _pelanggan:String;

    procedure hitungulang();
    procedure hitungulangsatu();

  end;

var
  Uupdate: TUupdate;

implementation

{$R *.dfm} uses Module,DateUtils;

procedure TUupdate.noClick(Sender: TObject);
begin
close;
end;

procedure TUupdate.FormShow(Sender: TObject);
begin  

   periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  
end;

procedure TUupdate.hitungulang();
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
          Qmirror.SQL.Add('FROm drd'+FormatDateTime('YYYYMM',periode.date)+' c ');
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
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.date)+' SET ');
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
        DM.Qexec.SQL.Add('UPDATE drd'+FormatDateTime('YYYYMM',periode.date)+' SET ');
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

procedure TUupdate.hitungulangsatu();
var
j:integer;
blok1,blok2,blok3,blok4,blok5:Currency;
blokipl1,blokipl2,blokipl3,blokipl4,blokipl5,blokipl6,blokipl7:Currency;
prog1,prog2,prog3,prog4,prog5:Currency;
progipl1,progipl2,progipl3,progipl4,progipl5,progipl6,progipl7:Currency;
bb1,bb2,bb3,bb4,bb5,ba1,ba2,ba3,ba4,ba5:Currency;
bbipl1,bbipl2,bbipl3,bbipl4,bbipl5,bbipl6,bbipl7,baipl1,baipl2,baipl3,baipl4,baipl5,baipl6,baipl7:Currency;
t1,t2,t3,t4,t5:Currency;
tipl1,tipl2,tipl3,tipl4,tipl5,tipl6,tipl7:Currency;
tetap1,tetap2,tetap3,tetap4,tetap5:String;
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
  Qmirror.ParamByName('nosamb').AsString:=DM.Xnosamb;
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
          progipl1:=ROUND(fixpakaiipl*tipl1)
        else
        begin
          if (fixpakaiipl>=bbipl1) and (fixpakaiipl<=baipl1) then
            progipl1:=ROUND(tipl1)
          else
            progipl1:=0;
        end;

        if(tetapipl2='0')then
          progipl2:=ROUND(fixpakaiipl*tipl2)
        else
        begin
          if (fixpakaiipl>bbipl2) and (fixpakaiipl<=baipl2) then
            progipl2:=ROUND(tipl2)
          else
            progipl2:=0;
        end;

        if(tetapipl3='0')then
          progipl3:=ROUND(fixpakaiipl*tipl3)
        else
        begin
          if (fixpakaiipl>bbipl3) and (fixpakaiipl<=baipl3) then
            progipl3:=ROUND(tipl3)
          else
            progipl3:=0;
        end;

        if(tetapipl4='0')then
          progipl4:=ROUND(fixpakaiipl*tipl4)
        else
        begin
          if (fixpakaiipl>bbipl4) and (fixpakaiipl<=baipl4) then
            progipl4:=ROUND(tipl4)
          else
            progipl4:=0;
        end;

         if(tetapipl5='0')then
          progipl5:=ROUND(fixpakaiipl*tipl5)
        else
        begin
          if (fixpakaiipl>bbipl5) and (fixpakaiipl<=baipl5) then
            progipl5:=ROUND(tipl5)
          else
            progipl5:=0;
        end;

         if(tetapipl6='0')then
          progipl6:=ROUND(fixpakaiipl*tipl6)
        else
        begin
          if (fixpakaiipl>bbipl6) and (fixpakaiipl<=baipl6) then
            progipl6:=ROUND(tipl6)
          else
            progipl6:=0;
        end;

         if(tetapipl7='0')then
          progipl7:=ROUND(fixpakaiipl*tipl7)
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
           xpemeliharaan:=0;
           xtaxipl:=0
       end
       else
       begin
           xbiayaipl:=progipl1+progipl2+progipl3+progipl4+progipl5+progipl6+progipl7;
           xtaxipl:=(xbiayaipl+xadministrasi+xpemeliharaan)*xppnipl/100;
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



      if(xakumulasi>=Qmirrorbatas1.Value) and (xakumulasi<Qmirrorbatas2.Value) then
       xmeterai:=Qmirrormeterai1.Value
      else if(xakumulasi>=Qmirrorbatas2.Value) and (xakumulasi<Qmirrorbatas3.Value) then
       xmeterai:=Qmirrormeterai2.Value
      else if(xakumulasi>=Qmirrorbatas3.Value) then
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

end;

procedure TUupdate.okClick(Sender: TObject);
var
namatabel:String;
begin


    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQl.Add('select * from periode where periode=:periode');
    DM.Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
    DM.Qcek.Open;

    if(DM.Qcek.RecordCount>0)then
    begin

      if(DM.Qcek.FieldByName('status').AsString='0')then
          MessageDlg('Maaf, Periode '+FormatDateTime('MMMM YYYY',periode.date)+ ' Sudah Tertutup/Terkunci !!', mtWarning, [mbOK], 0)
      else
      begin



           if _pelanggan='AIR' then
           begin


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('SHOW TABLES LIKE "drd'+FormatDateTime('YYYYMM',periode.date)+'"');
              DM.Qcek.Open;

              if DM.Qcek.RecordCount=0 then
              begin
                  MessageDlg('TABLE "drd'+FormatDateTime('YYYYMM',periode.date)+'" TIDAK DITEMUKAN!! ', mtWarning, [mbOK], 0);
                  Exit;
              end;




              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * from drd'+FormatDateTime('YYYYMM',periode.date)+' where nosamb=:nosamb');
              DM.Qcek.ParamByName('nosamb').AsString:=DM.Xnosamb;
              DM.Qcek.Open;

                if(DM.Qcek.RecordCount>0) and (DM.Qcek.Fieldbyname('flagpublish').AsString='0') and (DM.Qcek.Fieldbyname('flagkirim').AsString='0')then
                begin

                 TRY
                  Enabled:=false;
                  TRY

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;



                      Qpel.Close;
                      Qpel.SQL.Clear;
                      Qpel.SQL.Add('select * FROM pelanggan WHERE nosamb=:nosamb');
                      Qpel.ParamByName('nosamb').AsString:=DM.Xnosamb;
                      Qpel.Open;



                      Qgol.close;
                      Qgol.SQL.Clear;
                      Qgol.SQL.Add('SELECT kodegolyangberlaku,dendatunggakan,dendatunggakan2,dendatunggakan3,dendatunggakan4,dendatunggakanperbulan FROM golongan WHERE kodegol=:kodegol AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                      Qgol.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                      Qgol.Open;

                      QgolIPL.close;
                      QgolIPL.SQL.Clear;
                      QgolIPL.SQL.Add('SELECT kodegolyangberlaku FROM golongan_ipl WHERE kodegol=:kodegol AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                      QgolIPL.ParamByName('kodegol').AsString:=Qpel.fieldbyname('koderetribusilain').AsString;
                      QgolIPL.Open;


                      Qdiameter.close;
                      Qdiameter.SQL.Clear;
                      Qdiameter.SQL.Add('SELECT kodediameteryangberlaku FROM diameter WHERE kodediameter=:kodediameter AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                      Qdiameter.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                      Qdiameter.Open;



                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' set serimeter=:serimeter,kodegolyangberlaku=:kodegolyangberlaku,kodediameteryangberlaku=:kodediameteryangberlaku,kodegol=:kodegol,kodediameter=:kodediameter,koderayon=:koderayon,kodekelurahan=:kodekelurahan,');
                      DM.Qexec.SQL.add('kodekolektif=:kodekolektif,flagaktif=:flagaktif,kodeadministrasilain=:kodeadministrasilain,kodepemeliharaanlain=:kodepemeliharaanlain,koderetribusilain=:koderetribusilain,kodeblok=:kodeblok,luasrumah=:luasrumah,');
                      DM.Qexec.SQL.add('trf_dendatunggakan=:trf_dendatunggakan,trf_dendatunggakan2=:trf_dendatunggakan2,trf_dendatunggakan3=:trf_dendatunggakan3,trf_dendatunggakan4=:trf_dendatunggakan4,trf_dendatunggakanperbulan=:trf_dendatunggakanperbulan where nosamb=:nosamb ');
                      DM.Qexec.ParamByName('nosamb').AsString:=DM.Xnosamb;
                      DM.Qexec.ParamByName('serimeter').AsString:=Qpel.fieldbyname('serimeter').AsString;
                      DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qgol.fieldbyname('kodegolyangberlaku').AsString;
                      DM.Qexec.ParamByName('kodegol').AsString:=Qpel.fieldbyname('kodegol').AsString;
                      DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qdiameter.fieldbyname('kodediameteryangberlaku').AsString;
                      DM.Qexec.ParamByName('kodediameter').AsString:=Qpel.fieldbyname('kodediameter').AsString;
                      DM.Qexec.ParamByName('koderayon').AsString:=Qpel.fieldbyname('koderayon').AsString;
                      DM.Qexec.ParamByName('kodekelurahan').AsString:=Qpel.fieldbyname('kodekelurahan').AsString;
                      DM.Qexec.ParamByName('kodekolektif').AsString:=Qpel.fieldbyname('kodekolektif').AsString;
                      DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qpel.fieldbyname('kodeadministrasilain').AsString;
                      DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qpel.fieldbyname('kodepemeliharaanlain').AsString;
                      DM.Qexec.ParamByName('koderetribusilain').AsString:=QgolIPL.fieldbyname('kodegolyangberlaku').AsString;
                      DM.Qexec.ParamByName('kodeblok').AsString:=Qpel.fieldbyname('kodeblok').AsString;
                      DM.Qexec.ParamByName('luasrumah').AsCurrency:=Qpel.fieldbyname('luasrumah').AsCurrency;
                      DM.Qexec.ParamByName('flagaktif').AsString:=Qpel.fieldbyname('status').AsString;
                      DM.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qgol.fieldbyname('dendatunggakan').AsCurrency;
                      DM.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qgol.fieldbyname('dendatunggakan2').AsCurrency;
                      DM.Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qgol.fieldbyname('dendatunggakan3').AsCurrency;
                      DM.Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qgol.fieldbyname('dendatunggakan4').AsCurrency;
                      DM.Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qgol.fieldbyname('dendatunggakanperbulan').AsCurrency;
                      DM.Qexec.Execute;

                      hitungulangsatu();


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      MessageDlg('Update Data Rekening Selesai...', mtInformation, [mbOK], 0);

                      close;

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



                end
                else if (DM.Qcek.FieldByName('flagpublish').AsString='1')then
                  MessageDlg('Maaf, Rekening Sudah Di Publish !!', mtWarning, [mbOK], 0) 
                else
                  MessageDlg('Maaf, Rekening Tidak Tersedia di periode Rekening '+FormatDateTime('MMMM YYYY',periode.date)+ ' !!', mtWarning, [mbOK], 0);


           end
           else if _pelanggan='LIMBAH' then
           begin


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('SHOW TABLES LIKE "drdlimbah'+FormatDateTime('YYYYMM',periode.date)+'"');
              DM.Qcek.Open;

              if DM.Qcek.RecordCount=0 then
              begin
                  MessageDlg('TABLE "drdlimbah'+FormatDateTime('YYYYMM',periode.date)+'" TIDAK DITEMUKAN!! ', mtWarning, [mbOK], 0);
                  Exit;
              end;



              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * from drdlimbah'+FormatDateTime('YYYYMM',periode.date)+' where nomorlimbah=:nomorlimbah');
              DM.Qcek.ParamByName('nomorlimbah').AsString:=DM.Xnomorlimbah;
              DM.Qcek.Open;

                if(DM.Qcek.RecordCount>0) and (DM.Qcek.Fieldbyname('flagpublish').AsString='0') and (DM.Qcek.Fieldbyname('flagkirim').AsString='0')then
                begin

                 TRY
                  Enabled:=false;
                  TRY

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;


                      Qpel.Close;
                      Qpel.SQL.Clear;
                      Qpel.SQL.Add('select * FROM pelanggan_limbah WHERE nomorlimbah=:nomorlimbah');
                      Qpel.ParamByName('nomorlimbah').AsString:=DM.xnomorlimbah;
                      Qpel.Open;

                      Qgol.close;
                      Qgol.SQL.Clear;
                      Qgol.SQL.Add('SELECT kodelimbahyangberlaku,biaya FROM golongan_limbah WHERE kodelimbah=:kodelimbah AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                      Qgol.ParamByName('kodelimbah').AsString:=Qpel.fieldbyname('kodelimbah').AsString;
                      Qgol.Open;


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update drdlimbah'+FormatDateTime('YYYYMM',periode.date)+' set nosamb=:nosamb,kodelimbahyangberlaku=:kodelimbahyangberlaku,kodelimbah=:kodelimbah,koderayon=:koderayon,total=:total,flagaktif=:flagaktif');
                      DM.Qexec.SQL.add('where nomorlimbah=:nomorlimbah ');
                      DM.Qexec.ParamByName('nomorlimbah').AsString:=DM.xnomorlimbah;
                      DM.Qexec.ParamByName('nosamb').AsString:=Qpel.fieldbyname('nosamb').AsString;
                      DM.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=Qgol.fieldbyname('kodelimbahyangberlaku').AsString;
                      DM.Qexec.ParamByName('kodelimbah').AsString:=Qpel.fieldbyname('kodelimbah').AsString;
                      DM.Qexec.ParamByName('koderayon').AsString:=Qpel.fieldbyname('koderayon').AsString;
                      DM.Qexec.ParamByName('flagaktif').AsString:=Qpel.fieldbyname('status').AsString;
                      DM.Qexec.ParamByName('total').AsCurrency:=Qgol.fieldbyname('biaya').AsCurrency;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      MessageDlg('Update Data Rekening Selesai...', mtInformation, [mbOK], 0);

                      close;

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



                end
                else if (DM.Qcek.FieldByName('flagpublish').AsString='1')then
                  MessageDlg('Maaf, Rekening Sudah Di Publish !!', mtWarning, [mbOK], 0) 
                else
                  MessageDlg('Maaf, Rekening Tidak Tersedia di periode Rekening '+FormatDateTime('MMMM YYYY',periode.date)+ ' !!', mtWarning, [mbOK], 0);






           end
           else if _pelanggan='L2T2' then
           begin


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('SHOW TABLES LIKE "drdlltt'+FormatDateTime('YYYYMM',periode.date)+'"');
              DM.Qcek.Open;

              if DM.Qcek.RecordCount=0 then
              begin
                  MessageDlg('TABLE "drdlltt'+FormatDateTime('YYYYMM',periode.date)+'" TIDAK DITEMUKAN!! ', mtWarning, [mbOK], 0);
                  Exit;
              end;



              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * from drdlltt'+FormatDateTime('YYYYMM',periode.date)+' where nomorlltt=:nomorlltt');
              DM.Qcek.ParamByName('nomorlltt').AsString:=DM.Xnomorlltt;
              DM.Qcek.Open;

                if(DM.Qcek.RecordCount>0) and (DM.Qcek.Fieldbyname('flagpublish').AsString='0') and (DM.Qcek.Fieldbyname('flagkirim').AsString='0')then
                begin

                 TRY
                  Enabled:=false;
                  TRY

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('START TRANSACTION');
                      DM.Qexec.Execute;


                      Qpel.Close;
                      Qpel.SQL.Clear;
                      Qpel.SQL.Add('select * FROM pelanggan_lltt WHERE nomorlltt=:nomorlltt');
                      Qpel.ParamByName('nomorlltt').AsString:=DM.xnomorlltt;
                      Qpel.Open;

                      Qgol.close;
                      Qgol.SQL.Clear;
                      Qgol.SQL.Add('SELECT kodellttyangberlaku,biaya FROM golongan_lltt WHERE kodelltt=:kodelltt AND periodemulaiberlaku<='+FormatDateTime('YYYYMM',periode.date)+' ORDER BY periodemulaiberlaku DESC LIMIT 1');
                      Qgol.ParamByName('kodelltt').AsString:=Qpel.fieldbyname('kodelltt').AsString;
                      Qgol.Open;


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update drdlltt'+FormatDateTime('YYYYMM',periode.date)+' set nosamb=:nosamb,kodellttyangberlaku=:kodellttyangberlaku,kodelltt=:kodelltt,koderayon=:koderayon,total=:total,flagaktif=:flagaktif');
                      DM.Qexec.SQL.add('where nomorlltt=:nomorlltt ');
                      DM.Qexec.ParamByName('nomorlltt').AsString:=DM.Xnomorlltt;
                      DM.Qexec.ParamByName('nosamb').AsString:=Qpel.fieldbyname('nosamb').AsString;
                      DM.Qexec.ParamByName('kodellttyangberlaku').AsString:=Qgol.fieldbyname('kodellttyangberlaku').AsString;
                      DM.Qexec.ParamByName('kodelltt').AsString:=Qpel.fieldbyname('kodelltt').AsString;
                      DM.Qexec.ParamByName('koderayon').AsString:=Qpel.fieldbyname('koderayon').AsString;
                      DM.Qexec.ParamByName('flagaktif').AsString:=Qpel.fieldbyname('status').AsString;
                      DM.Qexec.ParamByName('total').AsCurrency:=Qgol.fieldbyname('biaya').AsCurrency;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('COMMIT');
                      DM.Qexec.Execute;

                      MessageDlg('Update Data Rekening Selesai...', mtInformation, [mbOK], 0);

                      close;

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



                end
                else if (DM.Qcek.FieldByName('flagpublish').AsString='1')then
                  MessageDlg('Maaf, Rekening Sudah Di Publish !!', mtWarning, [mbOK], 0) 
                else
                  MessageDlg('Maaf, Rekening Tidak Tersedia di periode Rekening '+FormatDateTime('MMMM YYYY',periode.date)+ ' !!', mtWarning, [mbOK], 0);




           end;



      end;
    end
    else
       MessageDlg('Maaf, Periode '+FormatDateTime('MMMM YYYY',periode.date)+ ' Belum Tersedia !!', mtWarning, [mbOK], 0);
end;

end.
