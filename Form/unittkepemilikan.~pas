unit unittkepemilikan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics,
  StdCtrls, cxButtons, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, dxSkinOffice2013White, ActnList, ExtCtrls,
  RzPanel;

type
  Tutkepemilikan = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    ok: TcxButton;
    kepemilikan: TcxTextEdit;
    cxLabel1: TcxLabel;
    no: TcxButton;
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
  utkepemilikan: Tutkepemilikan;

implementation

uses Module,UnitMain;

{$R *.dfm}

procedure Tutkepemilikan.FormShow(Sender: TObject);
begin
  kepemilikan.SetFocus;
end;

procedure Tutkepemilikan.noClick(Sender: TObject);
begin
  Close;
end;

procedure Tutkepemilikan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 umain.host.close;
 kepemilikan.Clear;
end;


procedure Tutkepemilikan.okClick(Sender: TObject);
begin
if(kepemilikan.Text<>'') then
begin

  TRY
  Umain.openkoneksi_host;


   if(Umain.host.Connected=true)then
   begin



    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select * FROm kepemilikan WHERe kepemilikanbangunan=:kepemilikanbangunan');
    DM.Qcek.ParamByName('kepemilikanbangunan').AsString:=kepemilikan.Text;
    DM.Qcek.Open;

    if(DM.Qcek.RecordCount=0)then
    begin


    if(DM.Xflag='Tambah')then
    begin


          Umain.Qhost1.Close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('replace INTO kepemilikan VALUES (:kepemilikan)');
          Umain.Qhost1.ParamByName('kepemilikan').AsString:= kepemilikan.Text;
          Umain.Qhost1.Execute;

          DM.Qexec.Close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('replace INTO kepemilikan VALUES (null,:kepemilikan)');
          DM.Qexec.ParamByName('kepemilikan').AsString:= kepemilikan.Text;
          DM.Qexec.Execute;

           DM.uraianlogakses:='Tambah Kepemilikan '+kepemilikan.text;
           DM.targetlogakses:=kepemilikan.Text;
           DM.logakses;

           ModalResult:=MrOk;



     
    end
    else begin


          Umain.Qhost1.Close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('UPDATE kepemilikan SET kepemilikanbangunan=:kepemilikan WHERE kepemilikanbangunan=:kepemilikanlama');
          Umain.Qhost1.ParamByName('kepemilikanlama').AsString:= DM.Xkepemilikan;
          Umain.Qhost1.ParamByName('kepemilikan').AsString:= kepemilikan.Text;
          Umain.Qhost1.Execute;

          DM.Qexec.Close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE kepemilikan SET kepemilikanbangunan=:kepemilikan WHERE id=:id');
          DM.Qexec.ParamByName('id').AsInteger:= DM.Xid;
          DM.Qexec.ParamByName('kepemilikan').AsString:= kepemilikan.Text;
          DM.Qexec.Execute;

          if(DM.Xkepemilikan<>kepemilikan.Text)then
          begin


            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('UPDATE pelanggan SET kepemilikanbangunan=:kepemilikan WHERE kepemilikanbangunan=:kepemilikanlama');
            DM.Qexec.ParamByName('kepemilikan').AsString:= TRIM(kepemilikan.Text);
            DM.Qexec.ParamByName('kepemilikanlama').AsString:= DM.Xkepemilikan;
            DM.Qexec.Execute;


        
          end;

  
          DM.uraianlogakses:='Koreksi Kepemilikan '+DM.Xkepemilikan;
          DM.targetlogakses:=DM.Xkepemilikan;
          DM.logakses;

           ModalResult:=mrOk;

     

     end;




     end
     else
     MessageDlg('Sumber Air sudah ada !!',mtInformation,[mbOK],0);


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
  MessageDlg('Kepemilikan tidak boleh kosong !!', mtWarning, [mbOK],0);


  Umain.host.close;


end;

end.
