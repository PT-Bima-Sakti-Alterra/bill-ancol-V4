unit unithispakai;

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
  dxPSContainerLnk, Menus, cxButtons, cxLabel, cxTextEdit,
  cxCalendar, ComCtrls, RzDTP, dxmdaset;

type
  Tuhispakai = class(TForm)
    RzPanel1: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
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
    info: TRzPanel;
    RzPanel2: TRzPanel;
    RzToolbar2: TRzToolbar;
    refresh2: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton3: TRzToolButton;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzPanel3: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel1: TcxLabel;
    gridna: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    nama: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure gtvbayarCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure refresh2Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure periodeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uhispakai: Tuhispakai;

implementation

{$R *.dfm}  uses module, UnitMain, DateUtils, Math;

procedure Tuhispakai.FormShow(Sender: TObject);
begin
  periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
  info.Caption:='RIWAYAT PEMAKAIAN "'+DM.Xnosamb+'"';
  refresh2.Click;

end;

procedure Tuhispakai.Action1Execute(Sender: TObject);
begin
close;
end;

procedure Tuhispakai.gtvbayarCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin


  {    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvbayardenda.Index], varCurrency)>0) then
    BEGIN
    IF (gtvbayar.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then

     begin
        ACanvas.Canvas.Brush.Color :=  clYellow;
        //ACanvas.Canvas.Font.Color := clWhite;
     end;
    END

     ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvbayardenda.Index], varCurrency)=0)  then
    BEGIN
      IF (gtvbayar.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
        ACanvas.Canvas.Brush.Color :=  Tcolor($0071CC2E);
        ACanvas.Canvas.Font.Color := clWhite;
        //ACanvas.Canvas.Font.Style := [fsBold];

      END;
    end; }


end;

procedure Tuhispakai.refresh2Click(Sender: TObject);
begin

  TRY
    umain.openkoneksi_host;

  except ON E:Exception DO
  BEGIn
    MessageDlg('Koneksi Gagal...!!'+char(13)+char(13)+
               E.Message, mtwarning, [MbOk], 0);
    Exit;
  END;
  end;
      

      Qna.Close;
      Qna.SQL.Clear;
      Qna.SQL.Add(Qna.SQLRefresh.Text);
      Qna.ParamByName('nosamb').AsString := Dm.Xnosamb;
      Qna.ParamByName('tahun').AsInteger:= StrToInt(FormatDateTime('YYYY',periode.date));
      Qna.Open;

end;

procedure Tuhispakai.RzToolButton2Click(Sender: TObject);
begin
if(Qna.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='Histori Pemakaian Air (Sudah Lunas ) '+DM.Xnosamb;
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure Tuhispakai.RzToolButton3Click(Sender: TObject);
begin
if not Qna.Eof then
  begin
      if  Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(gridna.FocusedView.PatternGridView));
  end;
end;

procedure Tuhispakai.periodeChange(Sender: TObject);
begin
refresh2.Click;
end;

procedure Tuhispakai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Umain.host.close;
end;

end.
