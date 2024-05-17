unit unitlog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, cxCurrencyEdit, cxTextEdit, ExtCtrls,
  RzPanel, DBAccess, MyAccess, MemDS, ActnList, cxCalendar;

type
  Tulog = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel7: TRzPanel;
    cari: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Qlog: TMyQuery;
    DSlog: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    info: TRzPanel;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure cariPropertiesChange(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nosamb:String;
  end;

var
  ulog: Tulog;

implementation

uses Module;

{$R *.dfm}

procedure Tulog.FormShow(Sender: TObject);
begin

  cari.Clear;
  Qlog.close;
  Qlog.SQL.Clear;
  Qlog.SQL.Add('select * FROM memo WHERE nosamb="'+nosamb+'" ORDER BY tanggal DESC');
  Qlog.Open;
end;

procedure Tulog.cariPropertiesChange(Sender: TObject);
begin


  Qlog.close;
  Qlog.SQL.Clear;
  Qlog.SQL.Add('select * FROM memo WHERE nosamb="'+nosamb+'" AND uraian like CONCAt("%",:cari,"%") ORDER BY tanggal DESC');
  Qlog.ParamByName('cari').AsString:=cari.Text;
  Qlog.Open;

end;

procedure Tulog.Action1Execute(Sender: TObject);
begin
 close;
end;

end.