unit unitpaket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, cxLabel, cxTextEdit, Menus, StdCtrls, cxButtons,
  ActnList;

type
  Tupaket = class(TForm)
    RzPanel24: TRzPanel;
    info: TRzPanel;
    cxLabel1: TcxLabel;
    namapaket: TcxTextEdit;
    ok: TcxButton;
    no: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure noClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _jenis:String;
    _limbah:String;
    _namapaketlama:String;
  end;

var
  upaket: Tupaket;

implementation

uses UnitMain, Module;

{$R *.dfm}

procedure Tupaket.noClick(Sender: TObject);
begin
close;
end;

procedure Tupaket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
namapaket.Clear;
end;

procedure Tupaket.okClick(Sender: TObject);
begin

   if(namapaket.Text='')then
    begin
      MessageDlg('Nama Paket masih kosong!!', mtWarning, [MbOk], 0);
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
            Umain.Qhost1.SQL.Add('INSERT INTO paket (namapaket,jenis)');
            Umain.Qhost1.SQL.Add('VALUES (:namapaket,:jenis)');
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
            Umain.Qhost1.ParamByName('jenis').AsString:=_jenis;
            Umain.Qhost1.Execute;


        end
        else
        begin

            if(_jenis='Material')then
            begin

                Umain.Qhost1.close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('UPDATE paket');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketmaterial');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketrab');
                Umain.Qhost1.SQL.Add('SET paketmat=:namapaket WHERE paketmat=:paketmatlama;');

            end
            else
            begin

                Umain.Qhost1.close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('UPDATE paket');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketongkos');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketrab');
                Umain.Qhost1.SQL.Add('SET paketongkos=:namapaket WHERE paketongkos=:paketmatlama;');


            end;


            Umain.Qhost1.ParamByName('namapaketlama').AsString:=_namapaketlama;
            Umain.Qhost1.ParamByName('paketmatlama').AsString:=_namapaketlama;
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;  
            Umain.Qhost1.Execute;

        end;

      end
      else
      begin

          
        if(DM.Xflag='Tambah')then
        begin


            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('INSERT INTO paket_limbah (namapaket,jenis)');
            Umain.Qhost1.SQL.Add('VALUES (:namapaket,:jenis)');
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;
            Umain.Qhost1.ParamByName('jenis').AsString:=_jenis;
            Umain.Qhost1.Execute;


        end
        else
        begin

            if(_jenis='Material')then
            begin

                Umain.Qhost1.close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('UPDATE paket_limbah');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketmaterial_limbah');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketrab_limbah');
                Umain.Qhost1.SQL.Add('SET paketmat=:namapaket WHERE paketmat=:paketmatlama;');

            end
            else
            begin

                Umain.Qhost1.close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('UPDATE paket_limbah');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketongkos_limbah');
                Umain.Qhost1.SQL.Add('SET namapaket=:namapaket WHERE namapaket=:namapaketlama;');

                Umain.Qhost1.SQL.Add('UPDATE paketrab_limbah');
                Umain.Qhost1.SQL.Add('SET paketongkos=:namapaket WHERE paketongkos=:paketmatlama;');


            end;


            Umain.Qhost1.ParamByName('namapaketlama').AsString:=_namapaketlama;
            Umain.Qhost1.ParamByName('paketmatlama').AsString:=_namapaketlama;
            Umain.Qhost1.ParamByName('namapaket').AsString:=namapaket.Text;  
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
