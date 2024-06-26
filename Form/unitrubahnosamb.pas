unit unitrubahnosamb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  ExtCtrls, RzPanel;

type
  Turubahnosamb = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    nosamblama: TcxTextEdit;
    cxLabel2: TcxLabel;
    nosambbaru: TcxTextEdit;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel5: TcxLabel;
    alasan: TcxMemo;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urubahnosamb: Turubahnosamb;

implementation

{$R *.dfm}

procedure Turubahnosamb.noClick(Sender: TObject);
begin
close;
end;

procedure Turubahnosamb.okClick(Sender: TObject);
begin
   if nosambbaru.Text='' then
  begin
      MessageDlg('No.Sambungan baru harus diisi !!', mtWarning, [mbOK], 0);
      nosambbaru.SetFocus;
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
