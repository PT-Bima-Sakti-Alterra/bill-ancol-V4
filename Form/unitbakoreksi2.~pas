unit unitbakoreksi2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, ActnList, StdCtrls, cxButtons,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, ComCtrls, RzDTP, cxLabel, DB,
  DBAccess, MyAccess, frxClass, frxDesgn, MemDS, frxDBSet;

type
  Tubakoreksi2 = class(TForm)
    RzPanel1: TRzPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel8: TRzPanel;
    alasan: TcxComboBox;
    rek: TfrxDBDataset;
    Qrek: TMyQuery;
    frxDesigner1: TfrxDesigner;
    ba1: TfrxReport;
    DSrek: TMyDataSource;
    nosamb: TcxTextEdit;
    Qdrd: TMyQuery;
    F5: TAction;
    ba2: TfrxReport;
    cxButton3: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    procedure Action2Execute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ubakoreksi2: Tubakoreksi2;

implementation

{$R *.dfm}  uses Module,StrUtils,DateUtils;

procedure Tubakoreksi2.Action2Execute(Sender: TObject);
begin
Close;
end;

procedure Tubakoreksi2.cxButton2Click(Sender: TObject);
var
I:integer;
begin


        if (nosamb.Text='')then
        begin
        
            MessageDlg('No.Samb Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
            nosamb.SetFocus;
            Exit;

        end;


       if(alasan.Text='')then
        begin
            MessageDlg('Alasan Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
            alasan.SetFocus;
            Exit;
        end;


  


  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.ParamByName('nosamb').AsString:=nosamb.Text;
  Qrek.Open;


  if(alasan.ItemIndex=0) then
  begin
    ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan1.fr3');
    ba1.ShowReport(true);

  end
  else
  begin
    ba2.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan2.fr3');
    ba2.ShowReport(true);
  end;










end;

procedure Tubakoreksi2.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure Tubakoreksi2.cxButton3Click(Sender: TObject);
begin

  
  if(alasan.Text='')then
  begin
      MessageDlg('Alasan Koreksi Harap Diisi !!', mtWarning, [mbOk], 0);
      alasan.SetFocus;
      Exit;
  end;


  if alasan.ItemIndex=0 then
  begin
      ba1.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan1.fr3');
      ba1.DesignReport(true); 
  end
  else
  begin
      ba2.LoadFromFile(GetCurrentDir+'\report\bakoreksikosongan2.fr3');
      ba2.DesignReport(true);
  end;
end;

end.
