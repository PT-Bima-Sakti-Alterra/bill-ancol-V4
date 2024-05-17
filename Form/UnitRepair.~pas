unit UnitRepair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, StdCtrls, cxButtons, RzPrgres, cxControls, 
  cxContainer, cxEdit, ActnList, DB, MemDS, DBAccess, MyAccess, cxLabel,
  cxTextEdit, cxMemo, dxSkinOffice2013White, ExtCtrls, RzPanel;

type
  Turepair = class(TForm)
    RzPanel1: TRzPanel;
    btnOK: TcxButton;
    cxButton1: TcxButton;
    memo: TcxMemo;
    cxLabel1: TcxLabel;
    Qmemo: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    info: TRzPanel;
    procedure btnOKClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urepair: Turepair;

implementation

{$R *.dfm}  uses Module, FormBackup,strutils;

procedure Turepair.btnOKClick(Sender: TObject);
var
j:integer;
table:String;
filename:String;
begin

 if(DM.Xflag='Repair')then
 begin

  DM.Qcek.close;
  DM.Qcek.SQl.Clear;
  DM.Qcek.SQL.Add('SHOW TABLES');
  DM.Qcek.Open;

  memo.clear;

           for j:=1 to DM.Qcek.RecordCount do
           begin
               table:=DM.Qcek.Fieldbyname('tables_in_'+DM.DB).AsString;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('REPAIR TABLE '+table);
               DM.Qexec.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('OPTIMIZE TABLE '+table);
               DM.Qexec.Execute; 

               memo.Lines.Add(DM.Qexec.Fieldbyname('table').AsString+'->'+DM.Qexec.Fieldbyname('Op').AsString+'->'+DM.Qexec.Fieldbyname('msg_type').AsString+'->'+DM.Qexec.Fieldbyname('msg_text').AsString);
               DM.Qcek.Next;

           end;;
    
             MessageDlg('Perawatan Data Selesai  ', mtInformation, [mbOK], 0);
 end
 else
 begin
    if(Fbackup.Savedialog1.Execute)then
    begin

      if(RightStr(Fbackup.SaveDialog1.FileName,4)='.sql')then
      begin

          DM.Qcek.close;
          DM.Qcek.SQl.Clear;
          DM.Qcek.SQL.Add('SHOW TABLES');
          DM.Qcek.Open;

          memo.clear;

           for j:=1 to DM.Qcek.RecordCount do
           begin
               table:=DM.Qcek.Fieldbyname('tables_in_'+DM.DB).AsString;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('REPAIR TABLE '+table);
               DM.Qexec.Execute;



               DM.Qcek.Next;

               memo.Lines.Add(DM.Qexec.Fieldbyname('table').AsString+'->'+DM.Qexec.Fieldbyname('Op').AsString+'->'+DM.Qexec.Fieldbyname('msg_type').AsString+'->'+DM.Qexec.Fieldbyname('msg_text').AsString);

           end;; 

           memo.Lines.Add('..Proses Backup Database....!!');
           memo.Lines.Add('..Harap Menunggu....');

      
        filename:=Fbackup.SaveDialog1.FileName;
        Fbackup.Dump.BackupToFile(filename);
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

procedure Turepair.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Turepair.FormClose(Sender: TObject; var Action: TCloseAction);
begin
memo.clear;
end;

procedure Turepair.Action2Execute(Sender: TObject);
begin
close;
end;

end.
