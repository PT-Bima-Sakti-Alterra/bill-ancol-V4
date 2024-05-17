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
    kodearea: TcxTextEdit;
    cxLabel3: TcxLabel;
    area: TcxTextEdit;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
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
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
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


if(kodewil.text<>'') and (kodearea.Text<>'') and (area.Text<>'') then
begin



TRY
Umain.openkoneksi_host;

if(Umain.host.Connected=true)then
begin

  if( DM.Xflag='Tambah') then begin

        DM.Qvalidasi.close;
        DM.Qvalidasi.sQL.Clear;
        DM.Qvalidasi.SQL.Add('SELECT * FROm area WHERE kodearea=:kodearea');
        DM.Qvalidasi.parambyname('kodearea').asstring:=kodearea.text;
        DM.Qvalidasi.Open;


         IF(DM.Qvalidasi.RecordCount=0)THEN
         BEGIN

            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQl.Add('REPLACE INTO area VALUES (null,:kodearea,:area,:kodewil)');
            DM.Qexec.ParamByName('kodearea').AsString := kodearea.Text;
            DM.Qexec.ParamByName('area').AsString := area.Text;
            DM.Qexec.ParamByName('kodewil').AsString := DM.xkodewil;
            DM.Qexec.Execute;

            DM.uraianlogakses:='Tambah Area '+kodearea.text;
            DM.targetlogakses:=kodearea.text;
            DM.logakses;

            ModalResult:=mrOK;
         end
         else
              MessageDlg('Kode Area sudah ada !!', mtWarning, [MbOK], 0);

      end
      else
      begin


                      DM.Qvalidasi.close;
                      DM.Qvalidasi.sQL.Clear;
                      DM.Qvalidasi.SQL.Add('SELECT * FROm area WHERE kodearea=:kodearea and id<>:id');
                      DM.Qvalidasi.parambyname('kodearea').asstring:=kodearea.text;
                      DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
                      DM.Qvalidasi.Open;

                       IF(DM.Qvalidasi.RecordCount=0)THEN
                       BEGIN



                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE area SET kodearea=:kodearea,area=:area,kodewil=:kodewil WHERE id=:id');
                            DM.Qexec.ParamByName('kodearea').AsString := kodearea.Text;
                            DM.Qexec.ParamByName('area').AsString := area.Text;
                            DM.Qexec.ParamByName('id').AsInteger :=DM.Xid;
                            DM.Qexec.ParamByName('kodewil').AsString := kodewil.Text;
                            DM.Qexec.Execute;



                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE rayon SET kodearea=:kodearea,area=:area,kodewil=:kodewil,wilayah=:wilayah');
                            DM.Qexec.SQL.add('WHERE kodearea=:kodearealama');
                            DM.Qexec.ParamByName('kodearealama').AsString :=DM.xkodearea;
                            DM.Qexec.ParamByName('kodearea').AsString :=kodearea.Text;
                            DM.Qexec.ParamByName('area').AsString :=area.Text;
                            DM.Qexec.ParamByName('kodewil').AsString := kodewil.Text;
                            DM.Qexec.ParamByName('wilayah').AsString := wilayah.Text;
                            DM.Qexec.Execute;


                            Umain.Qhost1.Close;
                            Umain.Qhost1.SQL.Clear;
                            Umain.Qhost1.SQl.Add('UPDATE rayon SET kodearea=:kodearea,area=:area,kodewil=:kodewil,wilayah=:wilayah');
                            Umain.Qhost1.SQL.add('WHERE kodearea=:kodearealama');
                            Umain.Qhost1.ParamByName('kodearealama').AsString :=DM.xkodearea;
                            Umain.Qhost1.ParamByName('kodearea').AsString :=kodearea.Text;
                            Umain.Qhost1.ParamByName('area').AsString :=area.Text;
                            Umain.Qhost1.ParamByName('kodewil').AsString := kodewil.Text;
                            Umain.Qhost1.ParamByName('wilayah').AsString := wilayah.Text;
                            Umain.Qhost1.Execute; 


                            DM.uraianlogakses:='Koreksi Area '+DM.xkodearea;
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
kodearea.Clear;
area.clear;
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
ucombo.isikombo();

kodewil.Properties.Items:=ucombo.kodewil.Properties.Items;
wilayah.Properties.Items:=ucombo.wilayah.Properties.Items;
kodewil.Text:=DM.xkodewil;
wilayah.Text:=DM.xwilayah;

kodearea.SetFocus;

end;

procedure TUblok.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TUblok.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

end.
