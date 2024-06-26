unit FRAME_lainnya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxLabel,
  ExtCtrls, RzPanel, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton,
  ActnList, MemDS, DBAccess, MyAccess, Menus, StdCtrls,
  cxButtons;

type
  TFRlainnya = class(TFrame)
    Dmerk: TMyDataSource;
    Qmerk: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    DSsumberair: TMyDataSource;
    Qsumberair: TMyQuery;
    Qkolektif: TMyQuery;
    DSkolektif: TMyDataSource;
    DSkepemilikan: TMyDataSource;
    Qkepemilikan: TMyQuery;
    Qkelainan: TMyQuery;
    Qkelainanid: TIntegerField;
    Qkelainankelainan: TStringField;
    Dkelainan: TMyDataSource;
    Qpejabat: TMyQuery;
    Dpejabat: TMyDataSource;
    Qset: TMyQuery;
    DSset: TMyDataSource;
    Action3: TAction;
    RzPanel1: TRzPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    RzPanel2: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1merk: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    RzPanel6: TRzPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    RzPanel11: TRzPanel;
    cxTabSheet4: TcxTabSheet;
    RzPanel15: TRzPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    RzPanel26: TRzPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1nik1: TcxGridDBColumn;
    cxGrid1DBTableView1nama1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1nik2: TcxGridDBColumn;
    cxGrid1DBTableView1nama2: TcxGridDBColumn;
    cxGridDBTableView4Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1nik3: TcxGridDBColumn;
    cxGrid1DBTableView1nama3: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    RzPanel22: TRzPanel;
    RzToolbar6: TRzToolbar;
    refresh_baca: TRzToolButton;
    tambah_baca: TRzToolButton;
    koreksi_baca: TRzToolButton;
    hapus_baca: TRzToolButton;
    RzSpacer21: TRzSpacer;
    RzSpacer22: TRzSpacer;
    RzSpacer23: TRzSpacer;
    RzSpacer24: TRzSpacer;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    tabkhusus: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7DBTableView1Column1: TcxGridDBColumn;
    cxGrid7DBTableView1Column2: TcxGridDBColumn;
    cxGrid7DBTableView1Column3: TcxGridDBColumn;
    cxGrid7DBTableView1Column4: TcxGridDBColumn;
    cxGrid7DBTableView1Column5: TcxGridDBColumn;
    cxGrid7DBTableView1Column6: TcxGridDBColumn;
    cxGrid7DBTableView1Column7: TcxGridDBColumn;
    cxGrid7DBTableView1Column8: TcxGridDBColumn;
    cxGrid7DBTableView1Column9: TcxGridDBColumn;
    cxGrid7DBTableView1Column10: TcxGridDBColumn;
    cxGrid7DBTableView1Column11: TcxGridDBColumn;
    cxGrid7Level1: TcxGridLevel;
    RzPanel16: TRzPanel;
    koreksi_merk: TcxButton;
    tambah_merk: TcxButton;
    refresh_merk: TcxButton;
    hapus_merk: TcxButton;
    RzPanel3: TRzPanel;
    koreksi_sumber: TcxButton;
    tambah_sumber: TcxButton;
    refresh_sumber: TcxButton;
    hapus_sumber: TcxButton;
    RzPanel4: TRzPanel;
    koreksi_kol: TcxButton;
    tambah_kol: TcxButton;
    refresh_kol: TcxButton;
    hapus_kol: TcxButton;
    RzPanel8: TRzPanel;
    koreksi_kep: TcxButton;
    tambah_kep: TcxButton;
    refresh_kep: TcxButton;
    hapus_kep: TcxButton;
    RzPanel9: TRzPanel;
    koreksi_lap: TcxButton;
    tambah_lap: TcxButton;
    refresh_lap: TcxButton;
    hapus_lap: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1kelainan: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel10: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel12: TRzPanel;
    RzPanel13: TRzPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure refresh_merkClick(Sender: TObject);
    procedure tambah_merkClick(Sender: TObject);
    procedure koreksi_merkClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapus_merkClick(Sender: TObject);
    procedure refresh_sumberClick(Sender: TObject);
    procedure tambah_sumberClick(Sender: TObject);
    procedure koreksi_sumberClick(Sender: TObject);
    procedure hapus_sumberClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure refresh_kolClick(Sender: TObject);
    procedure tambah_kolClick(Sender: TObject);
    procedure koreksi_kolClick(Sender: TObject);
    procedure hapus_kolClick(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure refresh_kepClick(Sender: TObject);
    procedure tambah_kepClick(Sender: TObject);
    procedure koreksi_kepClick(Sender: TObject);
    procedure cxGridDBTableView3CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure hapus_kepClick(Sender: TObject);
    procedure refresh_lapClick(Sender: TObject);
    procedure tambah_lapClick(Sender: TObject);
    procedure koreksi_lapClick(Sender: TObject);
    procedure hapus_lapClick(Sender: TObject);
    procedure cxGridDBTableView4CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure refresh_bacaClick(Sender: TObject);
    procedure hapus_bacaClick(Sender: TObject);
    procedure cxGridDBTableView5CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
  end;

implementation

{$R *.dfm}  uses Module,Unitmain, unittmerk, unittsumberair, Unittkolektif,
  unittkepemilikan, unittpejabat;


procedure TFRlainnya.akses();
begin

  if(Umain.olah_data_lainnya<>'1')then
  begin

    tambah_merk.Enabled:=false;
    tambah_sumber.Enabled:=false;
    tambah_kol.Enabled:=false;
    tambah_kep.Enabled:=false;
    tambah_lap.Enabled:=false;
    tambah_baca.Enabled:=false;


    koreksi_merk.Enabled:=false;
    koreksi_sumber.Enabled:=false;
    koreksi_kol.Enabled:=false;
    koreksi_kep.Enabled:=false;
    koreksi_lap.Enabled:=false;
    koreksi_baca.Enabled:=false;


    hapus_merk.Enabled:=false;
    hapus_sumber.Enabled:=false;
    hapus_kol.Enabled:=false;
    hapus_kep.Enabled:=false;
    hapus_lap.Enabled:=false;
    hapus_baca.Enabled:=false;


   

  end;


  cxPageControl1.HideTabs:=true;
  cxPageControl1.Visible:=false;




refresh_merk.Click;
refresh_sumber.Click;
refresh_kol.Click;
refresh_kep.Click;
refresh_lap.Click;
refresh_baca.Click;

end;

procedure TFRlainnya.refresh_merkClick(Sender: TObject);
begin

 Qmerk.Close;
 Qmerk.SQL.Clear;
 Qmerk.SQL.Add('select * FROM merkmeter ORDER By merk ASC');
 Qmerk.Open;

end;

procedure TFRlainnya.tambah_merkClick(Sender: TObject);
begin

    DM.Xflag:='Tambah';
    if utmerk.ShowModal=mrOK then begin
        refresh_merk.Click;
    end;
    
end;

procedure TFRlainnya.koreksi_merkClick(Sender: TObject);
begin
    if(Qmerk.RecordCount>0)then
    begin
    
    DM.Xflag:='Koreksi';
    DM.Xid:=Qmerk.Fieldbyname('id').AsInteger;
    DM.Xmerk:=Qmerk.Fieldbyname('merk').AsString;
    utmerk.merk.Text:= Qmerk.Fieldbyname('merk').AsString;

      if utmerk.ShowModal=mrOK then
      begin

               Qmerk.SQLRefresh.Clear;
               Qmerk.SQLRefresh.Add('select * FROm merkmeter WHERE id=:id');
               Qmerk.RefreshRecord;

      end;
   end;
   
end;

procedure TFRlainnya.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if(koreksi_merk.Enabled=true)then
  begin
    koreksi_merk.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.hapus_merkClick(Sender: TObject);
begin
if(Qmerk.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar merk meter '+Qmerk.Fieldbyname('merk').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


            TRY
            Umain.openkoneksi_host;


            if(umain.host.Connected=true)then
            begin

               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('DELETE FROM merkmeter WHERE merk=:merk');
               Umain.Qhost1.ParamByName('merk').asstring:=Qmerk.Fieldbyname('merk').asstring;
               Umain.Qhost1.Execute;

               Umain.Qhost1.close;
               Umain.Qhost1.SQL.Clear;
               Umain.Qhost1.SQL.Add('update pelanggan set merkmeter="-",waktuupdate=now() WHERE merkmeter=:merk');
               Umain.Qhost1.ParamByName('merk').AsString:=Qmerk.Fieldbyname('merk').AsString;
               Umain.Qhost1.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('DELETE FROM merkmeter WHERE id=:id');
               DM.Qexec.ParamByName('id').AsInteger:=Qmerk.Fieldbyname('id').AsInteger;
               DM.Qexec.Execute;

               DM.uraianlogakses:='Hapus Merk Meter ( '+Qmerk.FieldByName('merk').AsString+' )';
               DM.targetlogakses:= Qmerk.FieldByName('merk').AsString;
               DM.logakses;
               
               Umain.host.close;

               DM.uraianlogakses:='Hapus merk '+Qmerk.Fieldbyname('merk').AsString;
               DM.targetlogakses:=Qmerk.Fieldbyname('merk').AsString;
               DM.logakses;


               Qmerk.Refresh;

            end
            else
             MessageDlg('Maaf, Koneksi Tidak Terhubung dengan Master Cloud !!', mtInformation, [mbOK], 0);


            except ON E:Exception do
            begin
                    Umain.host.close;
                    MessageDlg('Terjadi Kesalahan !! '+char(13)+
                    E.Message, mtWarning, [mbOK], 0);
               end;
            end;

         Umain.host.close;
    end
    else
      Exit; 
  end;

  Umain.host.close;

end;

procedure TFRlainnya.refresh_sumberClick(Sender: TObject);
begin
 Qsumberair.Close;
 Qsumberair.SQL.Clear;
 Qsumberair.SQL.Add('select * FROM sumberair ORDER By sumberair ASC');
 Qsumberair.Open;
end;

procedure TFRlainnya.tambah_sumberClick(Sender: TObject);
begin
 DM.Xkey:='Tambah';
  if utsumberair.ShowModal=mrOk then
  begin
      refresh_sumber.Click;
  end;
end;

procedure TFRlainnya.koreksi_sumberClick(Sender: TObject);
begin

if(Qsumberair.RecordCount>0)then
begin
  DM.Xkey:='Koreksi';
  utsumberair.sumberair.text:=Qsumberair.fieldbyname('sumberair').asstring;
  DM.Xsumberairlama:=Qsumberair.fieldbyname('sumberair').asstring;
  DM.Xid:=Qsumberair.fieldbyname('id').AsInteger;
  if utsumberair.ShowModal=mrOk then
  begin
       Qsumberair.SQLRefresh.Clear;
       Qsumberair.SQLRefresh.Add('select * FROm sumberair WHERE id=:id');
       Qsumberair.RefreshRecord;
  end;
end;


end;

procedure TFRlainnya.hapus_sumberClick(Sender: TObject);
begin
 if not Qsumberair.Eof then
  begin
    if MessageDlg('Yakin Akan Menghapus Sumber Air "'+Qsumberair.fieldbyname('sumberair').asstring+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin

        TRY
        Umain.openkoneksi_host;

          IF (umain.host.Connected=true)then
          begin

              with dm do
              begin

                Umain.Qhost1.Close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('delete from sumberair where sumberair=:sumberair');
                Umain.Qhost1.ParamByName('sumberair').AsString :=Qsumberair.fieldbyname('sumberair').asstring;
                Umain.Qhost1.Execute;

                Qexec.Close;
                Qexec.SQL.Clear;
                Qexec.SQL.Add('delete from sumberair where sumberair=:sumberair');
                Qexec.ParamByName('sumberair').AsString := Qsumberair.fieldbyname('sumberair').asstring;
                Qexec.Execute;

                
                DM.uraianlogakses:='Hapus sumber air '+Qsumberair.fieldbyname('sumberair').asstring;
                DM.targetlogakses:=Qsumberair.fieldbyname('sumberair').asstring;
                DM.logakses;

              end;

              umain.host.close;
              Qsumberair.Refresh;


          end
        else 
        MessageDlg('Maaf, Koneksi Tidak Terhubung dengan Master Cloud !!', mtInformation, [mbOK], 0);

         except ON E:Exception do
        begin
                umain.host.close;
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;

    end;
  end;

  Umain.host.close;
end;

procedure TFRlainnya.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if(koreksi_sumber.Enabled=true)then
  begin
    koreksi_sumber.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.refresh_kolClick(Sender: TObject);
begin
Qkolektif.close;
Qkolektif.SQL.Clear;
Qkolektif.SQL.add('select * FROm kolektif order by CAST(kodekolektif AS UNSIGNED) ASC');
Qkolektif.Open;
end;

procedure TFRlainnya.tambah_kolClick(Sender: TObject);
begin
  DM.Xflag:='Tambah';
  utkolektif.kode.Enabled:=true;
  if utkolektif.ShowModal=mrOK then begin
    refresh_kol.Click;
  end;
end;

procedure TFRlainnya.koreksi_kolClick(Sender: TObject);
begin
if(Qkolektif.RecordCount>0)then
  begin
  
    DM.Xflag:='Koreksi';
    utkolektif.kode.Enabled:=false;
    DM.Xid:=Qkolektif.Fieldbyname('id').AsInteger;
    DM.Xkodekolektif:=Qkolektif.Fieldbyname('kodekolektif').AsString;
    utkolektif.kode.Text:= Qkolektif.Fieldbyname('kodekolektif').AsString;
    utkolektif.kolektif.Text:= Qkolektif.Fieldbyname('kolektif').AsString;
    utkolektif.ket.Text:= Qkolektif.Fieldbyname('ket').AsString;
    utkolektif.alamat.Text:= Qkolektif.Fieldbyname('alamat').AsString;   
    
      if utkolektif.ShowModal=mrOK then begin
      
                Qkolektif.SQLRefresh.Clear;
                Qkolektif.SQLRefresh.Add('SELECT * FROM kolektif WHERE id=:id');
                Qkolektif.RefreshRecord;
      end;
  end;
  
end;

procedure TFRlainnya.hapus_kolClick(Sender: TObject);
begin
if(Qkolektif.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar kolektif '+Qkolektif.Fieldbyname('kolektif').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


    TRY
    Umain.openkoneksi_host;

     if(umain.host.Connected=true)then
     begin


     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM kolektif WHERE kodekolektif=:kodekolektif');
     Umain.Qhost1.ParamByName('kodekolektif').asstring:=Qkolektif.Fieldbyname('kodekolektif').asstring;
     Umain.Qhost1.Execute;

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('update pelanggan set kodekolektif="-" WHERE kodekolektif=:kodekolektif');
     Umain.Qhost1.ParamByName('kodekolektif').AsString:=Qkolektif.Fieldbyname('kodekolektif').AsString;
     Umain.Qhost1.Execute;


     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM kolektif WHERE id=:id');
     DM.Qexec.ParamByName('id').AsInteger:=Qkolektif.Fieldbyname('id').AsInteger;
     DM.Qexec.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('update pelanggan set kodekolektif="-" WHERE kodekolektif=:kodekolektif');
     DM.Qexec.ParamByName('kodekolektif').AsString:=Qkolektif.Fieldbyname('kodekolektif').AsString;
     DM.Qexec.Execute;

     DM.uraianlogakses:='Hapus Kolektif ( '+Qkolektif.FieldByName('kolektif').AsString+' - '+Qkolektif.Fieldbyname('kodekolektif').AsString+' )';
     DM.targetlogakses:= Qkolektif.FieldByName('kolektif').AsString;
     DM.logakses;


     Qkolektif.Refresh;


     end
    else
    MessageDlg('Maaf, Koneksi Tidak Terhubung dengan Master Cloud !!', mtInformation, [mbOK], 0);


      except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;
        
         Umain.host.close;
    end
    else
      Exit; 
  end;

  Umain.host.close;
end;

procedure TFRlainnya.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if(koreksi_kol.Enabled=true)then
  begin
    koreksi_kol.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.refresh_kepClick(Sender: TObject);
begin
 Qkepemilikan.Close;
 Qkepemilikan.SQL.Clear;
 Qkepemilikan.SQL.Add('select * FROM kepemilikan ORDER By kepemilikanbangunan ASC');
 Qkepemilikan.Open;
 
end;

procedure TFRlainnya.tambah_kepClick(Sender: TObject);
begin
 DM.Xflag:='Tambah';
        if utkepemilikan.ShowModal=mrOK then begin
                  refresh_kep.Click;
               end;
end;

procedure TFRlainnya.koreksi_kepClick(Sender: TObject);
begin
 if(Qkepemilikan.RecordCount>0)then
  begin
    DM.Xflag:='Koreksi';

    DM.Xkepemilikan:=Qkepemilikan.Fieldbyname('kepemilikanbangunan').AsString;
    utkepemilikan.kepemilikan.Text:= Qkepemilikan.Fieldbyname('kepemilikanbangunan').AsString;
    DM.Xid:=Qkepemilikan.Fieldbyname('id').AsInteger;

      if utkepemilikan.ShowModal=mrOK then begin

          Qkepemilikan.SQLRefresh.Clear;
          Qkepemilikan.SQLRefresh.Add('select * FROm kepemilikan WHERE id=:id');
          Qkepemilikan.RefreshRecord;
          
      end;
  end;
end;

procedure TFRlainnya.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if(koreksi_kep.Enabled=true)then
  begin
    koreksi_kep.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.hapus_kepClick(Sender: TObject);
begin
if(Qkepemilikan.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar kepemilikan '+Qkepemilikan.Fieldbyname('kepemilikanbangunan').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin


    TRY
    Umain.openkoneksi_host;

     Umain.Qhost1.close;
     Umain.Qhost1.SQL.Clear;
     Umain.Qhost1.SQL.Add('DELETE FROM kepemilikan WHERE kepemilikanbangunan=:kepemilikanbangunan');
     Umain.Qhost1.ParamByName('kepemilikanbangunan').asstring:=Qkepemilikan.Fieldbyname('kepemilikanbangunan').asstring;
     Umain.Qhost1.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM kepemilikan WHERE kepemilikanbangunan=:kepemilikanbangunan');
     DM.Qexec.ParamByName('kepemilikanbangunan').AsString:=Qkepemilikan.Fieldbyname('kepemilikanbangunan').AsString;
     DM.Qexec.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('update pelanggan set kepemilikanbangunan="-" WHERE kepemilikanbangunan=:kepemilikanbangunan');
     DM.Qexec.ParamByName('kepemilikanbangunan').AsString:=Qkepemilikan.Fieldbyname('kepemilikanbangunan').AsString;
     DM.Qexec.Execute;

     DM.uraianlogakses:='Hapus Kepemilikan ( '+Qkepemilikan.FieldByName('kepemilikanbangunan').AsString+' )';
     DM.targetlogakses:= Qkepemilikan.FieldByName('kepemilikanbangunan').AsString;
     DM.logakses;

      Qkepemilikan.Refresh;


      except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;
        
         Umain.host.close;
    end
    else
      Exit; 
  end;

  Umain.host.close;

end;

procedure TFRlainnya.refresh_lapClick(Sender: TObject);
begin
  Qpejabat.Close;
  Qpejabat.SQL.Clear;
  Qpejabat.SQL.Add('select * FROM paraf ORDER BY kode ASC');
  Qpejabat.Open;
end;

procedure TFRlainnya.tambah_lapClick(Sender: TObject);
begin


  DM.Xflag:='Tambah';

      ftambahpejabat.kodeparaf.Enabled:=true;
   if ftambahpejabat.ShowModal=MrOk then
    begin

     //refresh_lap.Click;

    end;
end;

procedure TFRlainnya.koreksi_lapClick(Sender: TObject);
begin
  if(Qpejabat.RecordCount>0)then
  begin
    DM.Xflag:='Koreksi';
    ftambahpejabat.Caption := 'Koreksi Data';
    ftambahpejabat.ok.Caption := '&Koreksi';
    ftambahpejabat.kodeparaf.Text := Qpejabat.fieldbyname('kode').AsString;
    ftambahpejabat.kode := Qpejabat.fieldbyname('kode').AsString;
    ftambahpejabat.nik1.Text := Qpejabat.fieldbyname('nik1').AsString;
    ftambahpejabat.nama1.Text := Qpejabat.fieldbyname('nama1').AsString;
    ftambahpejabat.nik2.Text := Qpejabat.fieldbyname('nik2').AsString;
    ftambahpejabat.nama2.Text := Qpejabat.fieldbyname('nama2').AsString;
    ftambahpejabat.nik3.Text := Qpejabat.fieldbyname('nik3').AsString;
    ftambahpejabat.nama3.Text := Qpejabat.fieldbyname('nama3').AsString;
    ftambahpejabat.jab1.Text := Qpejabat.fieldbyname('jab1').AsString;
    ftambahpejabat.jab2.Text := Qpejabat.fieldbyname('jab2').AsString;
    ftambahpejabat.jab3.Text := Qpejabat.fieldbyname('jab3').AsString;
    ftambahpejabat.ket1.Text := Qpejabat.fieldbyname('ket1').AsString;
    ftambahpejabat.ket2.Text := Qpejabat.fieldbyname('ket2').AsString;
    ftambahpejabat.ket3.Text := Qpejabat.fieldbyname('ket3').AsString;
    
    if ftambahpejabat.ShowModal=MrOk then
    begin

      Qpejabat.SQLRefresh.Clear;
      Qpejabat.SQLRefresh.Add('select * from paraf where kode=:kode');
      Qpejabat.RefreshRecord;

    end;
  end;
end;

procedure TFRlainnya.hapus_lapClick(Sender: TObject);
begin
if(Qpejabat.RecordCount>0)then
begin
    if MessageDlg('Yakin Akan Menghapus Data TTD Ini?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin

      TRY
      Umain.openkoneksi_host;


            Umain.Qhost1.Close;
            Umain.Qhost1.SQL.Clear;
            Umain.Qhost1.SQL.Add('delete from paraf where kode=:kode');
            Umain.Qhost1.ParamByName('kode').AsString := Qpejabat.fieldbyname('kode').AsString;
            Umain.Qhost1.Execute;

            DM.Qexec.Close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('delete from paraf where kode=:kode');
            DM.Qexec.ParamByName('kode').AsString := Qpejabat.fieldbyname('kode').AsString;
            DM.Qexec.Execute;

            Qpejabat.Refresh;

       except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;


    end;
  end;

  Umain.host.close;

end;

procedure TFRlainnya.cxGridDBTableView4CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if(koreksi_lap.Enabled=true)then
  begin
    koreksi_lap.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.refresh_bacaClick(Sender: TObject);
begin
  Qkelainan.Close;
  Qkelainan.SQL.Clear;
  Qkelainan.SQL.Add('select * FROM kelainan');
  Qkelainan.Open;
end;

procedure TFRlainnya.hapus_bacaClick(Sender: TObject);
begin
 if not Qkelainan.Eof then
  begin
    if MessageDlg('Yakin Akan Menghapus Kelainan "'+Qkelainankelainan.Value+'" ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      with dm do
      begin
        Qexec.Close;
        Qexec.SQL.Clear;
        Qexec.SQL.Add('delete from kelainan where id=:id');
        Qexec.ParamByName('id').AsInteger := Qkelainanid.Value;
        Qexec.Execute;
      end;
      Qkelainan.Refresh;
    end;
  end;
end;

procedure TFRlainnya.cxGridDBTableView5CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if(koreksi_baca.Enabled=true)then
  begin
    koreksi_baca.Click;
  end
  else
  begin
    MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
  end;
end;

procedure TFRlainnya.Action3Execute(Sender: TObject);
begin

tabkhusus.TabVisible:=true;
Qset.close;
Qset.SQL.Clear;
Qset.SQL.Add('select * FROM pengaturan');
Qset.Open;

end;

end.
