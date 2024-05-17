unit unitongkos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxCurrencyEdit, Menus, StdCtrls, cxButtons, ActnList;

type
  Tuongkos = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    kode: TcxTextEdit;
    cxLabel2: TcxLabel;
    nama: TcxTextEdit;
    cxLabel3: TcxLabel;
    satuan: TcxTextEdit;
    cxLabel4: TcxLabel;
    RzPanel4: TRzPanel;
    cxLabel5: TcxLabel;
    kategori: TcxComboBox;
    harga: TcxCurrencyEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    tipe: TcxComboBox;
    cxLabel6: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    _id:integer;
    _kodeongkoslama:String;
  end;

var
  uongkos: Tuongkos;

implementation

uses Module, UnitMain;

{$R *.dfm}

procedure Tuongkos.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tuongkos.cxButton2Click(Sender: TObject);
begin

   if(kode.Text='')then
    begin
      MessageDlg('Kode masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;


     if(nama.Text='')then
    begin
      MessageDlg('Nama masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

     if(satuan.Text='')then
    begin
      MessageDlg('Satuan masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

     if(kategori.Text='')then
    begin
      MessageDlg('Field Non Air masih kosong!!', mtWarning, [MbOk], 0);
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



        if(DM.Xflag='Tambah')then
        begin


            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('INSERT INTO ongkos (id,kodeongkos,namaongkos,satuan,harga,kategori,tipe)');
            Umain.Qhost1.SQL.Add('VALUES (null,:kodeongkos,:namaongkos,:satuan,:harga,:kategori,:tipe)');
            Umain.Qhost1.ParamByName('kodeongkos').AsString:=kode.Text;
            Umain.Qhost1.ParamByName('namaongkos').AsString:=nama.Text;
            Umain.Qhost1.ParamByName('satuan').AsString:=satuan.Text;
            Umain.Qhost1.ParamByName('harga').AsCurrency:=harga.Value;
            Umain.Qhost1.ParamByName('kategori').AsString:=kategori.Text;
            Umain.Qhost1.ParamByName('tipe').AsString:=tipe.Text;
            Umain.Qhost1.Execute;


        end
        else
        begin

            Umain.Qhost1.close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('UPDATE ongkos');
            Umain.Qhost1.SQL.Add('SET kodeongkos=:kodeongkos,namaongkos=:namaongkos,satuan=:satuan,harga=:harga,kategori=:kategori,tipe=:tipe WHERE id=:id;');

            Umain.Qhost1.SQL.Add('UPDATE paketongkos');
            Umain.Qhost1.SQL.Add('SET kodeongkos=:kodeongkos WHERE kodeongkos=:kodeongkoslama;');

            Umain.Qhost1.ParamByName('id').AsInteger:=_id;
            Umain.Qhost1.ParamByName('kodeongkoslama').AsString:=_kodeongkoslama;
            Umain.Qhost1.ParamByName('kodeongkos').AsString:=kode.Text;
            Umain.Qhost1.ParamByName('namaongkos').AsString:=nama.Text;
            Umain.Qhost1.ParamByName('satuan').AsString:=satuan.Text;
            Umain.Qhost1.ParamByName('harga').AsCurrency:=harga.Value;
            Umain.Qhost1.ParamByName('kategori').AsString:=kategori.Text;
            Umain.Qhost1.ParamByName('tipe').AsString:=tipe.Text;
            Umain.Qhost1.Execute;

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

procedure Tuongkos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kode.Clear;
nama.Clear;
satuan.Clear;
harga.Value:=0;
kategori.Text:='';
tipe.Text:='';
end;

end.
