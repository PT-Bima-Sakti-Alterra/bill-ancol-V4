unit ukelurahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, ActnList,
  cxTextEdit, cxLabel, ExtCtrls, RzPanel, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, dxSkinOffice2013White;

type
  Tfkelurahan = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel2: TcxLabel;
    kodekelurahan: TcxTextEdit;
    cxLabel3: TcxLabel;
    kelurahan: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel1: TcxLabel;
    kodecabang: TcxComboBox;
    cabang: TcxComboBox;
    cxLabel4: TcxLabel;
    button: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buttonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodecabangPropertiesChange(Sender: TObject);
    procedure cabangPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkelurahan: Tfkelurahan;

implementation

{$R *.dfm}  uses Module, UnitCombo, DB, UnitMain;

procedure Tfkelurahan.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tfkelurahan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kodekelurahan.Clear;
kelurahan.Clear;
kodecabang.Clear;
cabang.Clear;
end;

procedure Tfkelurahan.buttonClick(Sender: TObject);
var
j:integer;
begin

if(kodecabang.Text<>'') and (kodekelurahan.Text<>'')then
begin


  TRY
  Umain.openkoneksi_host;

    if( DM.Xflag='Tambah') then begin

            DM.Qvalidasi.close;
            DM.Qvalidasi.sQL.Clear;
            DM.Qvalidasi.SQL.Add('SELECT * FROm kelurahan WHERE kodekelurahan=:kodekelurahan');
            DM.Qvalidasi.parambyname('kodekelurahan').asstring:=TRIM(kodekelurahan.text);
            DM.Qvalidasi.Open;


             IF(DM.Qvalidasi.RecordCount=0)THEN
             BEGIN


                Umain.Qhost1.Close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQl.Add('REPLACE INTO kelurahan VALUES (:kodekelurahan,:kelurahan,:kodecabang,:cabang)');
                Umain.Qhost1.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                Umain.Qhost1.ParamByName('kelurahan').AsString := TRIM(kelurahan.Text);
                Umain.Qhost1.ParamByName('kodecabang').AsString := TRIM(kodecabang.Text);
                Umain.Qhost1.ParamByName('cabang').AsString := TRIM(cabang.Text);
                Umain.Qhost1.Execute;

                DM.Qexec.Close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQl.Add('INSERT INTO kelurahan VALUES (NULL,:kodekelurahan,:kelurahan,:kodecabang,:cabang)');
                DM.Qexec.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                DM.Qexec.ParamByName('kelurahan').AsString := TRIM(kelurahan.Text);
                DM.Qexec.ParamByName('kodecabang').AsString := TRIM(kodecabang.Text);
                DM.Qexec.ParamByName('cabang').AsString := TRIM(cabang.Text);
                DM.Qexec.Execute;

                DM.uraianlogakses:='Tambah Kelurahan '+kodekelurahan.text;
                DM.targetlogakses:=kodekelurahan.text;
                DM.logakses;

                ModalResult:=mrOK;
             end
             else
                  MessageDlg('Kode Kelurahan sudah ada !!', mtWarning, [MbOK], 0);

          end
          else begin



                    DM.Qvalidasi.close;
                    DM.Qvalidasi.sQL.Clear;
                    DM.Qvalidasi.SQL.Add('SELECT * FROm kelurahan WHERE kodekelurahan=:kodekelurahan and id<>:id');
                    DM.Qvalidasi.parambyname('kodekelurahan').asstring:=TRIM(kodekelurahan.text);
                    DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
                    DM.Qvalidasi.Open;
                     IF(DM.Qvalidasi.RecordCount=0)THEN
                     BEGIN


                          Umain.Qhost1.Close;
                          Umain.Qhost1.SQL.Clear;
                          Umain.Qhost1.SQl.Add('UPDATE kelurahan SET kodekelurahan=:kodekelurahan,kelurahan=:kelurahan,kodecabang=:kodecabang,cabang=:cabang WHERE kodekelurahan=:kodekelurahanlama');
                          Umain.Qhost1.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                          Umain.Qhost1.ParamByName('kelurahan').AsString := TRIM(kelurahan.Text);
                          Umain.Qhost1.ParamByName('kodecabang').AsString := TRIM(kodecabang.Text);
                          Umain.Qhost1.ParamByName('cabang').AsString := TRIM(cabang.Text);
                          Umain.Qhost1.ParamByName('kodekelurahanlama').AsString :=DM.Xkodekelurahan;
                          Umain.Qhost1.Execute;

                          DM.Qexec.Close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQl.Add('UPDATE kelurahan SET kodekelurahan=:kodekelurahan,kelurahan=:kelurahan,kodecabang=:kodecabang,cabang=:cabang WHERE id=:id');
                          DM.Qexec.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                          DM.Qexec.ParamByName('kelurahan').AsString := TRIM(kelurahan.Text);
                          DM.Qexec.ParamByName('kodecabang').AsString := TRIM(kodecabang.Text);
                          DM.Qexec.ParamByName('cabang').AsString := TRIM(cabang.Text);
                          DM.Qexec.ParamByName('id').AsInteger :=DM.Xid; 
                          DM.Qexec.Execute;


                          if (DM.Xkodekelurahan<>kodekelurahan.Text)then
                          begin


                            Umain.Qhost1.Close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQl.Add('UPDATE pelanggan SET kodekelurahan=:kodekelurahan WHERE kodekelurahan=:kodekelurahanlama');
                            Umain.Qhost1.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                            Umain.Qhost1.ParamByName('kodekelurahanlama').AsString :=DM.Xkodekelurahan;
                            Umain.Qhost1.Execute;

                          
                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE pelanggan SET kodekelurahan=:kodekelurahan WHERE kodekelurahan=:kodekelurahanlama');
                            DM.Qexec.ParamByName('kodekelurahan').AsString := TRIM(kodekelurahan.Text);
                            DM.Qexec.ParamByName('kodekelurahanlama').AsString :=DM.Xkodekelurahan;
                            DM.Qexec.Execute;

                            DM.Qcek.Close;
                            Dm.Qcek.SQL.Clear;
                            DM.Qcek.SQL.Add('select left(periode,4) as tahun from periode group by left(periode,4) ASC');
                            DM.Qcek.Open;

                            for j:=1 to DM.Qcek.RecordCount do
                            begin
                                DM.Qexec.Close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQl.Add('UPDATE drd'+DM.Qcek.fieldbyname('tahun').AsString+' SET kodekelurahan=:kodekelurahan');
                                DM.Qexec.SQL.add('WHERE kodekelurahan=:kodekelurahanlama');
                                DM.Qexec.ParamByName('kodekelurahanlama').AsString :=DM.Xkodekelurahan;
                                DM.Qexec.ParamByName('kodekelurahan').AsString :=TRIM(kodekelurahan.Text);
                                DM.Qexec.Execute;
                             DM.Qcek.Next;   
                            end;

                            DM.uraianlogakses:='Koreksi Kelurahan Menyebabkan Perubahan di data pelanggan & DRD bagi pelanggan yang koderayon lamanya'+DM.Xkodekelurahan;
                            DM.targetlogakses:=DM.Xkodekelurahan;
                            DM.logakses;

                          end;

                          DM.uraianlogakses:='Koreksi Kelurahan '+DM.Xkodekelurahan;
                          DM.targetlogakses:=DM.Xkodekelurahan;
                          DM.logakses;
                          ModalResult:=mrOK;
                      end
                      else
                         MessageDlg('Kode Kelurahan sudah ada !!', mtWarning, [MbOK], 0);



     
          end;

       except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;
end
else
  MessageDlg('Harap Lengkapi Kode Cabang && Kode Kelurahan !!', mtWarning, [MbOK], 0);

Umain.host.close;

end;

procedure Tfkelurahan.FormShow(Sender: TObject);
begin
ucombo.isikombo();
kodecabang.Properties.Items:=ucombo.kodecabang.Properties.Items;
cabang.Properties.Items:=ucombo.cabang.Properties.Items;
kodecabang.Text:=DM.Xkodecabang;
cabang.Text:=DM.Xcabang;
end;

procedure Tfkelurahan.kodecabangPropertiesChange(Sender: TObject);
begin
cabang.ItemIndex:=kodecabang.ItemIndex;
end;

procedure Tfkelurahan.cabangPropertiesChange(Sender: TObject);
begin
kodecabang.ItemIndex:=cabang.ItemIndex;
end;

end.
