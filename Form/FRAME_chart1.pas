unit FRAME_chart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxCustomData, DB, cxDBData, Menus, cxContainer, cxEdit, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, DBAccess, MyAccess,
  MemDS, cxLabel, ComCtrls, RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxClasses,
  cxGridCustomView, cxGrid, RzLabel;

type
  TFRchart1 = class(TFrame)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxGrid2: TcxGrid;
    gtv: TcxGridDBChartView;
    gtvDataGroup1: TcxGridDBChartDataGroup;
    gtvSeries1: TcxGridDBChartSeries;
    gtvSeries2: TcxGridDBChartSeries;
    gtvSeries3: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}  uses Module;

procedure TFRchart1.cxButton1Click(Sender: TObject);
begin


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "drd'+FormatDateTime('YYYYMM',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('DRD '+FormatDateTime('MMMM YYYY',periode.date)+' tidak tersedia !!', mtWarning, [mbOK], 0);
     exit;
  end;

Qrek.close;
Qrek.SQl.Clear;
Qrek.SQL.Add(Qrek.SQLRefresh.Text);
Qrek.ParamByName('periode').AsInteger:=StrToInt(FormatDateTime('YYYYMM',periode.date));
Qrek.Open;
gtv.Title.Text:='Rekapitulasi Rekening Air '+FormatDateTime('MMMM YYYY',periode.date);
end;

procedure TFRchart1.cxButton2Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin
    //dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR REKENING';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

end.
