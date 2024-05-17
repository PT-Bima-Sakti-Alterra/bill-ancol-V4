unit unittsumberair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, StdCtrls, cxButtons, ActnList, dxSkinOffice2013White,
  ExtCtrls, RzPanel, dxSkiniMaginary,
  DB, MemDS, DBAccess, MyAccess;

type
  Tutsumberair = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    sumberair: TcxTextEdit;
    cxLabel1: TcxLabel;
    RzPanel4: TRzPanel;
    Qcek: TMyQuery;
    procedure noClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  utsumberair: Tutsumberair;

implementation

{$R *.dfm}uses Module, UnitMain, StrUtils;

procedure Tutsumberair.noClick(Sender: TObject);
begin
close;
end;

procedure Tutsumberair.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
sumberair.Clear;
end;

procedure Tutsumberair.okClick(Sender: TObject);
begin


if(sumberair.Text<>'')then
begin


  TRY
  Umain.openkoneksi_host;


    if(Umain.host.Connected=true)then
    begin


        if (DM.Xkey='Tambah')then
        begin
          Qcek.close;
          Qcek.SQL.Clear;
          Qcek.SQL.Add('select * FROm sumberair WHERe sumberair like :sumberair"%"');
          Qcek.ParamByName('sumberair').AsString:=LeftStr(sumberair.Text,3);
          Qcek.Open;

          DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('select * FROm sumberair WHERe sumberair=:sumberair');
          DM.Qcek.ParamByName('sumberair').AsString:=sumberair.Text;
          DM.Qcek.Open;

          if(DM.Qcek.RecordCount=0)then
          begin

            Umain.Qhost1.close;
            Umain.Qhost1.SQl.Clear;
            Umain.Qhost1.SQL.Add('replace into sumberair VALUES (:kodesumberair,:sumberair)');
            Umain.Qhost1.ParamByName('kodesumberair').AsString:=LeftStr(sumberair.Text,3)+IntToStr(Qcek.RecordCount+1);
            Umain.Qhost1.ParamByName('sumberair').AsString:=sumberair.Text;
            Umain.Qhost1.Execute;

            DM.Qexec.close;
            DM.Qexec.SQl.Clear;
            DM.Qexec.SQL.Add('replace into sumberair VALUES (null,:kodesumberair,:sumberair)');
            DM.Qexec.ParamByName('kodesumberair').AsString:=LeftStr(sumberair.Text,3)+IntToStr(Qcek.RecordCount+1);
            DM.Qexec.ParamByName('sumberair').AsString:=sumberair.Text;
            DM.Qexec.Execute;


            DM.uraianlogakses:='Tambah sumber air '+sumberair.Text;
            DM.targetlogakses:=sumberair.Text;
            DM.logakses;

            ModalResult:=MrOk;




          end
          else
            MessageDlg('Sumber Air sudah ada !!',mtInformation,[mbOK],0);

        end
        else
        begin


            Umain.Qhost1.close;
            Umain.Qhost1.SQl.Clear;
            Umain.Qhost1.SQL.Add('update sumberair set sumberair=:sumberair WHERE sumberair=:sumberairlama');
            Umain.Qhost1.ParamByName('sumberair').AsString:=sumberair.Text;
            Umain.Qhost1.ParamByName('sumberairlama').AsString:=DM.Xsumberairlama;
            Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQl.Clear;
            DM.Qexec.SQL.Add('update sumberair set sumberair=:sumberair WHERE id=:id');
            DM.Qexec.ParamByName('sumberair').AsString:=sumberair.Text;
            DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
            DM.Qexec.Execute;


            Umain.Qhost1.close;
            Umain.Qhost1.SQl.Clear;
            Umain.Qhost1.SQL.Add('update pelanggan set sumberair=:sumberair WHERE sumberair=:sumberairlama');
            Umain.Qhost1.ParamByName('sumberair').AsString:=sumberair.Text;
            Umain.Qhost1.ParamByName('sumberairlama').AsString:=DM.Xsumberairlama;
            Umain.Qhost1.Execute;


            DM.Qexec.close;
            DM.Qexec.SQl.Clear;
            DM.Qexec.SQL.Add('update pelanggan set sumberair=:sumberair WHERE sumberair=:sumberairlama');
            DM.Qexec.ParamByName('sumberair').AsString:=sumberair.Text;
            DM.Qexec.ParamByName('sumberairlama').AsString:=DM.Xsumberairlama;
            DM.Qexec.Execute;


            DM.uraianlogakses:='Koreksi sumber air '+DM.Xsumberairlama;
            DM.targetlogakses:=DM.Xsumberairlama;
            DM.logakses;

            ModalResult:=MrOk;



        end;


        Umain.host.close;


    end
    else
    MessageDlg('Maaf, Koneksi Tidak Terhubung dengan Master Cloud !!', mtInformation, [mbOK], 0);

  except ON E:Exception do
  begin
            Umain.host.close;
            MessageDlg('Terjadi Kesalahan !! '+char(13)+
            E.Message, mtWarning, [mbOK], 0);
  end;
  end;



  end
  else
    MessageDlg('Harap Isi Sumber Air !!',mtInformation,[mbOK],0);

 Umain.host.close;


end;

end.
