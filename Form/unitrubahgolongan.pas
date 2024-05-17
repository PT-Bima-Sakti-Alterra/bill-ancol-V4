unit unitrubahgolongan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  ExtCtrls, RzPanel;

type
  Turubahgolongan = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    kodegollama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel5: TcxLabel;
    alasan: TcxMemo;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    kodegolbaru: TcxComboBox;
    RzPanel8: TRzPanel;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urubahgolongan: Turubahgolongan;

implementation

uses UnitCombo;

{$R *.dfm}

procedure Turubahgolongan.noClick(Sender: TObject);
begin
close;
end;

procedure Turubahgolongan.okClick(Sender: TObject);
begin
 if kodegolbaru.Text='' then
  begin
      MessageDlg('Kode Golongan baru harus diisi !!', mtWarning, [mbOK], 0);
      kodegolbaru.SetFocus;
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

procedure Turubahgolongan.FormShow(Sender: TObject);
begin
      ucombo.isikombo();
      kodegolbaru.properties.items:= Ucombo.kodegol.properties.items;
      kodegolbaru.Focused;
end;

end.
