unit unitpasspublishsemua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,  
  Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, ExtCtrls, RzPanel,
  ActnList, dxSkinOffice2013White, cxMaskEdit,
  cxDropDownEdit;

type
  Tupasspublishsemua = class(TForm)
    RzPanel1: TRzPanel;
    password: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xpass:String;    
  end;

var
  upasspublishsemua: Tupasspublishsemua;

implementation

{$R *.dfm} uses Module, UnitMain;

procedure Tupasspublishsemua.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tupasspublishsemua.FormClose(Sender: TObject; var Action: TCloseAction);
begin
password.Clear;
end;

procedure Tupasspublishsemua.cxButton2Click(Sender: TObject);
begin



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

end.
