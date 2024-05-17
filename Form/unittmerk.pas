unit unittmerk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics,
  StdCtrls, cxButtons, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, dxSkinOffice2013White, ActnList, ExtCtrls,
  RzPanel;

type
  Tutmerk = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    merk: TcxTextEdit;
    cxLabel1: TcxLabel;
    RzPanel4: TRzPanel;
    procedure FormShow(Sender: TObject);
    procedure noClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    id : Integer;
    merkmeter : string;
    { Public declarations }
  end;

var
  utmerk: Tutmerk;

implementation

uses Module, UnitMain;

{$R *.dfm}

procedure Tutmerk.FormShow(Sender: TObject);
begin
  merk.SetFocus;
end;

procedure Tutmerk.noClick(Sender: TObject);
begin
  Close;
end;

procedure Tutmerk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
umain.host.close;
merk.Clear;
end;

procedure Tutmerk.okClick(Sender: TObject);
begin
  if(merk.Text<>'') then
begin

  TRY
  Umain.openkoneksi_host;


    IF(umain.host.Connected=true)then
    begin


              if(DM.Xflag='Tambah')then
              begin



                    Umain.Qhost1.Close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('replace INTO merkmeter VALUES (:merk)');
                    Umain.Qhost1.ParamByName('merk').AsString:= TRIM(merk.Text);
                    Umain.Qhost1.Execute;

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('replace INTO merkmeter VALUES (null,:merk)');
                    DM.Qexec.ParamByName('merk').AsString:= TRIM(merk.Text);  
                    DM.Qexec.Execute;

                     DM.uraianlogakses:='Tambah merk '+merk.text;
                     DM.targetlogakses:=merk.Text;
                     DM.logakses;

                     ModalResult:=MrOk;

     
              end
              else begin


                    Umain.Qhost1.Close;
                    Umain.Qhost1.SQL.Clear;
                    Umain.Qhost1.SQL.Add('UPDATE merkmeter SET merk=:merk WHERE merk=:merklama');
                    Umain.Qhost1.ParamByName('merklama').AsString:= DM.Xmerk;
                    Umain.Qhost1.ParamByName('merk').AsString:= TRIM(merk.Text);
                    Umain.Qhost1.Execute;

                    if(DM.Xmerk<>merk.Text)then
                    begin


                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQL.Add('UPDATE pelanggan SET merkmeter=:merk,waktuupdate=now() WHERE merkmeter=:merklama');
                      Umain.Qhost1.ParamByName('merk').AsString:= TRIM(merk.Text);
                      Umain.Qhost1.ParamByName('merklama').AsString:= DM.Xmerk;
                      Umain.Qhost1.Execute;

                    end;

                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE merkmeter SET merk=:merk WHERE id=:id');
                    DM.Qexec.ParamByName('id').AsInteger:= DM.Xid;
                    DM.Qexec.ParamByName('merk').AsString:= TRIM(merk.Text);
                    DM.Qexec.Execute;
  
                    DM.uraianlogakses:='Koreksi merk '+DM.Xmerk;
                    DM.targetlogakses:=DM.Xmerk;
                    DM.logakses;

                     ModalResult:=mrOk;

     

               end;
        end
        else
         MessageDlg('Maaf, Koneksi Tidak Terhubung dengan Master Cloud !!', mtInformation, [mbOK], 0);

   except ON E:Exception do
      begin
              MessageDlg('Terjadi Kesalahan !! '+char(13)+
              E.Message, mtWarning, [mbOK], 0);
         end;
   end;

     Umain.host.close;

end
else
  MessageDlg('Merk tidak boleh kosong !!', mtWarning, [mbOK],0);


  Umain.host.close;

end;

end.
