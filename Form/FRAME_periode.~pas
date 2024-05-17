{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit FRAME_periode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, DBAccess, MyAccess, MemDS, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, RzPanel,
  RzButton, ExtCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, cxCalendar, StdCtrls, RzLabel, cxContainer, cxTextEdit,
  cxLabel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxGridChartView,
  cxGridDBChartView, Menus, cxButtons, dxSkinOffice2013White,
  cxImageComboBox, ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, ActnList;


type
  TFRperiode = class(TFrame)
    Qperiode: TMyQuery;
    DSperiode: TMyDataSource;
    RzToolButton1: TRzToolButton;
    RzSpacer2: TRzSpacer;
    Qmirror: TMyQuery;
    Qtahun: TMyQuery;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    RzPanel1: TRzPanel;
    Qgrid: TMyQuery;
    DSgrid: TMyDataSource;
    Qgrid2: TMyQuery;
    DSgrid2: TMyDataSource;
    Qcek2: TMyQuery;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    Hapus1: TMenuItem;
    SetTglDenda1: TMenuItem;
    SetBuka1: TMenuItem;
    SetTutup1: TMenuItem;
    SetSebagaiPeriodeLancar1: TMenuItem;
    tambah1: TMenuItem;
    RzPanel5: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel6: TRzPanel;
    cxGrid3: TcxGrid;
    gtvchart: TcxGridDBChartView;
    gtvchartDataGroup1: TcxGridDBChartDataGroup;
    gtvchartSeries1: TcxGridDBChartSeries;
    gtvchartSeries2: TcxGridDBChartSeries;
    gtvchartSeries3: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    limit: TcxCurrencyEdit;
    simpan: TcxButton;
    RzPanel7: TRzPanel;
    gridperiode: TcxGrid;
    gtvperiode: TcxGridDBTableView;
    gtvperiodeperiode: TcxGridDBColumn;
    gtvperiodeColumn9: TcxGridDBColumn;
    gtvperiodenama: TcxGridDBColumn;
    gtvperiodestatus: TcxGridDBColumn;
    gtvperiodeaktif: TcxGridDBColumn;
    gtvperiodenonaktif: TcxGridDBColumn;
    gtvperiodebiayapemakaian: TcxGridDBColumn;
    gtvperiodeadministrasi: TcxGridDBColumn;
    gtvperiodepemeliharaan: TcxGridDBColumn;
    gtvperioderetribusi: TcxGridDBColumn;
    gtvperiodemeterai: TcxGridDBColumn;
    gtvperiodetotalrekening: TcxGridDBColumn;
    gtvperiodeColumn5: TcxGridDBColumn;
    gtvperiodeColumn6: TcxGridDBColumn;
    gtvperiodeColumn7: TcxGridDBColumn;
    gtvperiodeColumn10: TcxGridDBColumn;
    gtvperiodelunas: TcxGridDBColumn;
    gtvperiodeColumn3: TcxGridDBColumn;
    gtvperiodepublish: TcxGridDBColumn;
    gtvperiodeColumn8: TcxGridDBColumn;
    gtvperiodebatal: TcxGridDBColumn;
    gtvperiodeColumn1: TcxGridDBColumn;
    gtvperiodeColumn4: TcxGridDBColumn;
    gtvperiodeColumn12: TcxGridDBColumn;
    gtvperiodeColumn13: TcxGridDBColumn;
    gridperiodeLevel1: TcxGridLevel;
    RzPanel14: TRzPanel;
    RzLabel3: TRzLabel;
    color1: TRzPanel;
    RzLabel2: TRzLabel;
    RzPanel8: TRzPanel;
    RzPanel9: TRzPanel;
    cxLabel2: TcxLabel;
    tgl1: TcxDateEdit;
    cxLabel3: TcxLabel;
    tgl2: TcxDateEdit;
    cxLabel4: TcxLabel;
    tgl3: TcxDateEdit;
    cxLabel5: TcxLabel;
    tgl4: TcxDateEdit;
    cxLabel6: TcxLabel;
    tgl5: TcxDateEdit;
    bulan: TcxLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel2: TRzPanel;
    refresh: TcxButton;
    tambah: TcxButton;
    hapus: TcxButton;
    hitung: TcxButton;
    RzPanel10: TRzPanel;
    RzPanel11: TRzPanel;
    export: TcxButton;
    print: TcxButton;
    info: TRzPanel;
    gtvperiodeColumn2: TcxGridDBColumn;
    gtvperiodeColumn11: TcxGridDBColumn;
    gtvperiodeColumn14: TcxGridDBColumn;
    gtvperiodeColumn15: TcxGridDBColumn;
    procedure refreshClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure hitungClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure gtvperiodeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gtvperiodeCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure simpanClick(Sender: TObject);
    procedure SetTglDenda1Click(Sender: TObject);
    procedure SetBuka1Click(Sender: TObject);
    procedure SetTutup1Click(Sender: TObject);
    procedure SetSebagaiPeriodeLancar1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
  end;

implementation

{$R *.dfm} uses Module, unittambahperiode, unitsetdenda, unitloading,
  StrUtils,  UnitMain;

procedure TFRperiode.akses();
begin





   limit.Value:= DM.Qsetting.fieldbyname('limit1').AsCurrency;
   gtvchart.DiagramColumn.AxisValue.MaxValue:=DM.Qsetting.fieldbyname('limit1').AsCurrency;

   if(Umain.olah_data_periode<>'1') then
   begin
       tambah.Enabled:=false;
       tambah1.Enabled:=false; 
       Hapus1.Enabled:=false;
       hapus.Enabled:=false;
       SetBuka1.Enabled:=false;
       SetTutup1.Enabled:=false;

       SetSebagaiPeriodeLancar1.Enabled:=false;
      
       SetTglDenda1.Enabled:=false;
   end;



end;


procedure TFRperiode.refreshClick(Sender: TObject);
begin
Qperiode.close;
Qperiode.SQl.Clear;
Qperiode.SQL.Add('select p.*,p.total-p.bayar as piutang,if(p.status="1","Aktif","Tutup") as xstatus from periode p ORDER BY p.periode DESC');
Qperiode.Open;
end;

procedure TFRperiode.tambahClick(Sender: TObject);
begin
if ubuatperiode.showmodal=mrOK then
begin
refresh.Click;
end;
end;

procedure TFRperiode.hapusClick(Sender: TObject);
begin
if(Qperiode.RecordCount>0)then
begin

 TRY

      if MessageDlg('Perhatian !!'+char(13)+
                    'Yakin Hapus Rekening '+Qperiode.Fieldbyname('nama').AsString+' ?'+char(13)+
                    'Tindakan Ini Kan Menghapus Semua Rekening, '+char(13)+
                    'Seluruh Piutang, Dan Histori Bayar Bulan '+Qperiode.Fieldbyname('nama').AsString,mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin





       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DELETE FROM periode WHERE periode=:periode');
       DM.Qexec.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       DM.Qexec.Execute;

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DROP TABLE IF EXISTS drd'+Qperiode.Fieldbyname('periode').AsString+' ');
       DM.Qexec.Execute;

        DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DROP TABLE IF EXISTS drdlimbah'+Qperiode.Fieldbyname('periode').AsString+' ');
       DM.Qexec.Execute;


        DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DROP TABLE IF EXISTS drdlltt'+Qperiode.Fieldbyname('periode').AsString+' ');
       DM.Qexec.Execute;





       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('DELETE FROM piutang WHERE LEFT(kode,6)=:periode');
       DM.Qexec.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       DM.Qexec.Execute;



        DM.uraianlogakses:='Hapus Rekening Global '+Qperiode.Fieldbyname('nama').AsString;
        DM.targetlogakses:=Qperiode.Fieldbyname('nama').AsString;
        DM.logakses;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('COMMIT');
       DM.Qexec.Execute; 


       refresh.Click;

      end
      else
        Exit;

  EXCEPT ON E:Exception DO
  BEGIN

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('ROLLBACK');
       DM.Qexec.Execute;
       
       MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
  END;
  END;

end;

end;

procedure TFRperiode.hitungClick(Sender: TObject);
var
j,i:integer;
begin

  Qtahun.close;
  Qtahun.SQL.Clear;
  Qtahun.SQL.Add('select periode FROM periode GROUP BY periode ASC');
  Qtahun.Open;


  if(Qtahun.RecordCount>0)then
  begin


      uloading.proses.Caption:='Hitung Rincian....';
      uloading.Progress.PartsComplete:=0;
      uloading.Progress.TotalParts:=Qtahun.RecordCount;
      uloading.Progress.Visible:=true;
      uloading.Show;
      Application.ProcessMessages;



      for i:=1 to Qtahun.RecordCount do
      begin


        ////HITUNG DRD


         Qcek2.close;
         Qcek2.SQL.Clear;
         Qcek2.SQL.Add('SHOW TABLES  LIKE "%drd'+Qtahun.fieldbyname('periode').AsString+'%" ');
         Qcek2.Open;


              IF(Qcek2.RecordCount>0)then
             begin




                    DM.Qcek.Close;
                    DM.Qcek.SQL.Clear;
                    DM.Qcek.SQL.Add(Qmirror.SQLRefresh.Text);
                    DM.Qcek.SQL.Add('FROM pelanggan p LEFT JOIN drd'+Qtahun.fieldbyname('periode').AsString+' c ON p.nosamb=c.nosamb ');
                    DM.Qcek.SQL.Add('WHERE p.nosamb NOT IN (SELECT nosamb FROM pelanggan WHERE flaghapus="1" AND DATE_FORMAT(tanggal_hapus,"%Y%m")<=:periode) ');
                    DM.Qcek.ParamByName('periode').AsString:=Qtahun.fieldbyname('periode').AsString;
                    DM.Qcek.Open;

                         
                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('update periode set');
                    //DM.Qexec.SQL.add('pelanggan=:pelanggan,');
                    //DM.Qexec.SQL.add('nonaktif=:nonaktif,');
                    DM.Qexec.SQL.add('sudahpublish=:sudahpublish,');
                    DM.Qexec.SQL.add('belumpublish=:belumpublish,');
                    DM.Qexec.SQL.add('sudahlunas=:sudahlunas,');
                    DM.Qexec.SQL.add('pakai=:pakai,');
                    DM.Qexec.SQL.add('biayapemakaian=:biayapemakaian,');
                    DM.Qexec.SQL.add('administrasi=:administrasi,');
                    DM.Qexec.SQL.add('pemeliharaan=:pemeliharaan,');
                    DM.Qexec.SQL.add('retribusi=:retribusi,');
                    DM.Qexec.SQL.add('meterai=:meterai,');
                    DM.Qexec.SQL.add('rekair=:rekair,');
                    DM.Qexec.SQL.add('dendatunggakan=:dendatunggakan,');
                    DM.Qexec.SQL.add('pelayanan=:pelayanan,');
                    DM.Qexec.SQL.add('dendapakai0=:dendapakai0,');
                    DM.Qexec.SQL.add('airlimbah=:airlimbah,');
                    DM.Qexec.SQL.add('ppn=:ppn,');
                    DM.Qexec.SQL.add('total=:total');
                    DM.Qexec.SQL.add('where periode=:periode');
                    DM.Qexec.ParamByName('periode').AsString:=Qtahun.fieldbyname('periode').AsString;
                    //DM.Qexec.ParamByName('pelanggan').AsInteger:=DM.Qcek.fieldbyname('pelanggan').AsInteger;
                    //DM.Qexec.ParamByName('nonaktif').AsInteger:=DM.Qcek.fieldbyname('nonaktif').AsInteger;
                    DM.Qexec.ParamByName('sudahpublish').AsInteger:=DM.Qcek.fieldbyname('publish').AsInteger;
                    DM.Qexec.ParamByName('belumpublish').AsInteger:=DM.Qcek.fieldbyname('belumpublish').AsInteger;
                    DM.Qexec.ParamByName('sudahlunas').AsInteger:=DM.Qcek.fieldbyname('lunas').AsInteger;
                    DM.Qexec.ParamByName('pakai').AsCurrency:=DM.Qcek.fieldbyname('pakai').AsCurrency;
                    DM.Qexec.ParamByName('rekair').AsCurrency:=DM.Qcek.fieldbyname('rekair').AsCurrency;
                    DM.Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('total').AsCurrency;
                    DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=DM.Qcek.fieldbyname('biayapemakaian').AsCurrency;
                    DM.Qexec.ParamByName('administrasi').AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
                    DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=DM.Qcek.fieldbyname('pemeliharaan').AsCurrency;
                    DM.Qexec.ParamByName('retribusi').AsCurrency:=DM.Qcek.fieldbyname('retribusi').AsCurrency;
                    DM.Qexec.ParamByName('dendatunggakan').AsCurrency:=DM.Qcek.fieldbyname('dendatunggakan').AsCurrency;
                    DM.Qexec.ParamByName('pelayanan').AsCurrency:=DM.Qcek.fieldbyname('pelayanan').AsCurrency;
                    DM.Qexec.ParamByName('dendapakai0').AsCurrency:=DM.Qcek.fieldbyname('dendapakai0').AsCurrency;
                    DM.Qexec.ParamByName('airlimbah').AsCurrency:=DM.Qcek.fieldbyname('airlimbah').AsCurrency;
                    DM.Qexec.ParamByName('meterai').AsCurrency:=DM.Qcek.fieldbyname('meterai').AsCurrency;
                    DM.Qexec.ParamByName('ppn').AsCurrency:=DM.Qcek.fieldbyname('ppn').AsCurrency;
                    DM.Qexec.Execute;
            end;
         

         /// LIMBAH


             Qcek2.close;
             Qcek2.SQL.Clear;
             Qcek2.SQL.Add('SHOW TABLES  LIKE "%drdlimbah'+Qtahun.fieldbyname('periode').AsString+'%" ');
             Qcek2.Open;


             if Qcek2.RecordCount>0 then
             begin


              
              DM.Qcek.Close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('SELECT COUNT(nosamb) as pelanggan_limbah ,SUm(total) as jumlah_limbah FROM drdlimbah'+Qtahun.fieldbyname('periode').AsString+' WHERE flagpublish="1"'); 
              DM.Qcek.Open;



          
                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('update periode set');
                    DM.Qexec.SQL.add('pelanggan_limbah=:pelanggan_limbah,');
                    DM.Qexec.SQL.add('jumlah_limbah=:jumlah_limbah WHERE periode=:periode');
                    DM.Qexec.ParamByName('periode').AsString:=Qtahun.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('pelanggan_limbah').AsInteger:=DM.Qcek.fieldbyname('pelanggan_limbah').AsInteger;
                    DM.Qexec.ParamByName('jumlah_limbah').AsCurrency:=DM.Qcek.fieldbyname('jumlah_limbah').AsCurrency;
                    DM.Qexec.Execute;





             end;



             /// L2T2


             Qcek2.close;
             Qcek2.SQL.Clear;
             Qcek2.SQL.Add('SHOW TABLES  LIKE "%drdlltt'+Qtahun.fieldbyname('periode').AsString+'%" ');
             Qcek2.Open;


             if Qcek2.RecordCount>0 then
             begin


              
              DM.Qcek.Close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('SELECT COUNT(nosamb) as pelanggan_lltt ,SUm(total) as jumlah_lltt FROM drdlltt'+Qtahun.fieldbyname('periode').AsString+' WHERE flagpublish="1"');
              DM.Qcek.Open;



          
                    DM.Qexec.close;
                    DM.Qexec.SQL.Clear;
                    DM.Qexec.SQL.Add('update periode set');
                    DM.Qexec.SQL.add('pelanggan_lltt=:pelanggan_lltt,');
                    DM.Qexec.SQL.add('jumlah_lltt=:jumlah_lltt WHERE periode=:periode');
                    DM.Qexec.ParamByName('periode').AsString:=Qtahun.fieldbyname('periode').AsString;
                    DM.Qexec.ParamByName('pelanggan_lltt').AsInteger:=DM.Qcek.fieldbyname('pelanggan_lltt').AsInteger;
                    DM.Qexec.ParamByName('jumlah_lltt').AsCurrency:=DM.Qcek.fieldbyname('jumlah_lltt').AsCurrency;
                    DM.Qexec.Execute;


             end;




         Application.ProcessMessages;
         uloading.Progress.IncPartsByOne;
        Qtahun.Next;

        end;

        
         uloading.Progress.Visible:=false;
         uloading.Close;
  end;

            refresh.Click;
end;

procedure TFRperiode.printClick(Sender: TObject);
begin
if(Qperiode.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PERIODE REKENING AIR';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRperiode.exportClick(Sender: TObject);
begin
 if not Qperiode.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(gridperiode.FocusedView.PatternGridView));
  end;
end;

procedure TFRperiode.gtvperiodeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

  if(Umain.olah_data_periode='1')then
  begin
    if (Qperiode.fieldbyname('status').AsString='0')  then
    begin
      SetBuka1.Enabled:=true;
      SetTutup1.Enabled:=false;
      SetTglDenda1.Enabled:=false;
      SetSebagaiPeriodeLancar1.Enabled:=false;
      Hapus1.Enabled:=false;
    end
    else
    begin
      SetBuka1.Enabled:=false;
      SetTutup1.Enabled:=true;
      SetTglDenda1.Enabled:=true;
      SetSebagaiPeriodeLancar1.Enabled:=true;
      Hapus1.Enabled:=true;
    end;
  end;


  bulan.Caption:=UpperCase( Qperiode.fieldbyname('nama').AsString);  
  tgl1.Date:=Qperiode.fieldbyname('tglmulaidenda').AsDateTime;
  tgl2.Date:=Qperiode.fieldbyname('tglmulaidenda2').AsDateTime;
  tgl3.Date:=Qperiode.fieldbyname('tglmulaidenda3').AsDateTime;
  tgl4.Date:=Qperiode.fieldbyname('tglmulaidenda4').AsDateTime;
  tgl5.Date:=Qperiode.fieldbyname('tglmulaidendaperbulan').AsDateTime;

  Qgrid2.Close;
  Qgrid2.SQL.Clear;
  Qgrid2.SQL.Add(' select *,total-bayar as piutang from periode WHERE periode=:periode');
  Qgrid2.ParamByName('periode').AsString:=Qperiode.fieldbyname('periode').AsString;
  Qgrid2.Open;


end;

procedure TFRperiode.gtvperiodeCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvperiodestatus.Index], varstring)='Tutup')  then
    BEGIN
    IF (gtvperiode.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    
    END
    ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvperiodestatus.Index], varstring)='Aktif')  then
    BEGIN
    IF (gtvperiode.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
        ACanvas.Canvas.Brush.Color :=  TColor($00CAFFFF); //Tcolor($0071CC2E);
     
    END;
end;

procedure TFRperiode.simpanClick(Sender: TObject);
begin

  DM.Qexec.close;
  DM.Qexec.SQL.Clear;
  DM.Qexec.SQL.Add('update pengaturan set limit1=:limit where idx="1"');
  DM.Qexec.ParamByName('limit').AsCurrency:=limit.Value;
  DM.Qexec.Execute;



  gtvchart.DiagramColumn.AxisValue.MaxValue:=limit.Value;
end;

procedure TFRperiode.SetTglDenda1Click(Sender: TObject);
begin
  usetdenda.isicombowildenda();
  
if (SetTglDenda1.Enabled=true) and
   (Qperiode.RecordCount>0)then
begin

  if(Qperiode.fieldbyname('status').AsString='0') then
  begin

       MessageDlg('Periode sudah di TUTUP !! ',mtWarning, [mbOK], 0);

       exit;
  end;
  usetdenda.info.Caption:='KOREKSI TANGGAL DENDA DRD '+  UpperCase( Qperiode.fieldbyname('nama').AsString);
  usetdenda.tabel:='drd'+Qperiode.fieldbyname('periode').AsString;
  usetdenda.periode:=Qperiode.fieldbyname('periode').AsString;
  usetdenda.tanggal.date:=Qperiode.FIeldbyname('tglmulaidenda').AsDateTime;
  usetdenda.tanggal2.date:=Qperiode.FIeldbyname('tglmulaidenda2').AsDateTime;
  usetdenda.tanggal3.date:=Qperiode.FIeldbyname('tglmulaidenda3').AsDateTime;
  usetdenda.tanggal4.date:=Qperiode.FIeldbyname('tglmulaidenda4').AsDateTime;
  usetdenda.tanggal5.date:=Qperiode.FIeldbyname('tglmulaidendaperbulan').AsDateTime;

  if usetdenda.showmodal=MrOk then
  begin
    Qperiode.SQLRefresh.Clear;
    Qperiode.SQLRefresh.Add('select tglmulaidenda,tglmulaidenda2,tglmulaidenda3,tglmulaidenda4,tglmulaidendaperbulan from periode where periode=:periode');
    Qperiode.RefreshRecord;
  end;
end
else
  MessageDlg('Akses di Tolak !!', mtInformation, [mbOk], 0);
end;

procedure TFRperiode.SetBuka1Click(Sender: TObject);
begin
if(Qperiode.RecordCount>0)then
begin
      if MessageDlg('Perhatian !!'+char(13)+
                    'Yakin Buka Periode Rekening '+Qperiode.Fieldbyname('nama').AsString+' ?'+char(13)+
                    '',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('UPDATE periode SET status="1" WHERE periode=:periode');
       DM.Qexec.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       DM.Qexec.Execute;

        DM.uraianlogakses:='Buka Periode '+Qperiode.Fieldbyname('nama').AsString;
        DM.targetlogakses:=Qperiode.Fieldbyname('nama').AsString;
        DM.logakses;


        Qperiode.SQLRefresh.Clear;;
        Qperiode.SQLRefresh.Add('select *,total-bayar as piutang,if(status="1","Aktif","Tutup") as xstatus from periode where periode=:periode ');
        Qperiode.RefreshRecord;
      end
      else
        Exit;

end;
end;

procedure TFRperiode.SetTutup1Click(Sender: TObject);
begin
if(Qperiode.RecordCount>0)then
begin
      if MessageDlg('Perhatian !!'+char(13)+
                    'Yakin Tutup Periode Rekening '+Qperiode.Fieldbyname('nama').AsString+' ?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('UPDATE periode SET status="0" WHERE periode=:periode');
       DM.Qexec.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       DM.Qexec.Execute;

        DM.uraianlogakses:='Tutup Periode '+Qperiode.Fieldbyname('nama').AsString;
        DM.targetlogakses:=Qperiode.Fieldbyname('nama').AsString;
        DM.logakses;


        Qperiode.SQLRefresh.Clear;;
        Qperiode.SQLRefresh.Add('select *,total-bayar as piutang,if(status="1","Aktif","Tutup") as xstatus from periode where periode=:periode ');
        Qperiode.RefreshRecord;
      end
      else
        Exit;

end;
end;

procedure TFRperiode.SetSebagaiPeriodeLancar1Click(Sender: TObject);
begin
if(Qperiode.RecordCount>0)then
begin



      if MessageDlg('Set untuk Mitra Adalah Menetapkan periode rekening Terpilih sebagai '+char(13)+
                    'tagihan yang dapat di proses oleh loket-loket MITRA....'+char(13)+
                    'Yakin Tetapkan Periode Rekening '+Qperiode.Fieldbyname('nama').AsString+' Sebagai Tagihan Mitra ?'+char(13)+
                    '',mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin


      TRY
      umain.openkoneksi_host;

       Umain.Qhost1.close;
       Umain.Qhost1.SQL.Clear;
       Umain.Qhost1.SQL.Add('UPDATE pengaturan SET periodelancar=:periode ,tglmulaidenda=:tglmulaidenda WHERE idx="1"');
       Umain.Qhost1.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       Umain.Qhost1.ParamByName('tglmulaidenda').AsDate:=Qperiode.Fieldbyname('tglmulaidenda').AsDateTime;
       Umain.Qhost1.Execute;


       Dm.Qexec.close;
       Dm.Qexec.SQL.Clear;
       Dm.Qexec.SQL.Add('UPDATE periode SET periodelancar="0"');
       Dm.Qexec.Execute;


       Dm.Qexec.close;
       Dm.Qexec.SQL.Clear;
       Dm.Qexec.SQL.Add('UPDATE periode SET periodelancar="1" WHERE periode=:periode');
       Dm.Qexec.ParamByName('periode').AsString:=Qperiode.Fieldbyname('periode').AsString;
       Dm.Qexec.Execute;

        DM.uraianlogakses:='Set Periode Lancar : '+Qperiode.Fieldbyname('nama').AsString;
        DM.targetlogakses:=Qperiode.Fieldbyname('nama').AsString;
        DM.logakses;


        refresh.Click;

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

end.



