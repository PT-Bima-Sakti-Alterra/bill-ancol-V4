unit unitterbitkan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzButton, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS,
  cxCurrencyEdit, ComCtrls, RzDTP, cxCheckBox, ActnList,
  dxSkinOffice2013White, dxSkiniMaginary, cxImageComboBox, Menus, StdCtrls,
  cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxmdaset;

type
  Tuterbitkan = class(TForm)
    Qpel: TMyQuery;
    DSpel: TMyDataSource;
    Qexec: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    StringField10: TStringField;
    Qpelmain: TMyQuery;
    periode: TRzDateTimePicker;
    Qcek: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qtabel: TMyQuery;
    Qangsuran: TMyQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    RzPanel1: TRzPanel;
    Gridpel: TcxGrid;
    gtvpel: TcxGridDBTableView;
    gtvpelColumn6: TcxGridDBColumn;
    gtvpelidpelanggan: TcxGridDBColumn;
    gtvpelnama: TcxGridDBColumn;
    gtvpelkodegol: TcxGridDBColumn;
    gtvpelColumn5: TcxGridDBColumn;
    gtvpelkoderayon: TcxGridDBColumn;
    gtvpelalamat: TcxGridDBColumn;
    gtvpelColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel2: TRzPanel;
    cxButton1: TcxButton;
    refresh: TcxButton;
    info: TRzPanel;
    cxButton2: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    gtvpelColumn11: TcxGridDBColumn;
    gtvpelColumn12: TcxGridDBColumn;
    Qdiameter: TMyQuery;
    Qgol: TMyQuery;
    data_: TdxMemData;
    data_nosamb: TStringField;
    data_nama: TStringField;
    data_alamat: TStringField;
    data_kodegol: TStringField;
    data_kodediameter: TStringField;
    data_koderayon: TStringField;
    data_statuspel: TStringField;
    data_pilih: TStringField;
    cxButton3: TcxButton;
    QcekHost: TMyQuery;
    QgolIPL: TMyQuery;
    data_kodeipl: TStringField;
    gtvpelColumn1: TcxGridDBColumn;
    procedure gtvpelCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gtvpelCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action2Execute(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  uterbitkan: Tuterbitkan;

implementation

{$R *.dfm} uses Module, unitloading;

procedure Tuterbitkan.gtvpelCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpelColumn7.Index], varstring)='1')  then
    BEGIN
    IF
    (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
        ACanvas.Canvas.Brush.Color :=  TColor(clyellow);
    END;
    end
   
     ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpelColumn11.Index], varString)='Non Aktif') then
    BEGIN
    IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    END;
    end;
end;

procedure Tuterbitkan.gtvpelCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (data_.RecordCount>0)then
  begin

      if(data_pilih.AsString='0')then
      begin

      data_.Edit;
      data_pilih.AsString:='1';
      data_.Post;

      end
      else
      begin

      data_.Edit;
      data_pilih.AsString:='0';
      data_.Post;


      end;

  end;
end;

procedure Tuterbitkan.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tuterbitkan.refreshClick(Sender: TObject);
var
i:integer;
begin

  data_.Close;

  Qexec.close;
  Qexec.SQl.Clear;
  Qexec.SQL.add('UPDATE `pelanggan` SET tglputus=NULL WHERE STATUS<>"0"');
  Qexec.Execute;

  Qpel.close;
  Qpel.SQl.Clear;
  Qpel.SQL.add(Qpelmain.SQLRefresh.Text);
  Qpel.ParamByName('periode').asinteger:=StrToInt(FormatDateTime('YYYYMM',periode.Date));
  Qpel.Open;

  data_.Open;

  for i:=1  to Qpel.recordcount  do
  begin

      data_.Append;
      data_nosamb.AsString:=Qpel.fieldbyname('nosamb').asstring;
      data_nama.AsString:=Qpel.fieldbyname('nama').asstring;
      data_alamat.AsString:=Qpel.fieldbyname('alamat').asstring;
      data_kodegol.AsString:=Qpel.fieldbyname('kodegol').asstring;
      data_kodediameter.AsString:=Qpel.fieldbyname('kodediameter').asstring;
      data_kodeipl.AsString:=Qpel.fieldbyname('kodeipl').asstring;
      data_koderayon.AsString:=Qpel.fieldbyname('koderayon').asstring;
      data_statuspel.AsString:=Qpel.fieldbyname('statuspel').asstring;
      data_pilih.AsString:='0';
      data_.Post;

      Qpel.next;

  end;


end;

procedure Tuterbitkan.cxButton1Click(Sender: TObject);
var
j,i:integer;
bln1,bln2,bln3,bln4,bln5,bln6:String;


kodegolyangberlaku,kodediameteryangberlaku,kodeIPLyangberlaku:string;

_administrasi1, _administrasi2,
_pemeliharaan1, _pemeliharaan2,
_retribusi1, _retribusi2,
_airlimbah1, _airlimbah2,
_pelayanan1, _pelayanan2 :currency;
_trf_dendatunggakan , _trf_dendatunggakan2, _trf_dendatunggakan3, _trf_dendatunggakan4, _trf_dendatunggakanperbulan:currency;
_trf_denda_berdasarkan_persen:string;


begin


   bln1:=FormatDateTime('YYYYMM',IncMonth(periode.date,-1));
   bln2:=FormatDateTime('YYYYMM',IncMonth(periode.date,-2));
   bln3:=FormatDateTime('YYYYMM',IncMonth(periode.date,-3));
   bln4:=FormatDateTime('YYYYMM',IncMonth(periode.date,-4));
   bln5:=FormatDateTime('YYYYMM',IncMonth(periode.date,-5));
   bln6:=FormatDateTime('YYYYMM',IncMonth(periode.date,-6));


    if(data_.RecordCount>0)then
    begin

       if MessageDlg('Terbitkan Pelanggan Yang Dipilih Ke Rekening '+FormatDateTime('MMMM YYYY',periode.date)+'??     ' , mtConfirmation, [mbYes,mbNo], 0)=mrYes then
       begin


        data_.First;

        uloading.proses.Caption:='Penerbitan Pelanggan...';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=data_.RecordCount;
        uloading.proses.Visible:=true;
        uloading.Progress.Visible:=true;
        uloading.Show;
        Application.ProcessMessages;

              for j:=1 to data_.RecordCount do
              begin


                 if data_pilih.AsString='1' then
                 begin



                    Qcek.close;
                    Qcek.SQL.Clear;
                    Qcek.SQL.Add(Qcek.SQLRefresh.Text);
                    Qcek.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                    Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                    Qcek.Open;



                    kodegolyangberlaku:='-';
                    kodediameteryangberlaku:='-';
                    _trf_denda_berdasarkan_persen:='0';   
                    _administrasi1:=0;
                    _pemeliharaan1:= 0;
                    _retribusi1:= 0;
                    _pelayanan1:= 0;
                    _airlimbah1:= 0;

                    _administrasi2:=0;
                    _pemeliharaan2:= 0;
                    _retribusi2:= 0;
                    _pelayanan2:= 0;
                    _airlimbah2:= 0;


                    Qgol.close;
                    Qgol.SQL.Clear;
                    Qgol.SQL.Add('SELECT * FROM golongan WHERE kodegol=:kodegol AND aktif="1"  ORDER BY periodemulaiberlaku DESC LIMIT 1');
                    Qgol.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                    Qgol.Open;

                     if(Qgol.RecordCount>0)then
                     begin

                        kodegolyangberlaku:=Qgol.fieldbyname('kodegolyangberlaku').asstring;
                        _administrasi1:= Qgol.fieldbyname('administrasi').AsCurrency;
                        _pemeliharaan1:= Qgol.fieldbyname('pemeliharaan').AsCurrency;
                        _retribusi1:= Qgol.fieldbyname('retribusi').AsCurrency;
                        _pelayanan1:= Qgol.fieldbyname('pelayanan').AsCurrency;
                        _airlimbah1:= Qgol.fieldbyname('airlimbah').AsCurrency;
                        _trf_dendatunggakan:= Qgol.fieldbyname('dendatunggakan').AsCurrency;
                        _trf_dendatunggakan2:= Qgol.fieldbyname('dendatunggakan2').AsCurrency;
                        _trf_dendatunggakan3:= Qgol.fieldbyname('dendatunggakan3').AsCurrency;
                        _trf_dendatunggakan4:= Qgol.fieldbyname('dendatunggakan4').AsCurrency;
                        _trf_dendatunggakanperbulan:= Qgol.fieldbyname('dendatunggakanperbulan').AsCurrency;
                        //_trf_denda_berdasarkan_persen:= Qgol.fieldbyname('trf_denda_berdasarkan_persen').asstring;

                     end;

                    QgolIPL.close;
                    QgolIPL.SQL.Clear;
                    QgolIPL.SQL.Add('SELECT kodegolyangberlaku FROM golongan_ipl WHERE kodegol=:kodegolipl AND aktif="1"  ORDER BY periodemulaiberlaku DESC LIMIT 1');
                    QgolIPL.ParamByName('kodegolipl').AsString:=data_kodeipl.AsString;
                    QgolIPL.Open;
                     if(QgolIPL.RecordCount>0)then
                     begin

                        kodeIPLyangberlaku:=QgolIPL.fieldbyname('kodegolyangberlaku').asstring;

                     end;

                    Qdiameter.close;
                    Qdiameter.SQL.Clear;
                    Qdiameter.SQL.Add('SELECT * FROM diameter WHERE kodediameter=:kodediameter AND aktif="1"  ORDER BY periodemulaiberlaku DESC LIMIT 1');
                    Qdiameter.ParamByName('kodediameter').AsString:=data_kodediameter.AsString;
                    Qdiameter.Open;

                    if(Qdiameter.RecordCount>0)then
                    begin

                        kodediameteryangberlaku:=Qdiameter.fieldbyname('kodediameteryangberlaku').asstring;
                        _administrasi2:= Qdiameter.fieldbyname('administrasi').AsCurrency;
                        _pemeliharaan2:= Qdiameter.fieldbyname('pemeliharaan').AsCurrency;
                        _retribusi2:= Qdiameter.fieldbyname('retribusi').AsCurrency;
                        _pelayanan2:= Qdiameter.fieldbyname('pelayanan').AsCurrency;
                        _airlimbah2:= Qdiameter.fieldbyname('airlimbah').AsCurrency;
                        
                    end;


                    Qexec.Close;
                    Qexec.SQL.Clear;
                    Qexec.SQL.Add('REPLACE INTO drd'+FormatDateTime('YYYYMM',periode.date)+' (nosamb,serimeter,kodegol,kodegolyangberlaku,kodediameter,kodediameteryangberlaku,koderayon,');
                    Qexec.SQL.add('kodekelurahan,stanlalu,administrasi,pemeliharaan,pelayanan,retribusi,airlimbah,flagaktif,kodekolektif,tglmulaidenda,tglmulaidenda2,tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan,');
                    Qexec.SQL.add('trf_dendatunggakan,trf_dendatunggakan2,trf_dendatunggakan3,trf_dendatunggakan4,trf_dendatunggakanperbulan,');
                    Qexec.SQL.add('kodeadministrasilain,kodepemeliharaanlain,koderetribusilain,administrasilain,pemeliharaanlain,retribusilain,waktu,kodeblok,luasrumah)VALUES ');
                    Qexec.SQL.Add('(:nosamb,:serimeter,:kodegol,:kodegolyangberlaku,:kodediameter,:kodediameteryangberlaku,:koderayon,');
                    Qexec.SQL.add(':kodekelurahan,:stanlalu,:administrasi,:pemeliharaan,:pelayanan,:retribusi,:airlimbah,:flagaktif,:kodekolektif,:tglmulaidenda,:tglmulaidenda2,:tglmulaidenda3,:tglmulaidenda4,:tglmulaidendaperbulan,');
                    Qexec.SQL.add(':trf_dendatunggakan,:trf_dendatunggakan2,:trf_dendatunggakan3,:trf_dendatunggakan4,:trf_dendatunggakanperbulan,');
                    Qexec.SQL.add(':kodeadministrasilain,:kodepemeliharaanlain,:koderetribusilain,:administrasilain,:pemeliharaanlain,:retribusilain,:waktu,:kodeblok,:luasrumah)');
                    Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                    Qexec.ParamByName('serimeter').AsString:= Qcek.fieldbyname('serimeter').AsString;
                    Qexec.ParamByName('kodegol').AsString:= Qcek.fieldbyname('kodegol').AsString;
                    Qexec.ParamByName('kodegolyangberlaku').AsString:= kodegolyangberlaku;
                    Qexec.ParamByName('kodediameter').AsString:= Qcek.fieldbyname('kodediameter').AsString;
                    Qexec.ParamByName('kodediameteryangberlaku').AsString:= kodediameteryangberlaku;
                    Qexec.ParamByName('koderayon').AsString:= Qcek.fieldbyname('koderayon').AsString;
                    Qexec.ParamByName('kodekelurahan').AsString:= Qcek.fieldbyname('kodekelurahan').AsString;
                    Qexec.ParamByName('kodekolektif').AsString:= Qcek.fieldbyname('kodekolektif').AsString;
                    Qexec.ParamByName('stanlalu').AsCurrency:= 0;


                    Qexec.ParamByName('administrasi').AsCurrency:= _administrasi1 + _administrasi2;
                    Qexec.ParamByName('pemeliharaan').AsCurrency:= _pemeliharaan1 + _pemeliharaan2;
                    Qexec.ParamByName('pelayanan').AsCurrency:= _pelayanan1 + _pelayanan2;
                    Qexec.ParamByName('retribusi').AsCurrency:= _retribusi1 + _retribusi2;
                    Qexec.ParamByName('airlimbah').AsCurrency:= _airlimbah1 + _airlimbah2;
                    Qexec.ParamByName('trf_dendatunggakan').AsCurrency:= _trf_dendatunggakan;
                    Qexec.ParamByName('trf_dendatunggakan2').AsCurrency:= _trf_dendatunggakan2;
                    Qexec.ParamByName('trf_dendatunggakan3').AsCurrency:= _trf_dendatunggakan3;
                    Qexec.ParamByName('trf_dendatunggakan4').AsCurrency:= _trf_dendatunggakan4;
                    Qexec.ParamByName('trf_dendatunggakanperbulan').AsCurrency:= _trf_dendatunggakanperbulan;



                    Qexec.ParamByName('administrasilain').AsCurrency:= Qcek.fieldbyname('administrasilain').AsCurrency;
                    Qexec.ParamByName('pemeliharaanlain').AsCurrency:= Qcek.fieldbyname('pemeliharaanlain').AsCurrency;
                    Qexec.ParamByName('retribusilain').AsCurrency:= Qcek.fieldbyname('retribusilain').AsCurrency;
                    Qexec.ParamByName('flagaktif').AsString:= Qcek.fieldbyname('status').AsString;
                    Qexec.ParamByName('tglmulaidenda').AsDate := Qcek.fieldbyname('tglmulaidenda').asdatetime;
                    Qexec.ParamByName('tglmulaidenda2').AsDate := Qcek.fieldbyname('tglmulaidenda2').asdatetime;
                    Qexec.ParamByName('tglmulaidenda3').AsDate := Qcek.fieldbyname('tglmulaidenda3').asdatetime;
                    Qexec.ParamByName('tglmulaidenda4').AsDate := Qcek.fieldbyname('tglmulaidenda4').asdatetime;
                    Qexec.ParamByName('tglmulaidendaperbulan').AsDate := Qcek.fieldbyname('tglmulaidendaperbulan').asdatetime;
                    Qexec.ParamByName('kodeadministrasilain').AsString:= Qcek.fieldbyname('kodeadministrasilain').AsString;
                    Qexec.ParamByName('kodepemeliharaanlain').AsString:= Qcek.fieldbyname('kodepemeliharaanlain').AsString;
                    Qexec.ParamByName('koderetribusilain').AsString:= kodeIPLyangberlaku;
                    Qexec.ParamByName('waktu').AsDateTime := now;
                    Qexec.ParamByName('kodeblok').AsString:= Qcek.fieldbyname('kodeblok').AsString;
                    Qexec.ParamByName('luasrumah').AsString:= Qcek.fieldbyname('luasrumah').AsString;
                    Qexec.Execute;


                  


                      Qtabel.close;
                      Qtabel.SQL.Clear;
                      Qtabel.SQL.Add('show tables like "drd'+bln5+'"');
                      Qtabel.Open;   
                      if(Qtabel.RecordCount>0)then
                      begin

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' c, drd'+bln5+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" and c.nosamb=:nosamb ');
                         DM.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                         DM.Qexec.Execute;

                      end;


                      Qtabel.close;
                      Qtabel.SQL.Clear;
                      Qtabel.SQL.Add('show tables like "drd'+bln4+'"');
                      Qtabel.Open;   
                      if(Qtabel.RecordCount>0)then
                      begin

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' c, drd'+bln4+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" and c.nosamb=:nosamb ');
                         DM.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                         DM.Qexec.Execute;

                      end;



                      Qtabel.close;
                      Qtabel.SQL.Clear;
                      Qtabel.SQL.Add('show tables like "drd'+bln3+'"');
                      Qtabel.Open;   
                      if(Qtabel.RecordCount>0)then
                      begin

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' c, drd'+bln3+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" and c.nosamb=:nosamb ');
                         DM.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                         DM.Qexec.Execute;

                      end;


                      
                      
                      Qtabel.close;
                      Qtabel.SQL.Clear;
                      Qtabel.SQL.Add('show tables like "drd'+bln2+'"');
                      Qtabel.Open;   
                      if(Qtabel.RecordCount>0)then
                      begin

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' c, drd'+bln2+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" and c.nosamb=:nosamb ');
                         DM.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                         DM.Qexec.Execute;

                      end;

                      

                      Qtabel.close;
                      Qtabel.SQL.Clear;
                      Qtabel.SQL.Add('show tables like "drd'+bln1+'"');
                      Qtabel.Open;
                      if(Qtabel.RecordCount>0)then
                      begin

                         DM.Qexec.close;
                         DM.Qexec.SQL.Clear;
                         DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' c, drd'+bln1+' b set c.stanlalu=b.stanskrg where c.nosamb=b.nosamb and b.flagkoreksi="1" and c.nosamb=:nosamb ');
                         DM.Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                         DM.Qexec.Execute;

                         //ambil dari sambungan baru
                         QcekHost.close;
                         QcekHost.SQL.Clear;
                         QcekHost.SQL.Add('SELECT stanawalpasang,stanskrg,nosambyangdiberikan FROM rab WHERE flagpasang="1" AND DATE_FORMAT(tglpasang,"%Y%m")=:periode AND flaghapus="0"');
                         QcekHost.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                         QcekHost.Open;

                         for i:=1  to QcekHost.RecordCount  do
                         begin
                           DM.Qexec.close;
                           DM.Qexec.SQL.Clear;
                           DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' set stanlalu=:stanlalu,stanskrg=:stanskrg where nosamb=:nosamb');
                           DM.Qexec.ParamByName('stanlalu').AsCurrency:=QcekHost.FieldByName('stanawalpasang').AsCurrency;
                           DM.Qexec.ParamByName('stanskrg').AsCurrency:=QcekHost.FieldByName('stanskrg').AsCurrency;
                           DM.Qexec.ParamByName('nosamb').AsString:=QcekHost.FieldByName('nosambyangdiberikan').AsString;
                           DM.Qexec.Execute;

                           QcekHost.Next;
                         end;

                         //ambil dari sambung Kembali
                         QcekHost.close;
                         QcekHost.SQL.Clear;
                         QcekHost.SQL.Add('SELECT stanawalpasang,angkameterskrg,nosamb FROM rab_sambung_kembali WHERE flagprosesdata="1" AND DATE_FORMAT(tglpasang,"%Y%m")=:periode AND flaghapus="0"');
                         QcekHost.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                         QcekHost.Open;

                         for i:=1  to QcekHost.RecordCount  do
                         begin
                           DM.Qexec.close;
                           DM.Qexec.SQL.Clear;
                           DM.Qexec.SQL.Add('update drd'+FormatDateTime('YYYYMM',periode.date)+' set stanlalu=:stanlalu,stanskrg=:stanskrg where nosamb=:nosamb');
                           DM.Qexec.ParamByName('stanlalu').AsCurrency:=QcekHost.FieldByName('stanawalpasang').AsCurrency;
                           DM.Qexec.ParamByName('stanskrg').AsCurrency:=QcekHost.FieldByName('angkameterskrg').AsCurrency;
                           DM.Qexec.ParamByName('nosamb').AsString:=QcekHost.FieldByName('nosamb').AsString;
                           DM.Qexec.Execute;

                           QcekHost.Next;
                         end

                      end;


                 

                DM.uraianlogakses:='Terbitkan '+Qcek.Fieldbyname('nosamb').AsString+' ke Rekening Bulan '+FormatDateTime('MMM YYYY',periode.date);
                DM.targetlogakses:=Qcek.Fieldbyname('nosamb').AsString;
                DM.logakses;

              end;

            uloading.Progress.IncPartsByOne;
            data_.Next;
            end;

          uloading.proses.Visible:=false;
          uloading.Progress.Visible:=false;
          uloading.Close;
         
          MessageDlg('Pelanggan Yang Dipilih Berhasil Di Terbitkan ke Rekening '+FormatDateTime('MMMM YYYY',periode.date)+'     ' , mtInformation, [mbOK], 0);

          refresh.Click;

        end
        else
          exit;


    end;

end;

procedure Tuterbitkan.cxButton2Click(Sender: TObject);
begin
if(Qpel.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PELANGGAN BELUM TERBIT REKENING';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure Tuterbitkan.cxButton3Click(Sender: TObject);
var
i:integer;
begin
  if (data_.RecordCount>0)then
  begin
    data_.First;
    for i:=1 to data_.recordcount do
    begin

        data_.Edit;
        data_pilih.AsString:='1';
        data_.Post;

        data_.Next;
    end;
  end;
end;

end.
