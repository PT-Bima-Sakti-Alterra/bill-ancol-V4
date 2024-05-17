unit unitflag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, ActnList,
  dxSkiniMaginary, ComCtrls, dxCore, cxDateUtils, cxCalendar, ExtCtrls,
  RzPanel;

type
  Tusetflag = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    ok: TcxButton;
    cxButton1: TcxButton;
    kodeflag: TcxComboBox;
    tanggal: TcxDateEdit;
    flag: TcxComboBox;
    cxLabel2: TcxLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure kodeflagPropertiesChange(Sender: TObject);
    procedure flagPropertiesChange(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xflag:string;
  end;

var
  usetflag: Tusetflag;

implementation

{$R *.dfm}  uses Module, UnitCombo, UnitMain;

procedure Tusetflag.FormShow(Sender: TObject);
begin
TRY
  umain.openkoneksi_host;


    ucombo.isikombo();
    flag.Properties.Items:=Ucombo.flag.Properties.Items;
    kodeflag.Properties.Items:=Ucombo.kodeflag.Properties.Items;


     kodeflag.Text:=xflag;

 except
    begin
          MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
                     'Tidak Terhubung Dengan Server Loket/Cloud', mtwarning, [MbOk], 0);
          close;
    end;
  end;

end;

procedure Tusetflag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
flag.Clear;
umain.host.close;
end;

procedure Tusetflag.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tusetflag.okClick(Sender: TObject);
begin

  TRY
    TRY
        Umain.openkoneksi_host;

         DM.Qexec.close;
         DM.Qexec.SQL.Clear;
         DM.Qexec.SQL.Add('START TRANSACTION');
         DM.Qexec.Execute;

         Umain.Qhost1.close;
         Umain.Qhost1.SQL.Clear;
         Umain.Qhost1.SQL.Add('START TRANSACTION');
         Umain.Qhost1.Execute;



         Umain.Qhost1.close;
         Umain.Qhost1.SQL.Clear;
         Umain.Qhost1.SQL.Add('Update pelanggan set flag=:kodeflag,waktuupdate=NOW() where nosamb=:nosamb');
         Umain.Qhost1.ParamByName('nosamb').AsString:=DM.Xnosamb;
         Umain.Qhost1.ParamByName('kodeflag').AsString:=kodeflag.Text;
         Umain.Qhost1.Execute;

         DM.Qexec.close;
         DM.Qexec.SQL.Clear;
         DM.Qexec.SQL.Add('Update pelanggan set flag=:kodeflag where nosamb=:nosamb');
         DM.Qexec.ParamByName('nosamb').AsString:=DM.Xnosamb;
         DM.Qexec.ParamByName('kodeflag').AsString:=kodeflag.Text;
         DM.Qexec.Execute;
         

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
          DM.Qexec.ParamByName('nosamb').AsString:=DM.xnosamb;
          DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
          DM.Qexec.ParamByName('tipe').AsString:=flag.Text;
          DM.Qexec.ParamByName('uraian').AsString:='Set Flag '+flag.Text;
          DM.Qexec.Execute;

          Umain.Qhost1.close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('INSERT INTO memo (nosamb,tanggal,tipe,waktuupdate,uraian) values (:nosamb,CONCAT(:tanggal," ",current_time),:tipe,NOW(),:uraian) ');
          Umain.Qhost1.ParamByName('nosamb').AsString:=DM.xnosamb;
          Umain.Qhost1.ParamByName('tanggal').AsDate:=tanggal.date;
          Umain.Qhost1.ParamByName('tipe').AsString:=flag.Text;
          Umain.Qhost1.ParamByName('uraian').AsString:='Set Flag '+flag.Text;
          Umain.Qhost1.Execute;


          DM.uraianlogakses:='Set Pelanggan '+DM.Xnosamb+ ' ke flag "'+flag.Text+'"';
          DM.targetlogakses:=DM.Xnosamb;
          DM.logakses;


         Umain.Qhost1.close;
         Umain.Qhost1.SQL.Clear;
         Umain.Qhost1.SQL.Add('COMMIT');
         Umain.Qhost1.Execute; 


         DM.Qexec.close;
         DM.Qexec.SQL.Clear;
         DM.Qexec.SQL.Add('COMMIT');
         DM.Qexec.Execute;





         ModalResult:=MrOK;


         except ON E:Exception do
         begin


             Umain.Qhost1.close;
             Umain.Qhost1.SQL.Clear;
             Umain.Qhost1.SQL.Add('ROLLBACK');
             Umain.Qhost1.Execute;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('ROLLBACK');
             DM.Qexec.Execute;



            MessageDlg('Terjadi Kesalahan...!!'+char(13)+char(13)+
                       E.Message, mtError, [MbOk], 0);
         end;
        end;

    FINALLY

      umain.host.close;

    end;




end;

procedure Tusetflag.kodeflagPropertiesChange(Sender: TObject);
begin
flag.ItemIndex:=kodeflag.ItemIndex;
end;

procedure Tusetflag.flagPropertiesChange(Sender: TObject);
begin
kodeflag.ItemIndex:=flag.ItemIndex;
end;

procedure Tusetflag.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tusetflag.FormCreate(Sender: TObject);
begin
tanggal.date:=date;
end;

end.
