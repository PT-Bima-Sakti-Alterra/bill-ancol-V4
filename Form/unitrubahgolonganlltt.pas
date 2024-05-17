unit unitrubahgolonganlltt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  ExtCtrls, RzPanel;

type
  Turubahgolonganlltt = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    kodelama: TcxTextEdit;
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
    kodebaru: TcxComboBox;
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
  urubahgolonganlltt: Turubahgolonganlltt;

implementation

uses UnitCombo;

{$R *.dfm}

procedure Turubahgolonganlltt.noClick(Sender: TObject);
begin
close;
end;

procedure Turubahgolonganlltt.okClick(Sender: TObject);
begin
 if kodebaru.Text='' then
  begin
      MessageDlg('Kode Golongan baru harus diisi !!', mtWarning, [mbOK], 0);
      kodebaru.SetFocus;
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

procedure Turubahgolonganlltt.FormShow(Sender: TObject);
begin
      ucombo.isikombo();
      kodebaru.properties.items:= Ucombo.kodelltt.properties.items;
      kodebaru.Focused;
end;

end.
