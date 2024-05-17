unit FRAME_wilayah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, Menus, StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, RzPanel, DBAccess,
  MyAccess, MemDS;

type
  TFRwilayah = class(TFrame)
    RzPanel15: TRzPanel;
    RzPanel8: TRzPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    RzPanel2: TRzPanel;
    RzPanel16: TRzPanel;
    koreksiwil: TcxButton;
    tambahwil: TcxButton;
    refreshwil: TcxButton;
    hapuswil: TcxButton;
    RzPanel12: TRzPanel;
    RzPanel18: TRzPanel;
    koreksiarea: TcxButton;
    tambaharea: TcxButton;
    refresharea: TcxButton;
    hapusarea: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel13: TRzPanel;
    Qrayon: TMyQuery;
    DSrayon: TMyDataSource;
    DSwil: TMyDataSource;
    Qwil: TMyQuery;
    Qarea: TMyQuery;
    DSarea: TMyDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    gridrayon: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel3: TRzPanel;
    RzPanel17: TRzPanel;
    koreksirayon: TcxButton;
    tambahrayon: TcxButton;
    refreshrayon: TcxButton;
    hapusrayon: TcxButton;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel11: TRzPanel;
    RzPanel14: TRzPanel;
    koreksiblok: TcxButton;
    tambahblok: TcxButton;
    refreshblok: TcxButton;
    hapusblok: TcxButton;
    Qblok: TMyQuery;
    DSblok: TMyDataSource;
    procedure refreshwilClick(Sender: TObject);
    procedure refreshrayonClick(Sender: TObject);
    procedure refreshareaClick(Sender: TObject);
    procedure cxGridDBTableView4FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tambahwilClick(Sender: TObject);
    procedure koreksiwilClick(Sender: TObject);
    procedure hapuswilClick(Sender: TObject);
    procedure tambahrayonClick(Sender: TObject);
    procedure koreksirayonClick(Sender: TObject);
    procedure hapusrayonClick(Sender: TObject);
    procedure tambahareaClick(Sender: TObject);
    procedure koreksiareaClick(Sender: TObject);
    procedure hapusareaClick(Sender: TObject);
    procedure cxGridDBTableView4CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView5CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView5FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure refreshblokClick(Sender: TObject);
    procedure tambahblokClick(Sender: TObject);
    procedure koreksiblokClick(Sender: TObject);
    procedure cxGridDBTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure hapusblokClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses Module, unitwilayah, Unittrayon, UnitMain, unitarea, unitblok;

{$R *.dfm}

procedure TFRwilayah.refreshwilClick(Sender: TObject);
begin
  Qwil.Close;
  Qwil.SQL.Clear;
  Qwil.SQL.Add('SELECT * FROm wilayah ORDER by CAST(kodewil AS UNSIGNED) ASC');
  Qwil.Open;
end;

procedure TFRwilayah.refreshrayonClick(Sender: TObject);
begin
  if(Qarea.RecordCount>0)then
  begin
    Qrayon.Close;
    Qrayon.SQL.Clear;
    Qrayon.SQL.Add('SELECT * FROm rayon where kodearea=:kodearea ORDER by CAST(koderayon AS UNSIGNED) ASC');
    Qrayon.ParamByName('kodearea').AsString:=Qarea.fieldbyname('kodearea').AsString;
    Qrayon.Open;
  end;
end;

procedure TFRwilayah.refreshareaClick(Sender: TObject);
begin
  if(Qwil.RecordCount>0)then
  begin
    Qarea.Close;
    Qarea.SQL.Clear;
    Qarea.SQL.Add('SELECT * FROm area where kodewil=:kodewil ORDER by CAST(kodearea AS UNSIGNED) ASC');
    Qarea.ParamByName('kodewil').AsString:=Qwil.fieldbyname('kodewil').AsString;
    Qarea.Open;
  end;
end;

procedure TFRwilayah.cxGridDBTableView4FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
refresharea.Click;
end;

procedure TFRwilayah.tambahwilClick(Sender: TObject);
begin
 DM.Xflag:='Tambah';

     if uwil.ShowModal=mrOK then begin
          refreshwil.Click;
     end;
end;

procedure TFRwilayah.koreksiwilClick(Sender: TObject);
begin
if(Qwil.RecordCount>0)then
  begin
      DM.Xflag:='Koreksi';
      DM.Xid:=Qwil.Fieldbyname('id').AsInteger;
      DM.Xkodewil:=Qwil.Fieldbyname('kodewil').AsString;


      uwil.kodewil.text := Qwil.FieldByname('kodewil').AsString;
      uwil.wilayah.text := Qwil.FieldByname('wilayah').AsString;


      if uwil.ShowModal=mrOK then begin
         
          Qwil.SQLRefresh.Clear;
          Qwil.SQLRefresh.Add('SELECT * FROm wilayah  WHERE id=:id');
          Qwil.RefreshRecord;

       end;
  end;;
end;

procedure TFRwilayah.hapuswilClick(Sender: TObject);
begin
if(Qwil.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Wilayah '+Qwil.Fieldbyname('Wilayah').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('DELETE FROM Wilayah WHERE kodewil=:kodewil');
     DM.Qexec.ParamByName('kodewil').AsString:=Qwil.Fieldbyname('kodewil').AsString;
     DM.Qexec.Execute;

     DM.Qexec.close;
     DM.Qexec.SQL.Clear;
     DM.Qexec.SQL.Add('update rayon set kodewil="-",wilayah="-" WHERE kodewil=:kodewil');
     DM.Qexec.ParamByName('kodewil').AsString:=Qwil.Fieldbyname('kodewil').AsString;
     DM.Qexec.Execute;

     DM.uraianlogakses:='Hapus Wilayah ( '+Qwil.FieldByName('Wilayah').AsString+' - '+Qwil.Fieldbyname('kodewil').AsString+ ' )';
     DM.targetlogakses:=Qwil.Fieldbyname('kodewil').AsString;
     DM.logakses;

    refreshwil.Click;

      Exit;
    end
    else begin
      Exit;
    end;
  end;
end;

procedure TFRwilayah.tambahrayonClick(Sender: TObject);
begin
    DM.Xflag:='Tambah';
    DM.xkodearea:=Qarea.Fieldbyname('kodearea').AsString;
    DM.xarea:=Qarea.Fieldbyname('area').AsString;
    DM.xkodewil:=Qwil.Fieldbyname('kodewil').AsString;
    DM.xwilayah:=Qwil.Fieldbyname('wilayah').AsString;
//    Urayon.kodearea.Enabled:=false;
//    Urayon.area.Enabled:=false;



     if Urayon.ShowModal=mrOK then begin
          refreshrayon.Click;
     end;
end;

procedure TFRwilayah.koreksirayonClick(Sender: TObject);
begin
if(Qrayon.RecordCount>0)then
  begin
      DM.Xflag:='Koreksi';
      DM.Xid:=Qrayon.Fieldbyname('id').AsInteger;
      DM.Xkoderayon:=Qrayon.Fieldbyname('koderayon').AsString;
      DM.xkodewil:=Qwil.Fieldbyname('kodewil').AsString;
      DM.xwilayah:=Qwil.Fieldbyname('wilayah').AsString;
      DM.xkodearea:=Qarea.Fieldbyname('kodearea').AsString;
      DM.xarea:=Qarea.Fieldbyname('area').AsString;
      DM.xkodeloket:=Qrayon.Fieldbyname('kodeloket').AsString;
//      Urayon.kodearea.Enabled:=true;
//      Urayon.area.Enabled:=true;



      Urayon.koderayon.text := Qrayon.FieldByname('koderayon').AsString;
      Urayon.rayon.text := Qrayon.FieldByname('namarayon').AsString;
      Urayon.kodeloket.text := Qrayon.FieldByname('kodeloket').AsString;


      if Urayon.ShowModal=mrOK then begin


          refreshrayon.Click;


       end;
  end;
end;

procedure TFRwilayah.hapusrayonClick(Sender: TObject);
begin
 if(Qrayon.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar rayon '+Qrayon.Fieldbyname('namarayon').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      TRY
      Umain.openkoneksi_host;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('DELETE FROM rayon WHERE koderayon=:koderayon');
           Umain.Qhost1.ParamByName('koderayon').AsString:=Qrayon.Fieldbyname('koderayon').AsString;
           Umain.Qhost1.Execute;

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('DELETE FROM rayon WHERE koderayon=:koderayon');
           DM.Qexec.ParamByName('koderayon').AsString:=Qrayon.Fieldbyname('koderayon').AsString;
           DM.Qexec.Execute;

           DM.uraianlogakses:='Hapus Rayon ( '+Qrayon.FieldByName('namarayon').AsString+' - '+Qrayon.Fieldbyname('koderayon').AsString+ ' )';
           DM.targetlogakses:=Qrayon.Fieldbyname('koderayon').AsString;
           DM.logakses;

          refreshrayon.Click;

        except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;

    end
    else
      Exit;



    Umain.host.close;

  end;
end;

procedure TFRwilayah.tambahareaClick(Sender: TObject);
begin
 DM.Xflag:='Tambah';

    DM.xkodewil:=Qwil.Fieldbyname('kodewil').AsString;
    DM.xwilayah:=Qwil.Fieldbyname('wilayah').AsString;
//    Uarea.kodewil.Enabled:=false;
//    Uarea.wilayah.Enabled:=false;



     if Uarea.ShowModal=mrOK then begin
          refresharea.Click;
     end;
end;

procedure TFRwilayah.koreksiareaClick(Sender: TObject);
begin
 if(Qarea.RecordCount>0)then
  begin
      DM.Xflag:='Koreksi';
      DM.Xid:=Qarea.Fieldbyname('id').AsInteger;
      DM.xkodearea:=Qarea.Fieldbyname('kodearea').AsString;
      DM.xkodewil:=Qwil.Fieldbyname('kodewil').AsString;
      DM.xwilayah:=Qwil.Fieldbyname('wilayah').AsString;
//      Uarea.kodewil.Enabled:=true;
//      Uarea.wilayah.Enabled:=true;



      Uarea.kodearea.text := Qarea.FieldByname('kodearea').AsString;
      Uarea.area.text := Qarea.FieldByname('area').AsString;



      if Uarea.ShowModal=mrOK then begin


            refresharea.Click;


       end;
  end;;
end;

procedure TFRwilayah.hapusareaClick(Sender: TObject);
begin
  if(Qarea.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar Area '+Qarea.Fieldbyname('area').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      TRY
      Umain.openkoneksi_host;

          
           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('DELETE FROM area WHERE kodearea=:kodearea');
           DM.Qexec.ParamByName('kodearea').AsString:=Qarea.Fieldbyname('kodearea').AsString;
           DM.Qexec.Execute;


           DM.uraianlogakses:='Hapus Area ( '+Qarea.FieldByName('area').AsString+' - '+Qarea.Fieldbyname('kodearea').AsString+ ' )';
           DM.targetlogakses:=Qarea.Fieldbyname('kodearea').AsString;
           DM.logakses;

          refresharea.Click;

        except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;

    end
    else
      Exit;



    Umain.host.close;

  end;



end;

procedure TFRwilayah.cxGridDBTableView4CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksiwil.Click;
end;

procedure TFRwilayah.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksirayon.Click;
end;

procedure TFRwilayah.cxGridDBTableView5CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksiarea.Click;
end;

procedure TFRwilayah.cxGridDBTableView5FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
if(Qarea.RecordCount>0)then
  begin
    Qrayon.Close;
    Qrayon.SQL.Clear;
    Qrayon.SQL.Add('SELECT * FROm rayon where kodearea=:kodearea ORDER by CAST(koderayon AS UNSIGNED) ASC');
    Qrayon.ParamByName('kodearea').AsString:=Qarea.fieldbyname('kodearea').AsString;
    Qrayon.Open;
  end;
end;

procedure TFRwilayah.refreshblokClick(Sender: TObject);
begin
  if(Qrayon.RecordCount>0)then
  begin
    Qblok.Close;
    Qblok.SQL.Clear;
    Qblok.SQL.Add('SELECT * FROm blok where koderayon=:koderayon ORDER by CAST(kodeblok AS UNSIGNED) ASC');
    Qblok.ParamByName('koderayon').AsString:=Qrayon.fieldbyname('koderayon').AsString;
    Qblok.Open;
  end;

end;

procedure TFRwilayah.tambahblokClick(Sender: TObject);
begin
    DM.Xflag:='Tambah';

    DM.Xkoderayon:=Qrayon.Fieldbyname('koderayon').AsString;
    DM.Xrayon:=Qrayon.Fieldbyname('namarayon').AsString;
//    Ublok.koderayon.Enabled:=false;
//    Ublok.rayon.Enabled:=false;



     if Ublok.ShowModal=mrOK then begin
          refreshblok.Click;
     end;

end;

procedure TFRwilayah.koreksiblokClick(Sender: TObject);
begin
 if(Qblok.RecordCount>0)then
  begin
      DM.Xflag:='Koreksi';
      DM.Xid:=Qblok.Fieldbyname('id').AsInteger;
      DM.xkodeblok:=Qblok.Fieldbyname('kodeblok').AsString;
      DM.Xkoderayon:=Qrayon.Fieldbyname('koderayon').AsString;
      DM.xrayon:=Qrayon.Fieldbyname('namarayon').AsString;
//      Ublok.koderayon.Enabled:=true;
//      Ublok.rayon.Enabled:=true;



      Ublok.kodeblok.text := Qblok.FieldByname('kodeblok').AsString;
      Ublok.blok.text := Qblok.FieldByname('namablok').AsString;



      if Ublok.ShowModal=mrOK then begin


            refreshblok.Click;


       end;
  end;;
end;

procedure TFRwilayah.cxGridDBTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if(Qrayon.RecordCount>0)then
  begin
    Qblok.Close;
    Qblok.SQL.Clear;
    Qblok.SQL.Add('SELECT * FROm blok where koderayon=:koderayon ORDER by CAST(kodeblok AS UNSIGNED) ASC');
    Qblok.ParamByName('koderayon').AsString:=Qrayon.fieldbyname('koderayon').AsString;
    Qblok.Open;
  end;

end;

procedure TFRwilayah.hapusblokClick(Sender: TObject);
begin
 if(Qblok.RecordCount>0)then
  begin
    if MessageDlg('Yakin hapus daftar blok '+Qblok.Fieldbyname('namablok').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin

      TRY
      Umain.openkoneksi_host;

           Umain.Qhost1.close;
           Umain.Qhost1.SQL.Clear;
           Umain.Qhost1.SQL.Add('DELETE FROM blok WHERE kodeblok=:kodeblok');
           Umain.Qhost1.ParamByName('kodeblok').AsString:=Qblok.Fieldbyname('kodeblok').AsString;
           Umain.Qhost1.Execute;

           DM.Qexec.close;
           DM.Qexec.SQL.Clear;
           DM.Qexec.SQL.Add('DELETE FROM blok WHERE kodeblok=:kodeblok');
           DM.Qexec.ParamByName('kodeblok').AsString:=Qblok.Fieldbyname('kodeblok').AsString;
           DM.Qexec.Execute;

           DM.uraianlogakses:='Hapus Blok ( '+Qblok.FieldByName('namablok').AsString+' - '+Qblok.Fieldbyname('kodeblok').AsString+ ' )';
           DM.targetlogakses:=Qblok.Fieldbyname('kodeblok').AsString;
           DM.logakses;

          refreshblok.Click;

        except ON E:Exception do
        begin
                MessageDlg('Terjadi Kesalahan !! '+char(13)+
                E.Message, mtWarning, [mbOK], 0);
           end;
        end;

    end
    else
      Exit;



    Umain.host.close;

  end;
end;
procedure TFRwilayah.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
koreksiblok.Click;
end;

end.
