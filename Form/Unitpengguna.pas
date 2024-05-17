unit Unitpengguna;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxCurrencyEdit, ActnList,
  cxMaskEdit, cxDropDownEdit, ExtCtrls, RzPanel, dxSkiniMaginary,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;


type
  Tupengguna = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    hakakses: TcxComboBox;
    konfirm: TcxTextEdit;
    pass: TcxTextEdit;
    namauser: TcxTextEdit;
    nama: TcxTextEdit;
    cxLabel1: TcxLabel;
    noid: TcxTextEdit;
    cxLabel2: TcxLabel;
    status: TcxComboBox;
    RzPanel8: TRzPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  upengguna: Tupengguna;

implementation

{$R *.dfm}uses Module, UnitCombo;

procedure Tupengguna.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tupengguna.cxButton2Click(Sender: TObject);
begin
if(nama.Text<>'') and
( pass.Text<>'') and
(hakakses.Text<>'') and
( namauser.Text<>'') and
(status.Text<>'') then
begin

  if(DM.Xflag='Tambah')then
  begin

    DM.cekpassword(pass.Text);

    if DM.PesanPass<>'' then
    begin
      MessageDlg(DM.PesanPass, mtInformation, [mbOk], 0);
      Exit;
    end;

    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select * from userakses where nama=:nama or namauser=:namauser');
    DM.Qcek.ParamByName('nama').AsString:=nama.Text;
    DM.Qcek.ParamByName('namauser').AsString:=namauser.Text;
    DM.Qcek.Open;
    if(DM.Qcek.RecordCount=0)then
    begin

      if(pass.Text=konfirm.Text)then
      begin
        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('insert into userakses(nama,namauser,passworduser,hak_akses,aktif,waktu,noidentitas) values (:nama,:namauser,:passworduser,:hak_akses,:aktif,NOW(),:nik)');
        DM.Qexec.ParamByName('nama').AsString:=nama.Text;
        DM.Qexec.ParamByName('namauser').AsString:=namauser.Text;
        DM.Qexec.ParamByName('passworduser').AsString:=DM.DCP_rc41.EncryptString(namauser.Text+pass.Text+'B1M@S@KT1');//pass.Text;
        DM.Qexec.ParamByName('hak_akses').AsString:=hakakses.Text;
        DM.Qexec.ParamByName('nik').AsString:=noid.Text;
        DM.Qexec.ParamByName('aktif').AsString:=IntToStr(status.ItemIndex);
        DM.Qexec.Execute;


        DM.uraianlogakses:='Menambah Pengguna '+nama.Text+'  - '+hakakses.Text;
        DM.targetlogakses:=nama.Text;
        DM.logakses;


        ModalResult:=mrOk;
      end
      else
         MessageDlg('Password && Konfirmasi Tidak Sesuai..', mtInformation, [mbOk], 0);


    end
    else
     MessageDlg('Nama atau Username Sudah Digunakan...', mtInformation, [mbOk], 0);

  end
  else
  begin
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select * from userakses where (nama=:nama and id<>:id) or (namauser=:namauser and id<>:id)');
    DM.Qcek.ParamByName('nama').AsString:=nama.Text;
    DM.Qcek.ParamByName('namauser').AsString:=namauser.Text;
    DM.Qcek.ParamByName('id').AsInteger:=DM.Xid;
    DM.Qcek.Open;
    if(DM.Qcek.RecordCount=0)then
    begin
        DM.Qexec.close;
        DM.Qexec.SQL.Clear;
        DM.Qexec.SQL.Add('update userakses set nama=:nama,namauser=:namauser,hak_akses=:hak_akses,noidentitas=:nik,aktif=:aktif where id=:id');
        DM.Qexec.ParamByName('nama').AsString:=nama.Text;
        DM.Qexec.ParamByName('namauser').AsString:=namauser.Text;
        DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
        DM.Qexec.ParamByName('hak_akses').AsString:=hakakses.Text;
        DM.Qexec.ParamByName('nik').AsString:=noid.Text;
        DM.Qexec.ParamByName('aktif').AsString:=IntToStr(status.ItemIndex);
        DM.Qexec.Execute;


        DM.uraianlogakses:='Perubahan Data Pengguna Pusat '+nama.Text+'  - '+hakakses.Text;
        DM.targetlogakses:=nama.Text;
        DM.logakses;


        ModalResult:=mrOk;
    end
    else
     MessageDlg('Nama atau Username Sudah Digunakan...', mtInformation, [mbOk], 0);

  end;



end
else
  MessageDlg('Harap Lengkapi Data...', mtInformation, [mbOk], 0);
end;

procedure Tupengguna.FormClose(Sender: TObject; var Action: TCloseAction);
begin
nama.Clear;
namauser.Clear;
pass.Clear;
konfirm.Clear;
hakakses.Clear;
noid.clear;
status.ItemIndex:=0;
end;

procedure Tupengguna.FormShow(Sender: TObject);
begin


   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT hak_akses FROM hakakses ORDER BY hak_akses ASC ');
   DM.Qcek.Open; 

   hakakses.Properties.Items.Clear;
    
   while not DM.Qcek.Eof do
   begin 
            hakakses.Properties.Items.Add(DM.Qcek.FieldByName('hak_akses').ASstring);
            DM.Qcek.Next;
   end;

   hakakses.Text:=DM.Xjabatan;

end;

end.
