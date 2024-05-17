unit unitgantimeter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, cxDropDownEdit, cxMemo,
  cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  ExtCtrls, RzPanel;

type
  Tugantimeter = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    kodediameterlama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel5: TcxLabel;
    alasan: TcxMemo;
    kodediameterbaru: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel6: TcxLabel;
    serimeterbaru: TcxTextEdit;
    cxLabel7: TcxLabel;
    serimeterlama: TcxTextEdit;
    cxLabel8: TcxLabel;
    merkwm: TcxComboBox;
    cxLabel9: TcxLabel;
    merklama: TcxTextEdit;
    RzPanel8: TRzPanel;
    procedure noClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ugantimeter: Tugantimeter;

implementation

uses UnitCombo;

{$R *.dfm}

procedure Tugantimeter.noClick(Sender: TObject);
begin
close;
end;

procedure Tugantimeter.FormShow(Sender: TObject);
begin
      ucombo.isikombo();
      kodediameterbaru.properties.items:= Ucombo.kodediameter.properties.items;
      merkwm.properties.items:= Ucombo.merk.properties.items;
      kodediameterbaru.SetFocus;
end;

procedure Tugantimeter.okClick(Sender: TObject);
begin
 if kodediameterbaru.Text='' then
  begin
      MessageDlg('Kode Diameter baru harus diisi !!', mtWarning, [mbOK], 0);
      kodediameterbaru.SetFocus;
      exit;
  end;

   if serimeterbaru.Text='' then
  begin
      MessageDlg('Nomor/Seri Meter baru harus diisi !!', mtWarning, [mbOK], 0);
      serimeterbaru.SetFocus;
      exit;
  end;

    if merkwm.Text='' then
  begin
      MessageDlg('Merk Meter baru harus diisi !!', mtWarning, [mbOK], 0);
      merkwm.SetFocus;
      exit;
  end;

   if nomorba.Text='' then
  begin
      MessageDlg('Nomor Berita Acara harus diisi !!', mtWarning, [mbOK], 0);
      nomorba.SetFocus;
      exit;
  end;


   if tanggal.Text='' then
  begin               
      MessageDlg('Tanggal Berita Acara harus diisi !!', mtWarning, [mbOK], 0);
      tanggal.SetFocus;
      exit;
  end;


   if alasan.Text='' then
  begin
      MessageDlg('Alasan harus diisi !!', mtWarning, [mbOK], 0);
      alasan.SetFocus;
      exit;
  end;




  ModalResult:=Mrok;
end;

end.