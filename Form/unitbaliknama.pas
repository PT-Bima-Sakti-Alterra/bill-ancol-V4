unit unitbaliknama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2013White,
  StdCtrls, cxButtons, ActnList, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxLabel, ComCtrls, dxCore, cxDateUtils, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  Tubaliknama = class(TForm)
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel1: TcxLabel;
    namalama: TcxTextEdit;
    cxLabel2: TcxLabel;
    namabaru: TcxTextEdit;
    cxLabel3: TcxLabel;
    nomorba: TcxTextEdit;
    cxLabel4: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel5: TcxLabel;
    alasan: TcxMemo;
    RzPanel8: TRzPanel;
    cxButton1: TcxButton;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ubaliknama: Tubaliknama;

implementation

uses UnitDaftarBA, UnitMain, DB;

{$R *.dfm}

procedure Tubaliknama.noClick(Sender: TObject);
begin
close;
end;

procedure Tubaliknama.okClick(Sender: TObject);
begin

   if namabaru.Text='' then
  begin
      MessageDlg('Nama baru harus diisi !!', mtWarning, [mbOK], 0);
      namabaru.SetFocus;
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

procedure Tubaliknama.FormShow(Sender: TObject);
begin
namabaru.SetFocus;
end;

procedure Tubaliknama.cxButton1Click(Sender: TObject);
begin


  TRY

  TRY

    umain.Enabled:=false;
    Enabled:=false;

    Umain.openkoneksi_host;


      UdaftarBA.Qcek.close;
      UdaftarBA.Qcek.SQL.Clear;
      UdaftarBA.Qcek.SQL.Add('SELECT b.nomorba AS nomor,p.nosamb,p.nama,p.alamat,p.baru,b.tanggalba,p.keterangan FROM ba_balik_nama b LEFT JOIN permohonan_balik_nama p ON b.nomorpermohonan=p.nomor WHERE b.flaghapus="0"');
      UdaftarBA.Qcek.SQL.Add('ORDER BY b.tanggalba,CAST(b.nomorba AS UNSIGNED) ASC ');
      UdaftarBA.Qcek.Open;


      if udaftarBA.showmodal=mrOk then
      begin


          namabaru.Text:=UdaftarBA.Qcek.fieldbyname('baru').AsString;
          nomorba.Text:=UdaftarBA.Qcek.fieldbyname('nomor').AsString;
          tanggal.date:=UdaftarBA.Qcek.fieldbyname('tanggalba').AsDateTime;
          alasan.Text:=UdaftarBA.Qcek.fieldbyname('keterangan').AsString;


      end;

   EXCEPT On E:EXCEPTION  DO
   BEGIN

        MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);

   END;
   END;
  FINALLY
     
      umain.Enabled:=true;
      Enabled:=true; 
  END;

end;

end.
