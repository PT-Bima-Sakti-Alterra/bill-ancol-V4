unit unitbackuphosting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, ActnList,
  DB, MemDS, DBAccess, MyAccess, cxLabel, cxTextEdit, cxMemo, StdCtrls,
  cxButtons,StrUtils, dxSkinOffice2013White, ExtCtrls,
  RzPanel;

type
  Tubackuphost = class(TForm)
    RzPanel1: TRzPanel;
    btnOK: TcxButton;
    cxButton1: TcxButton;
    memo: TcxMemo;
    cxLabel1: TcxLabel;
    Qmemo: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    Qexec: TMyQuery;
    info: TRzPanel;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Xflag:String;
  end;

var
  ubackuphost: Tubackuphost;

implementation

{$R *.dfm} uses module,unitMain, FormBackup;

procedure Tubackuphost.btnOKClick(Sender: TObject);
var
j:integer;
table:String;
filename:String;
begin



  Umain.openkoneksi_host;

 if(Xflag='Repair')then
 begin

  Qcek.close;
  Qcek.SQl.Clear;
  Qcek.SQL.Add('SHOW TABLES');
  Qcek.Open;

  memo.clear;

   for j:=1 to Qcek.RecordCount do
   begin
       table:=Qcek.Fieldbyname('tables_in_'+Umain.DBhost+'').AsString;

       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('REPAIR TABLE '+table);
       Qexec.Execute;

       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('OPTIMIZE TABLE '+table);
       Qexec.Execute;



       Qcek.Next;

       memo.Lines.Add(Qexec.Fieldbyname('table').AsString+'->'+Qexec.Fieldbyname('Op').AsString+'->'+Qexec.Fieldbyname('msg_type').AsString+'->'+Qexec.Fieldbyname('msg_text').AsString);

   end;;

     MessageDlg('Perawatan Data Selesai  ', mtInformation, [mbOK], 0);
 end
 else
 begin
    if(Fbackup.Savedialog1.Execute)then
    begin

      if(RightStr(Fbackup.SaveDialog1.FileName,4)='.sql')then
      begin

          Qcek.close;
          Qcek.SQl.Clear;
          Qcek.SQL.Add('SHOW TABLES');
          Qcek.Open;

          memo.clear;

           for j:=1 to Qcek.RecordCount do
           begin
               table:=Qcek.Fieldbyname('tables_in_'+Umain.DBhost+'').AsString;

               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('REPAIR TABLE '+table);
               Qexec.Execute;



               Qcek.Next;

               memo.Lines.Add(Qexec.Fieldbyname('table').AsString+'->'+Qexec.Fieldbyname('Op').AsString+'->'+Qexec.Fieldbyname('msg_type').AsString+'->'+Qexec.Fieldbyname('msg_text').AsString);

           end;;

           memo.Lines.Add('..Proses Backup Database....!!');
           memo.Lines.Add('..Harap Menunggu....');

      
        filename:=Fbackup.SaveDialog1.FileName;
        Fbackup.Dump2.BackupToFile(filename);
       MessageDlg('Backup Database Selesai  ', mtInformation, [mbOK], 0);
        memo.Lines.Add('..Backup Selesai !');
        close;
      end
      else begin
              MessageDlg('Backup Database Gagal !!  ', mtError, [mbOK], 0);
      end;;

end;;


 end;
end;

procedure Tubackuphost.FormShow(Sender: TObject);
begin
TRY
umain.openkoneksi_host;
memo.Lines.Clear;
except
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
          close;
end;

end;

procedure Tubackuphost.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tubackuphost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
umain.host.close;
end;

end.
