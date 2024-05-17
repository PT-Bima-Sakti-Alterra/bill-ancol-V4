unit FRAME_penggunaloket;
//coba modifikasi repo
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxCalendar, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls,
  RzPanel, MemDS, DBAccess, MyAccess,
  RzLabel;

type
  TFRuserloket = class(TFrame)
    Quser: TMyQuery;
    Dsuser: TMyDataSource;
    Qusernama: TStringField;
    Qusernamauser: TStringField;
    Quserpassworduser: TStringField;
    Quserpusat: TStringField;
    Quserkodeloket: TStringField;
    Quserflagaktif: TStringField;
    Quserbolehpelunasan: TStringField;
    Quserbolehcetaklpp: TStringField;
    Quserbolehpembatalan: TStringField;
    Quserbolehcetakulang: TStringField;
    Quserbolehkoreksidenda: TStringField;
    Quserbolehrubahtanggalbayar: TStringField;
    Qexec: TMyQuery;
    Qcek: TMyQuery;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel6: TRzPanel;
    koreksi: TcxButton;
    tambah: TcxButton;
    refresh: TcxButton;
    hapus: TcxButton;
    rubahpassword: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1namauser: TcxGridDBColumn;
    cxGrid1DBTableView1kodeloket: TcxGridDBColumn;
    cxGrid1DBTableView1pusat: TcxGridDBColumn;
    cxGrid1DBTableView1flagaktif: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel8: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel9: TRzPanel;
    koreksi2: TcxButton;
    tambah2: TcxButton;
    refresh2: TcxButton;
    hapus2: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Qbshl: TMyQuery;
    DSbshl: TMyDataSource;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1namauser: TcxGridDBColumn;
    cxGridDBTableView1kodeloket: TcxGridDBColumn;
    cxGridDBTableView1flagaktif: TcxGridDBColumn;
    Quserbolehpembatalankasirlain: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Quserbolehpelunasannonair: TStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Quserbolehpembatalantanggallain: TStringField;
    Quserbolehloncatbulan: TStringField;
    Qusertagihan: TIntegerField;
    Quserangsuran: TIntegerField;
    Qusertunggakan: TIntegerField;
    Quserpenerimaan: TIntegerField;
    Quserlaporan: TIntegerField;
    Qusertutuploket: TIntegerField;
    Qusersetoran: TIntegerField;
    Quserinfoloket: TIntegerField;
    Quserkwitansimanual: TIntegerField;
    OnOffToken: TcxButton;
    QcekToken: TMyQuery;
    labelToken: TRzLabel;
    procedure refreshClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapusClick(Sender: TObject);
    procedure rubahpasswordClick(Sender: TObject);
    procedure refresh2Click(Sender: TObject);
    procedure tambah2Click(Sender: TObject);
    procedure koreksi2Click(Sender: TObject);
    procedure hapus2Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OnOffTokenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses;
  end;

implementation

{$R *.dfm}     uses Module,UnitMain, unituserloket, UnitCombo,
  unituserloket2, cxDropDownEdit;


procedure TFRuserloket.akses();
begin

  if(Umain.olah_data_pengguna<>'1')then
  begin

    tambah.Enabled:=false;
    hapus.Enabled:=false;
    koreksi.Enabled:=false;
    tambah2.Enabled:=false;
    hapus2.Enabled:=false;
    koreksi2.Enabled:=false;
  

  end;


end;

procedure TFRuserloket.refreshClick(Sender: TObject);
begin
  QcekToken.close;
  QcekToken.SQL.Clear;
  QcekToken.SQL.Add('SHOW TABLES LIKE "token"');
  QcekToken.Open;
  if QcekToken.RecordCount>0 then
  begin
    QcekToken.close;
    QcekToken.SQL.Clear;
    QcekToken.SQL.Add('SELECT DISTINCT aktif FROM token');
    QcekToken.Open;
    if (QcekToken.RecordCount=1) and (QcekToken.FieldByName('aktif').AsString='1') then
    begin
      OnOffToken.OptionsImage.ImageIndex:=8;
      labelToken.Caption:='TOKEN ON';
    end
    else
    begin
      OnOffToken.OptionsImage.ImageIndex:=6;
      labelToken.Caption:='TOKEN OFF';
    end;
  end
  else
  begin
    OnOffToken.OptionsImage.ImageIndex:=6;
    labelToken.Caption:='TOKEN N/A';
  end;

  TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

    Quser.close;
    Quser.SQL.Clear;
    Quser.SQL.Add(Quser.SQLLock.Text);
    Quser.Open;

end;

procedure TFRuserloket.tambahClick(Sender: TObject);
begin

  TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;


    ucombo.isikombo();
    uuserloket.kodeloket.properties.items:= Ucombo.kodeloket.properties.items;


    uuserloket.namauser.Enabled:=true;
    uuserloket.passworduser.Enabled:=true;
    uuserloket.konfirmasipassword.Enabled:=true;
    uuserloket.nama.Clear;
    uuserloket.namauser.Clear;
    uuserloket.passworduser.Clear;
    uuserloket.konfirmasipassword.Clear;
    uuserloket.pusat.ItemIndex:=0;
    uuserloket.bolehpelunasan.ItemIndex:=0;
    uuserloket.bolehcetaklpp.ItemIndex:=0;
    uuserloket.bolehpembatalan.ItemIndex:=0;
    uuserloket.bolehpembatalankasirlain.ItemIndex:=0;
    uuserloket.bolehcetakulang.ItemIndex:=0;
    uuserloket.bolehkoreksidenda.ItemIndex:=0;
    uuserloket.bolehrubahtanggalbayar.ItemIndex:=0;
    uuserloket.bolehpelunasannonair.ItemIndex:=0;

    uuserloket.bolehpembatalantanggallain.ItemIndex:=0;
    uuserloket.bolehloncatbulan.ItemIndex:=0;

    uuserloket.tagihan.ItemIndex:=0;
    uuserloket.angsuran.ItemIndex:=0;
    uuserloket.tunggakan.ItemIndex:=0;
    uuserloket.penerimaan.ItemIndex:=0;
    uuserloket.laporan.ItemIndex:=0;
    uuserloket.tutuploket.ItemIndex:=0;
    uuserloket.setoran.ItemIndex:=0;
    uuserloket.infoloket.ItemIndex:=0;
    uuserloket.kwitansimanual.ItemIndex:=0;

    uuserloket.flagaktif.ItemIndex:=0;

    uuserloket.userhapusdenda.ItemIndex:=0;
    uuserloket.userceksetoran.ItemIndex:=0;

  if uuserloket.showmodal=MrOk then
  begin


      Qcek.close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * FROm userloket WHERE nama=:nama or namauser=:namauser');
      Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
      Qcek.ParamByName('namauser').AsString:=uuserloket.namauser.Text;
      Qcek.Open;


    if(Qcek.RecordCount>0)then
    begin
      MessageDlg('Nama atau Username sudah digunakan !!', mtWarning, [MbOk], 0);
      exit;
    end;

  

    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('insert into userloket (nama,namauser,passworduser,pusat,kodeloket,flagaktif,bolehpelunasan,bolehcetaklpp,bolehpembatalan,bolehcetakulang,bolehkoreksidenda,');
    Qexec.SQL.Add('bolehrubahtanggalbayar,bolehpembatalankasirlain,bolehpelunasannonair,bolehpembatalantanggallain,bolehloncatbulan)');
    Qexec.SQL.Add('values (:nama,:namauser,:passworduser,:pusat,:kodeloket,:flagaktif,:bolehpelunasan,:bolehcetaklpp,:bolehpembatalan,:bolehcetakulang,:bolehkoreksidenda,');
    Qexec.SQL.Add(':bolehrubahtanggalbayar,:bolehpembatalankasirlain,:bolehpelunasannonair,:bolehpembatalantanggallain,:bolehloncatbulan)');
    Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qexec.ParamByName('namauser').AsString:=uuserloket.namauser.Text;
    Qexec.ParamByName('passworduser').AsString:=DM.DCP_rc41.EncryptString(uuserloket.namauser.Text+uuserloket.passworduser.Text+'B1M@S@KT1');//LowerCase(uuserloket.passworduser.Text);
    Qexec.ParamByName('pusat').AsString:=IntToStr(uuserloket.pusat.ItemIndex);
    Qexec.ParamByName('kodeloket').AsString:=uuserloket.kodeloket.Text;
    Qexec.ParamByName('flagaktif').AsString:=IntToStr(uuserloket.flagaktif.ItemIndex);
    Qexec.ParamByName('bolehpelunasan').AsString:=IntToStr(uuserloket.bolehpelunasan.ItemIndex);
    Qexec.ParamByName('bolehcetaklpp').AsString:=IntToStr(uuserloket.bolehcetaklpp.ItemIndex);
    Qexec.ParamByName('bolehpembatalan').AsString:=IntToStr(uuserloket.bolehpembatalan.ItemIndex);
    Qexec.ParamByName('bolehcetakulang').AsString:=IntToStr(uuserloket.bolehcetakulang.ItemIndex);
    Qexec.ParamByName('bolehkoreksidenda').AsString:=IntToStr(uuserloket.bolehkoreksidenda.ItemIndex);
    Qexec.ParamByName('bolehrubahtanggalbayar').AsString:=IntToStr(uuserloket.bolehrubahtanggalbayar.ItemIndex);
    Qexec.ParamByName('bolehpembatalankasirlain').AsString:=IntToStr(uuserloket.bolehpembatalankasirlain.ItemIndex);
    Qexec.ParamByName('bolehpelunasannonair').AsString:=IntToStr(uuserloket.bolehpelunasannonair.ItemIndex);
    Qexec.ParamByName('bolehpembatalantanggallain').AsString:=IntToStr(uuserloket.bolehpembatalantanggallain.ItemIndex);
    Qexec.ParamByName('bolehloncatbulan').AsString:=IntToStr(uuserloket.bolehloncatbulan.ItemIndex);
    Qexec.Execute;

    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('insert into userloket_hakakses (nama,tagihan,angsuran,tunggakan,penerimaan,laporan,tutuploket,setoran,infoloket,kwitansimanual)');
    Qexec.SQL.Add('values (:nama,:tagihan,:angsuran,:tunggakan,:penerimaan,:laporan,:tutuploket,:setoran,:infoloket,:kwitansimanual)');
    Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qexec.ParamByName('tagihan').AsString:=IntToStr(uuserloket.tagihan.ItemIndex);
    Qexec.ParamByName('angsuran').AsString:=IntToStr(uuserloket.angsuran.ItemIndex);
    Qexec.ParamByName('tunggakan').AsString:=IntToStr(uuserloket.tunggakan.ItemIndex);
    Qexec.ParamByName('penerimaan').AsString:=IntToStr(uuserloket.penerimaan.ItemIndex);
    Qexec.ParamByName('laporan').AsString:=IntToStr(uuserloket.laporan.ItemIndex);
    Qexec.ParamByName('tutuploket').AsString:=IntToStr(uuserloket.tutuploket.ItemIndex);
    Qexec.ParamByName('setoran').AsString:=IntToStr(uuserloket.setoran.ItemIndex);
    Qexec.ParamByName('infoloket').AsString:=IntToStr(uuserloket.infoloket.ItemIndex);
    Qexec.ParamByName('kwitansimanual').AsString:=IntToStr(uuserloket.kwitansimanual.ItemIndex);
    Qexec.Execute;

    if uuserloket.userhapusdenda.ItemIndex=1 then
    begin
      Qexec.close;
      Qexec.SQL.Clear;
      Qexec.SQL.Add('insert into userbolehhapusdenda values (:nama)');
      Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
      Qexec.Execute;
    end;

    if uuserloket.userceksetoran.ItemIndex=1 then
    begin
      Qexec.close;
      Qexec.SQL.Clear;
      Qexec.SQL.Add('insert into userloketbolehceksetoran values (:nama)');
      Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
      Qexec.Execute;
    end;

    refresh.Click;

  end;

  
end;

procedure TFRuserloket.koreksiClick(Sender: TObject);
begin


  if(Quser.RecordCount>0)then
  begin


    TRY
    Umain.openkoneksi_host;

    except ON e:Exception do
    begin
      MessageDlg(E.Message, mtError, [MbOk], 0);
    end;
    end;


    ucombo.isikombo();
    uuserloket.kodeloket.properties.items:= Ucombo.kodeloket.properties.items;

    uuserloket.namauser.Enabled:=false;
    uuserloket.passworduser.Enabled:=false;
    uuserloket.konfirmasipassword.Enabled:=false;
    uuserloket.nama.Text:=Qusernama.AsString;
    uuserloket.namauser.Text:=Qusernamauser.AsString;
    uuserloket.kodeloket.Text:=Quserkodeloket.AsString;
    uuserloket.passworduser.Text:='********';
    uuserloket.konfirmasipassword.text:='********';
    uuserloket.pusat.ItemIndex:=StrToInt(Quserpusat.AsString);
    uuserloket.bolehpelunasan.ItemIndex:=StrToInt(Quserbolehpelunasan.AsString);
    uuserloket.bolehcetaklpp.ItemIndex:=StrToInt(Quserbolehcetaklpp.AsString);
    uuserloket.bolehpembatalan.ItemIndex:=StrToInt(Quserbolehpembatalan.AsString);
    uuserloket.bolehpembatalankasirlain.ItemIndex:=StrToInt(Quserbolehpembatalankasirlain.AsString);
    uuserloket.bolehcetakulang.ItemIndex:=StrToInt(Quserbolehcetakulang.AsString);
    uuserloket.bolehkoreksidenda.ItemIndex:=StrToInt(Quserbolehkoreksidenda.AsString);
    uuserloket.bolehrubahtanggalbayar.ItemIndex:=StrToInt(Quserbolehrubahtanggalbayar.AsString);
    uuserloket.bolehpelunasannonair.ItemIndex:=StrToInt(Quserbolehpelunasannonair.AsString);
    uuserloket.bolehpembatalantanggallain.ItemIndex:=StrToInt(Quserbolehpembatalantanggallain.AsString);
    uuserloket.bolehloncatbulan.ItemIndex:=StrToInt(Quserbolehloncatbulan.AsString);

    uuserloket.tagihan.ItemIndex:=StrToInt(Qusertagihan.AsString);
    uuserloket.angsuran.ItemIndex:=StrToInt(Quserangsuran.AsString);
    uuserloket.tunggakan.ItemIndex:=StrToInt(Qusertunggakan.AsString);
    uuserloket.penerimaan.ItemIndex:=StrToInt(Quserpenerimaan.AsString);
    uuserloket.laporan.ItemIndex:=StrToInt(Quserlaporan.AsString);
    uuserloket.tutuploket.ItemIndex:=StrToInt(Qusertutuploket.AsString);
    uuserloket.setoran.ItemIndex:=StrToInt(Qusersetoran.AsString);
    uuserloket.infoloket.ItemIndex:=StrToInt(Quserinfoloket.AsString);
    uuserloket.kwitansimanual.ItemIndex:=StrToInt(Quserkwitansimanual.AsString);

    uuserloket.flagaktif.ItemIndex:=StrToInt(Quserflagaktif.AsString);

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userbolehhapusdenda WHERE nama=:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qcek.Open;
    if Qcek.RecordCount=0 then
      uuserloket.userhapusdenda.ItemIndex:=0
    else
      uuserloket.userhapusdenda.ItemIndex:=1;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userloketbolehceksetoran WHERE nama=:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qcek.Open;
    if Qcek.RecordCount=0 then
      uuserloket.userceksetoran.ItemIndex:=0
    else
      uuserloket.userceksetoran.ItemIndex:=1;


  if uuserloket.showmodal=MrOk then
  begin


{    if(Qusernama.AsString<>uuserloket.nama.Text)then
    begin

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userloket WHERE namauser=:namauser and nama<>:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qcek.ParamByName('namauser').AsString:=uuserloket.namauser.Text;
    Qcek.Open;


      if(Qcek.RecordCount>0)then
      begin
        MessageDlg('Nama User sudah digunakan !!', mtWarning, [MbOk], 0);
        exit;
      end;

    end;
}
    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userloket WHERE namauser=:namauser');
    Qcek.ParamByName('namauser').AsString:=uuserloket.namauser.Text;
    Qcek.Open;

    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('UPDATE userloket ');
    Qexec.SQL.Add('SET nama=:nama,pusat=:pusat,kodeloket=:kodeloket,flagaktif=:flagaktif,bolehpelunasan=:bolehpelunasan,bolehcetaklpp=:bolehcetaklpp,bolehpembatalan=:bolehpembatalan,bolehcetakulang=:bolehcetakulang,bolehkoreksidenda=:bolehkoreksidenda,');
    Qexec.SQL.Add('bolehrubahtanggalbayar=:bolehrubahtanggalbayar,bolehpembatalankasirlain=:bolehpembatalankasirlain,bolehpelunasannonair=:bolehpelunasannonair,bolehpembatalantanggallain=:bolehpembatalantanggallain,bolehloncatbulan=:bolehloncatbulan WHERE namauser=:namauser');
    Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qexec.ParamByName('namauser').AsString:=uuserloket.namauser.Text;
    Qexec.ParamByName('pusat').AsString:=IntToStr(uuserloket.pusat.ItemIndex);
    Qexec.ParamByName('kodeloket').AsString:=uuserloket.kodeloket.Text;
    Qexec.ParamByName('flagaktif').AsString:=IntToStr(uuserloket.flagaktif.ItemIndex);
    Qexec.ParamByName('bolehpelunasan').AsString:=IntToStr(uuserloket.bolehpelunasan.ItemIndex);
    Qexec.ParamByName('bolehcetaklpp').AsString:=IntToStr(uuserloket.bolehcetaklpp.ItemIndex);
    Qexec.ParamByName('bolehpembatalan').AsString:=IntToStr(uuserloket.bolehpembatalan.ItemIndex);
    Qexec.ParamByName('bolehcetakulang').AsString:=IntToStr(uuserloket.bolehcetakulang.ItemIndex);
    Qexec.ParamByName('bolehkoreksidenda').AsString:=IntToStr(uuserloket.bolehkoreksidenda.ItemIndex);
    Qexec.ParamByName('bolehrubahtanggalbayar').AsString:=IntToStr(uuserloket.bolehrubahtanggalbayar.ItemIndex);
    Qexec.ParamByName('bolehpembatalankasirlain').AsString:=IntToStr(uuserloket.bolehpembatalankasirlain.ItemIndex);
    Qexec.ParamByName('bolehpelunasannonair').AsString:=IntToStr(uuserloket.bolehpelunasannonair.ItemIndex);
    Qexec.ParamByName('bolehpembatalantanggallain').AsString:=IntToStr(uuserloket.bolehpembatalantanggallain.ItemIndex);
    Qexec.ParamByName('bolehloncatbulan').AsString:=IntToStr(uuserloket.bolehloncatbulan.ItemIndex);
    Qexec.Execute;

    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('UPDATE userloket_hakakses ');
    Qexec.SQL.Add('SET nama=:namabaru,tagihan=:tagihan,angsuran=:angsuran,tunggakan=:tunggakan,penerimaan=:penerimaan,laporan=:laporan,');
    Qexec.SQL.Add('tutuploket=:tutuploket,setoran=:setoran,infoloket=:infoloket,kwitansimanual=:kwitansimanual WHERE nama=:nama');
    Qexec.ParamByName('nama').AsString:=Qcek.Fieldbyname('nama').AsString;//uuserloket.nama.Text;
    Qexec.ParamByName('namabaru').AsString:=uuserloket.nama.Text;
    Qexec.ParamByName('tagihan').AsString:=IntToStr(uuserloket.tagihan.ItemIndex);
    Qexec.ParamByName('angsuran').AsString:=IntToStr(uuserloket.angsuran.ItemIndex);
    Qexec.ParamByName('tunggakan').AsString:=IntToStr(uuserloket.tunggakan.ItemIndex);
    Qexec.ParamByName('penerimaan').AsString:=IntToStr(uuserloket.penerimaan.ItemIndex);
    Qexec.ParamByName('laporan').AsString:=IntToStr(uuserloket.laporan.ItemIndex);
    Qexec.ParamByName('tutuploket').AsString:=IntToStr(uuserloket.tutuploket.ItemIndex);
    Qexec.ParamByName('setoran').AsString:=IntToStr(uuserloket.setoran.ItemIndex);
    Qexec.ParamByName('infoloket').AsString:=IntToStr(uuserloket.infoloket.ItemIndex);
    Qexec.ParamByName('kwitansimanual').AsString:=IntToStr(uuserloket.kwitansimanual.ItemIndex);
    Qexec.Execute;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userbolehhapusdenda WHERE nama=:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qcek.Open;
    if Qcek.RecordCount=0 then
    begin
      if uuserloket.userhapusdenda.ItemIndex=1 then
      begin
        Qexec.close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('insert into userbolehhapusdenda values (:nama)');
        Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
        Qexec.Execute;
      end
      else
      begin
      end;
    end
    else
    begin
      if uuserloket.userhapusdenda.ItemIndex=0 then
      begin
        Qexec.close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('DELETE FROM userbolehhapusdenda WHERE nama=:nama');
        Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
        Qexec.Execute;
      end
      else
      begin
      end;
    end;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userloketbolehceksetoran WHERE nama=:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket.nama.Text;
    Qcek.Open;
    if Qcek.RecordCount=0 then
    begin
      if uuserloket.userceksetoran.ItemIndex=1 then
      begin
        Qexec.close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('insert into userloketbolehceksetoran values (:nama)');
        Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
        Qexec.Execute;
      end
      else
      begin
      end;
    end
    else
    begin
      if uuserloket.userceksetoran.ItemIndex=0 then
      begin
        Qexec.close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('DELETE FROM userloketbolehceksetoran WHERE nama=:nama');
        Qexec.ParamByName('nama').AsString:=uuserloket.nama.Text;
        Qexec.Execute;
      end
      else
      begin
      end;
    end;

    refresh.Click;

//    Quser.SQLRefresh.Clear;
//    Quser.SQLRefresh.Add(Quser.SQLRefresh.Text);
//    Quser.RefreshRecord;

  end;

  end;

end;

procedure TFRuserloket.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if koreksi.Enabled=true then
  koreksi.Click
  else
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
end;

procedure TFRuserloket.hapusClick(Sender: TObject);
begin
 if(Quser.RecordCount>0)then
  begin


      TRY
      Umain.openkoneksi_host;

      except ON e:Exception do
      begin
        MessageDlg(E.Message, mtError, [MbOk], 0);
      end;
      end;



    if MessageDlg('Yakin hapus daftar pengguna loket '+Quser.fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
     Qexec.close;
     Qexec.SQL.Clear;
     Qexec.SQL.Add('DELETE FROM userloket WHERE nama=:nama');
     Qexec.ParamByName('nama').AsString:=Quser.fieldbyname('nama').AsString;
     Qexec.Execute;

     Qexec.close;
     Qexec.SQL.Clear;
     Qexec.SQL.Add('DELETE FROM userloket_hakakses WHERE nama=:nama');
     Qexec.ParamByName('nama').AsString:=Quser.fieldbyname('nama').AsString;
     Qexec.Execute;

     Qexec.close;
     Qexec.SQL.Clear;
     Qexec.SQL.Add('DELETE FROM userbolehhapusdenda WHERE nama=:nama');
     Qexec.ParamByName('nama').AsString:=Quser.fieldbyname('nama').AsString;
     Qexec.Execute;

     Qexec.close;
     Qexec.SQL.Clear;
     Qexec.SQL.Add('DELETE FROM userloketbolehceksetoran WHERE nama=:nama');
     Qexec.ParamByName('nama').AsString:=Quser.fieldbyname('nama').AsString;
     Qexec.Execute;

     DM.uraianlogakses:='Hapus Pengguna Loket'+Quser.fieldbyname('nama').AsString;
     DM.targetlogakses:=Quser.fieldbyname('nama').AsString;
     DM.logakses;

     refresh.Click;

     Exit;
     
    end
    else begin
    Exit;
    end;
  end;
end;

procedure TFRuserloket.rubahpasswordClick(Sender: TObject);
begin
if(Quser.RecordCount>0)then
  begin
    if MessageDlg('Yakin Reset Password Pengguna Loket '+Quser.Fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin





      TRY
      Umain.openkoneksi_host;

      except ON e:Exception do
      begin
        MessageDlg(E.Message, mtError, [MbOk], 0);
      end;
      end;  

      Qcek.close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select right(md5(NOW()),5) as passwordbaru FROM userloket limit 1');
      Qcek.Open;  



      Qexec.close;
      Qexec.SQL.Clear;
      Qexec.SQL.Add('update userloket set passworduser=md5(:password) where nama=:nama');
      Qexec.ParamByName('password').AsString:=Qcek.Fieldbyname('passwordbaru').AsString;
      Qexec.ParamByName('nama').AsString:=Quser.Fieldbyname('nama').AsString;
      Qexec.Execute;

      ShowMessage('2');


      MessageDlg('Password Pengguna Loket '+Quser.Fieldbyname('nama').AsString+' Adalah "'+UpperCase(Qcek.Fieldbyname('passwordbaru').AsString)+'"', mtInformation, [mbOK], 0);


      ShowMessage('3');

     DM.uraianlogakses:='Reset Password Pengguna Loket '+Quser.FieldByName('nama').AsString;
     DM.targetlogakses:= Quser.FieldByName('nama').AsString;
     DM.logakses;

    end
    else
      Exit;
  end;
end;

procedure TFRuserloket.refresh2Click(Sender: TObject);
begin
TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;

    Qbshl.close;
    Qbshl.SQL.Clear;
    Qbshl.SQL.Add(Qbshl.SQLLock.Text);
    Qbshl.Open;

end;

procedure TFRuserloket.tambah2Click(Sender: TObject);
begin
 TRY
  Umain.openkoneksi_host;

  except ON e:Exception do
  begin
    MessageDlg(E.Message, mtError, [MbOk], 0);
  end;
  end;


    ucombo.isikombo();
    uuserloket2.kodeloket.properties.items:= Ucombo.kodeloket.properties.items;
    uuserloket2.kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;

  

     Qcek.Close;
     Qcek.SQL.Clear;
     Qcek.SQL.Add('SELECT * FROM userbshl_hakakses ORDER BY hakakses ASC ');
     Qcek.Open;

     uuserloket2.hakakses.Properties.Items.Clear;

     while not Qcek.Eof do
     begin
              uuserloket2.hakakses.Properties.Items.Add(Qcek.FieldByName('hakakses').ASstring);   
              Qcek.Next;
     end;


    uuserloket2.namauser.Enabled:=true;
    uuserloket2.passworduser.Enabled:=true;
    uuserloket2.konfirmasipassword.Enabled:=true;
    uuserloket2.nama.Clear;
    uuserloket2.namauser.Clear;
    uuserloket2.passworduser.Clear;
    uuserloket2.konfirmasipassword.Clear;
    uuserloket2.hakakses.ItemIndex:=0;
    uuserloket2.flagaktif.ItemIndex:=0;
    
  if uuserloket2.showmodal=MrOk then
  begin
  
      Qcek.close;
      Qcek.SQL.Clear;
      Qcek.SQL.Add('select * FROm userbshl WHERE nama=:nama or namauser=:namauser');
      Qcek.ParamByName('nama').AsString:=uuserloket2.nama.Text;
      Qcek.ParamByName('namauser').AsString:=uuserloket2.namauser.Text;
      Qcek.Open;


    if(Qcek.RecordCount>0)then
    begin
      MessageDlg('Nama atau Username sudah digunakan !!', mtWarning, [MbOk], 0);
      exit;
    end;

  

    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('insert into userbshl (nama,namauser,passworduser,kodeloket,kodewil,hakakses,kodecabang,flagaktif)');
    Qexec.SQL.Add('values (:nama,:namauser,:passworduser,:kodeloket,:kodewil,:hakakses,:kodecabang,:flagaktif)');
    Qexec.ParamByName('nama').AsString:=uuserloket2.nama.Text;
    Qexec.ParamByName('namauser').AsString:=uuserloket2.namauser.Text;
    Qexec.ParamByName('passworduser').AsString:=DM.DCP_rc41.EncryptString(uuserloket2.namauser.Text+uuserloket2.passworduser.Text+'B1M@S@KT1');//LowerCase(uuserloket2.passworduser.Text);
    Qexec.ParamByName('kodeloket').AsString:=uuserloket2.kodeloket.Text;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodewillokasi FROm loket WHERE kodeloket=:kodeloket');
    Qcek.ParamByName('kodeloket').AsString:=uuserloket2.kodeloket.Text;
    Qcek.Open;

    Qexec.ParamByName('kodewil').AsString:=Qcek.FieldByName('kodewillokasi').AsString;
    Qexec.ParamByName('hakakses').AsString:=uuserloket2.hakakses.Text;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodecabang FROm kelurahan WHERE kodekelurahan=:kodekelurahan');
    Qcek.ParamByName('kodekelurahan').AsString:=uuserloket2.kodekelurahan.Text;
    Qcek.Open;

    Qexec.ParamByName('kodecabang').AsString:=Qcek.FieldByName('kodecabang').AsString;
    Qexec.ParamByName('flagaktif').AsString:=IntToStr(uuserloket2.flagaktif.ItemIndex);
    Qexec.Execute;


    refresh2.Click;

  end;
end;

procedure TFRuserloket.koreksi2Click(Sender: TObject);
begin
 if(Qbshl.RecordCount>0)then
  begin


    TRY
    Umain.openkoneksi_host;

    except ON e:Exception do
    begin
      MessageDlg(E.Message, mtError, [MbOk], 0);
    end;
    end;


    ucombo.isikombo();
    uuserloket2.kodeloket.properties.items:= Ucombo.kodeloket.properties.items;
    uuserloket2.kodekelurahan.properties.items:= Ucombo.kodekelurahan.properties.items;

     Qcek.Close;
     Qcek.SQL.Clear;
     Qcek.SQL.Add('SELECT * FROM userbshl_hakakses ORDER BY hakakses ASC ');
     Qcek.Open;

     uuserloket2.hakakses.Properties.Items.Clear;

     while not Qcek.Eof do
     begin
              uuserloket2.hakakses.Properties.Items.Add(Qcek.FieldByName('hakakses').ASstring);
              Qcek.Next;
     end;

    

    uuserloket2.namauser.Enabled:=false;
    uuserloket2.passworduser.Enabled:=false;
    uuserloket2.konfirmasipassword.Enabled:=false;
    uuserloket2.nama.Text:=Qbshl.fieldbyname('nama').AsString;
    uuserloket2.namauser.Text:=Qbshl.fieldbyname('namauser').AsString;
    uuserloket2.kodeloket.Text:=Qbshl.fieldbyname('kodeloket').AsString;
    uuserloket2.hakakses.Text:=Qbshl.fieldbyname('hakakses').AsString;

    Qcek.Close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('SELECT kodekelurahan FROM kelurahan WHERE kodecabang=:kodecabang ');
    Qcek.ParamByName('kodecabang').AsString:=Qbshl.fieldbyname('kodecabang').AsString;
    Qcek.Open;

    uuserloket2.kodekelurahan.Text:=Qcek.fieldbyname('kodekelurahan').AsString;
    uuserloket2.passworduser.Text:='********';
    uuserloket2.konfirmasipassword.text:='********';
    uuserloket2.flagaktif.ItemIndex:=StrToInt(Qbshl.fieldbyname('flagaktif').AsString);

  if uuserloket2.showmodal=MrOk then
  begin


    if(Qbshl.fieldbyname('namauser').AsString<>uuserloket2.namauser.Text)then
    begin

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select * FROm userbshl WHERE namauser=:namauser and nama<>:nama');
    Qcek.ParamByName('nama').AsString:=uuserloket2.nama.Text;
    Qcek.ParamByName('namauser').AsString:=uuserloket2.namauser.Text;
    Qcek.Open;


      if(Qcek.RecordCount>0)then
      begin
        MessageDlg('Username sudah digunakan !!', mtWarning, [MbOk], 0);
        exit;
      end;

    end;


    Qexec.close;
    Qexec.SQL.Clear;
    Qexec.SQL.Add('UPDATE userbshl ');
    Qexec.SQL.Add('SET namauser=:namauser,kodeloket=:kodeloket,kodewil=:kodewil,hakakses=:hakakses,kodecabang=:kodecabang,flagaktif=:flagaktif');
    Qexec.SQL.Add(' WHERE nama=:nama');
    Qexec.ParamByName('nama').AsString:=uuserloket2.nama.Text;
    Qexec.ParamByName('namauser').AsString:=uuserloket2.namauser.Text;
    Qexec.ParamByName('kodeloket').AsString:=uuserloket2.kodeloket.Text;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodewillokasi FROm loket WHERE kodeloket=:kodeloket');
    Qcek.ParamByName('kodeloket').AsString:=uuserloket2.kodeloket.Text;
    Qcek.Open;

    Qexec.ParamByName('kodewil').AsString:=Qcek.FieldByName('kodewillokasi').AsString;
    Qexec.ParamByName('hakakses').AsString:=uuserloket2.hakakses.Text;

    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add('select kodecabang FROm kelurahan WHERE kodekelurahan=:kodekelurahan');
    Qcek.ParamByName('kodekelurahan').AsString:=uuserloket2.kodekelurahan.Text;
    Qcek.Open;

    Qexec.ParamByName('kodecabang').AsString:=Qcek.FieldByName('kodecabang').AsString;
    Qexec.ParamByName('flagaktif').AsString:=IntToStr(uuserloket2.flagaktif.ItemIndex);
    Qexec.Execute;


    Qbshl.SQLRefresh.Clear;
    Qbshl.SQLRefresh.Add(Qbshl.SQLRefresh.Text);
    Qbshl.RefreshRecord;

  end;

  end;
end;

procedure TFRuserloket.hapus2Click(Sender: TObject);
begin
if(Qbshl.RecordCount>0)then
  begin


      TRY
      Umain.openkoneksi_host;

      except ON e:Exception do
      begin
        MessageDlg(E.Message, mtError, [MbOk], 0);
      end;
      end;



    if MessageDlg('Yakin hapus daftar pengguna BSHL '+Qbshl.fieldbyname('nama').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
     Qexec.close;
     Qexec.SQL.Clear;
     Qexec.SQL.Add('DELETE FROM userbshl WHERE nama=:nama');
     Qexec.ParamByName('nama').AsString:=Qbshl.fieldbyname('nama').AsString;
     Qexec.Execute;


     DM.uraianlogakses:='Hapus Pengguna BSHL'+Qbshl.fieldbyname('nama').AsString;
     DM.targetlogakses:=Qbshl.fieldbyname('nama').AsString;
     DM.logakses;

     refresh2.Click;

     Exit;
     
    end
    else begin
    Exit;
    end;
  end;
end;

procedure TFRuserloket.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if koreksi2.Enabled=true then
  koreksi2.Click
  else
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
end;

procedure TFRuserloket.OnOffTokenClick(Sender: TObject);
begin
  QcekToken.close;
  QcekToken.SQL.Clear;
  QcekToken.SQL.Add('SHOW TABLES LIKE "token"');
  QcekToken.Open;
  if QcekToken.RecordCount>0 then
  begin
    QcekToken.close;
    QcekToken.SQL.Clear;
    QcekToken.SQL.Add('SELECT DISTINCT aktif FROM token');
    QcekToken.Open;
    if (QcekToken.RecordCount=1) and (QcekToken.FieldByName('aktif').AsString='1') then
    begin
      QcekToken.close;
      QcekToken.SQL.Clear;
      QcekToken.SQL.Add('UPDATE token SET aktif="0"');
      QcekToken.Execute;

      OnOffToken.OptionsImage.ImageIndex:=6;
      labelToken.Caption:='TOKEN OFF';
    end
    else
    begin
      QcekToken.close;
      QcekToken.SQL.Clear;
      QcekToken.SQL.Add('UPDATE token SET aktif="1"');
      QcekToken.Execute;

      OnOffToken.OptionsImage.ImageIndex:=8;
      labelToken.Caption:='TOKEN ON';
    end;
  end
  else
  begin
    OnOffToken.OptionsImage.ImageIndex:=6;
    labelToken.Caption:='TOKEN N/A';
  end;

end;

end.
