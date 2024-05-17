unit unitbiayalain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxLabel,
  cxTextEdit, cxCurrencyEdit, Menus, StdCtrls, cxButtons, ActnList,
  ExtCtrls, RzPanel;

type
  Tubiayalain = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    kode: TcxTextEdit;
    keterangan: TcxTextEdit;
    biaya: TcxCurrencyEdit;
    button: TcxButton;
    cxButton2: TcxButton;
    ActionList2: TActionList;
    Action3: TAction;
    Action4: TAction;
    info: TRzPanel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buttonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mode:String;
  end;

var
  ubiayalain: Tubiayalain;

implementation

{$R *.dfm}   uses Module, UnitMain;

procedure Tubiayalain.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tubiayalain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kode.Clear;
keterangan.Clear;
biaya.Value:=0;
end;

procedure Tubiayalain.buttonClick(Sender: TObject);
var
j:integer;
begin

if(kode.Text<>'')then
begin


        TRY
        Umain.openkoneksi_host;

          if(DM.Xflag='Tambah')then
          begin


            if(mode='1')then
            begin


              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('insert into byadministrasi_lain (kode,keterangan) values (:kode,:keterangan)');
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('insert into byadministrasi_lain (kode,keterangan,administrasilain) values (:kode,:keterangan,:biaya)');
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;

              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Tambah Biaya Administrasi Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;


            if(mode='2')then
            begin

              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('insert into bypemeliharaan_lain (kode,keterangan) values (:kode,:keterangan)');
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('insert into bypemeliharaan_lain (kode,keterangan,pemeliharaanlain) values (:kode,:keterangan,:biaya)');
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;

              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Tambah Biaya Pemeliharaan Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;


            if(mode='3')then
            begin

              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('insert into byretribusi_lain (kode,keterangan) values (:kode,:keterangan)');
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('insert into byretribusi_lain (kode,keterangan,retribusilain) values (:kode,:keterangan,:biaya)');
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;

              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Tambah Biaya Retribusi Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;

          end
          else
          if(DM.Xflag='Koreksi')then
          begin


            if(mode='1')then
            begin

              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('update byadministrasi_lain set kode=:kode,keterangan=:keterangan where kode=:kodelama');
              Umain.Qhost1.ParamByName('kodelama').AsString:=DM.xkodeadmlain;
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('update byadministrasi_lain set kode=:kode,keterangan=:keterangan,administrasilain=:biaya WHERE id=:id');
              DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;


              if(DM.xkodeadmlain<>kode.Text)then
              begin
                 DM.Qcek.Close;
                 Dm.Qcek.SQL.Clear;
                 Dm.Qcek.SQL.add('select periode FROm periode GROUP BY left(periode,4) ASC');
                 DM.Qcek.Open;


                  for j:=1 to DM.Qcek.RecordCount do
                  begin
                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE drd'+DM.Qcek.fieldbyname('periode').AsString+' SET kodeadministrasilain=:kodeadministrasilain WHERE kodeadministrasilain=:kodeadministrasilainlama');
                    DM.Qexec.ParamByName('kodeadministrasilainlama').AsString := DM.xkodeadmlain;
                    DM.Qexec.ParamByName('kodeadministrasilain').AsString := kode.Text;
                    DM.Qexec.Execute;
                  DM.Qcek.Next;
                 end;

              end;


              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Update Biaya Administrasi Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;


            if(mode='2')then
            begin

              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('update bypemeliharaan_lain set kode=:kode,keterangan=:keterangan where kode=:kodelama');
              Umain.Qhost1.ParamByName('kodelama').AsString:=DM.xkodepemlain;
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;

            

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('update bypemeliharaan_lain set kode=:kode,keterangan=:keterangan,pemeliharaanlain=:biaya WHERE id=:id');
              DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;


              if(DM.xkodepemlain<>kode.Text)then
              begin
                 DM.Qcek.Close;
                 Dm.Qcek.SQL.Clear;
                 Dm.Qcek.SQL.add('select periode FROm periode GROUP BY left(periode,4) ASC');
                 DM.Qcek.Open;


                  for j:=1 to DM.Qcek.RecordCount do
                  begin
                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE drd'+DM.Qcek.fieldbyname('periode').AsString+' SET kodepemeliharaanlain=:kodepemeliharaanlain WHERE kodepemeliharaanlain=:kodepemeliharaanlainlama');
                    DM.Qexec.ParamByName('kodepemeliharaanlainlama').AsString := DM.xkodepemlain;
                    DM.Qexec.ParamByName('kodepemeliharaanlain').AsString := kode.Text;
                    DM.Qexec.Execute;
                  DM.Qcek.Next;
                 end;

              end;


              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Update Biaya Pemeliharaan Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;


            if(mode='3')then
            begin


              Umain.Qhost1.close;
              Umain.Qhost1.SQL.Clear;
              Umain.Qhost1.SQL.Add('update byretribusi_lain set kode=:kode,keterangan=:keterangan where kode=:kodelama');
              Umain.Qhost1.ParamByName('kodelama').AsString:=DM.xkoderetlain;
              Umain.Qhost1.ParamByName('kode').AsString:=kode.Text;
              Umain.Qhost1.ParamByName('keterangan').AsString:=keterangan.Text;
              Umain.Qhost1.Execute;

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('update byretribusi_lain set kode=:kode,keterangan=:keterangan,retribusilain=:biaya WHERE id=:id');
              DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
              DM.Qexec.ParamByName('kode').AsString:=kode.Text;
              DM.Qexec.ParamByName('keterangan').AsString:=keterangan.Text;
              DM.Qexec.ParamByName('biaya').AsCurrency:=biaya.Value;
              DM.Qexec.Execute;


              if(DM.xkodepemlain<>kode.Text)then
              begin
                 DM.Qcek.Close;
                 Dm.Qcek.SQL.Clear;
                 Dm.Qcek.SQL.add('select periode FROm periode GROUP BY left(periode,4) ASC');
                 DM.Qcek.Open;


                  for j:=1 to DM.Qcek.RecordCount do
                  begin
                    DM.Qexec.Close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('UPDATE drd'+DM.Qcek.fieldbyname('periode').AsString+' SET koderetribusilain=:koderetribusilain WHERE koderetribusilain=:koderetribusilainlama');
                    DM.Qexec.ParamByName('koderetribusilainlama').AsString := DM.xkoderetlain;
                    DM.Qexec.ParamByName('koderetribusilain').AsString := kode.Text;
                    DM.Qexec.Execute;
                  DM.Qcek.Next;
                 end;

              end;


              ModalResult:=mrOk;

    
                   DM.uraianlogakses:='Update Biaya Retribusi Lain '+TRIM(kode.Text);
                   DM.targetlogakses:=TRIM(kode.Text);
                   DM.logakses;
            end;

          end;

     except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;

    umain.host.close;

  end
  else
    MessageDlg('Harap Isi Kode !!', mtWarning, [mbOK], 0);
  
end;

procedure Tubiayalain.FormShow(Sender: TObject);
begin
if(mode='1')then
  info.Caption:='Administrasi Lain'
else if(mode='2')then
  info.Caption:='Pemeliharaan Lain'
else if(mode='3')then
  info.Caption:='Retribusi Lain'
else
  info.Caption:='Biaya Lain';

end;

end.
