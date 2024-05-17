unit UnitKoreksilltt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, cxLabel, cxTextEdit, cxCurrencyEdit, Menus,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, DB, MemDS, DBAccess,
  MyAccess, ActnList;

type
  TUkoreksilltt = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    total: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    btnOK: TcxButton;
    btnKeluar: TcxButton;
    kodelltt: TcxComboBox;
    cxLabel1: TcxLabel;
    nama: TcxComboBox;
    Qgol: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure kodellttPropertiesChange(Sender: TObject);
    procedure namaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _periode:String;
    _kodellttyangberlaku:String;
  end;

var
  Ukoreksilltt: TUkoreksilltt;

implementation

{$R *.dfm}

procedure TUkoreksilltt.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TUkoreksilltt.btnOKClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TUkoreksilltt.kodellttPropertiesChange(Sender: TObject);
begin
  nama.ItemIndex:=kodelltt.ItemIndex;

  Qgol.close;
  Qgol.SQL.Clear;
  Qgol.SQL.Add('SELECT * FROM golongan_lltt WHERE kodelltt=:kodelltt AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
  Qgol.ParamByName('kodelltt').AsString:=kodelltt.Text;
  Qgol.ParamByName('periode').AsString:=_periode;
  Qgol.Open;

  total.Value:=Qgol.fieldbyname('biaya').AsCurrency;
  _kodellttyangberlaku:=Qgol.fieldbyname('kodellttyangberlaku').AsString;

end;

procedure TUkoreksilltt.namaPropertiesChange(Sender: TObject);
begin
kodelltt.ItemIndex:=nama.ItemIndex;
end;

end.
