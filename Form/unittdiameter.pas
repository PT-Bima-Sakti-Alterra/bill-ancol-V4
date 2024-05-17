unit UnitTdiameter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, ActnList,
  StdCtrls, cxButtons, cxCurrencyEdit, cxTextEdit, cxLabel,
  cxGroupBox, cxMaskEdit, cxDropDownEdit, ExtCtrls, RzPanel,
  ComCtrls, dxCore, cxDateUtils, cxCalendar,
  dxSkinOffice2013White, RzDTP;
type
  TUdiameter = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    button: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    kodediameter: TcxTextEdit;
    ukuran: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    administrasi: TcxCurrencyEdit;
    pemeliharan: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    pelayanan: TcxCurrencyEdit;
    retribusi: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    airlimbah: TcxCurrencyEdit;
    dendapakai0: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel10: TcxLabel;
    aktif: TcxComboBox;
    RzPanel4: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel17: TcxLabel;
    procedure buttonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:integer;
  end;

var
  Udiameter: TUdiameter;

implementation

{$R *.dfm}uses Module, UnitMain;
procedure TUdiameter.buttonClick(Sender: TObject);
var
j:integer;
begin


  if( kodediameter.Text='') then
  begin

    MessageDlg('KODE DIAMETER HARUS DIISI !! ', mtWarning, [mbOK], 0);
    Exit;



  end;


  if( ukuran.Text='') then
  begin

    MessageDlg('UKURAN DIAMETER HARUS DIISI !! ', mtWarning, [mbOK], 0);
    Exit;


  end;


    TRY
    UMain.openkoneksi_host;


    Umain.Qhost1.close;
    Umain.Qhost1.SQl.Clear;
    Umain.Qhost1.SQL.Add('START TRANSACTION');
    Umain.Qhost1.Execute;

    DM.Qexec.close;
    DM.Qexec.SQl.Clear;
    DM.Qexec.SQL.Add('START TRANSACTION');
    DM.Qexec.Execute;


      IF(DM.Xflag='Tambah')THEN
      BEGIn

              
              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
              Umain.Qhost1.SQL.Add('replace into diameter (kodediameteryangberlaku,periodemulaiberlaku,kodediameter,ukuran,aktif,administrasi,pemeliharaan,retribusi) values (:kodediameteryangberlaku,:periodemulaiberlaku,:kodediameter,:ukuran,:aktif,:administrasi,:pemeliharaan,:retribusi)');

              Umain.Qhost1.ParamByName('kodediameteryangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kodediameter.Text);
              Umain.Qhost1.ParamByName('periodemulaiberlaku').AsString:=FormatDateTime('YYYYMM',periode.date);
              Umain.Qhost1.ParamByName('kodediameter').AsString:=TRIM(kodediameter.Text);
              Umain.Qhost1.ParamByName('ukuran').AsString:=TRIM(ukuran.Text);

              if(aktif.ItemIndex=0)then
                  Umain.Qhost1.ParamByName('aktif').AsString := '1'
               else
                  Umain.Qhost1.ParamByName('aktif').AsString := '0';

               Umain.Qhost1.ParamByName('administrasi').AsCurrency:=administrasi.Value;
               Umain.Qhost1.ParamByName('pemeliharaan').AsCurrency:=pemeliharan.Value;
               Umain.Qhost1.ParamByName('retribusi').AsCurrency:=retribusi.Value;

               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQl.Clear;
               DM.Qexec.SQL.Add('INSERt INTO diameter VALUES(NULL,:kodediameteryangberlaku,:periodemulaiberlaku,:kodediameter,:ukuran,:administrasi,:pemeliharaan,:pelayanan,:retribusi,:dendapakai0,:airlimbah,:nomorba,:aktif)');
               DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kodediameter.Text);
               DM.Qexec.ParamByName('periodemulaiberlaku').AsString:=FormatDateTime('YYYYMM',periode.date);
               DM.Qexec.ParamByName('kodediameter').AsString :=TRIM(kodediameter.Text);
               DM.Qexec.ParamByName('ukuran').AsString := ukuran.Text;
               DM.Qexec.ParamByName('nomorba').AsString := nomorba.Text;
               DM.Qexec.ParamByName('administrasi').AsCurrency := administrasi.Value;
               DM.Qexec.ParamByName('pemeliharaan').AsCurrency := pemeliharan.Value;
               DM.Qexec.ParamByName('pelayanan').AsCurrency := pelayanan.Value;
               DM.Qexec.ParamByName('retribusi').AsCurrency := retribusi.Value;
               DM.Qexec.ParamByName('dendapakai0').AsCurrency := dendapakai0.Value;
               DM.Qexec.ParamByName('airlimbah').AsCurrency := airlimbah.Value;

               if(aktif.ItemIndex=0)then
                  DM.Qexec.ParamByName('aktif').AsString := '1'
               else
                  DM.Qexec.ParamByName('aktif').AsString := '0';

               DM.Qexec.Execute;

               DM.uraianlogakses:='Tambah Diameter '+TRIM(kodediameter.Text);
               DM.targetlogakses:=TRIM(kodediameter.Text);
               DM.logakses;


                Umain.Qhost1.close;
                Umain.Qhost1.SQl.Clear;
                Umain.Qhost1.SQL.Add('COMMIT');
                Umain.Qhost1.Execute;

                DM.Qexec.close;
                DM.Qexec.SQl.Clear;
                DM.Qexec.SQL.Add('COMMIT');
                DM.Qexec.Execute;

               ModalResult:=mrOK;


      END
      ELSE BEGIn



              Umain.Qhost1.close;
              Umain.Qhost1.SQl.Clear;
              Umain.Qhost1.SQL.Add('update diameter set ukuran=:ukuran,aktif=:aktif,administrasi=:administrasi,pemeliharaan=:pemeliharaan,retribusi=:retribusi where kodediameteryangberlaku=:kodediameteryangberlaku');
              Umain.Qhost1.ParamByName('kodediameteryangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kodediameter.Text);
              Umain.Qhost1.ParamByName('ukuran').AsString:=TRIM(ukuran.Text);

              if(aktif.ItemIndex=0)then
                  Umain.Qhost1.ParamByName('aktif').AsString := '1'
               else
                  Umain.Qhost1.ParamByName('aktif').AsString := '0';

               Umain.Qhost1.ParamByName('administrasi').AsCurrency:=administrasi.Value;
               Umain.Qhost1.ParamByName('pemeliharaan').AsCurrency:=pemeliharan.Value;
               Umain.Qhost1.ParamByName('retribusi').AsCurrency:=retribusi.Value;

               Umain.Qhost1.Execute;



               DM.Qexec.close;
               DM.Qexec.SQl.Clear;
               DM.Qexec.SQL.Add('UPDATE diameter SET ukuran=:ukuran,administrasi=:administrasi,pemeliharaan=:pemeliharaan,pelayanan=:pelayanan,retribusi=:retribusi,dendapakai0=:dendapakai0,airlimbah=:airlimbah,');
               Dm.Qexec.SQL.add('nomorba=:nomorba,aktif=:aktif WHERE kodediameteryangberlaku=:kodediameteryangberlaku');  
               DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+TRIM(kodediameter.Text);
               DM.Qexec.ParamByName('ukuran').AsString := ukuran.Text;
               DM.Qexec.ParamByName('nomorba').AsString := nomorba.Text;
               DM.Qexec.ParamByName('administrasi').AsCurrency := administrasi.Value;
               DM.Qexec.ParamByName('pemeliharaan').AsCurrency := pemeliharan.Value;
               DM.Qexec.ParamByName('pelayanan').AsCurrency := pelayanan.Value;
               DM.Qexec.ParamByName('retribusi').AsCurrency := retribusi.Value;
               DM.Qexec.ParamByName('dendapakai0').AsCurrency := dendapakai0.Value;
               DM.Qexec.ParamByName('airlimbah').AsCurrency := airlimbah.Value;

               if(aktif.ItemIndex=0)then
                  DM.Qexec.ParamByName('aktif').AsString := '1'
               else
                  DM.Qexec.ParamByName('aktif').AsString := '0';

               DM.Qexec.Execute;


              DM.uraianlogakses:='Koreksi Diameter '+DM.Xkodediameter+' Menjadi '+TRIM(kodediameter.Text);
              DM.targetlogakses:=DM.Xkodediameter;

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

end;

procedure TUdiameter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kodediameter.Text:='';
ukuran.Text:='';
administrasi.Value:=0;
pemeliharan.Value:=0;
pelayanan.Value:=0;
retribusi.Value:=0;
airlimbah.Value:=0;
dendapakai0.Value:=0;
nomorba.clear;
aktif.ItemIndex:=0;
end;

procedure TUdiameter.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TUdiameter.Action2Execute(Sender: TObject);
begin
close;
end;

end.
