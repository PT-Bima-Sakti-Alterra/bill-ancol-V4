unit unitsetdenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, DB, MemDS, DBAccess, MyAccess, ActnList, StdCtrls, cxButtons,
  ComCtrls, RzDTP, cxLabel, RzPrgres, ExtCtrls, RzPanel,
  dxSkinOffice2013White, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar,
  cxCheckBox;

type
  Tusetdenda = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    l4: TcxLabel;
    l3: TcxLabel;
    l2: TcxLabel;
    l5: TcxLabel;
    l6: TcxLabel;
    tanggal5: TcxDateEdit;
    tanggal: TcxDateEdit;
    tanggal2: TcxDateEdit;
    tanggal3: TcxDateEdit;
    tanggal4: TcxDateEdit;
    info: TRzPanel;
    cbWilayah: TcxCheckBox;
    Wilayah: TcxComboBox;
    kodewil: TcxComboBox;
    cbRayon: TcxCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbWilayahClick(Sender: TObject);
    procedure WilayahPropertiesChange(Sender: TObject);
    procedure cbRayonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tabel:String;
    periode:String;
    procedure isicombowildenda();

  end;

var
  usetdenda: Tusetdenda;

implementation

{$R *.dfm}    uses Module, UnitMain, UnitCombo;

procedure Tusetdenda.isicombowildenda();
begin
  if cbWilayah.Checked then
  begin
    ucombo.isikombo();
    wilayah.properties.items:= Ucombo.wilayah.properties.items;
    kodewil.Properties.Items:= Ucombo.kodewil.Properties.Items;
  end
  else
  if cbRayon.Checked then
  begin
    ucombo.isikombo();
    wilayah.properties.items:= Ucombo.namarayon.properties.items;
    kodewil.Properties.Items:= Ucombo.koderayon.Properties.Items;
  end;
end;

procedure Tusetdenda.cxButton1Click(Sender: TObject);
var
j:integer;
begin

TRY


  Enabled:=false;

  TRY
  Umain.openkoneksi_host();

  if cbWilayah.Checked then
  begin
      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('update piutang p,rayon r set p.tglmulaidenda=:tanggal,p.tglmulaidenda2=:tanggal2,p.tglmulaidenda3=:tanggal3,p.tglmulaidenda4=:tanggal4,p.tglmulaidendaperbulan=:tanggal5 ');
      Umain.Qhost1.SQL.Add('WHERE p.koderayon=r.koderayon AND p.periode=:periode AND p.flaglunas="0" AND r.kodewil=:kodewil');
      Umain.Qhost1.ParamByName('tanggal').AsDate:=tanggal.date;
      Umain.Qhost1.ParamByName('periode').AsString:=periode;
      Umain.Qhost1.ParamByName('tanggal2').AsDate:=tanggal2.date;
      Umain.Qhost1.ParamByName('tanggal3').AsDate:=tanggal3.date;
      Umain.Qhost1.ParamByName('tanggal4').AsDate:=tanggal4.date;
      Umain.Qhost1.ParamByName('tanggal5').AsDate:=tanggal5.date;
      Umain.Qhost1.ParamByName('kodewil').AsString:=kodewil.Text;
      Umain.Qhost1.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update '+tabel+' d,rayon r set d.tglmulaidenda=:tanggal,d.tglmulaidenda2=:tanggal2,d.tglmulaidenda3=:tanggal3,d.tglmulaidenda4=:tanggal4,d.tglmulaidendaperbulan=:tanggal5 ');
      DM.Qexec.SQL.Add('WHERE d.koderayon=r.koderayon AND r.kodewil=:kodewil');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.ParamByName('kodewil').AsString:=kodewil.Text;
      DM.Qexec.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update piutang p,rayon r set p.tglmulaidenda=:tanggal,p.tglmulaidenda2=:tanggal2,p.tglmulaidenda3=:tanggal3,p.tglmulaidenda4=:tanggal4,p.tglmulaidendaperbulan=:tanggal5 ');
      DM.Qexec.SQL.Add('WHERE p.koderayon=r.koderayon AND p.periode=:periode AND p.flaglunas="0" AND r.kodewil=:kodewil');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('periode').AsString:=periode;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.ParamByName('kodewil').AsString:=kodewil.Text;
      DM.Qexec.Execute;


  end
  else
  if cbRayon.Checked then
  begin
      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('update piutang set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 ');
      Umain.Qhost1.SQL.Add('WHERE periode=:periode AND flaglunas="0" AND koderayon=:koderayon');
      Umain.Qhost1.ParamByName('tanggal').AsDate:=tanggal.date;
      Umain.Qhost1.ParamByName('periode').AsString:=periode;
      Umain.Qhost1.ParamByName('tanggal2').AsDate:=tanggal2.date;
      Umain.Qhost1.ParamByName('tanggal3').AsDate:=tanggal3.date;
      Umain.Qhost1.ParamByName('tanggal4').AsDate:=tanggal4.date;
      Umain.Qhost1.ParamByName('tanggal5').AsDate:=tanggal5.date;
      Umain.Qhost1.ParamByName('koderayon').AsString:=kodewil.Text;
      Umain.Qhost1.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update '+tabel+' set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 ');
      DM.Qexec.SQL.Add('WHERE koderayon=:koderayon');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.ParamByName('koderayon').AsString:=kodewil.Text;
      DM.Qexec.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update piutang set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 ');
      DM.Qexec.SQL.Add('WHERE periode=:periode AND flaglunas="0" AND koderayon=:koderayon');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('periode').AsString:=periode;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.ParamByName('koderayon').AsString:=kodewil.Text;
      DM.Qexec.Execute;


  end
  else
  begin
  {  Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * from '+tabel+'');
    Qcek.Open;
  }

{      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('drop table IF EXISTS gantitgldenda;');
      Umain.Qhost1.SQL.Add('create table gantitgldenda like piutang;');
      Umain.Qhost1.SQL.Add('replace into gantitgldenda select * FROm piutang WHERE periode=:periode AND flaglunas="0";');
      Umain.Qhost1.ParamByName('periode').AsString:=periode;
      Umain.Qhost1.Execute;
}
      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('update piutang set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 where periode=:periode AND flaglunas="0"');
      Umain.Qhost1.ParamByName('tanggal').AsDate:=tanggal.date;
      Umain.Qhost1.ParamByName('periode').AsString:=periode;
      Umain.Qhost1.ParamByName('tanggal2').AsDate:=tanggal2.date;
      Umain.Qhost1.ParamByName('tanggal3').AsDate:=tanggal3.date;
      Umain.Qhost1.ParamByName('tanggal4').AsDate:=tanggal4.date;
      Umain.Qhost1.ParamByName('tanggal5').AsDate:=tanggal5.date;
      Umain.Qhost1.Execute;

{      Umain.Qhost1.close;
      Umain.Qhost1.SQL.Clear;
      Umain.Qhost1.SQL.Add('replace into piutang select * FROM gantitgldenda');
      Umain.Qhost1.Execute;
}

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update '+tabel+' set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update piutang set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 where periode=:periode AND flaglunas="0"');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('periode').AsString:=periode;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.Execute;

      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update periode set tglmulaidenda=:tanggal,tglmulaidenda2=:tanggal2,tglmulaidenda3=:tanggal3,tglmulaidenda4=:tanggal4,tglmulaidendaperbulan=:tanggal5 where periode=:periode');
      DM.Qexec.ParamByName('tanggal').AsDate:=tanggal.date;
      DM.Qexec.ParamByName('periode').AsString:=periode;
      DM.Qexec.ParamByName('tanggal2').AsDate:=tanggal2.date;
      DM.Qexec.ParamByName('tanggal3').AsDate:=tanggal3.date;
      DM.Qexec.ParamByName('tanggal4').AsDate:=tanggal4.date;
      DM.Qexec.ParamByName('tanggal5').AsDate:=tanggal5.date;
      DM.Qexec.Execute;

    end;
    ModalResult:=MrOK;


  except On E:exception  do
  begin

          MessageDlg('Terjadi Kesalahan : '+ E.message, mtwarning, [MbOk], 0);
  end;
  end;

FINALLY

  Enabled:=true;
  Umain.host.close;
END;
end;

procedure Tusetdenda.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tusetdenda.cbWilayahClick(Sender: TObject);
begin
  if (cbWilayah.Checked) or (cbRayon.Checked) then
    Wilayah.Enabled:=true
  else
    Wilayah.Enabled:=False;

  if cbWilayah.Checked then
  begin
    cbRayon.Checked:=False;
    isicombowildenda;
  end;
end;

procedure Tusetdenda.WilayahPropertiesChange(Sender: TObject);
begin
  kodewil.ItemIndex:=Wilayah.ItemIndex;
end;

procedure Tusetdenda.cbRayonClick(Sender: TObject);
begin
  if (cbWilayah.Checked) or (cbRayon.Checked) then
    Wilayah.Enabled:=true
  else
    Wilayah.Enabled:=False;

  if cbRayon.Checked then
  begin
    cbWilayah.Checked:=False;
    isicombowildenda;
  end;
end;

end.
