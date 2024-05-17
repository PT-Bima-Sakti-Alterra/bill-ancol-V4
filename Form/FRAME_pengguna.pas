unit FRAME_pengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, RzPanel, RzButton, StdCtrls, RzLabel, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, MyAccess, MemDS,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  cxContainer, cxCheckBox, cxLabel, cxPCdxBarPopupMenu, cxPC,
  dxSkinOffice2013White,  cxCurrencyEdit, cxTextEdit,
  Menus, cxButtons, cxCalendar;

type
  TFRpengguna = class(TFrame)
    Qpengguna: TMyQuery;
    Dspengguna: TMyDataSource;
    Qlog: TMyQuery;
    DSlog: TMyDataSource;
    RzPanel4: TRzPanel;
    RzPanel6: TRzPanel;
    koreksi: TcxButton;
    tambah: TcxButton;
    refresh: TcxButton;
    hapus: TcxButton;
    daftarhakakses: TcxButton;
    rubahpassword: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1namauser: TcxGridDBColumn;
    cxGrid1DBTableView1passworduser: TcxGridDBColumn;
    cxGrid1DBTableView1waktu: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel3: TRzPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel7: TRzPanel;
    cari: TcxTextEdit;
    limit: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    RzPanel11: TRzPanel;
    RzPanel10: TRzPanel;
    RzPanel1: TRzPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure refreshClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapusClick(Sender: TObject);
    procedure rubahpasswordClick(Sender: TObject);
    procedure daftarhakaksesClick(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cariPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
  end;

implementation

{$R *.dfm}  uses Module, Unitpengguna, unitlogin,
  unitdaftarjabatan, UnitMain;

procedure TFRpengguna.akses();
begin

  if(Umain.olah_data_pengguna<>'1')then
  begin

    tambah.Enabled:=false;
    hapus.Enabled:=false;
    koreksi.Enabled:=false;
    rubahpassword.Enabled:=false;
    daftarhakakses.Enabled:=false;

  end;


end;


procedure TFRpengguna.refreshClick(Sender: TObject);
begin
Qpengguna.Close;
Qpengguna.SQL.Clear;
Qpengguna.SQl.Add('select u.*,j.* from userakses u left join hakakses j On u.hak_akses=j.hak_akses ORDER By u.nama ASC');
Qpengguna.Open;
end;

procedure TFRpengguna.tambahClick(Sender: TObject);
begin

  DM.Xflag:='Tambah';
  upengguna.pass.Enabled:=true;
  upengguna.konfirm.Enabled:=true;
  upengguna.nama.Enabled:=true;
  upengguna.namauser.Enabled:=true;
  if upengguna.showmodal=MrOk then
  begin
     refresh.Click;
  end;

end;

procedure TFRpengguna.koreksiClick(Sender: TObject);
begin

 if(Qpengguna.RecordCount>0)then
 begin 
  DM.Xflag:='Koreksi';
  DM.Xid:=Qpengguna.fieldbyname('id').AsInteger;
  upengguna.pass.Text:='********';
  upengguna.konfirm.Text:='********';
  upengguna.pass.Enabled:=false;
  upengguna.nama.Text:= Qpengguna.fieldbyname('nama').AsString;
  upengguna.namauser.Text:= Qpengguna.fieldbyname('namauser').AsString;
  upengguna.noid.Text:= Qpengguna.fieldbyname('noidentitas').AsString;
  upengguna.status.ItemIndex:= StrToInt(Qpengguna.fieldbyname('aktif').AsString);
  //upengguna.nama.Enabled:=false;
  upengguna.konfirm.Enabled:=false;
  upengguna.namauser.Enabled:=false;
  DM.Xjabatan:=Qpengguna.fieldbyname('hak_akses').AsString;
  if upengguna.showmodal=MrOk then

  begin
     Qpengguna.SQLRefresh.Clear;
     Qpengguna.SQLRefresh.Add('select u.* from userakses u  where u.id=:id');
     Qpengguna.RefreshRecord;
  end;
 end;
end;

procedure TFRpengguna.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if koreksi.Enabled=true then
  koreksi.Click
  else
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
end;

procedure TFRpengguna.hapusClick(Sender: TObject);
begin
if(Qpengguna.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar pengguna kantor pusat '+Qpengguna.fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM userakses WHERE id=:id');
     DM.Qexec.ParamByName('id').AsInteger:=Qpengguna.fieldbyname('id').AsInteger;
     DM.Qexec.Execute;


     DM.uraianlogakses:='Hapus Pengguna '+Qpengguna.fieldbyname('nama').AsString;
     DM.targetlogakses:=Qpengguna.fieldbyname('nama').AsString;
     DM.logakses;

     refresh.Click;

     Exit;
    end
    else begin
    Exit;
    end;
  end;
end;

procedure TFRpengguna.rubahpasswordClick(Sender: TObject);
begin
if(Qpengguna.RecordCount>0)then
  begin
    if MessageDlg('Yakin Reset Password Pengguna Pusat '+Qpengguna.Fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      Dm.Qcek.SQL.Add('select right(md5(NOW()),5) as passwordbaru FROM userakses limit 1');
      Dm.Qcek.Open;




      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('update userakses set passworduser=:password where id=:id');
      DM.Qexec.ParamByName('password').AsString:=DM.DCP_rc41.EncryptString(Qpengguna.Fieldbyname('namauser').AsString+DM.Qcek.Fieldbyname('passwordbaru').AsString+'B1M@S@KT1');//DM.Qcek.Fieldbyname('passwordbaru').AsString;
      DM.Qexec.ParamByName('id').asinteger:=Qpengguna.Fieldbyname('id').asinteger;
      DM.Qexec.Execute;

      MessageDlg('Password Pengguna Pusat '+Qpengguna.Fieldbyname('nama').AsString+' Adalah "'+UpperCase(DM.Qcek.Fieldbyname('passwordbaru').AsString)+'"', mtInformation, [mbOK], 0);


     DM.uraianlogakses:='Reset Password Pengguna Pusat '+Qpengguna.FieldByName('nama').AsString;
     DM.targetlogakses:= Qpengguna.FieldByName('nama').AsString;
     DM.logakses;

    end
    else
      Exit;
  end;
end;

procedure TFRpengguna.daftarhakaksesClick(Sender: TObject);
begin

  if udaftarjabatan.showmodal=mrOk Then
  begin

      refresh.Click;

  end;
  
end;

procedure TFRpengguna.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
if(Qpengguna.RecordCount>0)then
begin

  cari.Clear;

  

  Qlog.close;
  Qlog.SQL.Clear;
  Qlog.SQL.Add('select * FROM logakses WHERE user="'+Qpengguna.fieldbyname('nama').AsString+'" ORDER BY waktu DESC limit :limit');
  Qlog.ParamByName('limit').AsCurrency:=limit.value;
  Qlog.Open;


end;
end;

procedure TFRpengguna.cariPropertiesChange(Sender: TObject);
begin
if(Qpengguna.RecordCount>0)then
begin

  Qlog.close;
  Qlog.SQL.Clear;
  Qlog.SQL.Add('select * FROM logakses WHERE user="'+Qpengguna.fieldbyname('nama').AsString+'" AND ket like CONCAt("%",:cari,"%") ORDER BY waktu DESC limit :limit');
  Qlog.ParamByName('cari').AsString:=cari.Text;
  Qlog.ParamByName('limit').AsCurrency:=limit.value;
  Qlog.Open;


end;
end;

end.
