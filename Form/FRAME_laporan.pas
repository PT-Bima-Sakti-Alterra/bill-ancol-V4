unit FRAME_laporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, DB, DBAccess, MyAccess, MemDS, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, dxSkiniMaginary, Menus,
  cxContainer, ComCtrls, dxCore, cxDateUtils, cxMemo, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  cxButtons, RzPrgres, cxCurrencyEdit;

type
  TFRlaporan = class(TFrame)
    QcekLap: TMyQuery;
    DScek: TMyDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    RzPanel1: TRzPanel;
    panel_laporan: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    panel_download: TRzPanel;
    btndownload: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    t1: TcxDateEdit;
    t2: TcxDateEdit;
    reset: TcxButton;
    cek: TcxCheckBox;
    memo: TcxMemo;
    info: TRzPanel;
    cxLabel4: TcxLabel;
    t3: TcxDateEdit;
    lastupdate1: TcxDateEdit;
    lastupdate2: TcxDateEdit;
    lastupdatelimbah: TcxDateEdit;
    cxLabel5: TcxLabel;
    t4: TcxDateEdit;
    cxLabel6: TcxLabel;
    t5: TcxDateEdit;
    lastupdatelltt: TcxDateEdit;
    lastupdate3: TcxDateEdit;
    btnload: TcxButton;
    cxLabel3: TcxLabel;
    id: TcxCurrencyEdit;
    Qrek: TMyQuery;
    Qbayar: TMyQuery;
    Qnonair: TMyQuery;
    Qna: TMyQuery;
    Qcek: TMyQuery;
    Qhost1: TMyQuery;
    Qlunas2: TMyQuery;
    Qcek2: TMyQuery;
    Qlunas: TMyQuery;
    Qangsurantunggakan: TMyQuery;
    Qlimbah: TMyQuery;
    Qlltt: TMyQuery;
    btnload2: TcxButton;
    Progress: TRzProgressBar;
    Qmaxtermin: TMyQuery;
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnloadClick(Sender: TObject);
    procedure cekClick(Sender: TObject);
    procedure resetClick(Sender: TObject);
    procedure btndownloadClick(Sender: TObject);
    procedure btnload2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    tgl1,tgl2,tgl3,tgl4,tgl5:TDate;
    xid:integer;

    procedure akses;
  end;

implementation

{$R *.dfm} uses Module,ShellApi, UnitMain,DateUtils, StrUtils;


procedure TFRlaporan.akses();
begin

  QcekLap.Close;
  QcekLap.SQL.Clear;
  QcekLap.SQL.Add('select * FROM laporan WHERE aktif="1" ORDER BY namagroup,namasubgroup,urutan ASC');
  QcekLap.Open;

  QcekLap.First;

end;

procedure TFRlaporan.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  app: String;
begin

  if QcekLap.fieldbyname('downloadlpp').AsString='1' then
  begin
      //Umain.download;
        if MessageDlg('Apakah anda membutuhkan data transaksi terbaru untuk membuka laporan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          btnload2.Click;  
          btndownload.Click;
        end;

  end;

  app := GetCurrentDir+'\'+QcekLap.fieldbyname('namaexe').AsString;//        'C:\Windows\notepad.exe';
  ShellExecute(Handle, 'open', PAnsiChar(app), Nil, Nil, SW_SHOWNORMAL);


end;

procedure TFRlaporan.btnloadClick(Sender: TObject);
begin

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROm prosesdownload WHERE idx="1"');
  DM.Qcek.Open;

  t1.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,0);
  t2.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,0);
  t3.date:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,0);
  t4.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,0);
  t5.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,0);

  tgl1:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,0);
  tgl2:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,0);
  tgl3:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,0);
  tgl4:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,0);
  tgl5:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,0);

  lastupdate2.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,0);
  lastupdate1.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,0);
  lastupdate3.date:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,0);
  lastupdatelimbah.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,0);
  lastupdatelltt.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,0);

end;

procedure TFRlaporan.cekClick(Sender: TObject);
begin

  if(cek.Checked=true) then
  begin
    t1.Enabled:=true;
    t2.Enabled:=true;
    t3.Enabled:=true;
    id.Enabled:=true;
    t4.Enabled:=true;
    t5.Enabled:=true;
  end
  else
  begin
    t1.Enabled:=false;
    t2.Enabled:=false;
    t3.Enabled:=false;
    t4.Enabled:=false;
    t5.Enabled:=false;
    id.Enabled:=false;
  end;

end;

procedure TFRlaporan.resetClick(Sender: TObject);
begin

           if  MessageDlg('Reset Proses Download ? ', mtConfirmation, [Mbyes,mbNo], 0)=MrYes then
           begin
                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set aktif="0",user=null WHERE idx="1"');
                  DM.Qexec.Execute;

                   MessageDlg('Reset Berhasil..', mtInformation, [MbOk], 0);
           end
           else
            exit;
end;

procedure TFRlaporan.btndownloadClick(Sender: TObject);
var
j,i:integer;
bayarair,bayarnonair,batalair,batalnonair,bayarlimbah,bayarlltt,batallimbah,batallltt:Currency;
_namabulan:String;
begin

 TRY
 


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select aktif,user FROm prosesdownload WHERE idx="1"');
  DM.Qcek.Open;


  if(DM.Qcek.fieldbyname('aktif').AsString='1')then
     MessageDlg('Proses Download Sedang Dilakukan Oleh '+DM.Qcek.fieldbyname('user').AsString+'.. !!!', mtInformation, [MbOk], 0)
  else
  begin




    TRY

        Umain.openkoneksi_host;
        Enabled:=false;



          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('START TRANSACTION');
          DM.Qexec.Execute;

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('update prosesdownload set aktif="1",user=:user WHERE idx="1"');
          DM.Qexec.ParamByName('user').AsString:= umain.user.Caption;
          DM.Qexec.Execute;



          bayarair:=0;
          bayarnonair:=0;
          batalair:=0;
          batalnonair:=0;
          bayarlimbah:=0;
          bayarlltt:=0;
          batallimbah:=0;
          batallltt:=0;





                //DOWNLOAD SETORAN

                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add('select * FROM setoran WHERE waktuupdate>:waktuupdate ORDER BY waktuupdate ASC');
                Qcek.ParamByName('waktuupdate').AsDateTime:=IncHour(t3.Date,-0);
                Qcek.Open;  
                

                if(Qcek.RecordCount>0)then
                begin

                  Progress.PartsComplete:=0;
                  Progress.TotalParts:=Qcek.RecordCount;
                  Progress.Visible:=true;
                  Application.ProcessMessages;

                  for j:=1 to Qcek.RecordCount do
                  begin

                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('REPLACE INTO setoran (kode,tanggal,kodeloket,penerimaan,bank1,bank2,bank3,bank4,bank5,bank6,bank7,bank8,bank9,tanggalsetor,namabank,keterangan,user,waktuupdate)');
                   DM.Qexec.SQL.Add('VALUES');
                   DM.Qexec.SQL.Add('(:kode,:tanggal,:kodeloket,:penerimaan,:bank1,:bank2,:bank3,:bank4,:bank5,:bank6,:bank7,:bank8,:bank9,:tanggalsetor,:namabank,:keterangan,:user,:waktuupdate)');
                   DM.Qexec.ParamByName('kode').AsString:= Qcek.fieldbyname('kode').AsString;
                   DM.Qexec.ParamByName('tanggal').AsDateTime:=Qcek.fieldbyname('tanggal').AsDateTime;
                   DM.Qexec.ParamByName('kodeloket').AsString:=Qcek.fieldbyname('kodeloket').AsString;
                   DM.Qexec.ParamByName('penerimaan').AsCurrency:=Qcek.fieldbyname('penerimaan').AsCurrency;
                   DM.Qexec.ParamByName('bank1').AsCurrency:=Qcek.fieldbyname('bank1').AsCurrency;
                   DM.Qexec.ParamByName('bank2').AsCurrency:=Qcek.fieldbyname('bank2').AsCurrency;
                   DM.Qexec.ParamByName('bank3').AsCurrency:=Qcek.fieldbyname('bank3').AsCurrency;
                   DM.Qexec.ParamByName('bank4').AsCurrency:=Qcek.fieldbyname('bank4').AsCurrency;
                   DM.Qexec.ParamByName('bank5').AsCurrency:=Qcek.fieldbyname('bank5').AsCurrency;
                   DM.Qexec.ParamByName('bank6').AsCurrency:=Qcek.fieldbyname('bank6').AsCurrency;
                   DM.Qexec.ParamByName('bank7').AsCurrency:=Qcek.fieldbyname('bank7').AsCurrency;
                   DM.Qexec.ParamByName('bank8').AsCurrency:=Qcek.fieldbyname('bank8').AsCurrency;
                   DM.Qexec.ParamByName('bank9').AsCurrency:=Qcek.fieldbyname('bank9').AsCurrency;
                   DM.Qexec.ParamByName('tanggalsetor').AsDateTime:=Qcek.fieldbyname('tanggalsetor').AsDateTime;
                   DM.Qexec.ParamByName('namabank').AsString:=Qcek.fieldbyname('namabank').AsString;
                   DM.Qexec.ParamByName('keterangan').AsString:=Qcek.fieldbyname('keterangan').AsString;
                   DM.Qexec.ParamByName('user').AsString:=Qcek.fieldbyname('user').AsString;
                   DM.Qexec.ParamByName('waktuupdate').AsDateTime:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                   DM.Qexec.Execute;

                   lastupdate3.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;

                   Progress.IncPartsByOne; 
                   Application.ProcessMessages;
                   Qcek.Next;
                   

                  end;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set last_download_setoran=:last_download_setoran WHERE idx="1"');
                  DM.Qexec.ParamByName('last_download_setoran').AsDateTime:= lastupdate3.date;
                  DM.Qexec.Execute;

                end;




                /////////// LIMBAH


                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add(Qlimbah.SQLRefresh.Text);
                Qcek.ParamByName('tanggal').AsDateTime:=IncHour(t4.Date,-0);
                Qcek.Open;

                if Qcek.RecordCount>0 then
                begin
                        bayarlimbah:=0;
                        batallimbah:=0;
                        memo.Lines.Add('-> Proses Limbah');

                        Progress.PartsComplete:=0;
                        Progress.TotalParts:=Qcek.RecordCount;
                        Progress.Visible:=true;

                        Application.ProcessMessages;

                        for j:=1 to Qcek.RecordCount do
                        begin





                            if (Qcek.fieldbyname('flaglunas').AsString='1') and (Qcek.fieldbyname('flagbatal').AsString='0') then
                            begin

                                 DM.Qcek.close;
                                 DM.Qcek.SQL.Clear;
                                 DM.Qcek.SQL.Add('show tables like "bayarlimbah'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+'"');
                                 DM.Qcek.Open;

                                 if(DM.Qcek.RecordCount=0)then
                                 begin
                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('create table bayarlimbah'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' like bayarlimbah' );
                                      DM.Qexec.Execute;
                                 end;



                                 Dm.Qexec.close;
                                 Dm.Qexec.SQl.Clear;
                                 Dm.Qexec.SQL.Add('REPLACE INTO bayarlimbah'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' (kode,periode,bulan,nomorlimbah,nosamb,kodelimbahyangberlaku,kodelimbah,koderayon,total,flaglunas,tglbayar,kasir,loketbayar,nolpp,flagpublish,flagaktif,flagkirim,flag,golongan,namaloket,kodewil,namawil) VALUES');
                                 Dm.Qexec.SQL.Add(' (:kode,:periode,:bulan,:nomorlimbah,:nosamb,:kodelimbahyangberlaku,:kodelimbah,:koderayon,:total,:flaglunas,:tglbayar,:kasir,:loketbayar,:nolpp,:flagpublish,:flagaktif,:flagkirim,:flag,:golongan,:namaloket,:kodewil,:namawil)');
                                 Dm.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                 Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                 Dm.Qexec.ParamByName('nomorlimbah').AsString:=Qcek.fieldbyname('nomorlimbah').AsString;
                                 Dm.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                 Dm.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                                 Dm.Qexec.ParamByName('kodelimbah').AsString:=Qcek.fieldbyname('kodelimbah').AsString;
                                 Dm.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                 Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                 Dm.Qexec.ParamByName('flagaktif').AsString:=Qcek.fieldbyname('flagaktif').AsString;
                                 Dm.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                 Dm.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                 Dm.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                 Dm.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                 Dm.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                 Dm.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                 Dm.Qexec.ParamByName('flagpublish').AsString:='1';
                                 Dm.Qexec.ParamByName('flagkirim').AsString:='1';
                                 Dm.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                 Dm.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                 Dm.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('namaloket').AsString;
                                 Dm.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                 Dm.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('namawil').AsString;
                                 Dm.Qexec.Execute;


                                 TRY


                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('UPDATE drdlimbah'+Qcek.fieldbyname('periode').AsString+' SET flaglunas=:flaglunas,flagbatal="0",tglbayar=:tglbayar,kasir=:kasir,loketbayar=:loketbayar,nolpp=:nolpp,kodelimbahyangberlaku=:kodelimbahyangberlaku,kodelimbah=:kodelimbah,total=:total WHERE nomorlimbah=:nomorlimbah');
                                    DM.Qexec.ParamByName('nomorlimbah').AsString:=Qcek.fieldbyname('nomorlimbah').AsString;
                                    DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                    DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                    DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                    DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                    DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                    Dm.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                                    Dm.Qexec.ParamByName('kodelimbah').AsString:=Qcek.fieldbyname('kodelimbah').AsString;
                                    Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                    DM.Qexec.Execute;

                                 EXCEPT
                                 END;


                                DM.Qexec.close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQL.Add('DELETE FROM piutanglimbah WHERE kode=:kode');
                                DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                DM.Qexec.Execute;


                               lastupdatelimbah.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                               bayarlimbah:=bayarlimbah+1;


                            end
                            else  if (Qcek.fieldbyname('flaglunas').AsString='0') and (Qcek.fieldbyname('flagbatal').AsString='1') then
                            begin

                                 Dm.Qexec.close;
                                 Dm.Qexec.SQl.Clear;
                                 Dm.Qexec.SQL.Add('REPLACE INTO piutanglimbah (kode,periode,bulan,nomorlimbah,nosamb,kodelimbahyangberlaku,kodelimbah,koderayon,total,flaglunas,flagbatal,tglbatal,flagpublish,flagaktif,flagkirim,flag,golongan,namaloket,kodewil,namawil) VALUES');
                                 Dm.Qexec.SQL.Add(' (:kode,:periode,:bulan,:nomorlimbah,:nosamb,:kodelimbahyangberlaku,:kodelimbah,:koderayon,:total,:flaglunas,:flagbatal,:tglbatal,:flagpublish,:flagaktif,:flagkirim,:flag,:golongan,:namaloket,:kodewil,:namawil)');
                                 Dm.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                 Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                 Dm.Qexec.ParamByName('nomorlimbah').AsString:=Qcek.fieldbyname('nomorlimbah').AsString;
                                 Dm.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                 Dm.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                                 Dm.Qexec.ParamByName('kodelimbah').AsString:=Qcek.fieldbyname('kodelimbah').AsString;
                                 Dm.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                 Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                 Dm.Qexec.ParamByName('flagaktif').AsString:=Qcek.fieldbyname('flagaktif').AsString;
                                 Dm.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                 Dm.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                 Dm.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                 Dm.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                 Dm.Qexec.ParamByName('flagpublish').AsString:='1';
                                 Dm.Qexec.ParamByName('flagkirim').AsString:='1';
                                 Dm.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                 Dm.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                 Dm.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('namaloket').AsString;
                                 Dm.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                 Dm.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('namawil').AsString;
                                 Dm.Qexec.Execute;

                                TRY

                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('UPDATE drdlimbah'+Qcek.fieldbyname('periode').AsString+' SET flaglunas="0",flagbatal=:flagbatal,tglbatal=:tglbatal,kasir=null,loketbayar=null,nolpp=null,kodelimbahyangberlaku=:kodelimbahyangberlaku,kodelimbah=:kodelimbah,total=:total WHERE nomorlimbah=:nomorlimbah');
                                  DM.Qexec.ParamByName('nomorlimbah').AsString:=Qcek.fieldbyname('nomorlimbah').AsString;
                                  DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                  DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                  Dm.Qexec.ParamByName('kodelimbahyangberlaku').AsString:=Qcek.fieldbyname('kodelimbahyangberlaku').AsString;
                                  Dm.Qexec.ParamByName('kodelimbah').AsString:=Qcek.fieldbyname('kodelimbah').AsString;
                                  Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                  DM.Qexec.Execute;

                                 EXCEPT
                                 END;


                                DM.Qexec.close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQL.Add('DELETE FROM bayarlimbah:tahun WHERE kode=:kode');
                                DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime));
                                DM.Qexec.Execute;


                               lastupdatelimbah.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                               batallimbah:=batallimbah+1;

                            end;




                            Progress.IncPartsByOne;
                            Application.ProcessMessages;
                            Qcek.Next;

                        end; 


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set last_transaksi_limbah=:last_transaksi_limbah WHERE idx="1"');
                  DM.Qexec.ParamByName('last_transaksi_limbah').AsDateTime:= lastupdatelimbah.date;
                  DM.Qexec.Execute;



                end;






                ///////////  LLTT


                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add(Qlltt.SQLRefresh.Text);
                Qcek.ParamByName('tanggal').AsDateTime:=IncHour(t5.Date,-0);
                Qcek.Open;

                if Qcek.RecordCount>0 then
                begin
                        bayarlltt:=0;
                        batallltt:=0;
                        memo.Lines.Add('-> Proses lltt');

                        Progress.PartsComplete:=0;
                        Progress.TotalParts:=Qcek.RecordCount;
                        Progress.Visible:=true;

                        Application.ProcessMessages;

                        for j:=1 to Qcek.RecordCount do
                        begin





                            if (Qcek.fieldbyname('flaglunas').AsString='1') and (Qcek.fieldbyname('flagbatal').AsString='0') then
                            begin

                                 DM.Qcek.close;
                                 DM.Qcek.SQL.Clear;
                                 DM.Qcek.SQL.Add('show tables like "bayarlltt'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+'"');
                                 DM.Qcek.Open;

                                 if(DM.Qcek.RecordCount=0)then
                                 begin
                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('create table bayarlltt'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' like bayarlltt' );
                                      DM.Qexec.Execute;
                                 end;



                                 Dm.Qexec.close;
                                 Dm.Qexec.SQl.Clear;
                                 Dm.Qexec.SQL.Add('REPLACE INTO bayarlltt'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' (kode,periode,bulan,nomorlltt,nosamb,kodellttyangberlaku,kodelltt,koderayon,total,flaglunas,tglbayar,kasir,loketbayar,nolpp,flagpublish,flagaktif,flagkirim,flag,golongan,namaloket,kodewil,namawil) VALUES');
                                 Dm.Qexec.SQL.Add(' (:kode,:periode,:bulan,:nomorlltt,:nosamb,:kodellttyangberlaku,:kodelltt,:koderayon,:total,:flaglunas,:tglbayar,:kasir,:loketbayar,:nolpp,:flagpublish,:flagaktif,:flagkirim,:flag,:golongan,:namaloket,:kodewil,:namawil)');
                                 Dm.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                 Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                 Dm.Qexec.ParamByName('nomorlltt').AsString:=Qcek.fieldbyname('nomorlltt').AsString;
                                 Dm.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                 Dm.Qexec.ParamByName('kodellttyangberlaku').AsString:=Qcek.fieldbyname('kodellttyangberlaku').AsString;
                                 Dm.Qexec.ParamByName('kodelltt').AsString:=Qcek.fieldbyname('kodelltt').AsString;
                                 Dm.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                 Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                 Dm.Qexec.ParamByName('flagaktif').AsString:=Qcek.fieldbyname('flagaktif').AsString;
                                 Dm.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                 Dm.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                 Dm.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                 Dm.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                 Dm.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                 Dm.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                 Dm.Qexec.ParamByName('flagpublish').AsString:='1';
                                 Dm.Qexec.ParamByName('flagkirim').AsString:='1';
                                 Dm.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                 Dm.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                 Dm.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('namaloket').AsString;
                                 Dm.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                 Dm.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('namawil').AsString;
                                 Dm.Qexec.Execute;


                                 TRY

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('UPDATE drdlltt'+Qcek.fieldbyname('periode').AsString+' SET flaglunas=:flaglunas,flagbatal="0",tglbayar=:tglbayar,kasir=:kasir,loketbayar=:loketbayar,nolpp=:nolpp,kodellttyangberlaku=:kodellttyangberlaku,kodelltt=:kodelltt,total=:total WHERE nomorlltt=:nomorlltt');
                                    DM.Qexec.ParamByName('nomorlltt').AsString:=Qcek.fieldbyname('nomorlltt').AsString;
                                    DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                    DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                    DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                    DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                    DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                    Dm.Qexec.ParamByName('kodellttyangberlaku').AsString:=Qcek.fieldbyname('kodellttyangberlaku').AsString;
                                    Dm.Qexec.ParamByName('kodelltt').AsString:=Qcek.fieldbyname('kodelltt').AsString;
                                    Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                    DM.Qexec.Execute;

                                  EXCEPT
                                 END;


                                DM.Qexec.close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQL.Add('DELETE FROM piutanglltt WHERE kode=:kode');
                                DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                DM.Qexec.Execute;


                               lastupdatelltt.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                               bayarlltt:=bayarlltt+1;


                            end
                            else  if (Qcek.fieldbyname('flaglunas').AsString='0') and (Qcek.fieldbyname('flagbatal').AsString='1') then
                            begin

                                 Dm.Qexec.close;
                                 Dm.Qexec.SQl.Clear;
                                 Dm.Qexec.SQL.Add('REPLACE INTO piutanglltt (kode,periode,bulan,nomorlltt,nosamb,kodellttyangberlaku,kodelltt,koderayon,total,flaglunas,flagbatal,tglbatal,flagpublish,flagaktif,flagkirim,flag,golongan,namaloket,kodewil,namawil) VALUES');
                                 Dm.Qexec.SQL.Add(' (:kode,:periode,:bulan,:nomorlltt,:nosamb,:kodellttyangberlaku,:kodelltt,:koderayon,:total,:flaglunas,:flagbatal,:tglbatal,:flagpublish,:flagaktif,:flagkirim,:flag,:golongan,:namaloket,:kodewil,:namawil)');
                                 Dm.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                 Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                 Dm.Qexec.ParamByName('nomorlltt').AsString:=Qcek.fieldbyname('nomorlltt').AsString;
                                 Dm.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                 Dm.Qexec.ParamByName('kodellttyangberlaku').AsString:=Qcek.fieldbyname('kodellttyangberlaku').AsString;
                                 Dm.Qexec.ParamByName('kodelltt').AsString:=Qcek.fieldbyname('kodelltt').AsString;
                                 Dm.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                 Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                 Dm.Qexec.ParamByName('flagaktif').AsString:=Qcek.fieldbyname('flagaktif').AsString;
                                 Dm.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                 Dm.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                 Dm.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                 Dm.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                 Dm.Qexec.ParamByName('flagpublish').AsString:='1';
                                 Dm.Qexec.ParamByName('flagkirim').AsString:='1';
                                 Dm.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                 Dm.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                 Dm.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('namaloket').AsString;
                                 Dm.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                 Dm.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('namawil').AsString;
                                 Dm.Qexec.Execute;


                                 TRY

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('UPDATE drdlltt'+Qcek.fieldbyname('periode').AsString+' SET flaglunas="0",flagbatal=:flagbatal,tglbatal=:tglbatal,kasir=null,loketbayar=null,nolpp=null,kodellttyangberlaku=:kodellttyangberlaku,kodelltt=:kodelltt,total=:total WHERE nomorlltt=:nomorlltt');
                                    DM.Qexec.ParamByName('nomorlltt').AsString:=Qcek.fieldbyname('nomorlltt').AsString;
                                    DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                    DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                    Dm.Qexec.ParamByName('kodellttyangberlaku').AsString:=Qcek.fieldbyname('kodellttyangberlaku').AsString;
                                    Dm.Qexec.ParamByName('kodelltt').AsString:=Qcek.fieldbyname('kodelltt').AsString;
                                    Dm.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                    DM.Qexec.Execute;

                                  EXCEPT
                                 END;

                                 


                                DM.Qexec.close;
                                DM.Qexec.SQL.Clear;
                                DM.Qexec.SQL.Add('DELETE FROM bayarlltt:tahun WHERE kode=:kode');
                                DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime));
                                DM.Qexec.Execute;



                               lastupdatelltt.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                               batallltt:=batallltt+1;

                            end;




                            Progress.IncPartsByOne;
                            Application.ProcessMessages;
                            Qcek.Next;

                        end;


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set last_transaksi_lltt=:last_transaksi_lltt WHERE idx="1"');
                  DM.Qexec.ParamByName('last_transaksi_lltt').AsDateTime:= lastupdatelltt.date;
                  DM.Qexec.Execute;



                end; 




                //////////////////////  NON AIR





                Qcek.Close;
                Qcek.SQL.Clear;
                Qcek.SQL.Add(Qna.SQLRefresh.Text);
                Qcek.ParamByName('tanggal').AsDateTime:=IncHour(t2.Date,-0);
                Qcek.Open;


                if(Qcek.RecordCount>0)then
                begin

                        bayarnonair:=0;
                        batalnonair:=0;
                        memo.Lines.Add('-> Proses Non Air');

                        Progress.PartsComplete:=0;
                        Progress.TotalParts:=Qcek.RecordCount;
                        Progress.Visible:=true;

                        Application.ProcessMessages;

                        for j:=1 to Qcek.RecordCount do
                        begin

                                     
                                      if( Qcek.fieldbyname('flagangsur').AsString='1')then
                                      begin

                                                  if(Qcek.fieldbyname('jenis').AsString='JNS-36')then
                                                  begin


                                                    if  RightStr(Qcek.fieldbyname('periode').AsString,2)='01' then
                                                      _namabulan:='Jan'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='02' then
                                                      _namabulan:='Feb'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='03' then
                                                      _namabulan:='Mar'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='04' then
                                                      _namabulan:='Apr'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='05' then
                                                      _namabulan:='Mei'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='06' then
                                                      _namabulan:='Jun'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='07' then
                                                      _namabulan:='Jul'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='08' then
                                                      _namabulan:='Agst'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='09' then
                                                      _namabulan:='Sept'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='10' then
                                                      _namabulan:='Okt'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='11' then
                                                      _namabulan:='Nov'
                                                    else if  RightStr(Qcek.fieldbyname('periode').AsString,2)='12' then
                                                      _namabulan:='Des'
                                                    else
                                                     _namabulan :=RightStr(Qcek.fieldbyname('periode').AsString,2);


                                                  if( Qcek.fieldbyname('termin').AsString='0')then
                                                  begin
                                                    DM.Qexec.close;
                                                    DM.Qexec.SQL.Clear;
                                                    DM.Qexec.SQL.Add('update drd'+Qcek.fieldbyname('periode').AsString+'');
                                                    DM.Qexec.SQL.Add(Qlunas.SQLUpdate.Text);
                                                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                                    DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                    DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                                    DM.Qexec.ParamByName('tgldownload').AsDateTime:= Now;
                                                    DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                    DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                                    DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                                    DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                                    DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                                    DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                    DM.Qexec.Execute;
                                                  end;

                                                  if(Qcek.fieldbyname('flaglunas').AsString='1')then
                                                  begin

                                                     // CEK TABLE BAYAR TAHUN
                                                     //////////// JIKA ANGSURAN TUNGGAKAN, dari non air loket di pindah ke bayartahun BSBS


                                                     DM.Qcek.close;
                                                     DM.Qcek.SQL.Clear;
                                                     DM.Qcek.SQL.Add('show tables like "bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('waktubayar').AsDateTime)+'"');
                                                     DM.Qcek.Open;

                                                     if(DM.Qcek.RecordCount=0)then
                                                     begin
                                                          DM.Qexec.close;
                                                          DM.Qexec.SQL.Clear;
                                                          DM.Qexec.SQL.Add('create table bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('waktubayar').AsDateTime)+' like bayar' );
                                                          DM.Qexec.Execute;
                                                     end;

                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add('REPLACE INTO');
                                                      DM.Qexec.SQL.Add('bayar:tahun');
                                                      DM.Qexec.SQL.Add(Qangsurantunggakan.SQLInsert.Text);
                                                      DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('waktubayar').AsDateTime));
                                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('urutan').AsString;
                                                      DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                                      DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                                      DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                                      DM.Qexec.ParamByName('administrasi').AsCurrency:=Qcek.fieldbyname('administrasi').AsCurrency;
                                                      DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                                      DM.Qexec.ParamByName('pelayanan').AsCurrency:=Qcek.fieldbyname('lainnya').AsCurrency;
                                                      DM.Qexec.ParamByName('retribusi').AsCurrency:=Qcek.fieldbyname('retribusi').AsCurrency;
                                                      DM.Qexec.ParamByName('meterai').AsCurrency:=Qcek.fieldbyname('meterai').AsCurrency;
                                                      DM.Qexec.ParamByName('ppn').AsCurrency:=Qcek.fieldbyname('ppn').AsCurrency;
                                                      DM.Qexec.ParamByName('rekair').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency+
                                                                                                 Qcek.fieldbyname('administrasi').AsCurrency+
                                                                                                 Qcek.fieldbyname('pemeliharaan').AsCurrency+
                                                                                                 Qcek.fieldbyname('lainnya').AsCurrency+
                                                                                                 Qcek.fieldbyname('retribusi').AsCurrency+
                                                                                                 Qcek.fieldbyname('meterai').AsCurrency+
                                                                                                 Qcek.fieldbyname('ppn').AsCurrency;

                                                      DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                                      DM.Qexec.ParamByName('angsuran').AsCurrency:=0;
                                                      DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                                      DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                                      DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                                      DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString;
                                                      DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_nonair').AsString;
                                                      DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                                      DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                                      DM.Qexec.ParamByName('kodediameter').AsString:='-';//Qcek.fieldbyname('kodediameter').AsString;
                                                      DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                      DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                                      DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                      DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                                      DM.Qexec.ParamByName('flagangsur').AsString:='0';
                                                      DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                                      DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString+' | '+Qcek.fieldbyname('ketjenis').AsString;
                                                      DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                                      DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                                      DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                      DM.Qexec.ParamByName('bulan').AsString:=_namabulan+' '+LeftStr(Qcek.fieldbyname('periode').AsString,4);
                                                      DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                                      DM.Qexec.Execute;

                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add('DELETE FROM piutang WHERE kode=:kode');
                                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('urutan').AsString;
                                                      DM.Qexec.Execute;

                                                      Qmaxtermin.close;
                                                      Qmaxtermin.SQL.clear;
                                                      Qmaxtermin.SQL.add('SELECT max(termin) as maxtermin FROM nonair WHERE flaghapus="0" AND dibebankankepada=:dibebankankepada AND flagangsur="1" AND periode=:periode AND noangsuran=:noangsuran');
                                                      Qmaxtermin.ParamByName('dibebankankepada').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                                      Qmaxtermin.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                                      Qmaxtermin.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                                      Qmaxtermin.Open;

                                                      if Qmaxtermin.FieldByName('maxtermin').Value = Qcek.FieldByName('termin').Value then
                                                      begin
                                                        DM.Qexec.close;
                                                        DM.Qexec.SQL.Clear;
                                                        DM.Qexec.SQL.Add(DM.Qlunas_air_dari_angsuran.SQLUpdate.Text);
                                                        DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('periode').AsString+'.'+Qcek.fieldbyname('dibebankankepada').AsString;
                                                        DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                        DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                                        DM.Qexec.ParamByName('tanggal').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                        DM.Qexec.ParamByName('flaglunas').AsString:='1';
                                                        DM.Qexec.ParamByName('flagbatal').AsString:='0';
                                                        DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                                        DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                        DM.Qexec.Execute;
                                                      end;

                                                    end
                                                    else
                                                    begin


                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add('REPLACE INTO');
                                                      DM.Qexec.SQL.Add('piutang');
                                                      DM.Qexec.SQL.Add(Qangsurantunggakan.SQLInsert.Text);
                                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('urutan').AsString;
                                                      DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                                      DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nomor').AsString;
                                                      DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                                      DM.Qexec.ParamByName('administrasi').AsCurrency:=Qcek.fieldbyname('administrasi').AsCurrency;
                                                      DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                                      DM.Qexec.ParamByName('pelayanan').AsCurrency:=Qcek.fieldbyname('lainnya').AsCurrency;
                                                      DM.Qexec.ParamByName('retribusi').AsCurrency:=Qcek.fieldbyname('retribusi').AsCurrency;
                                                      DM.Qexec.ParamByName('meterai').AsCurrency:=Qcek.fieldbyname('meterai').AsCurrency;
                                                      DM.Qexec.ParamByName('ppn').AsCurrency:=Qcek.fieldbyname('ppn').AsCurrency;
                                                      DM.Qexec.ParamByName('rekair').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency+
                                                                                                 Qcek.fieldbyname('administrasi').AsCurrency+
                                                                                                 Qcek.fieldbyname('pemeliharaan').AsCurrency+
                                                                                                 Qcek.fieldbyname('lainnya').AsCurrency+
                                                                                                 Qcek.fieldbyname('retribusi').AsCurrency+
                                                                                                 Qcek.fieldbyname('meterai').AsCurrency+
                                                                                                 Qcek.fieldbyname('ppn').AsCurrency;

                                                      DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                                      DM.Qexec.ParamByName('angsuran').AsCurrency:=0;
                                                      DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                                      DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                                      DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                                      DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString;
                                                      DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_nonair').AsString;
                                                      DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                                      DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                                      DM.Qexec.ParamByName('kodediameter').AsString:='-';//Qcek.fieldbyname('kodediameter').AsString;
                                                      DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                      DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                                      DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                      DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                                      DM.Qexec.ParamByName('flagangsur').AsString:='0';
                                                      DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                                      DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('ketjenis').AsString;
                                                      DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                                      DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                                      DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                      DM.Qexec.ParamByName('bulan').AsString:=_namabulan+' '+LeftStr(Qcek.fieldbyname('periode').AsString,4);
                                                      DM.Qexec.Execute;
                                                               
                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add('SHOW TABLES LIKE "bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('waktubayar').AsDateTime)+'"');
                                                      DM.Qexec.Open;


                                                      if DM.Qexec.RecordCount>0 then
                                                      begin
                                                        DM.Qexec.close;
                                                        DM.Qexec.SQL.Clear;
                                                        DM.Qexec.SQL.Add('DELETE FROM bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('waktubayar').AsDateTime)+' WHERE kode=:kode');
                                                        DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('urutan').AsString; 
                                                        DM.Qexec.Execute;
                                                      end;

                                                    end;


                                                    DM.Qexec.close;
                                                    DM.Qexec.SQL.Clear;
                                                    DM.Qexec.SQL.Add('UPDATE piutang SET flagangsur="1" WHERE kode=:kode');
                                                    DM.Qexec.ParamByName('kode').AsString:= Qcek.fieldbyname('periode').AsString+'.'+Qcek.fieldbyname('dibebankankepada').AsString;
                                                    DM.Qexec.Execute;

                                                    if Qcek.fieldbyname('flaghapus').AsString='1'  then
                                                    begin
                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add('DELETE FROM piutang WHERE kode=:urutan');
                                                      DM.Qexec.ParamByName('urutan').AsString:= Qcek.fieldbyname('urutan').AsString;
                                                      DM.Qexec.Execute;
                                                      if Qcek.fieldbyname('termin').AsInteger=0 then
                                                      begin
                                                        DM.Qexec.close;
                                                        DM.Qexec.SQL.Clear;
                                                        DM.Qexec.SQL.Add('UPDATE piutang SET flagangsur="0",noangsuran="" WHERE noangsuran=:noangsuran');
                                                        DM.Qexec.ParamByName('noangsuran').AsString:= Qcek.fieldbyname('noangsuran').AsString;
                                        //                DM.Qexec.ParamByName('kode').AsString:= Qcek.fieldbyname('periode').AsString+'.'+Qcek.fieldbyname('dibebankankepada').AsString;
                                                        DM.Qexec.Execute;
                                                      end;
                                                    end;
                                                      { if (Qcek.fieldbyname('dendatunggakan').AsCurrency>0) then
                                                       begin

                                                        DM.Qexec.close;
                                                        DM.Qexec.SQL.Clear;
                                                        DM.Qexec.SQL.Add(Qnonair.SQLInsert.Text);
                                                        DM.Qexec.ParamByName('urutan').AsString:=Qcek.fieldbyname('urutan').AsString;
                                                        DM.Qexec.ParamByName('nomor').AsString:=Qcek.fieldbyname('nomor').AsString;
                                                        DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                                        DM.Qexec.ParamByName('jenis').AsString:= 'DENDA';
                                                        DM.Qexec.ParamByName('waktubayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                        DM.Qexec.ParamByName('waktubatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                                        DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                        DM.Qexec.ParamByName('loketbayar').AsString:= Qcek.fieldbyname('loketbayar').AsString;
                                                        DM.Qexec.ParamByName('nama').AsString:= Qcek.fieldbyname('nama').AsString;
                                                        DM.Qexec.ParamByName('alamat').AsString:=  Qcek.fieldbyname('alamat').AsString;
                                                        DM.Qexec.ParamByName('notelp').AsString:= Qcek.fieldbyname('notelp').AsString;
                                                        DM.Qexec.ParamByName('nohp').AsString:= Qcek.fieldbyname('nohp').AsString;
                                                        DM.Qexec.ParamByName('biaya1').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya2').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya3').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya4').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya5').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya6').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya7').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya8').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya9').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biaya10').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('biayapemakaian').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('administrasi').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('retribusi').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                                        DM.Qexec.ParamByName('angsuran1').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('angsuran2').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                                        DM.Qexec.ParamByName('keterangan').AsString:= Qcek.fieldbyname('keterangan').AsString;
                                                        DM.Qexec.ParamByName('terbilang').AsString:='';
                                                        DM.Qexec.ParamByName('waktudownload').AsDateTime:=now;
                                                        DM.Qexec.ParamByName('waktucetak').AsDateTime:=Qcek.fieldbyname('waktucetak').AsDateTime;
                                                        DM.Qexec.ParamByName('flaglunas').AsString:= Qcek.fieldbyname('flaglunas').AsString;
                                                        DM.Qexec.ParamByName('flagbatal').AsString:= Qcek.fieldbyname('flagbatal').AsString;
                                                        DM.Qexec.ParamByName('flag').AsString:= Qcek.fieldbyname('flag').AsString;
                                                        DM.Qexec.ParamByName('waktuinput').AsDateTime:=Qcek.fieldbyname('waktuinput').AsDateTime;
                                                        DM.Qexec.ParamByName('userinput').AsString:= Qcek.fieldbyname('userinput').AsString;
                                                        DM.Qexec.ParamByName('loketinput').AsString:= Qcek.fieldbyname('loketinput').AsString;
                                                        DM.Qexec.ParamByName('tangki_m3').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('tangki_tarifperkubik').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('tangki_jumlahtarif').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('tangki_jarak').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('tangki_ongkos').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('nospk').AsString:=Qcek.fieldbyname('nospk').AsString;
                                                        DM.Qexec.ParamByName('tglpesan').AsDate:=Qcek.fieldbyname('tglpesan').AsDateTime;
                                                        DM.Qexec.ParamByName('petugastangki').AsString:=Qcek.fieldbyname('petugastangki').AsString;
                                                        DM.Qexec.ParamByName('flagangsur').AsString:='0';
                                                        DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                                        DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                                        DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                                        DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                                        DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString;
                                                        DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_nonair').AsString;
                                                        DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                                        DM.Qexec.ParamByName('ketjenis').AsString:=Qcek.fieldbyname('ketjenis').AsString;
                                                        DM.Qexec.ParamByName('termin').AsInteger:=Qcek.fieldbyname('termin').AsInteger;
                                                        DM.Qexec.ParamByName('ppn').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayabahan').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('biayapasang').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('pendaftaran').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('jaminan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('perencanaan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('meterai').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('tangki').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('lainnya').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('perbaikan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('meterkas').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('pul').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('gwm').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayaperbaikan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayafpb').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayateswm').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayagantinama').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayaprosestutup').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayaprosesbuka').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('memakaiairtidaksah').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('dendaadmpelanggan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayasegelputus').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('biayakartupemakaianair').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('sewakendaraantangki').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('penjualanairtangki').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('piutangsisapemakaianair').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('piutanggwm').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('piutangmeterkas').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('dendapelanggaran').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('realisasipembagi').AsCurrency:=0;
                                                        DM.Qexec.ParamByName('realisasipersil').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('realisasisambungan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('rencanapembagi').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('rencanapersil').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('rencanasambungan').AsCurrency:= 0;
                                                        DM.Qexec.ParamByName('dibebankankepada').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                                        DM.Qexec.ParamByName('tglmulaitagih').AsDate:=Qcek.fieldbyname('tglmulaitagih').AsDateTime;
                                                        DM.Qexec.ParamByName('flaghapus').AsString:=Qcek.fieldbyname('flaghapus').AsString;
                                                        DM.Qexec.ParamByName('noorder').AsString:='';
                                                        DM.Qexec.ParamByName('nokwitansi').AsString:='';
                                                        DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                        DM.Qexec.ParamByName('alasanbatal').AsString:= Qcek.fieldbyname('alasanbatal').AsString;
                                                        DM.Qexec.ParamByName('nolpp').AsString:= Qcek.fieldbyname('nolpp').AsString;
                                                        DM.Qexec.Execute;

                                                       END; }


                                                 End
                                                 else    //// KALO BUKAN TUNGGAKAN
                                                 begin

                                                      DM.Qexec.close;
                                                      DM.Qexec.SQL.Clear;
                                                      DM.Qexec.SQL.Add(Qnonair.SQLInsert.Text);
                                                      DM.Qexec.ParamByName('urutan').AsString:=Qcek.fieldbyname('urutan').AsString;
                                                      DM.Qexec.ParamByName('nomor').AsString:=Qcek.fieldbyname('nomor').AsString;
                                                      DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                                      DM.Qexec.ParamByName('jenis').AsString:= Qcek.fieldbyname('jenis').AsString;
                                                      DM.Qexec.ParamByName('waktubayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                                      DM.Qexec.ParamByName('waktubatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                                      DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                                      DM.Qexec.ParamByName('loketbayar').AsString:= Qcek.fieldbyname('loketbayar').AsString;
                                                      DM.Qexec.ParamByName('nama').AsString:= Qcek.fieldbyname('nama').AsString;
                                                      DM.Qexec.ParamByName('alamat').AsString:=  Qcek.fieldbyname('alamat').AsString;
                                                      DM.Qexec.ParamByName('notelp').AsString:= Qcek.fieldbyname('notelp').AsString;
                                                      DM.Qexec.ParamByName('nohp').AsString:= Qcek.fieldbyname('nohp').AsString;
                                                      DM.Qexec.ParamByName('biaya1').AsCurrency:= Qcek.fieldbyname('biaya1').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya2').AsCurrency:= Qcek.fieldbyname('biaya2').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya3').AsCurrency:= Qcek.fieldbyname('biaya3').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya4').AsCurrency:= Qcek.fieldbyname('biaya4').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya5').AsCurrency:= Qcek.fieldbyname('biaya5').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya6').AsCurrency:= Qcek.fieldbyname('biaya6').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya7').AsCurrency:= Qcek.fieldbyname('biaya7').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya8').AsCurrency:= Qcek.fieldbyname('biaya8').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya9').AsCurrency:= Qcek.fieldbyname('biaya9').AsCurrency;
                                                      DM.Qexec.ParamByName('biaya10').AsCurrency:= Qcek.fieldbyname('biaya10').AsCurrency;
                                                      DM.Qexec.ParamByName('biayapemakaian').AsCurrency:= Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                                      DM.Qexec.ParamByName('administrasi').AsCurrency:= Qcek.fieldbyname('administrasi').AsCurrency;
                                                      DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                                      DM.Qexec.ParamByName('retribusi').AsCurrency:= Qcek.fieldbyname('retribusi').AsCurrency;
                                                      DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                                      DM.Qexec.ParamByName('angsuran1').AsCurrency:= Qcek.fieldbyname('angsuran1').AsCurrency;
                                                      DM.Qexec.ParamByName('angsuran2').AsCurrency:= Qcek.fieldbyname('angsuran2').AsCurrency;
                                                      DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                                      DM.Qexec.ParamByName('keterangan').AsString:= Qcek.fieldbyname('keterangan').AsString;
                                                      DM.Qexec.ParamByName('terbilang').AsString:=Qcek.fieldbyname('terbilang').AsString;
                                                      DM.Qexec.ParamByName('waktudownload').AsDateTime:=now;
                                                      DM.Qexec.ParamByName('waktucetak').AsDateTime:=Qcek.fieldbyname('waktucetak').AsDateTime;
                                                      DM.Qexec.ParamByName('flaglunas').AsString:= Qcek.fieldbyname('flaglunas').AsString;
                                                      DM.Qexec.ParamByName('flagbatal').AsString:= Qcek.fieldbyname('flagbatal').AsString;
                                                      DM.Qexec.ParamByName('alasanbatal').AsString:= Qcek.fieldbyname('alasanbatal').AsString;
                                                      DM.Qexec.ParamByName('waktuupdate').AsDateTime:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                                                      DM.Qexec.ParamByName('loketupdate').AsString:= Qcek.fieldbyname('loketupdate').AsString;
                                                      DM.Qexec.ParamByName('flag').AsString:= Qcek.fieldbyname('flag').AsString;
                                                      DM.Qexec.ParamByName('waktuinput').AsDateTime:=Qcek.fieldbyname('waktuinput').AsDateTime;
                                                      DM.Qexec.ParamByName('userinput').AsString:= Qcek.fieldbyname('userinput').AsString;
                                                      DM.Qexec.ParamByName('loketinput').AsString:= Qcek.fieldbyname('loketinput').AsString;
                                                      DM.Qexec.ParamByName('tangki_m3').AsCurrency:=Qcek.fieldbyname('tangki_m3').AsCurrency;
                                                      DM.Qexec.ParamByName('tangki_tarifperkubik').AsCurrency:=Qcek.fieldbyname('tangki_tarifperkubik').AsCurrency;
                                                      DM.Qexec.ParamByName('tangki_jumlahtarif').AsCurrency:=Qcek.fieldbyname('tangki_jumlahtarif').AsCurrency;
                                                      DM.Qexec.ParamByName('tangki_jarak').AsCurrency:=Qcek.fieldbyname('tangki_jarak').AsCurrency;
                                                      DM.Qexec.ParamByName('tangki_ongkos').AsCurrency:=Qcek.fieldbyname('tangki_ongkos').AsCurrency;
                                                      DM.Qexec.ParamByName('nospk').AsString:=Qcek.fieldbyname('nospk').AsString;
                                                      DM.Qexec.ParamByName('tglpesan').AsDate:=Qcek.fieldbyname('tglpesan').AsDateTime;
                                                      DM.Qexec.ParamByName('petugastangki').AsString:=Qcek.fieldbyname('petugastangki').AsString;
                                                      DM.Qexec.ParamByName('flagangsur').AsString:=Qcek.fieldbyname('flagangsur').AsString;
                                                      DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                                      DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                                      DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                                      DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                                      DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;


                                                      if DM._wilayah_nonair_berdasarkan_wilayah_loket='0' then
                                                      begin

                                                            if (Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString<>'')  then
                                                            begin
                                                              DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString;
                                                              DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_nonair').AsString;
                                                            end
                                                            else  if Qcek.fieldbyname('kodewil_dari_koderayon_pelanggan').AsString<>'' then
                                                            begin
                                                              DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_pelanggan').AsString;
                                                              DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_pelanggan').AsString;
                                                            end
                                                            else  if Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString<>'' then
                                                            begin
                                                              DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString;
                                                              DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_wilayah_loket').AsString;
                                                            end;

                                                      end
                                                      else
                                                      begin
                                                        DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString;
                                                        DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_wilayah_loket').AsString; 
                                                      end;


                                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                                      DM.Qexec.ParamByName('ketjenis').AsString:=Qcek.fieldbyname('ketjenis').AsString;
                                                      DM.Qexec.ParamByName('termin').AsInteger:=Qcek.fieldbyname('termin').AsInteger;
                                                      DM.Qexec.ParamByName('ppn').AsCurrency:= Qcek.fieldbyname('ppn').AsCurrency;
                                                      DM.Qexec.ParamByName('biayabahan').AsCurrency:= Qcek.fieldbyname('biayabahan').AsCurrency;
                                                      DM.Qexec.ParamByName('biayapasang').AsCurrency:= Qcek.fieldbyname('biayapasang').AsCurrency;
                                                      DM.Qexec.ParamByName('pendaftaran').AsCurrency:= Qcek.fieldbyname('pendaftaran').AsCurrency;
                                                      DM.Qexec.ParamByName('jaminan').AsCurrency:= Qcek.fieldbyname('jaminan').AsCurrency;
                                                      DM.Qexec.ParamByName('perencanaan').AsCurrency:= Qcek.fieldbyname('perencanaan').AsCurrency;
                                                      DM.Qexec.ParamByName('meterai').AsCurrency:= Qcek.fieldbyname('meterai').AsCurrency;
                                                      DM.Qexec.ParamByName('tangki').AsCurrency:= Qcek.fieldbyname('tangki').AsCurrency;
                                                      DM.Qexec.ParamByName('lainnya').AsCurrency:= Qcek.fieldbyname('lainnya').AsCurrency;
                                                      DM.Qexec.ParamByName('perbaikan').AsCurrency:= Qcek.fieldbyname('perbaikan').AsCurrency;
                                                      DM.Qexec.ParamByName('meterkas').AsCurrency:= Qcek.fieldbyname('meterkas').AsCurrency;
                                                      DM.Qexec.ParamByName('pul').AsCurrency:= Qcek.fieldbyname('pul').AsCurrency;
                                                      DM.Qexec.ParamByName('gwm').AsCurrency:= Qcek.fieldbyname('gwm').AsCurrency;
                                                      DM.Qexec.ParamByName('biayaperbaikan').AsCurrency:= Qcek.fieldbyname('biayaperbaikan').AsCurrency;
                                                      DM.Qexec.ParamByName('biayafpb').AsCurrency:= Qcek.fieldbyname('biayafpb').AsCurrency;
                                                      DM.Qexec.ParamByName('biayateswm').AsCurrency:= Qcek.fieldbyname('biayateswm').AsCurrency;
                                                      DM.Qexec.ParamByName('biayagantinama').AsCurrency:= Qcek.fieldbyname('biayagantinama').AsCurrency;
                                                      DM.Qexec.ParamByName('biayaprosestutup').AsCurrency:= Qcek.fieldbyname('biayaprosestutup').AsCurrency;
                                                      DM.Qexec.ParamByName('biayaprosesbuka').AsCurrency:= Qcek.fieldbyname('biayaprosesbuka').AsCurrency;
                                                      DM.Qexec.ParamByName('memakaiairtidaksah').AsCurrency:= Qcek.fieldbyname('memakaiairtidaksah').AsCurrency;
                                                      DM.Qexec.ParamByName('dendaadmpelanggan').AsCurrency:= Qcek.fieldbyname('dendaadmpelanggan').AsCurrency;
                                                      DM.Qexec.ParamByName('biayasegelputus').AsCurrency:= Qcek.fieldbyname('biayasegelputus').AsCurrency;
                                                      DM.Qexec.ParamByName('biayakartupemakaianair').AsCurrency:= Qcek.fieldbyname('biayakartupemakaianair').AsCurrency;
                                                      DM.Qexec.ParamByName('sewakendaraantangki').AsCurrency:= Qcek.fieldbyname('sewakendaraantangki').AsCurrency;
                                                      DM.Qexec.ParamByName('penjualanairtangki').AsCurrency:= Qcek.fieldbyname('penjualanairtangki').AsCurrency;
                                                      DM.Qexec.ParamByName('piutangsisapemakaianair').AsCurrency:= Qcek.fieldbyname('piutangsisapemakaianair').AsCurrency;
                                                      DM.Qexec.ParamByName('piutanggwm').AsCurrency:= Qcek.fieldbyname('piutanggwm').AsCurrency;
                                                      DM.Qexec.ParamByName('piutangmeterkas').AsCurrency:= Qcek.fieldbyname('piutangmeterkas').AsCurrency;
                                                      DM.Qexec.ParamByName('dendapelanggaran').AsCurrency:= Qcek.fieldbyname('dendapelanggaran').AsCurrency;
                                                      DM.Qexec.ParamByName('realisasipembagi').AsCurrency:= Qcek.fieldbyname('realisasipembagi').AsCurrency;
                                                      DM.Qexec.ParamByName('realisasipersil').AsCurrency:= Qcek.fieldbyname('realisasipersil').AsCurrency;
                                                      DM.Qexec.ParamByName('realisasisambungan').AsCurrency:= Qcek.fieldbyname('realisasisambungan').AsCurrency;
                                                      DM.Qexec.ParamByName('rencanapembagi').AsCurrency:= Qcek.fieldbyname('rencanapembagi').AsCurrency;
                                                      DM.Qexec.ParamByName('rencanapersil').AsCurrency:= Qcek.fieldbyname('rencanapersil').AsCurrency;
                                                      DM.Qexec.ParamByName('rencanasambungan').AsCurrency:= Qcek.fieldbyname('rencanasambungan').AsCurrency;
                                                      DM.Qexec.ParamByName('dibebankankepada').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                                      DM.Qexec.ParamByName('tglmulaitagih').AsDate:=Qcek.fieldbyname('tglmulaitagih').AsDateTime;
                                                      DM.Qexec.ParamByName('flaghapus').AsString:=Qcek.fieldbyname('flaghapus').AsString;
                                                      DM.Qexec.ParamByName('noorder').AsString:=Qcek.fieldbyname('noorder').AsString;
                                                      DM.Qexec.ParamByName('nokwitansi').AsString:=Qcek.fieldbyname('nokwitansi').AsString;
                                                      DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                                      DM.Qexec.ParamByName('nolpp').AsString:= Qcek.fieldbyname('nolpp').AsString;
                                                      DM.Qexec.ParamByName('persenppn').AsCurrency:= Qcek.fieldbyname('persenppn').AsCurrency;
                                                      DM.Qexec.ParamByName('param').AsString:= Qcek.fieldbyname('param').AsString;
                                                      DM.Qexec.ParamByName('kirimkeperencanaan').AsString:= Qcek.fieldbyname('kirimkeperencanaan').AsString;
                                                      DM.Qexec.ParamByName('batalkirimkeperencanaan').AsString:= Qcek.fieldbyname('batalkirimkeperencanaan').AsString;
                                                      DM.Qexec.ParamByName('validdate').AsDate:= Qcek.fieldbyname('validdate').AsDateTime;
                                                      DM.Qexec.Execute;

                                                 end;  


                                      end
                                     else
                                     begin


                                        DM.Qexec.close;
                                        DM.Qexec.SQL.Clear;
                                        DM.Qexec.SQL.Add(Qnonair.SQLInsert.Text);
                                        DM.Qexec.ParamByName('urutan').AsString:=Qcek.fieldbyname('urutan').AsString;
                                        DM.Qexec.ParamByName('nomor').AsString:=Qcek.fieldbyname('nomor').AsString;
                                        DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                        DM.Qexec.ParamByName('jenis').AsString:= Qcek.fieldbyname('jenis').AsString;
                                        DM.Qexec.ParamByName('waktubayar').AsDateTime:=Qcek.fieldbyname('waktubayar').AsDateTime;
                                        DM.Qexec.ParamByName('waktubatal').AsDateTime:=Qcek.fieldbyname('waktubatal').AsDateTime;
                                        DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                        DM.Qexec.ParamByName('loketbayar').AsString:= Qcek.fieldbyname('loketbayar').AsString;
                                        DM.Qexec.ParamByName('nama').AsString:= Qcek.fieldbyname('nama').AsString;
                                        DM.Qexec.ParamByName('alamat').AsString:=  Qcek.fieldbyname('alamat').AsString;
                                        DM.Qexec.ParamByName('notelp').AsString:= Qcek.fieldbyname('notelp').AsString;
                                        DM.Qexec.ParamByName('nohp').AsString:= Qcek.fieldbyname('nohp').AsString;
                                        DM.Qexec.ParamByName('biaya1').AsCurrency:= Qcek.fieldbyname('biaya1').AsCurrency;
                                        DM.Qexec.ParamByName('biaya2').AsCurrency:= Qcek.fieldbyname('biaya2').AsCurrency;
                                        DM.Qexec.ParamByName('biaya3').AsCurrency:= Qcek.fieldbyname('biaya3').AsCurrency;
                                        DM.Qexec.ParamByName('biaya4').AsCurrency:= Qcek.fieldbyname('biaya4').AsCurrency;
                                        DM.Qexec.ParamByName('biaya5').AsCurrency:= Qcek.fieldbyname('biaya5').AsCurrency;
                                        DM.Qexec.ParamByName('biaya6').AsCurrency:= Qcek.fieldbyname('biaya6').AsCurrency;
                                        DM.Qexec.ParamByName('biaya7').AsCurrency:= Qcek.fieldbyname('biaya7').AsCurrency;
                                        DM.Qexec.ParamByName('biaya8').AsCurrency:= Qcek.fieldbyname('biaya8').AsCurrency;
                                        DM.Qexec.ParamByName('biaya9').AsCurrency:= Qcek.fieldbyname('biaya9').AsCurrency;
                                        DM.Qexec.ParamByName('biaya10').AsCurrency:= Qcek.fieldbyname('biaya10').AsCurrency;
                                        DM.Qexec.ParamByName('biayapemakaian').AsCurrency:= Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                        DM.Qexec.ParamByName('administrasi').AsCurrency:= Qcek.fieldbyname('administrasi').AsCurrency;
                                        DM.Qexec.ParamByName('pemeliharaan').AsCurrency:= Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                        DM.Qexec.ParamByName('retribusi').AsCurrency:= Qcek.fieldbyname('retribusi').AsCurrency;
                                        DM.Qexec.ParamByName('dendatunggakan').AsCurrency:= Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                        DM.Qexec.ParamByName('angsuran1').AsCurrency:= Qcek.fieldbyname('angsuran1').AsCurrency;
                                        DM.Qexec.ParamByName('angsuran2').AsCurrency:= Qcek.fieldbyname('angsuran2').AsCurrency;
                                        DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                        DM.Qexec.ParamByName('keterangan').AsString:= Qcek.fieldbyname('keterangan').AsString;
                                        DM.Qexec.ParamByName('terbilang').AsString:=Qcek.fieldbyname('terbilang').AsString;
                                        DM.Qexec.ParamByName('waktudownload').AsDateTime:=now;
                                        DM.Qexec.ParamByName('waktucetak').AsDateTime:=Qcek.fieldbyname('waktucetak').AsDateTime;
                                        DM.Qexec.ParamByName('flaglunas').AsString:= Qcek.fieldbyname('flaglunas').AsString;
                                        DM.Qexec.ParamByName('flagbatal').AsString:= Qcek.fieldbyname('flagbatal').AsString;
                                        DM.Qexec.ParamByName('waktuupdate').AsDateTime:=Qcek.fieldbyname('waktuupdate').AsDateTime;
                                        DM.Qexec.ParamByName('loketupdate').AsString:= Qcek.fieldbyname('loketupdate').AsString;
                                        DM.Qexec.ParamByName('alasanbatal').AsString:= Qcek.fieldbyname('alasanbatal').AsString;
                                        DM.Qexec.ParamByName('flag').AsString:= Qcek.fieldbyname('flag').AsString;
                                        DM.Qexec.ParamByName('waktuinput').AsDateTime:=Qcek.fieldbyname('waktuinput').AsDateTime;
                                        DM.Qexec.ParamByName('userinput').AsString:= Qcek.fieldbyname('userinput').AsString;
                                        DM.Qexec.ParamByName('loketinput').AsString:= Qcek.fieldbyname('loketinput').AsString;
                                        DM.Qexec.ParamByName('tangki_m3').AsCurrency:=Qcek.fieldbyname('tangki_m3').AsCurrency;
                                        DM.Qexec.ParamByName('tangki_tarifperkubik').AsCurrency:=Qcek.fieldbyname('tangki_tarifperkubik').AsCurrency;
                                        DM.Qexec.ParamByName('tangki_jumlahtarif').AsCurrency:=Qcek.fieldbyname('tangki_jumlahtarif').AsCurrency;
                                        DM.Qexec.ParamByName('tangki_jarak').AsCurrency:=Qcek.fieldbyname('tangki_jarak').AsCurrency;
                                        DM.Qexec.ParamByName('tangki_ongkos').AsCurrency:=Qcek.fieldbyname('tangki_ongkos').AsCurrency;
                                        DM.Qexec.ParamByName('nospk').AsString:=Qcek.fieldbyname('nospk').AsString;
                                        DM.Qexec.ParamByName('tglpesan').AsDate:=Qcek.fieldbyname('tglpesan').AsDateTime;
                                        DM.Qexec.ParamByName('petugastangki').AsString:=Qcek.fieldbyname('petugastangki').AsString;
                                        DM.Qexec.ParamByName('flagangsur').AsString:=Qcek.fieldbyname('flagangsur').AsString;
                                        DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                        DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                        DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                        DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                        DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;

                                        if DM._wilayah_nonair_berdasarkan_wilayah_loket='0' then
                                        begin

                                              if (Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString<>'')  then
                                              begin
                                                DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_nonair').AsString;
                                                DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_nonair').AsString;
                                              end
                                              else  if Qcek.fieldbyname('kodewil_dari_koderayon_pelanggan').AsString<>'' then
                                              begin
                                                DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_koderayon_pelanggan').AsString;
                                                DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_koderayon_pelanggan').AsString;
                                              end
                                              else  if Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString<>'' then
                                              begin
                                                DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString;
                                                DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_wilayah_loket').AsString;
                                              end;

                                        end
                                        else
                                        begin
                                          DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil_dari_wilayah_loket').AsString;
                                          DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah_dari_wilayah_loket').AsString;
                                        end;




                                        DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                        DM.Qexec.ParamByName('ketjenis').AsString:=Qcek.fieldbyname('ketjenis').AsString;
                                        DM.Qexec.ParamByName('termin').AsInteger:=Qcek.fieldbyname('termin').AsInteger;
                                        DM.Qexec.ParamByName('ppn').AsCurrency:= Qcek.fieldbyname('ppn').AsCurrency;
                                        DM.Qexec.ParamByName('biayabahan').AsCurrency:= Qcek.fieldbyname('biayabahan').AsCurrency;
                                        DM.Qexec.ParamByName('biayapasang').AsCurrency:= Qcek.fieldbyname('biayapasang').AsCurrency;
                                        DM.Qexec.ParamByName('pendaftaran').AsCurrency:= Qcek.fieldbyname('pendaftaran').AsCurrency;
                                        DM.Qexec.ParamByName('jaminan').AsCurrency:= Qcek.fieldbyname('jaminan').AsCurrency;
                                        DM.Qexec.ParamByName('perencanaan').AsCurrency:= Qcek.fieldbyname('perencanaan').AsCurrency;
                                        DM.Qexec.ParamByName('meterai').AsCurrency:= Qcek.fieldbyname('meterai').AsCurrency;
                                        DM.Qexec.ParamByName('tangki').AsCurrency:= Qcek.fieldbyname('tangki').AsCurrency;
                                        DM.Qexec.ParamByName('lainnya').AsCurrency:= Qcek.fieldbyname('lainnya').AsCurrency;
                                        DM.Qexec.ParamByName('perbaikan').AsCurrency:= Qcek.fieldbyname('perbaikan').AsCurrency;
                                        DM.Qexec.ParamByName('meterkas').AsCurrency:= Qcek.fieldbyname('meterkas').AsCurrency;
                                        DM.Qexec.ParamByName('pul').AsCurrency:= Qcek.fieldbyname('pul').AsCurrency;
                                        DM.Qexec.ParamByName('gwm').AsCurrency:= Qcek.fieldbyname('gwm').AsCurrency;
                                        DM.Qexec.ParamByName('biayaperbaikan').AsCurrency:= Qcek.fieldbyname('biayaperbaikan').AsCurrency;
                                        DM.Qexec.ParamByName('biayafpb').AsCurrency:= Qcek.fieldbyname('biayafpb').AsCurrency;
                                        DM.Qexec.ParamByName('biayateswm').AsCurrency:= Qcek.fieldbyname('biayateswm').AsCurrency;
                                        DM.Qexec.ParamByName('biayagantinama').AsCurrency:= Qcek.fieldbyname('biayagantinama').AsCurrency;
                                        DM.Qexec.ParamByName('biayaprosestutup').AsCurrency:= Qcek.fieldbyname('biayaprosestutup').AsCurrency;
                                        DM.Qexec.ParamByName('biayaprosesbuka').AsCurrency:= Qcek.fieldbyname('biayaprosesbuka').AsCurrency;
                                        DM.Qexec.ParamByName('memakaiairtidaksah').AsCurrency:= Qcek.fieldbyname('memakaiairtidaksah').AsCurrency;
                                        DM.Qexec.ParamByName('dendaadmpelanggan').AsCurrency:= Qcek.fieldbyname('dendaadmpelanggan').AsCurrency;
                                        DM.Qexec.ParamByName('biayasegelputus').AsCurrency:= Qcek.fieldbyname('biayasegelputus').AsCurrency;
                                        DM.Qexec.ParamByName('biayakartupemakaianair').AsCurrency:= Qcek.fieldbyname('biayakartupemakaianair').AsCurrency;
                                        DM.Qexec.ParamByName('sewakendaraantangki').AsCurrency:= Qcek.fieldbyname('sewakendaraantangki').AsCurrency;
                                        DM.Qexec.ParamByName('penjualanairtangki').AsCurrency:= Qcek.fieldbyname('penjualanairtangki').AsCurrency;
                                        DM.Qexec.ParamByName('piutangsisapemakaianair').AsCurrency:= Qcek.fieldbyname('piutangsisapemakaianair').AsCurrency;
                                        DM.Qexec.ParamByName('piutanggwm').AsCurrency:= Qcek.fieldbyname('piutanggwm').AsCurrency;
                                        DM.Qexec.ParamByName('piutangmeterkas').AsCurrency:= Qcek.fieldbyname('piutangmeterkas').AsCurrency;
                                        DM.Qexec.ParamByName('dendapelanggaran').AsCurrency:= Qcek.fieldbyname('dendapelanggaran').AsCurrency;
                                        DM.Qexec.ParamByName('realisasipembagi').AsCurrency:= Qcek.fieldbyname('realisasipembagi').AsCurrency;
                                        DM.Qexec.ParamByName('realisasipersil').AsCurrency:= Qcek.fieldbyname('realisasipersil').AsCurrency;
                                        DM.Qexec.ParamByName('realisasisambungan').AsCurrency:= Qcek.fieldbyname('realisasisambungan').AsCurrency;
                                        DM.Qexec.ParamByName('rencanapembagi').AsCurrency:= Qcek.fieldbyname('rencanapembagi').AsCurrency;
                                        DM.Qexec.ParamByName('rencanapersil').AsCurrency:= Qcek.fieldbyname('rencanapersil').AsCurrency;
                                        DM.Qexec.ParamByName('rencanasambungan').AsCurrency:= Qcek.fieldbyname('rencanasambungan').AsCurrency;
                                        DM.Qexec.ParamByName('dibebankankepada').AsString:=Qcek.fieldbyname('dibebankankepada').AsString;
                                        DM.Qexec.ParamByName('tglmulaitagih').AsDate:=Qcek.fieldbyname('tglmulaitagih').AsDateTime;
                                        DM.Qexec.ParamByName('flaghapus').AsString:=Qcek.fieldbyname('flaghapus').AsString;
                                        DM.Qexec.ParamByName('noorder').AsString:=Qcek.fieldbyname('noorder').AsString;
                                        DM.Qexec.ParamByName('nokwitansi').AsString:=Qcek.fieldbyname('nokwitansi').AsString;
                                        DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                        DM.Qexec.ParamByName('nolpp').AsString:= Qcek.fieldbyname('nolpp').AsString;
                                        DM.Qexec.ParamByName('persenppn').AsCurrency:= Qcek.fieldbyname('persenppn').AsCurrency;
                                        DM.Qexec.ParamByName('param').AsString:= Qcek.fieldbyname('param').AsString;
                                        DM.Qexec.ParamByName('kirimkeperencanaan').AsString:= Qcek.fieldbyname('kirimkeperencanaan').AsString;
                                        DM.Qexec.ParamByName('batalkirimkeperencanaan').AsString:= Qcek.fieldbyname('batalkirimkeperencanaan').AsString;
                                        DM.Qexec.ParamByName('validdate').AsDate:= Qcek.fieldbyname('validdate').AsDateTime;
                                        DM.Qexec.Execute;

                                       end;  

                                      lastupdate1.date:=Qcek.fieldbyname('waktuupdate').AsDateTime;

                                      if( Qcek.fieldbyname('flaglunas').AsString='1') and ( Qcek.fieldbyname('flagbatal').AsString='0')then

                                        bayarnonair:=bayarnonair+1

                                      else  if( Qcek.fieldbyname('flaglunas').AsString='0') and ( Qcek.fieldbyname('flagbatal').AsString='1')then

                                        batalnonair:=batalnonair+1;


                            Progress.IncPartsByOne;
                            Application.ProcessMessages;
                            Qcek.Next;

                        end; 


                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set last_transaksi_nonair=:last_transaksi_nonair WHERE idx="1"');
                  DM.Qexec.ParamByName('last_transaksi_nonair').AsDateTime:= lastupdate1.date;
                  DM.Qexec.Execute;

                end;






                /////AIR


                Qcek.Close;
                Qcek.SQL.Clear;
	              Qcek.SQL.add(Qrek.SQLRefresh.Text);
                Qcek.ParamByName('tanggal').AsDateTime:=IncHour(t1.Date,-0);   
                Qcek.Open;

                if(Qcek.RecordCount>0)then
                begin




                      bayarair:=0;
                      batalair:=0;
                      memo.Lines.Add('-> Proses Air');
                      Progress.PartsComplete:=0;
                      Progress.TotalParts:=Qcek.RecordCount;
                      Progress.Visible:=true;
                      Application.ProcessMessages;

                      for j:=1 to Qcek.RecordCount do
                      begin

                                
                                 //CEK  TABLE DRD

                                 DM.Qcek.close;
                                 DM.Qcek.SQL.Clear;
                                 DM.Qcek.SQL.Add('show tables like "drd'+Qcek.fieldbyname('periode').AsString+'"');
                                 DM.Qcek.Open;


                                 if(DM.Qcek.RecordCount=0) then
                                 begin

                                      memo.Lines.Add('!! Buat Tabel DRD '+Qcek.fieldbyname('periode').AsString+' !!');

                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('create table drd'+Qcek.fieldbyname('periode').AsString+' like drd' );
                                      DM.Qexec.Execute;

                                      Dm.Qexec.Close;
                                      Dm.Qexec.SQL.Clear;
                                      Dm.Qexec.SQL.Add('REPLACE INTO periode (periode,waktu,user)');
                                      DM.Qexec.SQL.add('VALUES (:periode,NOW(),:user)');
                                      Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                      Dm.Qexec.ParamByName('user').AsString:='Mesin-Gate';
                                      Dm.Qexec.Execute;

                                      Dm.Qexec.Close;
                                      Dm.Qexec.SQL.Clear;
                                      Dm.Qexec.SQL.Add('update periode p,namabulan n set p.nama=concat(n.nama," ",LEFT(p.periode,4)) WHERE RIGHT(p.periode,2)=n.bulan AND p.periode=:periode');
                                      Dm.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                      Dm.Qexec.Execute;

                                 end;



                                  DM.Qcek.close;
                                  DM.Qcek.SQL.Clear;
                                  DM.Qcek.SQL.Add('SELECT * FROM drd'+Qcek.fieldbyname('periode').AsString+' WHERE nosamb=:nosamb');
                                  DM.Qcek.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                  DM.Qcek.Open;

                                  if(DM.Qcek.RecordCount>0)then
                                  begin


                                          {DM.Qexec.close;
                                          DM.Qexec.SQL.Clear;
                                          DM.Qexec.SQL.Add('update drd'+Qcek.fieldbyname('periode').AsString+'');
                                          DM.Qexec.SQL.Add(Qlunas.SQLUpdate.Text);
                                          DM.Qexec.ParamByName('nosamb').Value:=Qcek.fieldbyname('nosamb').AsString;
                                          DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                          DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                          DM.Qexec.ParamByName('tgldownload').AsDateTime:= Now;
                                          DM.Qexec.ParamByName('rekair').AsCurrency:=Qcek.fieldbyname('rekair').AsCurrency;
                                          DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                          DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                          DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                          DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                          DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qcek.fieldbyname('stanlalu').AsCurrency;
                                          DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qcek.fieldbyname('stanskrg').AsCurrency;
                                          DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qcek.fieldbyname('stanangkat').AsCurrency;
                                          DM.Qexec.ParamByName('pakai').AsCurrency:=Qcek.fieldbyname('pakai').AsCurrency;
                                          DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                          DM.Qexec.ParamByName('administrasi').AsCurrency:=Qcek.fieldbyname('administrasi').AsCurrency;
                                          DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                          DM.Qexec.ParamByName('retribusi').AsCurrency:=Qcek.fieldbyname('retribusi').AsCurrency;
                                          DM.Qexec.ParamByName('administrasilain').AsCurrency:=Qcek.fieldbyname('administrasilain').AsCurrency;
                                          DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency:=Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                                          DM.Qexec.ParamByName('retribusilain').AsCurrency:=Qcek.fieldbyname('retribusilain').AsCurrency;
                                          DM.Qexec.ParamByName('airlimbah').AsCurrency:=Qcek.fieldbyname('airlimbah').AsCurrency;
                                          DM.Qexec.ParamByName('pelayanan').AsCurrency:=Qcek.fieldbyname('pelayanan').AsCurrency;
                                          DM.Qexec.ParamByName('dendapakai0').AsCurrency:=Qcek.fieldbyname('dendapakai0').AsCurrency;
                                          DM.Qexec.ParamByName('meterai').AsCurrency:=Qcek.fieldbyname('meterai').AsCurrency;
                                          DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                          DM.Qexec.ParamByName('kodediameter').AsString:=Qcek.fieldbyname('kodediameter').AsString;
                                          DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                          DM.Qexec.ParamByName('kodekelurahan').AsString:='-';
                                          DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                          DM.Qexec.ParamByName('prog1').AsCurrency:=Qcek.fieldbyname('prog1').AsCurrency;
                                          DM.Qexec.ParamByName('prog2').AsCurrency:=Qcek.fieldbyname('prog2').AsCurrency;
                                          DM.Qexec.ParamByName('prog3').AsCurrency:=Qcek.fieldbyname('prog3').AsCurrency;
                                          DM.Qexec.ParamByName('prog4').AsCurrency:=Qcek.fieldbyname('prog4').AsCurrency;
                                          DM.Qexec.ParamByName('prog5').AsCurrency:=Qcek.fieldbyname('prog5').AsCurrency;
                                          DM.Qexec.ParamByName('tglmulaidenda').AsDateTime:=Qcek.fieldbyname('tglmulaidenda').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda2').AsDateTime:=Qcek.fieldbyname('tglmulaidenda2').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda3').AsDateTime:=Qcek.fieldbyname('tglmulaidenda3').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda4').AsDateTime:=Qcek.fieldbyname('tglmulaidenda4').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidendaperbulan').AsDateTime:=Qcek.fieldbyname('tglmulaidendaperbulan').AsDateTime;
                                          DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qcek.fieldbyname('kodeadministrasilain').AsString;
                                          DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qcek.fieldbyname('kodepemeliharaanlain').AsString;
                                          DM.Qexec.ParamByName('koderetribusilain').AsString:=Qcek.fieldbyname('koderetribusilain').AsString;
                                          DM.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan2').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan3').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan4').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakanperbulan').AsCurrency;
                                          DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                          DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                          DM.Qexec.ParamByName('ppn').AsCurrency:=Qcek.fieldbyname('ppn').AsCurrency;
                                          DM.Qexec.ParamByName('blok1').AsCurrency:=Qcek.fieldbyname('blok1').AsCurrency;
                                          DM.Qexec.ParamByName('blok2').AsCurrency:=Qcek.fieldbyname('blok2').AsCurrency;
                                          DM.Qexec.ParamByName('blok3').AsCurrency:=Qcek.fieldbyname('blok3').AsCurrency;
                                          DM.Qexec.ParamByName('blok4').AsCurrency:=Qcek.fieldbyname('blok4').AsCurrency;
                                          DM.Qexec.ParamByName('blok5').AsCurrency:=Qcek.fieldbyname('blok5').AsCurrency;
                                          DM.Qexec.ParamByName('kelainan').AsString:=Qcek.fieldbyname('kelainan').AsString;
                                          DM.Qexec.ParamByName('flagangsur').AsString:=Qcek.fieldbyname('flagangsur').AsString;
                                          DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                          DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                          DM.Qexec.Execute;}

                                          DM.Qexec.close;
                                          DM.Qexec.SQL.Clear;
                                          DM.Qexec.SQL.Add('update drd'+Qcek.fieldbyname('periode').AsString+'');
                                          DM.Qexec.SQL.Add(Qlunas.SQLUpdate.Text);
                                          DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                          DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                          DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                          DM.Qexec.ParamByName('tgldownload').AsDateTime:= Now;
                                          DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                          DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                          DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                          DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                          DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                          DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                          DM.Qexec.Execute;




                                  end
                                  else
                                  begin


                                          Dm.Qexec.Close;
                                          Dm.Qexec.SQL.Clear;
                                          Dm.Qexec.SQL.Add('REPLACE INTO drd'+Qcek.fieldbyname('periode').AsString+' (flagpublish,flagkoreksi,nosamb,serimeter,kodegol,kodegolyangberlaku,kodediameter,kodediameteryangberlaku,koderayon,');
                                          Dm.Qexec.SQL.add('kodekelurahan,stanlalu,stanskrg,stanangkat,pakai,biayapemakaian,administrasi,pemeliharaan,pelayanan,retribusi,airlimbah,dendapakai0,administrasilain,pemeliharaanlain,retribusilain,meterai,rekair,dendatunggakan,total,');
                                          Dm.Qexec.SQL.add('flagaktif,kodekolektif,tglmulaidenda,tglmulaidenda2,tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan,');
                                          Dm.Qexec.SQL.add('flaglunas,tglbayar,flagbatal,tglbatal,kasir,loketbayar,nolpp,flagdownload,tgldownload,prog1,prog2,prog3,prog4,prog5,trf_dendatunggakan,trf_dendatunggakan2,trf_dendatunggakan3,trf_dendatunggakan4,trf_dendatunggakanperbulan,kodeadministrasilain,');
                                          Dm.Qexec.SQL.add('kodepemeliharaanlain,koderetribusilain,flagangsur,noangsuran,ppn,blok1,blok2,blok3,blok4,blok5,kelainan,shift) VALUES ');
                                          Dm.Qexec.SQL.Add('("1","1",:nosamb,:serimeter,:kodegol,:kodegolyangberlaku,:kodediameter,:kodediameteryangberlaku,:koderayon,:kodekelurahan,');
                                          Dm.Qexec.SQL.add(':stanlalu,:stanskrg,:stanangkat,:pakai,:biayapemakaian,:administrasi,:pemeliharaan,:pelayanan,:retribusi,:airlimbah,:dendapakai0,:administrasilain,:pemeliharaanlain,:retribusilain,:meterai,:rekair,:dendatunggakan,');
                                          Dm.Qexec.SQL.add(':total,:flagaktif,:kodekolektif,:tglmulaidenda,:tglmulaidenda2,:tglmulaidenda3,:tglmulaidenda4,:tglmulaidendaperbulan,');
                                          Dm.Qexec.SQL.add(':flaglunas,:tglbayar,:flagbatal,:tglbatal,:kasir,:loketbayar,:nolpp,"1",:tgldownload,:prog1,:prog2,:prog3,:prog4,:prog5,:trf_dendatunggakan,:trf_dendatunggakan2,:trf_dendatunggakan3,:trf_dendatunggakan4,:trf_dendatunggakanperbulan,');
                                          Dm.Qexec.SQL.add(':kodeadministrasilain,:kodepemeliharaanlain,:koderetribusilain,:flagangsur,:noangsuran,:ppn,:blok1,:blok2,:blok3,:blok4,:blok5,:kelainan,:shift)');
                                          DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                          DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                          DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                          DM.Qexec.ParamByName('tgldownload').AsDateTime:=now;
                                          DM.Qexec.ParamByName('rekair').AsCurrency:=Qcek.fieldbyname('rekair').AsCurrency;
                                          DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                          DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                          DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                          DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                          DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qcek.fieldbyname('stanlalu').AsCurrency;
                                          DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qcek.fieldbyname('stanskrg').AsCurrency;
                                          DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qcek.fieldbyname('stanangkat').AsCurrency;
                                          DM.Qexec.ParamByName('pakai').AsCurrency:=Qcek.fieldbyname('pakai').AsCurrency;
                                          DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                          DM.Qexec.ParamByName('administrasi').AsCurrency:=Qcek.fieldbyname('administrasi').AsCurrency;
                                          DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                          DM.Qexec.ParamByName('administrasilain').AsCurrency:=Qcek.fieldbyname('administrasilain').AsCurrency;
                                          DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency:=Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                                          DM.Qexec.ParamByName('retribusilain').AsCurrency:=Qcek.fieldbyname('retribusilain').AsCurrency;
                                          DM.Qexec.ParamByName('retribusi').AsCurrency:=Qcek.fieldbyname('retribusi').AsCurrency;
                                          DM.Qexec.ParamByName('airlimbah').AsCurrency:=Qcek.fieldbyname('airlimbah').AsCurrency;
                                          DM.Qexec.ParamByName('pelayanan').AsCurrency:=Qcek.fieldbyname('pelayanan').AsCurrency;
                                          DM.Qexec.ParamByName('dendapakai0').AsCurrency:=Qcek.fieldbyname('dendapakai0').AsCurrency;
                                          DM.Qexec.ParamByName('meterai').AsCurrency:=Qcek.fieldbyname('meterai').AsCurrency;
                                          DM.Qexec.ParamByName('serimeter').AsString:='';



                                          DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                          DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qcek.fieldbyname('kodegolyangberlaku').AsString;
                                          DM.Qexec.ParamByName('kodediameter').AsString:=Qcek.fieldbyname('kodediameter').AsString;
                                          DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qcek.fieldbyname('kodediameteryangberlaku').AsString;
                                          DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                          DM.Qexec.ParamByName('kodekelurahan').AsString:='-';//Qcek.fieldbyname('kodekelurahan').AsString;
                                          DM.Qexec.ParamByName('kodekolektif').AsString:=Qcek.fieldbyname('kodekolektif').AsString;
                                          DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                          DM.Qexec.ParamByName('flagaktif').AsString:='1';
                                          DM.Qexec.ParamByName('prog1').AsCurrency:=Qcek.fieldbyname('prog1').AsCurrency;
                                          DM.Qexec.ParamByName('prog2').AsCurrency:=Qcek.fieldbyname('prog2').AsCurrency;
                                          DM.Qexec.ParamByName('prog3').AsCurrency:=Qcek.fieldbyname('prog3').AsCurrency;
                                          DM.Qexec.ParamByName('prog4').AsCurrency:=Qcek.fieldbyname('prog4').AsCurrency;
                                          DM.Qexec.ParamByName('prog5').AsCurrency:=Qcek.fieldbyname('prog5').AsCurrency;
                                          DM.Qexec.ParamByName('tglmulaidenda').AsDateTime:=Qcek.fieldbyname('tglmulaidenda').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda2').AsDateTime:=Qcek.fieldbyname('tglmulaidenda2').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda3').AsDateTime:=Qcek.fieldbyname('tglmulaidenda3').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidenda4').AsDateTime:=Qcek.fieldbyname('tglmulaidenda4').AsDateTime;
                                          DM.Qexec.ParamByName('tglmulaidendaperbulan').AsDateTime:=Qcek.fieldbyname('tglmulaidendaperbulan').AsDateTime;
                                          DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qcek.fieldbyname('kodeadministrasilain').AsString;
                                          DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qcek.fieldbyname('kodepemeliharaanlain').AsString;
                                          DM.Qexec.ParamByName('koderetribusilain').AsString:=Qcek.fieldbyname('koderetribusilain').AsString;
                                          DM.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan2').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan3').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan4').AsCurrency;
                                          DM.Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakanperbulan').AsCurrency;
                                          DM.Qexec.ParamByName('flaglunas').Value:=Qcek.fieldbyname('flaglunas').AsString;
                                          DM.Qexec.ParamByName('flagbatal').Value:=Qcek.fieldbyname('flagbatal').AsString;
                                          DM.Qexec.ParamByName('ppn').AsCurrency:=Qcek.fieldbyname('ppn').AsCurrency;
                                          DM.Qexec.ParamByName('blok1').AsCurrency:=Qcek.fieldbyname('blok1').AsCurrency;
                                          DM.Qexec.ParamByName('blok2').AsCurrency:=Qcek.fieldbyname('blok2').AsCurrency;
                                          DM.Qexec.ParamByName('blok3').AsCurrency:=Qcek.fieldbyname('blok3').AsCurrency;
                                          DM.Qexec.ParamByName('blok4').AsCurrency:=Qcek.fieldbyname('blok4').AsCurrency;
                                          DM.Qexec.ParamByName('blok5').AsCurrency:=Qcek.fieldbyname('blok5').AsCurrency;
                                          DM.Qexec.ParamByName('flagangsur').AsString:=Qcek.fieldbyname('flagangsur').AsString;
                                          DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                          DM.Qexec.ParamByName('kelainan').AsString:=Qcek.fieldbyname('kelainan').AsString;
                                          DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                          //DM.Qexec.ParamByName('trf_denda_berdasarkan_persen').AsString:=Qcek.fieldbyname('trf_denda_berdasarkan_persen').AsString;
                                          Dm.Qexec.Execute;
                                                             
                                  end;





                                  

                               if(Qcek.fieldbyname('flaglunas').AsString='1') and
                               (Qcek.fieldbyname('flagbatal').AsString='0') then
                               begin

                                  DM.Qexec.close;
                                  DM.Qexec.SQL.Clear;
                                  DM.Qexec.SQL.Add('delete FROM piutang where kode=:kode');
                                  DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                  DM.Qexec.Execute; 

                                  if(Qcek.fieldbyname('flagangsur').AsString='1')then
                                  begin



                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('replace into bayardiangsur select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROm drd'+Qcek.fieldbyname('periode').AsString+' c WHERE c.nosamb=:nosamb');
                                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                    DM.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                    DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                    DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                    DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                    DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                    DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah').AsString;
                                    DM.Qexec.Execute;                                    


                                  end 
                                  else
                                  begin

                                   // CEK TABLE BAYAR TAHUN


                                       DM.Qcek.close;
                                       DM.Qcek.SQL.Clear;
                                       DM.Qcek.SQL.Add('show tables like "bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+'"');
                                       DM.Qcek.Open;


                                       if(DM.Qcek.RecordCount=0)then
                                       begin

                                            DM.Qexec.close;
                                            DM.Qexec.SQL.Clear;
                                            DM.Qexec.SQL.Add('create table bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' like bayar' );
                                            DM.Qexec.Execute;

                                       end;
                                   

                                      {DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add('replace into bayar:tahun select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROm drd'+Qcek.fieldbyname('periode').AsString+' c WHERE c.nosamb=:nosamb');
                                      DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime));
                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                      DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                      DM.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                      DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                      DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                      DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                      DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                      DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                      DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah').AsString;
                                      DM.Qexec.Execute;}




                                      DM.Qexec.close;
                                      DM.Qexec.SQL.Clear;
                                      DM.Qexec.SQL.Add(Qbayar.SQLInsert.Text);
                                      DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime));
                                      DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                      DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                      DM.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                      DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                      DM.Qexec.ParamByName('kodegol').AsString:=Qcek.fieldbyname('kodegol').AsString;
                                      DM.Qexec.ParamByName('kodegolyangberlaku').AsString:=Qcek.fieldbyname('kodegolyangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodediameter').AsString:=Qcek.fieldbyname('kodediameter').AsString;
                                      DM.Qexec.ParamByName('kodediameteryangberlaku').AsString:=Qcek.fieldbyname('kodediameteryangberlaku').AsString;
                                      DM.Qexec.ParamByName('kodekelurahan').AsString:='-';
                                      DM.Qexec.ParamByName('koderayon').AsString:=Qcek.fieldbyname('koderayon').AsString;
                                      DM.Qexec.ParamByName('kodekolektif').AsString:=Qcek.fieldbyname('kodekolektif').AsString;
                                      DM.Qexec.ParamByName('stanlalu').AsCurrency:=Qcek.fieldbyname('stanlalu').AsCurrency;
                                      DM.Qexec.ParamByName('stanskrg').AsCurrency:=Qcek.fieldbyname('stanskrg').AsCurrency;
                                      DM.Qexec.ParamByName('stanangkat').AsCurrency:=Qcek.fieldbyname('stanangkat').AsCurrency;
                                      DM.Qexec.ParamByName('pakai').AsCurrency:=Qcek.fieldbyname('pakai').AsCurrency;
                                      DM.Qexec.ParamByName('pakai2').AsCurrency:=0;
                                      DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=Qcek.fieldbyname('biayapemakaian').AsCurrency;
                                      DM.Qexec.ParamByName('administrasi').AsCurrency:=Qcek.fieldbyname('administrasi').AsCurrency;
                                      DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=Qcek.fieldbyname('pemeliharaan').AsCurrency;
                                      DM.Qexec.ParamByName('pelayanan').AsCurrency:=Qcek.fieldbyname('pelayanan').AsCurrency;
                                      DM.Qexec.ParamByName('retribusi').AsCurrency:=Qcek.fieldbyname('retribusi').AsCurrency;
                                      DM.Qexec.ParamByName('airlimbah').AsCurrency:=Qcek.fieldbyname('airlimbah').AsCurrency;
                                      DM.Qexec.ParamByName('dendapakai0').AsCurrency:=Qcek.fieldbyname('dendapakai0').AsCurrency;
                                      DM.Qexec.ParamByName('pemeliharaanlain').AsCurrency:=Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                                      DM.Qexec.ParamByName('administrasilain').AsCurrency:=Qcek.fieldbyname('administrasilain').AsCurrency;
                                      DM.Qexec.ParamByName('retribusilain').AsCurrency:=Qcek.fieldbyname('retribusilain').AsCurrency;
                                      DM.Qexec.ParamByName('meterai').AsCurrency:=Qcek.fieldbyname('meterai').AsCurrency;
                                      DM.Qexec.ParamByName('rekair').AsCurrency:=Qcek.fieldbyname('rekair').AsCurrency;
                                      DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=Qcek.fieldbyname('dendatunggakan').AsCurrency;
                                      DM.Qexec.ParamByName('angsuran').AsCurrency:=Qcek.fieldbyname('persenppn').AsCurrency;
                                      DM.Qexec.ParamByName('ppn').AsCurrency:=Qcek.fieldbyname('ppn').AsCurrency;
                                      DM.Qexec.ParamByName('total').AsCurrency:=Qcek.fieldbyname('total').AsCurrency;
                                      DM.Qexec.ParamByName('tglbayar').AsDateTime:=Qcek.fieldbyname('tglbayar').AsDateTime;
                                      DM.Qexec.ParamByName('flagpublish').AsString:='1';
                                      DM.Qexec.ParamByName('flaglunas').AsString:=Qcek.fieldbyname('flaglunas').AsString;
                                      DM.Qexec.ParamByName('flagangsur').AsString:=Qcek.fieldbyname('flagangsur').AsString;
                                      DM.Qexec.ParamByName('noangsuran').AsString:=Qcek.fieldbyname('noangsuran').AsString;
                                      DM.Qexec.ParamByName('blok1').AsCurrency:=Qcek.fieldbyname('blok1').AsCurrency;
                                      DM.Qexec.ParamByName('blok2').AsCurrency:=Qcek.fieldbyname('blok2').AsCurrency;
                                      DM.Qexec.ParamByName('blok3').AsCurrency:=Qcek.fieldbyname('blok3').AsCurrency;
                                      DM.Qexec.ParamByName('blok4').AsCurrency:=Qcek.fieldbyname('blok4').AsCurrency;
                                      DM.Qexec.ParamByName('blok5').AsCurrency:=Qcek.fieldbyname('blok5').AsCurrency;
                                      DM.Qexec.ParamByName('prog1').AsCurrency:=Qcek.fieldbyname('prog1').AsCurrency;
                                      DM.Qexec.ParamByName('prog2').AsCurrency:=Qcek.fieldbyname('prog2').AsCurrency;
                                      DM.Qexec.ParamByName('prog3').AsCurrency:=Qcek.fieldbyname('prog3').AsCurrency;
                                      DM.Qexec.ParamByName('prog4').AsCurrency:=Qcek.fieldbyname('prog4').AsCurrency;
                                      DM.Qexec.ParamByName('prog5').AsCurrency:=Qcek.fieldbyname('prog5').AsCurrency;
                                      DM.Qexec.ParamByName('kelainan').AsString:=Qcek.fieldbyname('kelainan').AsString;
                                      DM.Qexec.ParamByName('kasir').AsString:=Qcek.fieldbyname('kasir').AsString;
                                      DM.Qexec.ParamByName('nolpp').AsString:=Qcek.fieldbyname('nolpp').AsString;
                                      DM.Qexec.ParamByName('flagbatal').AsString:=Qcek.fieldbyname('flagbatal').AsString;
                                      DM.Qexec.ParamByName('flagaktif').AsString:='1';
                                      DM.Qexec.ParamByName('loketbayar').AsString:=Qcek.fieldbyname('loketbayar').AsString;
                                      DM.Qexec.ParamByName('flagkirim').AsString:='1';
                                      DM.Qexec.ParamByName('tglmulaidenda').AsDate:=Qcek.fieldbyname('tglmulaidenda').AsDateTime;
                                      DM.Qexec.ParamByName('tglmulaidenda2').AsDate:=Qcek.fieldbyname('tglmulaidenda2').AsDateTime;
                                      DM.Qexec.ParamByName('tglmulaidenda3').AsDate:=Qcek.fieldbyname('tglmulaidenda3').AsDateTime;
                                      DM.Qexec.ParamByName('tglmulaidenda4').AsDate:=Qcek.fieldbyname('tglmulaidenda4').AsDateTime;
                                      DM.Qexec.ParamByName('tglmulaidendaperbulan').AsDate:=Qcek.fieldbyname('tglmulaidendaperbulan').AsDateTime;
                                      DM.Qexec.ParamByName('flagdownload').AsString:='1';
                                      DM.Qexec.ParamByName('tgldownload').AsDateTime:=now;
                                      DM.Qexec.ParamByName('userdownload').AsString:=umain.user.Caption;
                                      DM.Qexec.ParamByName('tglbatal').AsDateTime:=Qcek.fieldbyname('tglbatal').AsDateTime;
                                      DM.Qexec.ParamByName('pembacameter').AsString:=Qcek.fieldbyname('pembacameter').AsString;
                                      DM.Qexec.ParamByName('trf_dendatunggakan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan').AsCurrency;
                                      DM.Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan2').AsCurrency;
                                      DM.Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan3').AsCurrency;
                                      DM.Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakan4').AsCurrency;
                                      DM.Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:=Qcek.fieldbyname('trf_dendatunggakanperbulan').AsCurrency;
                                      DM.Qexec.ParamByName('kodeadministrasilain').AsString:=Qcek.fieldbyname('kodeadministrasilain').AsString;
                                      DM.Qexec.ParamByName('kodepemeliharaanlain').AsString:=Qcek.fieldbyname('kodepemeliharaanlain').AsString;
                                      DM.Qexec.ParamByName('koderetribusilain').AsString:=Qcek.fieldbyname('koderetribusilain').AsString;
                                      DM.Qexec.ParamByName('waktu').AsDateTime:=now;
                                      DM.Qexec.ParamByName('kodeblok').AsString:='-';
                                      DM.Qexec.ParamByName('luasrumah').AsCurrency:=0;
                                      DM.Qexec.ParamByName('shift').AsString:=Qcek.fieldbyname('shift').AsString;
                                      //DM.Qexec.ParamByName('trf_denda_berdasarkan_persen').AsString:=Qcek.fieldbyname('trf_denda_berdasarkan_persen').AsString;
                                      DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                      DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                      DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                      DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                      DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah').AsString;
                                      DM.Qexec.Execute;

                                    end;


                                  lastupdate2.date:=Qcek.fieldbyname('waktuupdate').AsDateTime;

                               end;

                               if(Qcek.fieldbyname('flaglunas').AsString='0') and
                               (Qcek.fieldbyname('flagbatal').AsString='1') then
                               begin


                                 // CEK TABLE BAYAR TAHUN
                                 
                                     DM.Qcek.close;
                                     DM.Qcek.SQL.Clear;
                                     DM.Qcek.SQL.Add('show tables like "bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+'"');
                                     DM.Qcek.Open;


                                     if(DM.Qcek.RecordCount=0)then
                                     begin


                                          DM.Qexec.close;
                                          DM.Qexec.SQL.Clear;
                                          DM.Qexec.SQL.Add('create table bayar'+FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime)+' like bayar' );
                                          DM.Qexec.Execute;

                                     end; 

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('delete FROM bayar:tahun where kode=:kode');
                                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                    DM.Qexec.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',Qcek.fieldbyname('tglbayar').AsDateTime));
                                    DM.Qexec.Execute;


                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('replace into piutang select :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil  FROm drd'+Qcek.fieldbyname('periode').AsString+' c WHERE c.nosamb=:nosamb');
                                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                    DM.Qexec.ParamByName('periode').AsString:=Qcek.fieldbyname('periode').AsString;
                                    DM.Qexec.ParamByName('bulan').AsString:=Qcek.fieldbyname('bulan').AsString;
                                    DM.Qexec.ParamByName('nosamb').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                    DM.Qexec.ParamByName('flag').AsString:=Qcek.fieldbyname('flag').AsString;
                                    DM.Qexec.ParamByName('golongan').AsString:=Qcek.fieldbyname('golongan').AsString;
                                    DM.Qexec.ParamByName('namaloket').AsString:=Qcek.fieldbyname('loket').AsString;
                                    DM.Qexec.ParamByName('kodewil').AsString:=Qcek.fieldbyname('kodewil').AsString;
                                    DM.Qexec.ParamByName('namawil').AsString:=Qcek.fieldbyname('wilayah').AsString;
                                    DM.Qexec.Execute;

                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('delete from nonair where nomor=:nomor AND periode=:periode AND noorder=:noorder AND jenis IN ("DENDA","HPS.SCR.AKUTANSI")');
                                    DM.Qexec.ParamByName('nomor').AsString:=Qcek.fieldbyname('nosamb').AsString;
                                    DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',Qcek.fieldbyname('tglbayar').AsDateTime);//Qcek.fieldbyname('periode').AsString;
                                    DM.Qexec.ParamByName('noorder').AsString:=Qcek.fieldbyname('periode').AsString;
                                    DM.Qexec.Execute;

                                    lastupdate2.Date:=Qcek.fieldbyname('waktuupdate').AsDateTime;


                               end;



                               if(Qcek.fieldbyname('flagangsur').AsString='1') then
                               begin


                                    DM.Qexec.close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('UPDATE piutang SET flagangsur="1" where kode=:kode');
                                    DM.Qexec.ParamByName('kode').AsString:=Qcek.fieldbyname('kode').AsString;
                                    DM.Qexec.Execute;

                                    lastupdate2.date:=Qcek.fieldbyname('waktuupdate').AsDateTime;


                               end;

                                  if( Qcek.fieldbyname('flaglunas').AsString='1') and ( Qcek.fieldbyname('flagbatal').AsString='0')then

                                    bayarair:=bayarair+1

                                  else  if( Qcek.fieldbyname('flaglunas').AsString='0') and ( Qcek.fieldbyname('flagbatal').AsString='1')then

                                    batalair:=batalair+1;




                          Progress.IncPartsByOne;
                          Application.ProcessMessages;
                          Qcek.Next;
                      end;
                      

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set last_transaksi_air=:last_transaksi_air WHERE idx="1"');
                  DM.Qexec.ParamByName('last_transaksi_air').AsDateTime:= lastupdate2.date;
                  DM.Qexec.Execute;


                end; 


                //////-------------------------------------------------------



               Progress.Visible:=false;




               if(bayarair>0) or
               (bayarnonair>0) or
               (batalair>0) or
               (batalnonair>0) or
               (bayarlimbah>0) or
               (bayarlltt>0) or
               (batallimbah>0) or
               (batallltt>0)then
               begin



                 
                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('update prosesdownload set aktif="0",user=null WHERE idx="1"');
                  DM.Qexec.Execute;

                       MessageDlg('Info Download : '+char(13)+char(13)+
                       'Bayar Air : '+FormatCurr('#,##0.##',bayarair)+char(13)+
                       'Batal Air : '+FormatCurr('#,##0.##',batalair)+char(13)+
                       '------------------------'+char(13)+
                       'Bayar Non Air : '+FormatCurr('#,##0.##',bayarnonair)+char(13)+
                       'Batal Non Air : '+FormatCurr('#,##0.##',batalnonair)+char(13)+
                       '------------------------'+char(13)+
                       'Bayar Limbah: '+FormatCurr('#,##0.##',bayarlimbah)+char(13)+
                       'Batal Limbah : '+FormatCurr('#,##0.##',batallimbah)+char(13)+
                       '------------------------'+char(13)+
                       'Bayar L2T2: '+FormatCurr('#,##0.##',bayarlltt)+char(13)+
                       'Batal L2T2 : '+FormatCurr('#,##0.##',batallltt)+char(13)+char(13)+
                       'Download Selesai !!', mtInformation, [MbOk], 0);


               end
               else
               begin
                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update prosesdownload set last_transaksi_air=:last_transaksi_air,last_transaksi_nonair=:last_transaksi_nonair,last_download_setoran=:last_download_setoran,');
                      DM.Qexec.SQL.Add('last_transaksi_limbah=:last_transaksi_limbah,last_transaksi_lltt=:last_transaksi_lltt,aktif="0",user=null WHERE idx="1"');
                      DM.Qexec.ParamByName('last_transaksi_nonair').AsDateTime:= tgl2;
                      DM.Qexec.ParamByName('last_transaksi_air').AsDateTime:= tgl1;
                      DM.Qexec.ParamByName('last_download_setoran').AsDateTime:= tgl3;
                      DM.Qexec.ParamByName('last_transaksi_limbah').AsDateTime:= tgl4;
                      DM.Qexec.ParamByName('last_transaksi_lltt').AsDateTime:= tgl5;
                      DM.Qexec.Execute;

                            MessageDlg('Tidak Ada Transaksi Apapun di Unit Pelayanan    '+char(13)+char(13)+
                            ' - Waktu Transaksi Air Terakhir : '+DateTimeToStr(t1.date)+char(13)+
                            ' - Waktu Transaksi Non Air Terakhir : '+DateTimeToStr(t2.date)+char(13)+
                            ' - Waktu Transaksi Limbah Terakhir : '+DateTimeToStr(t4.date)+char(13)+
                            ' - Waktu Transaksi L2T2 Terakhir : '+DateTimeToStr(t5.date), mtInformation, [MbOk], 0);


               end;





                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('COMMIT');
                 DM.Qexec.Execute;





         EXCEPT
         ON E : Exception do
         BEGIN    
                  t1.Date:=tgl1;
                  t2.Date:=tgl2;
                  t3.Date:=tgl3;
                  t4.Date:=tgl4;
                  t5.Date:=tgl5;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('ROLLBACK');
                  DM.Qexec.Execute; 

                   MessageDlg('Terjadi Kesalahan :'+char(13)+char(13)+
                              E.Message, mtError, [MbOk], 0);
         END;
         END;
         
  end;


  FINALLY

    Progress.Visible:=false;  
    DM.Qcek.close;
    DM.Qcek.SQL.Clear;
    DM.Qcek.SQL.Add('select * FROm prosesdownload WHERE idx="1"');
    DM.Qcek.Open;

    t1.date:=DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime;
    t2.date:=DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime;
    t3.date:=DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime;
    t4.date:=DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime;
    t5.date:=DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime;

    tgl1:=DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime;
    tgl2:=DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime;
    tgl3:=DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime;
    tgl4:=DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime;
    tgl5:=DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime;

    lastupdate2.date:=DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime;
    lastupdate1.date:=DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime;
    lastupdate3.date:=DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime;
    lastupdatelimbah.date:=DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime;
    lastupdatelltt.date:=DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime;




    Enabled:=true;
    Umain.host.close;


  END;



end;
procedure TFRlaporan.btnload2Click(Sender: TObject);
begin
  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('select * FROm prosesdownload WHERE idx="1"');
  DM.Qcek.Open;

  t1.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,-2);
  t2.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,-2);
  t3.date:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,-2);
  t4.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,-2);
  t5.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,-2);

  tgl1:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,-2);
  tgl2:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,-2);
  tgl3:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,-2);
  tgl4:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,-2);
  tgl5:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,-2);

  lastupdate2.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_air').AsDateTime,-2);
  lastupdate1.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_nonair').AsDateTime,-2);
  lastupdate3.date:=IncHour(DM.Qcek.Fieldbyname('last_download_setoran').AsDateTime,-2);
  lastupdatelimbah.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_limbah').AsDateTime,-2);
  lastupdatelltt.date:=IncHour(DM.Qcek.Fieldbyname('last_transaksi_lltt').AsDateTime,-2);
end;

end.
