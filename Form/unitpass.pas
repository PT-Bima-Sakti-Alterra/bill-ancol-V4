unit unitpass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,  
  Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, ExtCtrls, RzPanel,
  ActnList, dxSkinOffice2013White, cxMaskEdit,
  cxDropDownEdit;

type
  Tupass = class(TForm)
    RzPanel1: TRzPanel;
    password: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    alasan: TcxComboBox;
    cxLabel80: TcxLabel;
    cxLabel1: TcxLabel;
    perhitungan: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure alasanPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xpass:String;    
  end;

var
  upass: Tupass;

implementation

{$R *.dfm} uses Module, UnitMain;

procedure Tupass.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tupass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
password.Clear;
end;

procedure Tupass.cxButton2Click(Sender: TObject);
begin

        if(alasan.Text='')then
        begin
            MessageDlg('Alasan Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
            alasan.SetFocus;
            Exit;
        end;

        DM.Qcek.close;
        DM.Qcek.SQL.Clear;
        Dm.Qcek.SQL.Add('select passworduser,:pass as passwordkonfirmasi from userakses where nama=:nama');
        DM.Qcek.ParamByName('nama').AsString:=umain.user.Caption;
        DM.Qcek.ParamByName('pass').AsString:=DM.DCP_rc41.EncryptString(DM.NamaUser+password.Text+'B1M@S@KT1');//LowerCase(password.Text);
        DM.Qcek.Open;

        if(DM.Qcek.FieldByName('passworduser').AsString=DM.Qcek.FieldByName('passwordkonfirmasi').AsString)then
        begin
          ModalResult:=mrOk;
        end
        else
          MessageDlg('Password Salah !!', mtInformation, [mbOk], 0);
end;

procedure Tupass.FormShow(Sender: TObject);
begin
  cxLabel2.Visible:=false;
  perhitungan.Visible:=false;
  perhitungan.Clear;
  alasan.Text:='';

   //alasan koreksi
   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT id,alasan FROM alasan_koreksi ORDER BY id ASC');
   DM.Qcek.Open;
   alasan.Properties.Items.Clear;

   while not DM.Qcek.Eof do
   begin
            alasan.Properties.Items.Add(DM.Qcek.FieldByName('alasan').AsString);
            DM.Qcek.Next;
   end;

end;

procedure Tupass.alasanPropertiesChange(Sender: TObject);
begin
  if(alasan.ItemIndex=1)then
  begin
     cxLabel2.Visible:=true;
     perhitungan.Visible:=true;
  end
  else
  begin
     cxLabel2.Visible:=false;
     perhitungan.Visible:=false;   
  end;
end;

end.
