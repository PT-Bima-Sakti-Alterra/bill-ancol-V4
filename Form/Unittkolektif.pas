unit UnitTkolektif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, ActnList,
  StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxGroupBox, ExtCtrls, RzPanel,dxSkinOffice2013White, cxMemo;


type
  Tutkolektif = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    kode: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btnOK: TcxButton;
    cxButton2: TcxButton;
    kolektif: TcxMemo;
    ket: TcxMemo;
    cxLabel4: TcxLabel;
    alamat: TcxMemo;
    RzPanel4: TRzPanel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  utkolektif: Tutkolektif;

implementation

{$R *.dfm}   uses Module, UnitMain;

procedure Tutkolektif.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tutkolektif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kode.clear;
kolektif.clear;
ket.clear;
alamat.Clear;

end;

procedure Tutkolektif.btnOKClick(Sender: TObject);
begin
if(kode.Text<>'')
OR
(kolektif.Text<>'')
then
begin

  TRY
  Umain.openkoneksi_host;


  
    if(Umain.host.Connected=true)then
    begin



    if(DM.Xflag='Tambah')then
    begin

      DM.Qcek.Close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select * from kolektif where kodekolektif=:kodekolektif');
      DM.Qcek.ParamByName('kodekolektif').AsString:=kode.Text;
      DM.Qcek.Open;

      Umain.Qhost1.Close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('select * from kolektif where kodekolektif=:kodekolektif');
      Umain.Qhost1.ParamByName('kodekolektif').AsString:=kode.Text;
      Umain.Qhost1.Open;

      if(DM.Qcek.RecordCount=0) and (Umain.Qhost1.RecordCount=0)then
      begin

          Umain.Qhost1.Close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('replace INTO kolektif VALUES (:kodekolektif,:kolektif,:ket,:alamat)');
          Umain.Qhost1.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
          Umain.Qhost1.ParamByName('kolektif').AsString:= kolektif.Text;
          Umain.Qhost1.ParamByName('ket').AsString:= ket.Text;
          Umain.Qhost1.ParamByName('alamat').AsString:= alamat.Text;
          Umain.Qhost1.Execute;

          DM.Qexec.Close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('replace INTO kolektif VALUES (null,:kodekolektif,:kolektif,:ket,:alamat)');
          DM.Qexec.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
          DM.Qexec.ParamByName('kolektif').AsString:= kolektif.Text;
          DM.Qexec.ParamByName('ket').AsString:= ket.Text;
          DM.Qexec.ParamByName('alamat').AsString:= alamat.Text;  
          DM.Qexec.Execute;

           DM.uraianlogakses:='Tambah Kolektif '+kolektif.text;
           DM.targetlogakses:=kolektif.Text;
           DM.logakses;

           ModalResult:=MrOk;

      end
      else
        MessageDlg('Kode Kolektif sudah ada di Pusat/Loket !!', mtWarning, [mbOK], 0);
    end
    else begin


      DM.Qcek.Close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select * from kolektif where kodekolektif=:kodekolektif and id<>:id');
      DM.Qcek.ParamByName('kodekolektif').AsString:=kode.Text;
      DM.Qcek.ParamByName('id').AsInteger:=DM.Xid;
      DM.Qcek.Open;

      

      if(DM.Qcek.RecordCount=0)then
      begin



          Umain.Qhost1.Close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('UPDATE kolektif SET kodekolektif=:kodekolektif,kolektif=:kolektif,ket=:ket,alamat=:alamat WHERE kodekolektif=:kodekolektiflama');
          Umain.Qhost1.ParamByName('kodekolektiflama').AsString:= DM.Xkodekolektif;
          Umain.Qhost1.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
          Umain.Qhost1.ParamByName('kolektif').AsString:= kolektif.Text;
          Umain.Qhost1.ParamByName('ket').AsString:= ket.Text;
          Umain.Qhost1.ParamByName('alamat').AsString:= alamat.Text;   
          Umain.Qhost1.Execute;

          DM.Qexec.Close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE kolektif SET kodekolektif=:kodekolektif,kolektif=:kolektif,ket=:ket,alamat=:alamat WHERE id=:id');
          DM.Qexec.ParamByName('id').AsInteger:= DM.Xid;
          DM.Qexec.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
          DM.Qexec.ParamByName('kolektif').AsString:= kolektif.Text;
          DM.Qexec.ParamByName('ket').AsString:= ket.Text;
          DM.Qexec.ParamByName('alamat').AsString:= alamat.Text;
          DM.Qexec.Execute;

          if(DM.Xkodekolektif<>kode.Text)then
          begin


            Umain.Qhost1.Close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('UPDATE pelanggan SET kodekolektif=:kodekolektif WHERE kodekolektif=:kodekolektiflama');
            Umain.Qhost1.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
            Umain.Qhost1.ParamByName('kodekolektiflama').AsString:= DM.Xkodekolektif;
            Umain.Qhost1.Execute;

        

            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('UPDATE pelanggan SET kodekolektif=:kodekolektif WHERE kodekolektif=:kodekolektiflama');
            DM.Qexec.ParamByName('kodekolektif').AsString:= TRIM(kode.Text);
            DM.Qexec.ParamByName('kodekolektiflama').AsString:= DM.Xkodekolektif;
            DM.Qexec.Execute;


        
          end;

  
          DM.uraianlogakses:='Koreksi Kolektif '+DM.Xkodekolektif;
          DM.targetlogakses:=DM.Xkodekolektif;
          DM.logakses;

           ModalResult:=mrOk;

      end
      else
        MessageDlg('Kode Kolektif sudah ada di Pusat/Loket !!', mtWarning, [mbOK],0);


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
  MessageDlg('Kode && Kolektif tidak boleh kosong !!', mtWarning, [mbOK],0);


  Umain.host.close;


end;

procedure Tutkolektif.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tutkolektif.FormShow(Sender: TObject);
begin
if(DM.Xflag='Koreksi')then
kode.Properties.ReadOnly:=true
else
kode.Properties.ReadOnly:=false;
end;

end.
