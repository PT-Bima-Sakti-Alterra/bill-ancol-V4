unit unitjenisangsuran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkiniMaginary, dxSkinOffice2013White,
  Menus, StdCtrls, cxButtons, cxTextEdit, ExtCtrls, RzPanel, cxMaskEdit,
  cxDropDownEdit, ActnList, cxLabel;

type
  Tujenisangsuran = class(TForm)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    jenisangsuran: TcxComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jenis:String;
  end;

var
  ujenisangsuran: Tujenisangsuran;

implementation

uses UnitCombo;

{$R *.dfm}

procedure Tujenisangsuran.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tujenisangsuran.FormShow(Sender: TObject);
begin

jenisangsuran.Properties.Items.Clear;
jenisangsuran.Properties.Items.Add('TUNGGAKAN');

end;

procedure Tujenisangsuran.cxButton2Click(Sender: TObject);
begin

     if jenisangsuran.Text='' then
      begin
          MessageDlg('Harap Pilih Jenis Angsuran !', mtWarning, [mbOK], 0);
          exit;
      end;


  jenis:=jenisangsuran.Text;
  ModalResult:=MrOk;


end;

end.
