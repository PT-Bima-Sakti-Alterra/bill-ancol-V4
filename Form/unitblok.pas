unit unitblok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, DB, MemDS,
  DBAccess, MyAccess, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons,
  cxTextEdit, cxLabel, ExtCtrls, RzPanel, ActnList,
  dxSkinOffice2013White;


type
  TUblok = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxLabel2: TcxLabel;
    kodeblok: TcxTextEdit;
    cxLabel3: TcxLabel;
    blok: TcxTextEdit;
    koderayon: TcxComboBox;
    rayon: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    button: TcxButton;
    cxButton2: TcxButton;
    RzPanel8: TRzPanel;
    procedure buttonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure rayonPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:String;
  end;

var
  Ublok: TUblok;

implementation

{$R *.dfm}  uses Module, UnitCombo, UnitMain;

procedure TUblok.buttonClick(Sender: TObject);
var
j:integer;
begin


if(koderayon.text<>'') and (kodeblok.Text<>'') and (blok.Text<>'') then
begin



TRY
Umain.openkoneksi_host;

if(Umain.host.Connected=true)then
begin

  if( DM.Xflag='Tambah') then
  begin

        DM.Qvalidasi.close;
        DM.Qvalidasi.sQL.Clear;
        DM.Qvalidasi.SQL.Add('SELECT * FROm blok WHERE kodeblok=:kodeblok');
        DM.Qvalidasi.parambyname('kodeblok').asstring:=kodeblok.text;
        DM.Qvalidasi.Open;


         IF(DM.Qvalidasi.RecordCount=0)THEN
         BEGIN

            Umain.Qhost1.Close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQl.Add('REPLACE INTO blok VALUES (NULL,:kodeblok,:namablok,:koderayon)');
            Umain.Qhost1.ParamByName('kodeblok').AsString := kodeblok.Text;
            Umain.Qhost1.ParamByName('namablok').AsString := blok.Text;
            Umain.Qhost1.ParamByName('koderayon').AsString := DM.Xkoderayon;
            Umain.Qhost1.Execute;


            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQl.Add('REPLACE INTO blok VALUES (NULL,:kodeblok,:namablok,:koderayon)');
            DM.Qexec.ParamByName('kodeblok').AsString := kodeblok.Text;
            DM.Qexec.ParamByName('namablok').AsString := blok.Text;
            DM.Qexec.ParamByName('koderayon').AsString := DM.Xkoderayon;
            DM.Qexec.Execute;

            DM.uraianlogakses:='Tambah Blok '+kodeblok.text;
            DM.targetlogakses:=kodeblok.text;
            DM.logakses;

            ModalResult:=mrOK;
         end
         else
              MessageDlg('Kode Blok sudah ada !!', mtWarning, [MbOK], 0);

      end
      else
      begin


                      DM.Qvalidasi.close;
                      DM.Qvalidasi.sQL.Clear;
                      DM.Qvalidasi.SQL.Add('SELECT * FROm blok WHERE kodeblok=:kodeblok and id<>:id');
                      DM.Qvalidasi.parambyname('kodeblok').asstring:=kodeblok.text;
                      DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
                      DM.Qvalidasi.Open;

                       IF(DM.Qvalidasi.RecordCount=0)THEN
                       BEGIN
{
                            Umain.Qhost1.Close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQl.Add('DELETE FROM blok WHERE kodeblok=:kodebloklama');
                            Umain.Qhost1.ParamByName('kodebloklama').AsString:=DM.xkodeblok;
                            Umain.Qhost1.Execute;

                            Umain.Qhost1.Close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQl.Add('REPLACE INTO blok VALUES (NULL,:kodeblok,:namablok,:koderayon)');
                            Umain.Qhost1.ParamByName('kodeblok').AsString := kodeblok.Text;
                            Umain.Qhost1.ParamByName('namablok').AsString := blok.Text;
                            Umain.Qhost1.ParamByName('koderayon').AsString := DM.Xkoderayon;
                            Umain.Qhost1.Execute;
}
                            Umain.Qhost1.Close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQl.Add('UPDATE blok SET kodeblok=:kodeblok,namablok=:namablok,koderayon=:koderayon WHERE kodeblok=:kodebloklama');
                            Umain.Qhost1.ParamByName('kodeblok').AsString := kodeblok.Text;
                            Umain.Qhost1.ParamByName('namablok').AsString := blok.Text;
                            Umain.Qhost1.ParamByName('koderayon').AsString := koderayon.Text;
                            Umain.Qhost1.ParamByName('kodebloklama').AsString :=DM.xkodeblok;
                            Umain.Qhost1.Execute;


                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE blok SET kodeblok=:kodeblok,namablok=:namablok,koderayon=:koderayon WHERE id=:id');
                            DM.Qexec.ParamByName('kodeblok').AsString := kodeblok.Text;
                            DM.Qexec.ParamByName('namablok').AsString := blok.Text;
                            DM.Qexec.ParamByName('koderayon').AsString := koderayon.Text;
                            DM.Qexec.ParamByName('id').AsInteger :=DM.Xid;
                            DM.Qexec.Execute;


                            DM.uraianlogakses:='Koreksi Blok '+DM.xkodearea;
                            DM.targetlogakses:=DM.xkodearea;
                            DM.logakses;
                            ModalResult:=mrOK;
                        end
                        else
                           MessageDlg('Kode Area sudah ada !!', mtWarning, [MbOK], 0);
    end;

    end
    else
       MessageDlg('Maaf, Koneksi Tidak Terhubung Master Cloud', mtInformation, [MbOK], 0);

    except ON E:Exception do
        begin
                umain.host.close;
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


  end
  else
     MessageDlg('Harap Lengkapi Kode Area && Area !!', mtInformation, [MbOK], 0);

   umain.host.close;

end;

procedure TUblok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kodeblok.Clear;
blok.clear;
end;

procedure TUblok.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TUblok.Action2Execute(Sender: TObject);
begin
close;
end;

procedure TUblok.FormShow(Sender: TObject);
begin
{ucombo.isikombo();

koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
rayon.Properties.Items:=ucombo.namarayon.Properties.Items;
koderayon.Text:=DM.Xkoderayon;
rayon.Text:=DM.xrayon;

kodeblok.SetFocus;
}

   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT koderayon,namarayon FROM rayon WHERE koderayon=:koderayon ORDER BY koderayon ASC ');
   DM.Qcek.ParamByName('koderayon').AsString:=DM.Xkoderayon;
   DM.Qcek.Open;
   koderayon.Properties.Items.Clear;
   rayon.Properties.Items.Clear;


   while not DM.Qcek.Eof do
   begin
            koderayon.Properties.Items.Add(DM.Qcek.FieldByName('koderayon').ASstring);
            rayon.Properties.Items.Add(DM.Qcek.FieldByName('namarayon').ASstring);
            DM.Qcek.Next;
   end;

  koderayon.Properties.Items.Clear;
  koderayon.Properties.Items.Add(DM.Xkoderayon);

  rayon.Properties.Items.Clear;
  rayon.Properties.Items.Add(DM.xrayon);

  koderayon.Text:=DM.Xkoderayon;
  rayon.Text:=DM.xrayon;

  kodeblok.SetFocus;

end;

procedure TUblok.koderayonPropertiesChange(Sender: TObject);
begin
rayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TUblok.rayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=rayon.ItemIndex;
end;

end.
