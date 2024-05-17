unit unitgantipass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, StdCtrls,
  cxButtons, cxLabel, cxTextEdit, ActnList, ExtCtrls,
  RzPanel, RzButton, RzRadChk,
  RzLabel;

type
  Tugantipass = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    password: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    passwordbaru: TcxTextEdit;
    cxLabel3: TcxLabel;
    konfirmasi: TcxTextEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    RzPanel8: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    btnOk: TcxButton;
    btnBatal: TcxButton;
    cekTanya: TRzCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action2Execute(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ugantipass: Tugantipass;

implementation

uses Module, UnitMain, RzStatus;

{$R *.dfm}

procedure Tugantipass.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tugantipass.cxButton2Click(Sender: TObject);
begin

   DM.Qcek.close;
   DM.Qcek.SQL.Clear;
   Dm.Qcek.SQL.Add('select passworduser,:passwordlama as lama,:passwordbaru as baru FROm userakses WHERE nama="'+umain.user.caption+'"' );
   DM.Qcek.ParamByName('passwordlama').AsString:=DM.DCP_rc41.EncryptString(DM.NamaUser+password.Text+'B1M@S@KT1');//LowerCase(password.Text);
   DM.Qcek.ParamByName('passwordbaru').AsString:=DM.DCP_rc41.EncryptString(DM.NamaUser+passwordbaru.Text+'B1M@S@KT1');//LowerCase(passwordbaru.Text);
   DM.Qcek.Open;

   if(DM.Qcek.fieldbyname('passworduser').AsString<>DM.Qcek.fieldbyname('lama').AsString) then
        MessageDlg('Password Lama Salah !! ', mtInformation, [mbOK], 0)
   else if (passwordbaru.Text<>konfirmasi.Text) then
        MessageDlg('Konfirmasi Password Tidak Sesuai !! ', mtInformation, [mbOK], 0)
   else
   begin

     DM.cekpassword(passwordbaru.Text);

     if DM.PesanPass<>'' then
     begin
        MessageDlg(DM.PesanPass, mtInformation, [mbOk], 0);
        Exit;
     end;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('update userakses set passworduser=:passworduser,waktu=NOW() WHERE nama=:nama');
     DM.Qexec.ParamByName('passworduser').AsString:=DM.Qcek.fieldbyname('baru').AsString;
     DM.Qexec.ParamByName('nama').AsString:=umain.user.Caption;
     DM.Qexec.Execute;


     DM.uraianlogakses:='Ganti Password User Pusat '+umain.user.Caption;
     DM.targetlogakses:= umain.user.Caption;
     DM.logakses;

     ModalResult:=MrOk;
   end;




end;

procedure Tugantipass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
password.Clear;
passwordbaru.Clear;
konfirmasi.Clear;
password.SetFocus;
end;

procedure Tugantipass.Action2Execute(Sender: TObject);
begin
  close;
end;

procedure Tugantipass.btnOkClick(Sender: TObject);
begin
  ugantipass.RzPanel2.Hide;
end;

procedure Tugantipass.btnBatalClick(Sender: TObject);
begin
  if cekTanya.Checked then
  begin
    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('UPDATE userakses SET waktu=now() WHERE namauser=:namauser');
    DM.Qexec.ParamByName('namauser').AsString := DM.NamaUser;
    Dm.Qexec.Execute;

    Close;
  end
  else
    Close;
end;

end.
