unit unitpilihconfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, cxTextEdit, cxMaskEdit, cxDropDownEdit, Menus,
  StdCtrls, cxButtons;

type
  Tupilihunit = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    config: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  upilihunit: Tupilihunit;

implementation

{$R *.dfm}

procedure Tupilihunit.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tupilihunit.cxButton1Click(Sender: TObject);
begin
ModalResult:=MrOk;
end;

end.