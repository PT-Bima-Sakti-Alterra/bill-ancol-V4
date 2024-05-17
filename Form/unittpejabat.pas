unit unittpejabat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, cxControls, cxContainer, cxEdit, ActnList,
  cxLabel, cxTextEdit, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxMemo,
  dxSkinOffice2013White, cxGroupBox;

type
  Tftambahpejabat = class(TForm)
    no: TcxButton;
    ok: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxGroupBox1: TcxGroupBox;
    nik1: TcxTextEdit;
    nama1: TcxTextEdit;
    jab1: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    nik2: TcxTextEdit;
    nama2: TcxTextEdit;
    jab2: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    nik3: TcxTextEdit;
    nama3: TcxTextEdit;
    jab3: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    kodeparaf: TcxTextEdit;
    cxLabel1: TcxLabel;
    ket1: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    ket2: TcxTextEdit;
    cxLabel13: TcxLabel;
    ket3: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    kode : string;
    { Public declarations }
   
  end;

var
  ftambahpejabat: Tftambahpejabat;

implementation

uses Module, UnitMain;

{$R *.dfm}

{ Tftambahpejabat }



procedure Tftambahpejabat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  kodeparaf.Text := '';
  nik1.Text := '';
  nik2.Text := '';
  nik3.Text := '';
  nama1.Text := '';
  nama2.Text := '';
  nama3.Text := '';
  jab1.Clear;
  jab2.Clear;
  jab3.Clear;
  ket1.Clear;
  ket2.Clear;
  ket2.Clear;
end;

procedure Tftambahpejabat.noClick(Sender: TObject);
begin
  close;
end;

procedure Tftambahpejabat.okClick(Sender: TObject);
begin


  if(kodeparaf.Text<>'')then
  begin


            if(DM.Xflag='Tambah')then
            begin


                        DM.Qexec.Close;
                        DM.Qexec.SQL.Clear;
                        DM.Qexec.SQL.Add('replace into paraf (kode,nama1,nik1,nama2,nik2,nama3,nik3,jab1,jab2,jab3,ket1,ket2,ket3) values(:kode,:nama1,:nik1,:nama2,:nik2,:nama3,:nik3,:jab1,:jab2,:jab3,:ket1,:ket2,:ket3)');
                        DM.Qexec.ParamByName('kode').AsString := kodeparaf.Text;
                        DM.Qexec.ParamByName('nik1').AsString := nik1.Text;
                        DM.Qexec.ParamByName('nik2').AsString := nik2.Text;
                        DM.Qexec.ParamByName('nik3').AsString := nik3.Text;
                        DM.Qexec.ParamByName('nama1').AsString := nama1.Text;
                        DM.Qexec.ParamByName('nama2').AsString := nama2.Text;
                        DM.Qexec.ParamByName('nama3').AsString := nama3.Text;
                        DM.Qexec.ParamByName('jab1').AsString := jab1.Text;
                        DM.Qexec.ParamByName('jab2').AsString := jab2.Text;
                        DM.Qexec.ParamByName('jab3').AsString := jab3.Text;
                        DM.Qexec.ParamByName('ket1').AsString := ket1.Text;
                        DM.Qexec.ParamByName('ket2').AsString := ket2.Text;
                        DM.Qexec.ParamByName('ket3').AsString := ket3.Text;
                        DM.Qexec.Execute;

                         DM.uraianlogakses:='Tambah Paraf '+kodeparaf.Text;
                         DM.targetlogakses:= kodeparaf.Text;
                         DM.logakses;

                         ModalResult:=MrOk;




              end
              else
              begin





                DM.Qexec.Close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('Update paraf set kode=:kode,nama1=:nama1,nik1=:nik1,nama2=:nama2,nik2=:nik2,nama3=:nama3,nik3=:nik3,jab1=:jab1,jab2=:jab2,jab3=:jab3,ket1=:ket1,ket2=:ket2,ket3=:ket3 where kode=:kode1');
                DM.Qexec.ParamByName('kode').AsString := kodeparaf.Text;
                DM.Qexec.ParamByName('nik1').AsString := nik1.Text;
                DM.Qexec.ParamByName('nama1').AsString := nama1.Text;
                DM.Qexec.ParamByName('nik2').AsString := nik2.Text;
                DM.Qexec.ParamByName('nama2').AsString := nama2.Text;
                DM.Qexec.ParamByName('nik3').AsString := nik3.Text;
                DM.Qexec.ParamByName('nama3').AsString := nama3.Text;
                DM.Qexec.ParamByName('jab1').AsString := jab1.Text;
                DM.Qexec.ParamByName('jab2').AsString := jab2.Text;
                DM.Qexec.ParamByName('jab3').AsString := jab3.Text;
                DM.Qexec.ParamByName('ket1').AsString := ket1.Text;
                DM.Qexec.ParamByName('ket2').AsString := ket2.Text;
                DM.Qexec.ParamByName('ket3').AsString := ket3.Text;
                DM.Qexec.ParamByName('kode1').AsString := kode;
                DM.Qexec.Execute;

                DM.uraianlogakses:='Koreksi Paraf '+kodeparaf.Text;
                DM.targetlogakses:= kodeparaf.Text;
                DM.logakses;

                 ModalResult:=MrOk;


              end;


      




  end
  else
    MessageDlg('Kode tidak boleh kosong !!', mtWarning, [mbOK], 0);





end;

end.
