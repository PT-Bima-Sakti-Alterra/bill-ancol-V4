unit FRAME_loket;

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
  dxSkinOffice2013White, ActnList, Menus, cxButtons;
type
  TFRloket = class(TFrame)
    Qloket: TMyQuery;
    DSloket: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qhost: TMyQuery;
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel7: TRzPanel;
    cxGrid1: TcxGrid;
    grid: TcxGridDBTableView;
    gridid: TcxGridDBColumn;
    gridColumn1: TcxGridDBColumn;
    gridkelainan: TcxGridDBColumn;
    gridColumn3: TcxGridDBColumn;
    gridColumn4: TcxGridDBColumn;
    gridColumn5: TcxGridDBColumn;
    gridColumn8: TcxGridDBColumn;
    gridColumn9: TcxGridDBColumn;
    gridColumn6: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gridColumn2: TcxGridDBColumn;
    RzPanel18: TRzPanel;
    koreksi: TcxButton;
    tambah: TcxButton;
    refresh: TcxButton;
    hapus: TcxButton;
    gridaktif: TcxGridDBColumn;
    RzPanel10: TRzPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure refreshClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure koreksiClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure gridCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
  end;

implementation

{$R *.dfm} uses Module,unitmain, unitTloket;

procedure TFRloket.akses();
begin

  if(umain.olah_data_unit<>'1')then
  begin

    tambah.Enabled:=false;
    koreksi.Enabled:=false;
    hapus.Enabled:=false; 
    
  end;
 
end;

procedure TFRloket.refreshClick(Sender: TObject);
begin
Qloket.close;
Qloket.SQL.Clear;
Qloket.SQL.Add('select l.*,w.wilayah from loket l LEFT JOIN wilayah w ON l.kodewillokasi=w.kodewil ORDER BY CAST(l.kodeloket AS UNSIGNED) ASC');
Qloket.Open;
end;

procedure TFRloket.tambahClick(Sender: TObject);
begin


   DM.Xflag:='Tambah';
   utloket.kodeloket.Enabled:=true;
    if utloket.showmodal=mrOK then
    begin
        Refresh.Click;
    end;
 


end;

procedure TFRloket.koreksiClick(Sender: TObject);
begin

  if(Qloket.RecordCount>0)then
  begin
    DM.Xflag:='Koreksi';
    utloket.kodeloket.text:=Qloket.fieldbyname('kodeloket').AsString;
    utloket.loket.text:=Qloket.fieldbyname('loket').AsString;
    utloket.alamat.text:=Qloket.fieldbyname('alamat').AsString;
    utloket.nohp.text:=Qloket.fieldbyname('nohp').AsString;
    utloket.notelp.text:=Qloket.fieldbyname('notelp').AsString;
    utloket.pj.text:=Qloket.fieldbyname('penanggungjawab').AsString;
    utloket.loketlama:=Qloket.fieldbyname('loket').AsString;
    utloket.serial.Text:=Qloket.fieldbyname('serialgate').AsString;
    utloket.status.ItemIndex:=StrToInt(Qloket.fieldbyname('aktif').AsString);
    utloket.flagMitra.ItemIndex:=StrToInt(Qloket.fieldbyname('flagMitra').AsString);
    utloket.admMitra.Value:=Qloket.fieldbyname('admmitra').AsCurrency;

    DM.Xid:=Qloket.fieldbyname('id').AsInteger;
    DM.Xkodeloket:=Qloket.fieldbyname('kodeloket').AsString;

   
    DM.Xkodewillokasi:=Qloket.fieldbyname('kodewillokasi').AsString;  

   
    if utloket.showmodal=mrOK then
    begin
        Qloket.SQLRefresh.Clear;
        Qloket.SQLRefresh.Add('select l.*,w.wilayah from loket l LEFT JOIN wilayah w ON l.kodewillokasi=w.kodewil WHERE l.id=:id');
        Qloket.RefreshRecord;

    end;
  end;


end;

procedure TFRloket.hapusClick(Sender: TObject);
begin


  if not Qloket.Eof then
    begin
      if MessageDlg('Yakin Akan Menghapus Loket ini ?',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin

       TRY
        umain.openkoneksi_host;



          Umain.Qhost1.Close;
          Umain.Qhost1.SQL.Clear;
          Umain.Qhost1.SQL.Add('delete from loket where kodeloket=:kodeloket');
          Umain.Qhost1.ParamByName('kodeloket').AsString := Qloket.fieldbyname('kodeloket').AsString;
          Umain.Qhost1.Execute;  

          DM.Qexec.Close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('delete from loket where id=:id');
          DM.Qexec.ParamByName('id').AsInteger := Qloket.fieldbyname('id').AsInteger;
          DM.Qexec.Execute;




        Qloket.Refresh;


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

procedure TFRloket.gridCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if koreksi.Enabled=true then
    koreksi.Click
   else
     MessageDlg('Akses Ditolak !!', mtInformation, [mbOk], 0);
end;

procedure TFRloket.gridCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gridaktif.Index], varstring)='0') then
    BEGIN
      IF (grid.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
        //ACanvas.Canvas.Brush.Color :=  clYellow;
        ACanvas.Canvas.Font.Color := clBlue;
        ACanvas.Canvas.Font.Style := [fsStrikeOut];
      END;
    end;

end;

end.
