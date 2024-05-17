unit UnitKoreksiLimbah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, cxLabel, cxTextEdit, cxCurrencyEdit, Menus,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, DB, MemDS, DBAccess,
  MyAccess, ActnList;

type
  TUkoreksiLimbah = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    total: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    btnOK: TcxButton;
    btnKeluar: TcxButton;
    kodelimbah: TcxComboBox;
    cxLabel1: TcxLabel;
    nama: TcxComboBox;
    Qgol: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure btnKeluarClick(Sender: TObject);
    procedure kodelimbahPropertiesChange(Sender: TObject);
    procedure namaPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _periode:String;
    _kodelimbahyangberlaku:String;
  end;

var
  UkoreksiLimbah: TUkoreksiLimbah;

implementation

{$R *.dfm}

procedure TUkoreksiLimbah.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TUkoreksiLimbah.kodelimbahPropertiesChange(Sender: TObject);
begin
nama.ItemIndex:=kodelimbah.ItemIndex;

  Qgol.close;
  Qgol.SQL.Clear;
  Qgol.SQL.Add('SELECT * FROM golongan_limbah WHERE kodelimbah=:kodelimbah AND periodemulaiberlaku<=:periode ORDER BY periodemulaiberlaku DESC LIMIT 1');
  Qgol.ParamByName('kodelimbah').AsString:=kodelimbah.Text;
  Qgol.ParamByName('periode').AsString:=_periode;
  Qgol.Open;

  total.Value:=Qgol.fieldbyname('biaya').AsCurrency;
  _kodelimbahyangberlaku:=Qgol.fieldbyname('kodelimbahyangberlaku').AsString;


end;

procedure TUkoreksiLimbah.namaPropertiesChange(Sender: TObject);
begin
kodelimbah.ItemIndex:=nama.ItemIndex;
end;

procedure TUkoreksiLimbah.btnOKClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

end.
