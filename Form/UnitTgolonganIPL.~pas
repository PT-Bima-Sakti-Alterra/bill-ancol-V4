unit UnitTgolonganIPL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, DB, MemDS,
  DBAccess, MyAccess, StdCtrls, cxButtons, cxCurrencyEdit, cxTextEdit,
  ExtCtrls, RzPanel, cxLabel, RzLabel, ActnList,cxGroupBox, cxMaskEdit,
  cxDropDownEdit, ComCtrls, dxCore,
  cxDateUtils, cxCalendar, RzPrgres, dxSkinOffice2013White, RzDTP;


type
  TFGolonganIPL = class(TForm)
    RzPanel1: TRzPanel;
    Qgol: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    kode: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    golongan: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel11: TcxLabel;
    bb1: TcxCurrencyEdit;
    ba1: TcxCurrencyEdit;
    bb2: TcxCurrencyEdit;
    ba2: TcxCurrencyEdit;
    ba3: TcxCurrencyEdit;
    bb3: TcxCurrencyEdit;
    bb4: TcxCurrencyEdit;
    ba4: TcxCurrencyEdit;
    ba5: TcxCurrencyEdit;
    bb5: TcxCurrencyEdit;
    cxLabel31: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel14: TcxLabel;
    t1: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    t2: TcxCurrencyEdit;
    tetap2: TcxComboBox;
    tetap1: TcxComboBox;
    tetap3: TcxComboBox;
    t3: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    t4: TcxCurrencyEdit;
    tetap4: TcxComboBox;
    tetap5: TcxComboBox;
    t5: TcxCurrencyEdit;
    cxLabel30: TcxLabel;
    cxLabel27: TcxLabel;
    aktif: TcxComboBox;
    cxLabel26: TcxLabel;
    nomorba: TcxTextEdit;
    kategori: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxLabel10: TcxLabel;
    uraian: TcxTextEdit;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel17: TcxLabel;
    bb6: TcxCurrencyEdit;
    ba6: TcxCurrencyEdit;
    ba7: TcxCurrencyEdit;
    bb7: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    t6: TcxCurrencyEdit;
    tetap6: TcxComboBox;
    tetap7: TcxComboBox;
    t7: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    cxLabel29: TcxLabel;
    ppn: TcxCurrencyEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure buttonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations } id:integer;
    

  end;

var
  FGolonganIPL: TFGolonganIPL;

implementation

{$R *.dfm}   uses Module,StrUtils, unitloading, UnitMain,Dateutils;

procedure TFGolonganIPL.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TFGolonganIPL.buttonClick(Sender: TObject);
var
j:integer;
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


        if( DM.Xflag='Tambah')then
        begin

          DM.Qcek.Close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('select * from golongan_ipl where kodegolyangberlaku=:kodegolyangberlaku');
          DM.Qcek.ParamByName('kodegolyangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kode.Text);
          DM.Qcek.Open;

          if(DM.Qcek.RecordCount=0)then
          begin

              IF(kode.Text<>'') AND (golongan.Text<>'') THEN
              BEGIN


              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
//              Umain.Qhost1.SQL.Add('replace into golongan_ipl (kodegolyangberlaku,periodemulaiberlaku,kodegol,golongan,aktif,kategori,bb1,ba1,bb2,ba2,bb3,ba3,bb4,ba4,bb5,ba5,bb6,ba6,bb7,ba7,t1,t2,t3,t4,t5,t6,t7) ');
//              Umain.Qhost1.SQL.Add('values (:kodegolyangberlaku,:periodemulaiberlaku,:kodegol,:golongan,:aktif,:kategori,:bb1,:ba1,:bb2,:ba2,:bb3,:ba3,:bb4,:ba4,:bb5,:ba5,:bb6,:ba6,:bb7,:ba7,:t1,:t2,:t3,:t4,:t5,:t6,:t7)');
              Umain.Qhost1.SQL.Add(Qgol.SQLRefresh.Text);
              Umain.Qhost1.ParamByName('kodegolyangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kode.Text);
              Umain.Qhost1.ParamByName('periodemulaiberlaku').AsString:=FormatDateTime('YYYYMM',periode.date);
              Umain.Qhost1.ParamByName('kodegol').AsString:=TRIM(kode.Text);
              Umain.Qhost1.ParamByName('golongan').AsString:=TRIM(golongan.Text);
              Umain.Qhost1.ParamByName('nomorba').AsString := nomorba.Text;
              Umain.Qhost1.ParamByName('kategori').AsString:=TRIM(kategori.Text);
              Umain.Qhost1.ParamByName('uraian').AsString := uraian.Text;

              if(aktif.ItemIndex=0)then
                Umain.Qhost1.ParamByName('aktif').AsString:='1'
              else
                Umain.Qhost1.ParamByName('aktif').AsString:='0';

               Umain.Qhost1.ParamByName('ppn').AsCurrency := ppn.Value;
               Umain.Qhost1.ParamByName('bb1').AsCurrency := bb1.Value;
               Umain.Qhost1.ParamByName('bb2').AsCurrency := bb2.Value;
               Umain.Qhost1.ParamByName('bb3').AsCurrency := bb3.Value;
               Umain.Qhost1.ParamByName('bb4').AsCurrency := bb4.Value;
               Umain.Qhost1.ParamByName('bb5').AsCurrency := bb5.Value;
               Umain.Qhost1.ParamByName('bb6').AsCurrency := bb6.Value;
               Umain.Qhost1.ParamByName('bb7').AsCurrency := bb7.Value;
               Umain.Qhost1.ParamByName('ba1').AsCurrency := ba1.Value;
               Umain.Qhost1.ParamByName('ba2').AsCurrency := ba2.Value;
               Umain.Qhost1.ParamByName('ba3').AsCurrency := ba3.Value;
               Umain.Qhost1.ParamByName('ba4').AsCurrency := ba4.Value;
               Umain.Qhost1.ParamByName('ba5').AsCurrency := ba5.Value;
               Umain.Qhost1.ParamByName('ba6').AsCurrency := ba6.Value;
               Umain.Qhost1.ParamByName('ba7').AsCurrency := ba7.Value;
               Umain.Qhost1.ParamByName('t1').AsCurrency := t1.Value;
               Umain.Qhost1.ParamByName('t2').AsCurrency := t2.Value;
               Umain.Qhost1.ParamByName('t3').AsCurrency := t3.Value;
               Umain.Qhost1.ParamByName('t4').AsCurrency := t4.Value;
               Umain.Qhost1.ParamByName('t5').AsCurrency := t5.Value;
               Umain.Qhost1.ParamByName('t6').AsCurrency := t6.Value;
               Umain.Qhost1.ParamByName('t7').AsCurrency := t7.Value;

               Umain.Qhost1.ParamByName('tetap1').AsString:=IntToStr(tetap1.ItemIndex);
               Umain.Qhost1.ParamByName('tetap2').AsString:=IntToStr(tetap2.ItemIndex);
               Umain.Qhost1.ParamByName('tetap3').AsString:=IntToStr(tetap3.ItemIndex);
               Umain.Qhost1.ParamByName('tetap4').AsString:=IntToStr(tetap4.ItemIndex);
               Umain.Qhost1.ParamByName('tetap5').AsString:=IntToStr(tetap5.ItemIndex);
               Umain.Qhost1.ParamByName('tetap6').AsString:=IntToStr(tetap6.ItemIndex);
               Umain.Qhost1.ParamByName('tetap7').AsString:=IntToStr(tetap7.ItemIndex);
               Umain.Qhost1.Execute;

               Umain.Qhost1.close;
               Umain.Qhost1.SQl.Clear;
               Umain.Qhost1.SQL.Add('replace into byretribusi_lain (kode,keterangan) values (:kodegol,:golongan)');
               Umain.Qhost1.ParamByName('kodegol').AsString:=TRIM(kode.Text);
               Umain.Qhost1.ParamByName('golongan').AsString:=TRIM(golongan.Text);
               Umain.Qhost1.Execute;


              DM.Qexec.Close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(Qgol.SQLInsert.Text);
              DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kode.Text);
              DM.Qexec.ParamByName('periodemulaiberlaku').AsString:=FormatDateTime('YYYYMM',periode.date);
              DM.Qexec.ParamByName('kodegol').AsString :=TRIM(kode.Text);
              DM.Qexec.ParamByName('golongan').AsString := TRIM(golongan.Text);
              DM.Qexec.ParamByName('nomorba').AsString := nomorba.Text;
              if(aktif.ItemIndex=0)then
                DM.Qexec.ParamByName('aktif').AsString:='1'
              else
                DM.Qexec.ParamByName('aktif').AsString:='0';;


              DM.Qexec.ParamByName('ppn').AsCurrency := ppn.Value;
              DM.Qexec.ParamByName('bb1').AsCurrency := bb1.Value;
              DM.Qexec.ParamByName('bb2').AsCurrency := bb2.Value;
              DM.Qexec.ParamByName('bb3').AsCurrency := bb3.Value;
              DM.Qexec.ParamByName('bb4').AsCurrency := bb4.Value;
              DM.Qexec.ParamByName('bb5').AsCurrency := bb5.Value;
              DM.Qexec.ParamByName('bb6').AsCurrency := bb6.Value;
              DM.Qexec.ParamByName('bb7').AsCurrency := bb7.Value;
              DM.Qexec.ParamByName('ba1').AsCurrency := ba1.Value;
              DM.Qexec.ParamByName('ba2').AsCurrency := ba2.Value;
              DM.Qexec.ParamByName('ba3').AsCurrency := ba3.Value;
              DM.Qexec.ParamByName('ba4').AsCurrency := ba4.Value;
              DM.Qexec.ParamByName('ba5').AsCurrency := ba5.Value;
              DM.Qexec.ParamByName('ba6').AsCurrency := ba6.Value;
              DM.Qexec.ParamByName('ba7').AsCurrency := ba7.Value;
              DM.Qexec.ParamByName('t1').AsCurrency := t1.Value;
              DM.Qexec.ParamByName('t2').AsCurrency := t2.Value;
              DM.Qexec.ParamByName('t3').AsCurrency := t3.Value;
              DM.Qexec.ParamByName('t4').AsCurrency := t4.Value;
              DM.Qexec.ParamByName('t5').AsCurrency := t5.Value;
              DM.Qexec.ParamByName('t6').AsCurrency := t6.Value;
              DM.Qexec.ParamByName('t7').AsCurrency := t7.Value;

              DM.Qexec.ParamByName('tetap1').AsString:=IntToStr(tetap1.ItemIndex);
              DM.Qexec.ParamByName('tetap2').AsString:=IntToStr(tetap2.ItemIndex);
              DM.Qexec.ParamByName('tetap3').AsString:=IntToStr(tetap3.ItemIndex);
              DM.Qexec.ParamByName('tetap4').AsString:=IntToStr(tetap4.ItemIndex);
              DM.Qexec.ParamByName('tetap5').AsString:=IntToStr(tetap5.ItemIndex);
              DM.Qexec.ParamByName('tetap6').AsString:=IntToStr(tetap6.ItemIndex);
              DM.Qexec.ParamByName('tetap7').AsString:=IntToStr(tetap7.ItemIndex);

              DM.Qexec.ParamByName('kategori').AsString := kategori.Text;
              DM.Qexec.ParamByName('uraian').AsString := uraian.Text;
              DM.Qexec.Execute;

              DM.Qexec.Close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('replace into byretribusi_lain (kode,keterangan) values (:kodegol,:golongan)');
              DM.Qexec.ParamByName('kodegol').AsString:=TRIM(kode.Text);
              DM.Qexec.ParamByName('golongan').AsString := TRIM(golongan.Text);
              DM.Qexec.Execute;


              DM.uraianlogakses:='Tambah Golongan IPL '+kode.Text;
              DM.targetlogakses:=kode.Text;


                Umain.Qhost1.close;
                Umain.Qhost1.SQl.Clear;
                Umain.Qhost1.SQL.Add('COMMIT');
                Umain.Qhost1.Execute;

                DM.Qexec.close;
                DM.Qexec.SQl.Clear;
                DM.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;


              ModalResult:=mrOK;
              END;
           end
          else
            MessageDlg('KODEGOL DENGAN PERIODE SAMA SUDAH ADA !!', mtInformation, [mbOK], 0);
        END
        ELSE begin



              IF(kode.Text<>'') AND (golongan.Text<>'') THEN
              BEGIN   


              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
//              Umain.Qhost1.SQL.Add('update golongan_ipl set golongan=:golongan,aktif=:aktif,kategori=:kategori,bb1=:bb1,ba1=:ba1,bb2=:bb2,ba2=:ba2,bb3=:bb3,ba3=:ba3,bb4=:bb4,ba4=:ba4,bb5=:bb5,ba5=:ba5,bb6=:bb6,ba6=:ba6,bb7=:bb7,ba7=:ba7,t1=:t1,t2=:t2,t3=:t3,t4=:t4,t5=:t5,t6=:t6,t7=:t7 ');
//              Umain.Qhost1.SQL.Add('where kodegolyangberlaku=:kodegolyangberlaku');
              Umain.Qhost1.SQL.Add(Qgol.SQLUpdate.Text);
              Umain.Qhost1.ParamByName('kodegolyangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kode.Text);
              Umain.Qhost1.ParamByName('golongan').AsString:=TRIM(golongan.Text);
              Umain.Qhost1.ParamByName('kategori').AsString:=TRIM(kategori.Text);
              Umain.Qhost1.ParamByName('uraian').AsString := uraian.Text;
              Umain.Qhost1.ParamByName('nomorba').AsString := nomorba.Text;

              if(aktif.ItemIndex=0)then
                Umain.Qhost1.ParamByName('aktif').AsString:='1'
              else
                Umain.Qhost1.ParamByName('aktif').AsString:='0';

               Umain.Qhost1.ParamByName('ppn').AsCurrency := ppn.Value;
               Umain.Qhost1.ParamByName('bb1').AsCurrency := bb1.Value;
               Umain.Qhost1.ParamByName('bb2').AsCurrency := bb2.Value;
               Umain.Qhost1.ParamByName('bb3').AsCurrency := bb3.Value;
               Umain.Qhost1.ParamByName('bb4').AsCurrency := bb4.Value;
               Umain.Qhost1.ParamByName('bb5').AsCurrency := bb5.Value;
               Umain.Qhost1.ParamByName('bb6').AsCurrency := bb6.Value;
               Umain.Qhost1.ParamByName('bb7').AsCurrency := bb7.Value;
               Umain.Qhost1.ParamByName('ba1').AsCurrency := ba1.Value;
               Umain.Qhost1.ParamByName('ba2').AsCurrency := ba2.Value;
               Umain.Qhost1.ParamByName('ba3').AsCurrency := ba3.Value;
               Umain.Qhost1.ParamByName('ba4').AsCurrency := ba4.Value;
               Umain.Qhost1.ParamByName('ba5').AsCurrency := ba5.Value;
               Umain.Qhost1.ParamByName('ba6').AsCurrency := ba6.Value;
               Umain.Qhost1.ParamByName('ba7').AsCurrency := ba7.Value;
               Umain.Qhost1.ParamByName('t1').AsCurrency := t1.Value;
               Umain.Qhost1.ParamByName('t2').AsCurrency := t2.Value;
               Umain.Qhost1.ParamByName('t3').AsCurrency := t3.Value;
               Umain.Qhost1.ParamByName('t4').AsCurrency := t4.Value;
               Umain.Qhost1.ParamByName('t5').AsCurrency := t5.Value;
               Umain.Qhost1.ParamByName('t6').AsCurrency := t6.Value;
               Umain.Qhost1.ParamByName('t7').AsCurrency := t7.Value;
               Umain.Qhost1.ParamByName('tetap1').AsString:=IntToStr(tetap1.ItemIndex);
               Umain.Qhost1.ParamByName('tetap2').AsString:=IntToStr(tetap2.ItemIndex);
               Umain.Qhost1.ParamByName('tetap3').AsString:=IntToStr(tetap3.ItemIndex);
               Umain.Qhost1.ParamByName('tetap4').AsString:=IntToStr(tetap4.ItemIndex);
               Umain.Qhost1.ParamByName('tetap5').AsString:=IntToStr(tetap5.ItemIndex);
               Umain.Qhost1.ParamByName('tetap6').AsString:=IntToStr(tetap6.ItemIndex);
               Umain.Qhost1.ParamByName('tetap7').AsString:=IntToStr(tetap7.ItemIndex);

               Umain.Qhost1.Execute;

              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
              Umain.Qhost1.SQL.Add('update byretribusi_lain set keterangan=:golongan where kode=:kodegol');
              Umain.Qhost1.ParamByName('kodegol').AsString:=TRIM(kode.Text);
              Umain.Qhost1.ParamByName('golongan').AsString:=TRIM(golongan.Text);
              Umain.Qhost1.Execute;


              DM.Qexec.Close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(Qgol.SQLUpdate.Text);
              DM.Qexec.ParamByName('kodegolyangberlaku').AsString := FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kode.Text);
              DM.Qexec.ParamByName('golongan').AsString := golongan.Text;
              DM.Qexec.ParamByName('nomorba').AsString := nomorba.Text;

              if(aktif.ItemIndex=0)then
                DM.Qexec.ParamByName('aktif').AsString:='1'
              else
                DM.Qexec.ParamByName('aktif').AsString:='0';;


              DM.Qexec.ParamByName('ppn').AsCurrency := ppn.Value;
              DM.Qexec.ParamByName('bb1').AsCurrency := bb1.Value;
              DM.Qexec.ParamByName('bb2').AsCurrency := bb2.Value;
              DM.Qexec.ParamByName('bb3').AsCurrency := bb3.Value;
              DM.Qexec.ParamByName('bb4').AsCurrency := bb4.Value;
              DM.Qexec.ParamByName('bb5').AsCurrency := bb5.Value;
              DM.Qexec.ParamByName('bb6').AsCurrency := bb6.Value;
              DM.Qexec.ParamByName('bb7').AsCurrency := bb7.Value;
              DM.Qexec.ParamByName('ba1').AsCurrency := ba1.Value;
              DM.Qexec.ParamByName('ba2').AsCurrency := ba2.Value;
              DM.Qexec.ParamByName('ba3').AsCurrency := ba3.Value;
              DM.Qexec.ParamByName('ba4').AsCurrency := ba4.Value;
              DM.Qexec.ParamByName('ba5').AsCurrency := ba5.Value;
              DM.Qexec.ParamByName('ba6').AsCurrency := ba6.Value;
              DM.Qexec.ParamByName('ba7').AsCurrency := ba7.Value;
              DM.Qexec.ParamByName('t1').AsCurrency := t1.Value;
              DM.Qexec.ParamByName('t2').AsCurrency := t2.Value;
              DM.Qexec.ParamByName('t3').AsCurrency := t3.Value;
              DM.Qexec.ParamByName('t4').AsCurrency := t4.Value;
              DM.Qexec.ParamByName('t5').AsCurrency := t5.Value;
              DM.Qexec.ParamByName('t6').AsCurrency := t6.Value;
              DM.Qexec.ParamByName('t7').AsCurrency := t7.Value;
              DM.Qexec.ParamByName('tetap1').AsString:=IntToStr(tetap1.ItemIndex);
              DM.Qexec.ParamByName('tetap2').AsString:=IntToStr(tetap2.ItemIndex);
              DM.Qexec.ParamByName('tetap3').AsString:=IntToStr(tetap3.ItemIndex);
              DM.Qexec.ParamByName('tetap4').AsString:=IntToStr(tetap4.ItemIndex);
              DM.Qexec.ParamByName('tetap5').AsString:=IntToStr(tetap5.ItemIndex);
              DM.Qexec.ParamByName('tetap6').AsString:=IntToStr(tetap6.ItemIndex);
              DM.Qexec.ParamByName('tetap7').AsString:=IntToStr(tetap7.ItemIndex);
              DM.Qexec.ParamByName('kategori').AsString := kategori.Text;
              DM.Qexec.ParamByName('uraian').AsString := uraian.Text;
              DM.Qexec.Execute;

              DM.Qexec.close;
              DM.Qexec.SQl.Clear;
              DM.Qexec.SQL.Add('update byretribusi_lain set keterangan=:golongan where kode=:kodegol');
              DM.Qexec.ParamByName('kodegol').AsString:=TRIM(kode.Text);
              DM.Qexec.ParamByName('golongan').AsString:=TRIM(golongan.Text);
              DM.Qexec.Execute;


              DM.uraianlogakses:='Koreksi Golongan IPL'+kode.Text;
              DM.targetlogakses:=kode.Text;
              
              ModalResult:=mrOk;


                Umain.Qhost1.close;
                Umain.Qhost1.SQl.Clear;
                Umain.Qhost1.SQL.Add('COMMIT');
                Umain.Qhost1.Execute;

                DM.Qexec.close;
                DM.Qexec.SQl.Clear;
                DM.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;


              end;

         

        END;





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



   



end;

procedure TFGolonganIPL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kode.Text:='';
golongan.Text:='';
nomorba.Text:='';

aktif.ItemIndex:=0;

ba1.Value:=0;
ba2.Value:=0;
ba3.Value:=0;
ba4.Value:=0;
ba5.Value:=0;
ba6.Value:=0;
ba7.Value:=0;
bb1.Value:=0;
bb2.Value:=0;
bb3.Value:=0;
bb4.Value:=0;
bb5.Value:=0;
bb6.Value:=0;
bb7.Value:=0;
t1.Value:=0;
t2.Value:=0;
t3.Value:=0;
t4.Value:=0;
t5.Value:=0;
t6.Value:=0;
t7.Value:=0;
tetap1.ItemIndex:=0;
tetap2.ItemIndex:=0;
tetap3.ItemIndex:=0;
tetap4.ItemIndex:=0;
tetap5.ItemIndex:=0;
tetap6.ItemIndex:=0;
tetap7.ItemIndex:=0;

kategori.Clear;
uraian.Clear;


end;

procedure TFGolonganIPL.Action2Execute(Sender: TObject);
begin
close;
end;

end.
