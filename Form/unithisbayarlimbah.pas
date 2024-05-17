unit unithisbayarlimbah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, DB, cxDBData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxCurrencyEdit, DBAccess,
  MyAccess, MemDS, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, RzPanel, RzButton, ExtCtrls,
  ActnList, dxSkinOffice2013White, StdCtrls, RzLabel, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxContainer, cxCheckBox,
  dxPSContainerLnk, Menus, cxButtons, cxLabel, cxCalendar,
  ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  frxClass, frxDBSet, RzDTP;

type
  Tuhisbayarlimbah = class(TForm)
    RzPanel1: TRzPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    RzPanel2: TRzPanel;
    RzToolbar1: TRzToolbar;
    refresh: TRzToolButton;
    print: TRzToolButton;
    RzSpacer15: TRzSpacer;
    export: TRzToolButton;
    RzSpacer14: TRzSpacer;
    RzSpacer2: TRzSpacer;
    gridbayar: TcxGrid;
    gtvbayar: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gtvbayarColumn1: TcxGridDBColumn;
    gtvbayarColumn5: TcxGridDBColumn;
    gtvbayarColumn4: TcxGridDBColumn;
    gtvtotal: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    RzPanel14: TRzPanel;
    RzLabel3: TRzLabel;
    Qbayar: TMyQuery;
    DSbayar: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    Qna: TMyQuery;
    DSna: TMyDataSource;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    Qexec: TMyQuery;
    Qupload: TMyQuery;
    color1: TRzPanel;
    RzLabel1: TRzLabel;
    color3: TRzPanel;
    RzLabel4: TRzLabel;
    cxButton1: TcxButton;
    report: TfrxReport;
    Qcek: TMyQuery;
    frxDBDataset1: TfrxDBDataset;
    Qcek2: TMyQuery;
    frxDBDataset2: TfrxDBDataset;
    MyDataSource2: TMyDataSource;
    MyDataSource1: TMyDataSource;
    cxLabel1: TcxLabel;
    periode: TRzDateTimePicker;
    info: TRzPanel;
    procedure refreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uhisbayarlimbah: Tuhisbayarlimbah;

implementation

{$R *.dfm}  uses module, UnitMain,StrUtils, DateUtils;

procedure Tuhisbayarlimbah.refreshClick(Sender: TObject);
begin
      Qbayar.Close;
      Qbayar.SQL.Clear;
      Qbayar.SQL.Add(Qbayar.SQLRefresh.Text);
      Qbayar.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',periode.date));
      Qbayar.ParamByName('nomorlimbah').AsString := Dm.xnomorlimbah; 
      Qbayar.Open;

end;

procedure Tuhisbayarlimbah.FormShow(Sender: TObject);
begin
 periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
info.Caption:='RIWAYAT PEMBAYARAN LIMBAH "'+DM.xnomorlimbah+'"';
cxButton1.Click;
end;

procedure Tuhisbayarlimbah.Action1Execute(Sender: TObject);
begin
close;
end;

procedure Tuhisbayarlimbah.printClick(Sender: TObject);
begin
if(Qbayar.RecordCount>0)then
  begin
    dxComponentPrinter1Link2.ReportTitle.Text:='Histori Pembayaran Air '+DM.Xnosamb;
    dxComponentPrinter1Link2.Preview(true);
  end;
end;

procedure Tuhisbayarlimbah.exportClick(Sender: TObject);
begin
if not Qbayar.Eof then
  begin
      if  Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(gridbayar.FocusedView.PatternGridView));
  end;
end;

procedure Tuhisbayarlimbah.cxButton1Click(Sender: TObject);
begin



  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "bayarlimbah'+FormatDateTime('YYYY',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('PEMBAYARAN LIMBAH TAHUN '+FormatDateTime('YYYY',periode.date)+' BELUM TERSEDIA !!', mtWarning, [mbOK], 0);

  end
  else
  begin
   refresh.Click;
  end;
        

  
end;

end.
