unit unituserloket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2013White,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, ActnList;

type
  Tuuserloket = class(TForm)
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
    cxLabel6: TcxLabel;
    bolehpelunasan: TcxComboBox;
    cxLabel7: TcxLabel;
    pusat: TcxComboBox;
    cxLabel8: TcxLabel;
    bolehcetaklpp: TcxComboBox;
    cxLabel9: TcxLabel;
    bolehpembatalan: TcxComboBox;
    cxLabel10: TcxLabel;
    bolehcetakulang: TcxComboBox;
    cxLabel11: TcxLabel;
    bolehkoreksidenda: TcxComboBox;
    cxLabel12: TcxLabel;
    bolehrubahtanggalbayar: TcxComboBox;
    cxLabel13: TcxLabel;
    flagaktif: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel14: TcxLabel;
    bolehpembatalankasirlain: TcxComboBox;
    RzPanel8: TRzPanel;
    cxLabel15: TcxLabel;
    bolehpelunasannonair: TcxComboBox;
    cxLabel16: TcxLabel;
    bolehpembatalantanggallain: TcxComboBox;
    cxLabel17: TcxLabel;
    bolehloncatbulan: TcxComboBox;
    cxLabel18: TcxLabel;
    tagihan: TcxComboBox;
    cxLabel19: TcxLabel;
    angsuran: TcxComboBox;
    cxLabel20: TcxLabel;
    tunggakan: TcxComboBox;
    cxLabel21: TcxLabel;
    laporan: TcxComboBox;
    cxLabel22: TcxLabel;
    tutuploket: TcxComboBox;
    cxLabel23: TcxLabel;
    setoran: TcxComboBox;
    cxLabel24: TcxLabel;
    penerimaan: TcxComboBox;
    cxLabel25: TcxLabel;
    infoloket: TcxComboBox;
    cxLabel26: TcxLabel;
    kwitansimanual: TcxComboBox;
    cxLabel27: TcxLabel;
    userceksetoran: TcxComboBox;
    cxLabel28: TcxLabel;
    userhapusdenda: TcxComboBox;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uuserloket: Tuuserloket;

implementation

uses UnitCombo, Module;

{$R *.dfm}

procedure Tuuserloket.noClick(Sender: TObject);
begin
close;
end;

procedure Tuuserloket.okClick(Sender: TObject);
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
