unit unitwilayah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore,  cxControls, cxContainer, cxEdit, ActnList,
  cxTextEdit, cxLabel, ExtCtrls, RzPanel, StdCtrls, cxButtons,
  dxSkinOffice2013White;

type
  Tuwil = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    button: TcxButton;
    cxButton2: TcxButton;
    kodewil: TcxTextEdit;
    wilayah: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    RzPanel4: TRzPanel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buttonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uwil: Tuwil;

implementation

{$R *.dfm}  uses module;

procedure Tuwil.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tuwil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
wilayah.Clear;
kodewil.Clear;
end;

procedure Tuwil.buttonClick(Sender: TObject);
begin

     if(kodewil.Text<>'') and (wilayah.Text<>'')then
     begin
          if( DM.Xflag='Tambah') then begin

              DM.Qvalidasi.close;
              DM.Qvalidasi.sQL.Clear;
              DM.Qvalidasi.SQL.Add('SELECT * FROm wilayah WHERE kodewil=:kodewil');
              DM.Qvalidasi.parambyname('kodewil').asstring:=TRIM(kodewil.text);
              DM.Qvalidasi.Open;


               IF(DM.Qvalidasi.RecordCount=0)THEN
               BEGIN

                  DM.Qexec.Close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQl.Add('INSERT INTO wilayah VALUES (NULL,:kodewil,:wilayah)');
                  DM.Qexec.ParamByName('kodewil').AsString := TRIM(kodewil.Text);
                  DM.Qexec.ParamByName('wilayah').AsString := TRIM(wilayah.Text);
                  DM.Qexec.Execute;

                  DM.uraianlogakses:='Tambah wilayah '+kodewil.text;
                  DM.targetlogakses:=kodewil.text;
                  DM.logakses;

                  ModalResult:=mrOK;
               end
               else
                    MessageDlg('Kode Wilayah sudah ada !!', mtWarning, [MbOK], 0);

            end
            else begin



                      DM.Qvalidasi.close;
                      DM.Qvalidasi.sQL.Clear;
                      DM.Qvalidasi.SQL.Add('SELECT * FROm wilayah WHERE kodewil=:kodewil and id<>:id');
                      DM.Qvalidasi.parambyname('kodewil').asstring:=TRIM(kodewil.text);
                      DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
                      DM.Qvalidasi.Open;
                       IF(DM.Qvalidasi.RecordCount=0)THEN
                       BEGIN

                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE wilayah SET kodewil=:kodewil,wilayah=:wilayah WHERE id=:id');
                            DM.Qexec.ParamByName('kodewil').AsString := TRIM(kodewil.Text);
                            DM.Qexec.ParamByName('wilayah').AsString := TRIM(wilayah.Text);
                            DM.Qexec.ParamByName('id').AsInteger :=DM.Xid; 
                            DM.Qexec.Execute;

                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQl.Add('UPDATE rayon SET kodewil=:kodewil,wilayah=:wilayah');
                            DM.Qexec.SQL.add('WHERE kodewil=:kodewillama');
                            DM.Qexec.ParamByName('kodewillama').AsString :=DM.Xkodewil;
                            DM.Qexec.ParamByName('kodewil').AsString :=TRIM(kodewil.Text);
                            DM.Qexec.ParamByName('wilayah').AsString :=TRIM(wilayah.Text);
                            DM.Qexec.Execute;


                            if (DM.Xkodewil<>kodewil.Text)then
                            begin                     
                       


                              DM.uraianlogakses:='Koreksi wilayah Menyebabkan Perubahan di data pelanggan & DRD bagi pelanggan yang koderayon lamanya'+DM.Xkodewil;
                              DM.targetlogakses:=DM.Xkodewil;
                              DM.logakses;

                            end;

                            DM.uraianlogakses:='Koreksi wilayah '+DM.Xkodewil;
                            DM.targetlogakses:=DM.Xkodewil;
                            DM.logakses;
                            ModalResult:=mrOK;
                        end
                        else
                           MessageDlg('Kode wilayah sudah ada !!', mtWarning, [MbOK], 0);




            end;;
     end
     else
       MessageDlg('Harap Lengkapi Data', mtInformation, [MbOK], 0);
end;

procedure Tuwil.FormShow(Sender: TObject);
begin
kodewil.SetFocus;
end;

end.
