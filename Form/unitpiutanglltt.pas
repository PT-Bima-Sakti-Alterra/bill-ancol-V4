unit unitpiutanglltt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxCalendar,
  cxCurrencyEdit, Menus, cxContainer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  frxClass, frxDBSet, cxClasses, dxPSCore, dxPScxCommon, ActnList,
  DBAccess, MyAccess, MemDS, ComCtrls, RzDTP, cxLabel, StdCtrls, cxButtons,
  RzLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, RzPanel, RzButton, cxPC,
  ExtCtrls;

type
  Tupiutanglltt = class(TForm)
    RzPanel1: TRzPanel;
    info: TRzPanel;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
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
    report: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    MyDataSource2: TMyDataSource;
    MyDataSource1: TMyDataSource;
    gridrek: TcxGrid;
    gtvrek: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gtvrekColumn3: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    refresh: TcxButton;
    nama: TcxLabel;
    procedure refreshClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  

  end;

var
  upiutanglltt: Tupiutanglltt;

implementation

{$R *.dfm} uses Module;

procedure Tupiutanglltt.refreshClick(Sender: TObject);
begin
  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('nomorlltt').AsString:=DM.xnomorlltt;
  Qrek.Open;
end;

procedure Tupiutanglltt.Action1Execute(Sender: TObject);
begin
close;
end;

end.
