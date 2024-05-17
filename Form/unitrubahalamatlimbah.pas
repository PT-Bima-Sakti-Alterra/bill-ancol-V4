unit unitrubahalamatlimbah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  ComCtrls, dxCore, cxDateUtils, ActnList, cxDropDownEdit, cxMemo,
  cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  ExtCtrls, RzPanel;

type
  Turubahalamatlimbah = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    koderayonlama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel5: TcxLabel;
    alasan: TcxMemo;
    koderayonbaru: TcxComboBox;
    cxLabel6: TcxLabel;
    alamatbaru: TcxTextEdit;
    cxLabel7: TcxLabel;
    alamatlama: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel8: TcxLabel;
    kodekelurahanlama: TcxTextEdit;
    cxLabel9: TcxLabel;
    kodebloklama: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    kodeblokbaru: TcxComboBox;
    kodekelurahanbaru: TcxComboBox;
    RzPanel8: TRzPanel;
    cxLabel12: TcxLabel;
    norumah: TcxTextEdit;
    cxLabel13: TcxLabel;
    rt: TcxTextEdit;
    cxLabel14: TcxLabel;
    rw: TcxTextEdit;
    cxLabel15: TcxLabel;
    norumahlama: TcxTextEdit;
    cxLabel16: TcxLabel;
    rtlama: TcxTextEdit;
    cxLabel17: TcxLabel;
    rwlama: TcxTextEdit;
    procedure noClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure koderayonbaruPropertiesChange(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urubahalamatlimbah: Turubahalamatlimbah;

implementation

uses UnitCombo, Module;

{$R *.dfm}

procedure Turubahalamatlimbah.noClick(Sender: TObject);
begin
close;
end;

procedure Turubahalamatlimbah.FormShow(Sender: TObject);
begin
      ucombo.isikombo();
      koderayonbaru.properties.items:= Ucombo.koderayon.properties.items;
      kodekelurahanbaru.properties.items:= Ucombo.kodekelurahan.properties.items;
      koderayonbaru.SetFocus;
end;

procedure Turubahalamatlimbah.koderayonbaruPropertiesChange(Sender: TObject);
begin

   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT * FROM blok WHERE koderayon="'+koderayonbaru.Text+'" ORDER BY kodeblok ASC ');
   DM.Qcek.Open;
   kodeblokbaru.Properties.Items.Clear;

   while not DM.Qcek.Eof do
   begin
            kodeblokbaru.Properties.Items.Add(DM.Qcek.FieldByName('kodeblok').ASstring); 
            DM.Qcek.Next;
   end;

end;

procedure Turubahalamatlimbah.okClick(Sender: TObject);
begin
  if koderayonbaru.Text='' then
  begin
      MessageDlg('Kode Rayon baru harus diisi !!', mtWarning, [mbOK], 0);
      koderayonbaru.SetFocus;
      exit;
  end;

   { if kodekelurahanbaru.Text='' then
  begin
      MessageDlg('Kode Kelurahan baru harus diisi !!', mtWarning, [mbOK], 0);
      kodekelurahanbaru.SetFocus;
      exit;
  end;}

   if alamatbaru.Text='' then
  begin
      MessageDlg('Alamat baru harus diisi !!', mtWarning, [mbOK], 0);
      alamatbaru.SetFocus;
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
