unit unituserloket2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2013White,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, ActnList;

type
  Tuuserloket2 = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    nama: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    namauser: TcxTextEdit;
    cxLabel2: TcxLabel;
    passworduser: TcxTextEdit;
    cxLabel4: TcxLabel;
    konfirmasipassword: TcxTextEdit;
    kodeloket: TcxComboBox;
    cxLabel5: TcxLabel;
    cxLabel13: TcxLabel;
    flagaktif: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    cxLabel6: TcxLabel;
    hakakses: TcxComboBox;
    cxLabel7: TcxLabel;
    kodekelurahan: TcxComboBox;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uuserloket2: Tuuserloket2;

implementation

uses UnitCombo, Module;

{$R *.dfm}

procedure Tuuserloket2.noClick(Sender: TObject);
begin
close;
end;

procedure Tuuserloket2.okClick(Sender: TObject);
begin


    if(nama.Text='')then
    begin
      MessageDlg('Nama masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

     if(namauser.Text='')then
    begin
      MessageDlg('Username masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

      if(passworduser.Text='')then
    begin
      MessageDlg('Kata Sandi masih kosong!!', mtWarning, [MbOk], 0);
      exit;
    end;

     if(passworduser.Text<>konfirmasipassword.Text)then
    begin
      MessageDlg('Kata Sandi tidak sesuai!!', mtWarning, [MbOk], 0);
      exit;
    end;

    if passworduser.Enabled=true then
    begin
      DM.cekpassword(passworduser.Text);

      if DM.PesanPass<>'' then
      begin
        MessageDlg(DM.PesanPass, mtInformation, [mbOk], 0);
        Exit;
      end;
    end;

    ModalResult:=MrOk;

    
end;

end.