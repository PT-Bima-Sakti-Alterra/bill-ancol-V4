unit UnitTcabang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,  Menus, DB, MemDS,
  DBAccess, MyAccess, StdCtrls, cxButtons, cxTextEdit, cxLabel, ExtCtrls,
  RzPanel, ActnList, cxMaskEdit, cxDropDownEdit,
  dxSkinOffice2013White;

type
  TFcabang = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    kode: TcxTextEdit;
    cxLabel2: TcxLabel;
    cabang: TcxTextEdit;
    buttontambah: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure buttontambahClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    id,kodecabanglama:String;
  end;

var
  Fcabang: TFcabang;

implementation

{$R *.dfm}     uses Module;

procedure TFcabang.cxButton2Click(Sender: TObject);
begin
kode.Text:='';
cabang.Text:='';
close;
end;

procedure TFcabang.buttontambahClick(Sender: TObject);
begin


  IF(kode.Text<>'') AND (cabang.Text<>'')then
  begin

  
    if( DM.Xflag='Tambah') then
      begin

        DM.Qvalidasi.close;
        DM.Qvalidasi.sQL.Clear;
        DM.Qvalidasi.SQL.Add('SELECT * FROm cabang WHERE kodecabang=:kodecabang');
        DM.Qvalidasi.parambyname('kodecabang').asstring:=TRIM(kode.Text);
        DM.Qvalidasi.Open;


                 IF(DM.Qvalidasi.RecordCount=0)THEN
                 BEGIN

                  DM.Qexec.Close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQl.Add('INSERT INTO cabang VALUES (NULL,:kode,:cabang)');
                  DM.Qexec.ParamByName('kode').AsString := TRIM(kode.Text);
                  DM.Qexec.ParamByName('cabang').AsString :=TRIM(cabang.Text);
                  DM.Qexec.Execute;

                  DM.uraianlogakses:='Tambah Cabang '+cabang.text;
                  DM.targetlogakses:=cabang.text;
                  DM.logakses;

                  ModalResult:=mrOK;


                 END
                 ELSE
                     MessageDlg('Kode cabang sudah ada !!', mtWarning, [MbOK], 0);

      end
      else
      begin

        DM.Qvalidasi.close;
        DM.Qvalidasi.sQL.Clear;
        DM.Qvalidasi.SQL.Add('SELECT * FROm cabang WHERE kodecabang=:kodecabang and id<>:id');
        DM.Qvalidasi.parambyname('kodecabang').asstring:=TRIM(kode.Text);
        DM.Qvalidasi.parambyname('id').AsInteger:=DM.Xid;
        DM.Qvalidasi.Open;


         IF(DM.Qvalidasi.RecordCount=0)THEN
         BEGIN
       
              DM.Qexec.Close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQl.Add('UPDATE cabang SET kodecabang=:kode,cabang=:cabang WHERE id=:id');
              DM.Qexec.ParamByName('kode').AsString := TRIM(kode.Text);
              DM.Qexec.ParamByName('cabang').AsString :=TRIM(cabang.Text);
              DM.Qexec.ParamByName('id').asinteger := DM.Xid;
              DM.Qexec.Execute;

              DM.Qexec.Close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQl.Add('UPDATE kelurahan SET kodecabang=:kodecabang,cabang=:cabang');
              DM.Qexec.SQL.add('WHERE kodecabang=:kodecabanglama');
              DM.Qexec.ParamByName('kodecabanglama').AsString :=DM.Xkodecabang;
              DM.Qexec.ParamByName('kodecabang').AsString :=TRIM(kode.Text);
              DM.Qexec.ParamByName('cabang').AsString :=TRIM(cabang.Text);
              DM.Qexec.Execute;

             
              DM.uraianlogakses:='Koreksi Cabang '+DM.Xkodecabang;
              DM.targetlogakses:=DM.Xkodecabang;
              DM.logakses;


              ModalResult:=mrOK;
         END
         ELSE
             MessageDlg('Kode cabang sudah ada !!', mtWarning, [MbOK], 0);
    end;
  end
  else
    MessageDlg('Harap Lengkapi Data !!', mtWarning, [MbOK], 0);
end;

procedure TFcabang.Action2Execute(Sender: TObject);
begin
close;
end;

procedure TFcabang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kode.Text:='';
cabang.Text:='';
end;

end.
