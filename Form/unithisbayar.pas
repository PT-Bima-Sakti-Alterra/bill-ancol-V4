unit unithisbayar;

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
  Tuhisbayar = class(TForm)
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
    gtvbayarColumn3: TcxGridDBColumn;
    gtvbayarColumn6: TcxGridDBColumn;
    gtvtotal: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    RzToolbar2: TRzToolbar;
    refresh2: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton3: TRzToolButton;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    gridna: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
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
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    gtvbayardenda: TcxGridDBColumn;
    procedure refreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure gtvbayarCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure printClick(Sender: TObject);
    procedure exportClick(Sender: TObject);
    procedure refresh2Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uhisbayar: Tuhisbayar;

implementation

{$R *.dfm}  uses module, UnitMain,StrUtils, DateUtils;

procedure Tuhisbayar.refreshClick(Sender: TObject);
begin
      Qbayar.Close;
      Qbayar.SQL.Clear;
      Qbayar.SQL.Add(Qbayar.SQLRefresh.Text);
      Qbayar.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',periode.date));
      Qbayar.ParamByName('nosamb').AsString := Dm.Xnosamb;
      Qbayar.Open;

end;

procedure Tuhisbayar.FormShow(Sender: TObject);
begin
 periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
info.Caption:='RIWAYAT PEMBAYARAN"'+DM.Xnosamb+'"';
cxButton1.Click;
end;

procedure Tuhisbayar.Action1Execute(Sender: TObject);
begin
close;
end;

procedure Tuhisbayar.gtvbayarCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin




      IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvbayardenda.Index], varCurrency)>0) then
    BEGIN
      IF (gtvbayar.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  TColor($0062FFFF); //Tcolor($0071CC2E);
        ACanvas.Canvas.Font.Color := clBlack;
        //ACanvas.Canvas.Font.Style := [fsBold];

      END;
    end


     ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvbayardenda.Index], varCurrency)=0)  then
    BEGIN
      IF (gtvbayar.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
         ACanvas.Canvas.Brush.Color :=  TColor($00CAFFFF); //Tcolor($0071CC2E);
        ACanvas.Canvas.Font.Color := clBlack;

      END;
    end;





end;

procedure Tuhisbayar.printClick(Sender: TObject);
begin
if(Qbayar.RecordCount>0)then
  begin
    dxComponentPrinter1Link2.ReportTitle.Text:='Histori Pembayaran Air '+DM.Xnosamb;
    dxComponentPrinter1Link2.Preview(true);
  end;
end;

procedure Tuhisbayar.exportClick(Sender: TObject);
begin
if not Qbayar.Eof then
  begin
      if  Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(gridbayar.FocusedView.PatternGridView));
  end;
end;

procedure Tuhisbayar.refresh2Click(Sender: TObject);
begin
      Qna.Close;
      Qna.SQL.Clear;
      Qna.SQL.Add(Qna.SQLRefresh.Text);  
      Qna.ParamByName('dibebankankepada').AsString := Dm.Xnosamb;
      Qna.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',periode.date));
      Qna.Open;

end;

procedure Tuhisbayar.RzToolButton2Click(Sender: TObject);
begin
if(Qna.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='Histori Pembayaran N.A '+DM.Xnosamb;
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure Tuhisbayar.RzToolButton3Click(Sender: TObject);
begin
if not Qna.Eof then
  begin
      if  Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(gridna.FocusedView.PatternGridView));
  end;
end;

procedure Tuhisbayar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cxPageControl1.Properties.ActivePage:=cxTabSheet1;
end;

procedure Tuhisbayar.cxButton1Click(Sender: TObject);
begin



  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('show tables like "bayar'+FormatDateTime('YYYY',periode.date)+'" ');
  DM.Qcek.Open;

  if(DM.Qcek.RecordCount=0)then
  begin
     MessageDlg('PEMBAYARAN TAHUN '+FormatDateTime('YYYY',periode.date)+' BELUM TERSEDIA !!', mtWarning, [mbOK], 0);

  end
  else
  begin
   refresh.Click;
  end;
        
  refresh2.Click;
  
end;

end.
