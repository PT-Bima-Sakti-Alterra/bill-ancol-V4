unit unitgantisttaus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, ComCtrls,
  dxCore, cxDateUtils, ActnList, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, StdCtrls, cxButtons, cxLabel, ExtCtrls, RzPanel, cxMemo;

type
  Tustatus = class(TForm)
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    ok: TcxButton;
    cxButton1: TcxButton;
    tanggal: TcxDateEdit;
    status: TcxComboBox;
    cxLabel2: TcxLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    alasan: TcxMemo;
    RzPanel8: TRzPanel;
    procedure cxButton1Click(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }  
  end;

var
  ustatus: Tustatus;

implementation

{$R *.dfm}

procedure Tustatus.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tustatus.okClick(Sender: TObject);
begin
if status.Text='' then
  begin
      MessageDlg('Status harus diisi !!', mtWarning, [mbOK], 0);
      status.SetFocus;
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