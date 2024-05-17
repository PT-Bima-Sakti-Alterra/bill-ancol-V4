unit UnitTrayon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, DB, MemDS,
  DBAccess, MyAccess, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons,
  cxTextEdit, cxLabel, ExtCtrls, RzPanel, ActnList,
  dxSkinOffice2013White, dxSkiniMaginary;


type
  TUrayon = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    cxLabel2: TcxLabel;
    koderayon: TcxTextEdit;
    cxLabel3: TcxLabel;
    rayon: TcxTextEdit;
    kodearea: TcxComboBox;
    area: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    kodeloket: TcxComboBox;
    button: TcxButton;
    cxButton2: TcxButton;
    RzPanel8: TRzPanel;
    procedure buttonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodeareaPropertiesChange(Sender: TObject);
    procedure areaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:String;
  end;

var
  Urayon: TUrayon;

implementation

{$R *.dfm}  uses Module, UnitCombo, UnitMain;

procedure TUrayon.buttonClick(Sender: TObject);
var
j:integer;
begin


if(kodearea.Text<>'') and (koderayon.Text<>'') and (rayon.Text<>'') then
begin



TRY
Umain.openkoneksi_host;

if(Umain.host.Connected=true)then
begin

  if( DM.Xflag='Tambah') then begin

        DM.Qvalidasi.close;
        DM.Qvalidasi.sQL.Clear;
        DM.Qvalidasi.SQL.Add('SELECT * FROm rayon WHERE koderayon=:koderayon');
        DM.Qvalidasi.parambyname('koderayon').asstring:=TRIM(koderayon.text);
        DM.Qvalidasi.Open;


         IF(DM.Qvalidasi.RecordCount=0)THEN
         BEGIN


            Umain.Qhost1.Close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQl.Add('replace INTO rayon VALUES (:kode,:rayon,:kodearea,:area,:kodewil,:wilayah,:kodeloket)');
            Umain.Qhost1.ParamByName('kode').AsString := TRIM(koderayon.Text);
            Umain.Qhost1.ParamByName('rayon').AsString := TRIM(rayon.Text);
            Umain.Qhost1.ParamByName('kodearea').AsString := kodearea.Text;
            Umain.Qhost1.ParamByName('area').AsString := area.Text;
            Umain.Qhost1.ParamByName('kodewil').AsString := DM.Xkodewil;
            Umain.Qhost1.ParamByName('wilayah').AsString := DM.Xwilayah;
            Umain.Qhost1.ParamByName('kodeloket').AsString := TRIM(kodeloket.Text);
            Umain.Qhost1.Execute;

            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQl.Add('REPLACE INTO rayon VALUES (NULL,:kode,:rayon,:kodearea,:area,:kodewil,:wilayah,:kodeloket)');
            DM.Qexec.ParamByName('kode').AsString := TRIM(koderayon.Text);
            DM.Qexec.ParamByName('rayon').AsString := TRIM(rayon.Text);
            DM.Qexec.ParamByName('kodearea').AsString := kodearea.Text;
            DM.Qexec.ParamByName('area').AsString := area.Text;
            DM.Qexec.ParamByName('kodewil').AsString := DM.Xkodewil;
            DM.Qexec.ParamByName('wilayah').AsString := DM.Xwilayah;
            DM.Qexec.ParamByName('kodeloket').AsString := TRIM(kodeloket.Text);
            DM.Qexec.Execute;

            DM.uraianlogakses:='Tambah Rayon '+koderayon.text;
            DM.targetlogakses:=koderayon.text;
            DM.logakses;

            ModalResult:=mrOK;
         end
         else
              MessageDlg('Kode rayon sudah ada !!', mtWarning, [MbOK], 0);

      end
      else begin

                if (DM.Xkoderayon<>koderayon.Text)then
                begin
                  if MessageDlg('Koreksi Rayon Menyebabkan Perubahan di data PELANGGAN && DRD'+#13+'Koderayon lama : '+DM.Xkoderayon+#13+'Koderayon baru : '+TRIM(koderayon.Text)+#13+'Yakin untuk Melanjutkan ?', mtConfirmation, [mbYes,mbNo], 0)=MrNo then
                  begin
                    Exit;
                  end;
                end;


                DM.Qvalidasi.close;
                DM.Qvalidasi.sQL.Clear;
                DM.Qvalidasi.SQL.Add('SELECT * FROm rayon WHERE koderayon=:koderayon and id<>:id');
                DM.Qvalidasi.parambyname('koderayon').asstring:=TRIM(koderayon.text);
                DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
                DM.Qvalidasi.Open;
                 IF(DM.Qvalidasi.RecordCount=0)THEN
                 BEGIN

  {
                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQl.Add('DELETE FROM rayon WHERE kode=:koderayonlama');
                      Umain.Qhost1.ParamByName('koderayonlama').AsString:=DM.Xkoderayon;
                      Umain.Qhost1.Execute;

                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQl.Add('replace INTO rayon VALUES (:kode,:rayon,:kodearea,:area,:kodewil,:wilayah,:kodeloket)');
                      Umain.Qhost1.ParamByName('kode').AsString := TRIM(koderayon.Text);
                      Umain.Qhost1.ParamByName('rayon').AsString := TRIM(rayon.Text);
                      Umain.Qhost1.ParamByName('kodearea').AsString := kodearea.Text;
                      Umain.Qhost1.ParamByName('area').AsString := area.Text;
                      Umain.Qhost1.ParamByName('kodewil').AsString := DM.Xkodewil;
                      Umain.Qhost1.ParamByName('wilayah').AsString := DM.Xwilayah;
                      Umain.Qhost1.ParamByName('kodeloket').AsString := TRIM(kodeloket.Text);
                      Umain.Qhost1.Execute;
  }
                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQl.Add('UPDATE rayon SET koderayon=:kode,namarayon=:rayon,kodearea=:kodearea,area=:area,kodewil=:kodewil,wilayah=:wilayah,kodeloket=:kodeloket WHERE koderayon=:koderayonlama');
                      Umain.Qhost1.ParamByName('kode').AsString := TRIM(koderayon.Text);
                      Umain.Qhost1.ParamByName('rayon').AsString := TRIM(rayon.Text);
                      Umain.Qhost1.ParamByName('kodearea').AsString := kodearea.Text;
                      Umain.Qhost1.ParamByName('area').AsString := area.Text;
                      Umain.Qhost1.ParamByName('kodewil').AsString :=DM.xkodewil;
                      Umain.Qhost1.ParamByName('wilayah').AsString := DM.xwilayah;
                      Umain.Qhost1.ParamByName('kodeloket').AsString := TRIM(kodeloket.Text);
                      Umain.Qhost1.ParamByName('koderayonlama').AsString := DM.Xkoderayon;
                      Umain.Qhost1.Execute;

                      DM.Qexec.Close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQl.Add('UPDATE rayon SET koderayon=:kode,namarayon=:rayon,kodearea=:kodearea,area=:area,kodewil=:kodewil,wilayah=:wilayah,kodeloket=:kodeloket WHERE id=:id');
                      DM.Qexec.ParamByName('kode').AsString := TRIM(koderayon.Text);
                      DM.Qexec.ParamByName('rayon').AsString := TRIM(rayon.Text);
                      DM.Qexec.ParamByName('kodearea').AsString := kodearea.Text;
                      DM.Qexec.ParamByName('area').AsString := area.Text;
                      DM.Qexec.ParamByName('kodewil').AsString :=DM.xkodewil;
                      DM.Qexec.ParamByName('wilayah').AsString := DM.xwilayah;
                      DM.Qexec.ParamByName('kodeloket').AsString := TRIM(kodeloket.Text);
                      DM.Qexec.ParamByName('id').AsInteger :=DM.Xid; 
                      DM.Qexec.Execute;


                      if (DM.Xkoderayon<>koderayon.Text)then
                      begin

                        Umain.Qhost1.Close;
                        Umain.Qhost1.SQL.Clear;
                        Umain.Qhost1.SQl.Add('UPDATE pelanggan SET koderayon=:kode WHERE koderayon=:koderayonlama');
                        Umain.Qhost1.ParamByName('kode').AsString := TRIM(koderayon.Text);
                        Umain.Qhost1.ParamByName('koderayonlama').AsString :=DM.Xkoderayon;
                        Umain.Qhost1.Execute;

                        Umain.Qhost1.Close;
                        Umain.Qhost1.SQL.Clear;
                        Umain.Qhost1.SQl.Add('UPDATE blok SET koderayon=:kode WHERE koderayon=:koderayonlama');
                        Umain.Qhost1.ParamByName('kode').AsString := TRIM(koderayon.Text);
                        Umain.Qhost1.ParamByName('koderayonlama').AsString :=DM.Xkoderayon;
                        Umain.Qhost1.Execute;


                        DM.Qexec.Close;
                        DM.Qexec.SQL.Clear;
                        DM.Qexec.SQl.Add('UPDATE pelanggan SET koderayon=:kode WHERE koderayon=:koderayonlama');
                        DM.Qexec.ParamByName('kode').AsString := TRIM(koderayon.Text);
                        DM.Qexec.ParamByName('koderayonlama').AsString :=DM.Xkoderayon;
                        DM.Qexec.Execute;

                        DM.Qexec.Close;
                        DM.Qexec.SQL.Clear;
                        DM.Qexec.SQl.Add('UPDATE blok SET koderayon=:kode WHERE koderayon=:koderayonlama');
                        DM.Qexec.ParamByName('kode').AsString := TRIM(koderayon.Text);
                        DM.Qexec.ParamByName('koderayonlama').AsString :=DM.Xkoderayon;
                        DM.Qexec.Execute;

                        DM.Qcek.Close;
                        Dm.Qcek.SQL.Clear;
                        DM.Qcek.SQL.Add('SELECT periode FROM periode ORDER BY periode');
                        DM.Qcek.Open;

                        for j:=1 to DM.Qcek.RecordCount do
                        begin

                              DM.Qexec.Close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQl.Add('UPDATE drd'+DM.Qcek.fieldbyname('periode').AsString+' SET koderayon=:koderayon');
                              DM.Qexec.SQL.add('WHERE koderayon=:koderayonlama');
                              DM.Qexec.ParamByName('koderayonlama').AsString :=DM.Xkoderayon;
                              DM.Qexec.ParamByName('koderayon').AsString :=TRIM(koderayon.Text);
                              DM.Qexec.Execute;
                              
                        DM.Qcek.Next;
                        end;

                        DM.uraianlogakses:='Koreksi Rayon Menyebabkan Perubahan di data pelanggan & DRD bagi pelanggan yang koderayon lamanya'+DM.Xkoderayon;
                        DM.targetlogakses:=DM.Xkoderayon;
                        DM.logakses;

                      end;

                      DM.uraianlogakses:='Koreksi Rayon '+DM.Xkoderayon;
                      DM.targetlogakses:=DM.Xkoderayon;
                      DM.logakses;
                      
                      ModalResult:=mrOK;
                  end
                  else
                     MessageDlg('Kode rayon sudah ada !!', mtWarning, [MbOK], 0);



     
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
     MessageDlg('Harap Lengkapi Kode Wilayah && Rayon !!', mtInformation, [MbOK], 0);

   umain.host.close;
end;

procedure TUrayon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
koderayon.Clear;
rayon.clear;
kodeloket.Clear;

end;

procedure TUrayon.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TUrayon.Action2Execute(Sender: TObject);
begin
close;
end;

procedure TUrayon.FormShow(Sender: TObject);
begin

{   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT kodearea,area FROM area WHERE kodearea=:kodearea ORDER BY kodearea ASC ');
   DM.Qcek.ParamByName('kodearea').AsString:=DM.Xkodearea;
   DM.Qcek.Open;
   area.Properties.Items.Clear;
   kodearea.Properties.Items.Clear;


   while not DM.Qcek.Eof do
   begin
            kodearea.Properties.Items.Add(DM.Qcek.FieldByName('kodearea').ASstring);
            area.Properties.Items.Add(DM.Qcek.FieldByName('area').ASstring);
            DM.Qcek.Next;
   end;
}
kodearea.Properties.Items.Clear;
kodearea.Properties.Items.Add(DM.xkodearea);

area.Properties.Items.Clear;
area.Properties.Items.Add(DM.xarea);

kodeloket.Properties.Items:=ucombo.kodeloket.Properties.Items;
kodearea.Text:=DM.xkodearea;
area.Text:=DM.xarea;
kodeloket.Text:=DM.Xkodeloket;

koderayon.SetFocus;

end;

procedure TUrayon.kodeareaPropertiesChange(Sender: TObject);
begin
area.ItemIndex:=kodearea.ItemIndex;
end;

procedure TUrayon.areaPropertiesChange(Sender: TObject);
begin
kodearea.ItemIndex:=area.ItemIndex;
end;

end.
