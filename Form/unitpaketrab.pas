unit unitpaketrab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, ActnList,
  StdCtrls, cxButtons, cxCurrencyEdit, cxTextEdit, cxLabel, ExtCtrls,
  RzPanel, cxMaskEdit, cxDropDownEdit;

type
  Tupaketrab = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    namapaket: TcxTextEdit;
    button: TcxButton;
    cxButton2: TcxButton;
    info: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    ActionList2: TActionList;
    Action3: TAction;
    Action4: TAction;
    paketmat: TcxComboBox;
    paketongkos: TcxComboBox;
    persen: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure buttonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _namapaketlama:String;
    _limbah:String;
  end;

var
  upaketrab: Tupaketrab;

implementation

uses UnitMain, Module;

{$R *.dfm}

procedure Tupaketrab.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tupaketrab.buttonClick(Sender: TObject);
begin
    if(namapaket.Text='')then
    begin
      MessageDlg('Nama Paket masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

    if(paketmat.Text='')then
    begin
      MessageDlg('Paket Material masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

    if(paketongkos.Text='')then
    begin
      MessageDlg('Paket Ongkos masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

  


    TRY

     Enabled:=false;
     Umain.Enabled:=false;

    TRY

      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('START TRANSACTION;');
      Umain.Qhost1.Execute;



      if _limbah='0' then
      begin




        if(DM.Xflag='Tambah')then
        begin


            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('INSERT INTO paketrab (namapaket,paketmat,paketongkos,persenjasadaribahan)');
            Umain.Qhost1.SQL.Add('VALUES (:namapaket,:paketmat,:paketongkos,:persenjasadaribahan)');
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
            Umain.Qhost1.ParamByName('paketmat').AsString:=paketmat.Text;
            Umain.Qhost1.ParamByName('paketongkos').AsString:=paketongkos.Text;
            Umain.Qhost1.ParamByName('persenjasadaribahan').AsCurrency:=persen.Value;
            Umain.Qhost1.Execute;


        end
        else
        begin



          Umain.Qhost1.close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('UPDATE paketrab');
          Umain.Qhost1.SQL.Add('SET namapaket=:namapaket,paketmat=:paketmat,paketongkos=:paketongkos,persenjasadaribahan=:persenjasadaribahan WHERE namapaket=:namapaketlama;');
          Umain.Qhost1.ParamByName('namapaketlama').AsString:=_namapaketlama;
          Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
          Umain.Qhost1.ParamByName('paketmat').AsString:=paketmat.Text;
          Umain.Qhost1.ParamByName('paketongkos').AsString:=paketongkos.Text;
          Umain.Qhost1.ParamByName('persenjasadaribahan').AsCurrency:=persen.Value;
          Umain.Qhost1.Execute;

        end;

      end
      else
      begin

          if(DM.Xflag='Tambah')then
        begin


            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('INSERT INTO paketrab_limbah (namapaket,paketmat,paketongkos,persenjasadaribahan)');
            Umain.Qhost1.SQL.Add('VALUES (:namapaket,:paketmat,:paketongkos,:persenjasadaribahan)');
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
            Umain.Qhost1.ParamByName('paketmat').AsString:=paketmat.Text;
            Umain.Qhost1.ParamByName('paketongkos').AsString:=paketongkos.Text;
            Umain.Qhost1.ParamByName('persenjasadaribahan').AsCurrency:=persen.Value;
            Umain.Qhost1.Execute;


        end
        else
        begin



          Umain.Qhost1.close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('UPDATE paketrab_limbah');
          Umain.Qhost1.SQL.Add('SET namapaket=:namapaket,paketmat=:paketmat,paketongkos=:paketongkos,persenjasadaribahan=:persenjasadaribahan WHERE namapaket=:namapaketlama;');
          Umain.Qhost1.ParamByName('namapaketlama').AsString:=_namapaketlama;
          Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
          Umain.Qhost1.ParamByName('paketmat').AsString:=paketmat.Text;
          Umain.Qhost1.ParamByName('paketongkos').AsString:=paketongkos.Text;
          Umain.Qhost1.ParamByName('persenjasadaribahan').AsCurrency:=persen.Value;
          Umain.Qhost1.Execute;

        end;

      end;


        Umain.Qhost1.close;
        Umain.Qhost1.SQL.Clear;
        Umain.Qhost1.SQL.Add('COMMIT;');
        Umain.Qhost1.Execute;


        ModalResult:=MrOk;

  EXCEPT ON E:Exception do
  begin

    MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                              E.Message, mtError, [MbOk], 0);

    Umain.Qhost1.close;
    Umain.Qhost1.SQL.Clear;
    Umain.Qhost1.SQL.Add('ROLLBACk;');
    Umain.Qhost1.Execute;
    
   end;
  end;

FINALLY
  Enabled:=true;
  Umain.Enabled:=true;
END;
end;

end.
