unit FRAME_chart2;

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
  dxSkinsdxRibbonPainter, ActnList, dxPSCore, dxPScxCommon, cxClasses,
  DBAccess, MyAccess, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxLabel, ComCtrls, RzDTP, StdCtrls, cxButtons, ExtCtrls,
  RzPanel, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomView, cxGrid;

type
  TFRchart2 = class(TFrame)
    cxGrid1: TcxGrid;
    gtv2: TcxGridDBChartView;
    gtv2DataGroup1: TcxGridDBChartDataGroup;
    gtv2Series1: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    RzPanel1: TRzPanel;
    periode: TRzDateTimePicker;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    Qcek: TMyQuery;
    DScek: TMyDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    ActionList1: TActionList;
    Action1: TAction;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure kodeloketPropertiesChange(Sender: TObject);
    procedure loketPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure akses();
  end;

implementation

{$R *.dfm} uses Module,DAteUtils;


procedure TFRchart2.akses();
begin

       //LOKET
   DM.Qcek.Close;
   DM.Qcek.SQL.Clear;
   DM.Qcek.SQL.Add('SELECT kodeloket,loket FROM loket WHERE aktif="1" ORDER BY kodeloket ASC ');
   DM.Qcek.Open;

    kodeloket.Properties.Items.Clear;
    loket.Properties.Items.Clear;    
    Application.ProcessMessages;
   while not DM.Qcek.Eof do
   begin
            kodeloket.Properties.Items.Add(DM.Qcek.FieldByName('kodeloket').ASstring);
            loket.Properties.Items.Add(DM.Qcek.FieldByName('loket').ASstring);
            Application.ProcessMessages;
            DM.Qcek.Next;
   end;


   periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
   cxButton1.Click;


end;

procedure TFRchart2.cxButton1Click(Sender: TObject);
var
judul:String;
begin


  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "bayar'+FormatDateTime('YYYY',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('PEMBAYARAN TAHUN '+FormatDateTime('YYYY',periode.date)+' BELUM TERSEDIA !!', mtWarning, [mbOK], 0);
     exit;
  end;


judul:=UpperCase('LPP Air Bulan '+ FormatDateTime('MMMM YYYY',periode.Date));



Qcek.close;
Qcek.SQl.Clear;
Qcek.SQL.Add('SELECT DAY(tglbayar) AS tanggal,SUM(rekair) AS total FROM bayar'+FormatDateTime('YYYY',periode.date)+' WHERE MONTH(tglbayar)=:bulan AND YEAR(tglbayar)=:tahun ');

  if(cekloket.Checked=true)then
  begin
    Qcek.SQL.Add('AND loketbayar=:loketbayar');
    Qcek.ParamByName('loketbayar').AsString:=kodeloket.Text;
    judul:=judul+' LOKET '+loket.Text;
  end;

gtv2.Title.Text:=judul;

Qcek.SQL.Add('GROUP BY DATE(tglbayar) ASC');
Qcek.ParamByName('bulan').AsInteger:=StrToInt(FormatDateTime('MM',periode.Date));
Qcek.ParamByName('tahun').AsInteger:=StrToInt(FormatDateTime('YYYY',periode.Date));
Qcek.Open;


end;

procedure TFRchart2.kodeloketPropertiesChange(Sender: TObject);
begin
loket.ItemIndex:=kodeloket.ItemIndex;
end;

procedure TFRchart2.loketPropertiesChange(Sender: TObject);
begin
kodeloket.ItemIndex:=loket.ItemIndex;
end;

procedure TFRchart2.cxButton2Click(Sender: TObject);
begin
if(Qcek.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRchart2.cekloketClick(Sender: TObject);
begin

 if(cekloket.Checked=true)then
    loket.Enabled:=true
  else
    loket.Enabled:=false;
end;

end.
