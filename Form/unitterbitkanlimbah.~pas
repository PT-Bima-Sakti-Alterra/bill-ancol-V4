unit unitterbitkanlimbah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzButton, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS,
  cxCurrencyEdit, ComCtrls, RzDTP, cxCheckBox, ActnList,
  dxSkinOffice2013White, dxSkiniMaginary, cxImageComboBox, Menus, StdCtrls,
  cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon;

type
  Tuterbitkanlimbah = class(TForm)
    Qpel: TMyQuery;
    DSpel: TMyDataSource;
    Qexec: TMyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    StringField10: TStringField;
    Qpelmain: TMyQuery;
    periode: TRzDateTimePicker;
    Qcek: TMyQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qtabel: TMyQuery;
    Qangsuran: TMyQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    RzPanel1: TRzPanel;
    Gridpel: TcxGrid;
    gtvpel: TcxGridDBTableView;
    gtvpelColumn6: TcxGridDBColumn;
    gtvpelidpelanggan: TcxGridDBColumn;
    gtvpelnama: TcxGridDBColumn;
    gtvpelkodegol: TcxGridDBColumn;
    gtvpelkoderayon: TcxGridDBColumn;
    gtvpelColumn10: TcxGridDBColumn;
    gtvpelalamat: TcxGridDBColumn;
    gtvpelColumn1: TcxGridDBColumn;
    gtvpelColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RzPanel2: TRzPanel;
    cxButton1: TcxButton;
    refresh: TcxButton;
    info: TRzPanel;
    cxButton2: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    gtvpelColumn11: TcxGridDBColumn;
    gtvpelColumn12: TcxGridDBColumn;
    Qdiameter: TMyQuery;
    Qgol: TMyQuery;
    gtvpelColumn13: TcxGridDBColumn;
    procedure gtvpelCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gtvpelCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action2Execute(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  uterbitkanlimbah: Tuterbitkanlimbah;

implementation

{$R *.dfm} uses Module, unitloading;

procedure Tuterbitkanlimbah.gtvpelCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpelColumn7.Index], varstring)='1')  then
    BEGIN
    IF
    (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
        ACanvas.Canvas.Brush.Color :=  TColor(clyellow);
    END;
    end
   
     ELSE IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpelColumn11.Index], varString)='Non Aktif') then
    BEGIN
    IF (gtvpel.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
    begin
      ACanvas.Canvas.Font.Color := clBlue;
      ACanvas.Canvas.Font.Style := [fsStrikeOut];
    END;
    end;
end;

procedure Tuterbitkanlimbah.gtvpelCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (Qpel.RecordCount>0)then
  begin

      if(Qpel.Fieldbyname('flag').AsString='0')then
      begin
          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('update dump11 set flag="1" where nomorlimbah=:nomorlimbah');
          DM.Qexec.ParamByName('nomorlimbah').AsString:=Qpel.Fieldbyname('nomorlimbah').AsString;
          DM.Qexec.Execute;

          Qpel.SQLRefresh.Clear;
          Qpel.SQLRefresh.Add('select flag from dump11 where nomorlimbah=:nomorlimbah');
          Qpel.RefreshRecord;

      end
      else
      begin

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('update dump11 set flag="0" where nomorlimbah=:nomorlimbah');
          DM.Qexec.ParamByName('nomorlimbah').AsString:=Qpel.Fieldbyname('nomorlimbah').AsString;
          DM.Qexec.Execute;

          Qpel.SQLRefresh.Clear;
          Qpel.SQLRefresh.Add('select flag from dump11 where nomorlimbah=:nomorlimbah');
          Qpel.RefreshRecord;

      end;

  end;
end;

procedure Tuterbitkanlimbah.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('DROP TABLE IF EXISTS dump11');
          DM.Qexec.Execute;

          
          DM.Qexec.close;          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('DROP TABLE IF EXISTS dump22');
          DM.Qexec.Execute; 
end;

procedure Tuterbitkanlimbah.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tuterbitkanlimbah.refreshClick(Sender: TObject);
begin

  Qpel.close;
  Qpel.SQl.Clear;
  Qpel.SQL.add(Qpelmain.SQLRefresh.Text);
  Qpel.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.Date);
  Qpel.Open;

end;

procedure Tuterbitkanlimbah.cxButton1Click(Sender: TObject);
var
j,i:integer;


kodelimbahyangberlaku:string;

_total:currency;


begin





    Qcek.close;
    Qcek.SQL.Clear;
    Qcek.SQL.Add(Qcek.SQLRefresh.Text);
    Qcek.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
    Qcek.Open;




    if(Qcek.RecordCount>0)then
    begin

       if MessageDlg('Terbitkan '+IntToStr(Qcek.RecordCount)+' Pelanggan Ke Rekening '+FormatDateTime('MMMM YYYY',periode.date)+'??     ' , mtConfirmation, [mbYes,mbNo], 0)=mrYes then
       begin

        uloading.proses.Caption:='Penerbitan Pelanggan...';
        uloading.Progress.PartsComplete:=0;
        uloading.Progress.TotalParts:=Qcek.RecordCount;
        uloading.proses.Visible:=true;
        uloading.Progress.Visible:=true;
        uloading.Show;
        Application.ProcessMessages;

              for j:=1 to Qcek.RecordCount do
              begin


                    kodelimbahyangberlaku:='-';


                    _total:=0;


                    Qgol.close;
                    Qgol.SQL.Clear;
                    Qgol.SQL.Add('SELECT * FROM golongan_limbah WHERE kodelimbah=:kodelimbah AND aktif="1"  ORDER BY periodemulaiberlaku DESC LIMIT 1');
                    Qgol.ParamByName('kodelimbah').AsString:=Qcek.fieldbyname('kodelimbah').AsString;
                    Qgol.Open;

                     if(Qgol.RecordCount>0)then
                     begin

                        kodelimbahyangberlaku:=Qgol.fieldbyname('kodelimbahyangberlaku').asstring;
                        _total:= Qgol.fieldbyname('biaya').AsCurrency;  

                     end;



                    Qexec.Close;
                    Qexec.SQL.Clear;
                    Qexec.SQL.Add('REPLACE INTO drdlimbah'+FormatDateTime('YYYYMM',periode.date)+' (nomorlimbah,nosamb,kodelimbahyangberlaku,kodelimbah,koderayon,total,flagaktif)');
                    Qexec.SQL.add('VALUES (:nomorlimbah,:nosamb,:kodelimbahyangberlaku,:kodelimbah,:koderayon,:total,:flagaktif)');
                    Qexec.ParamByName('nomorlimbah').AsString:= Qcek.fieldbyname('nomorlimbah').AsString;
                    Qexec.ParamByName('nosamb').AsString:= Qcek.fieldbyname('nosamb').AsString;
                    Qexec.ParamByName('kodelimbahyangberlaku').AsString:= kodelimbahyangberlaku;
                    Qexec.ParamByName('kodelimbah').AsString:= Qcek.fieldbyname('kodelimbah').AsString;
                    Qexec.ParamByName('koderayon').AsString:= Qcek.fieldbyname('koderayon').AsString;
                    Qexec.ParamByName('total').AsCurrency:= _total;
                    Qexec.ParamByName('flagaktif').AsString:= Qcek.fieldbyname('status').AsString;
                    Qexec.Execute;






              DM.uraianlogakses:='Terbitkan '+Qcek.Fieldbyname('nomorlimbah').AsString+' ke Rekening Limbah Bulan '+FormatDateTime('MMM YYYY',periode.date);
              DM.targetlogakses:=Qcek.Fieldbyname('nomorlimbah').AsString;
              DM.logakses;

            uloading.Progress.IncPartsByOne;
            Qcek.Next;
            end;

          uloading.proses.Visible:=false;
          uloading.Progress.Visible:=false;
          uloading.Close;
         
          MessageDlg(IntToStr(Qcek.RecordCount)+' PLG Berhasil Di Terbitkan ke Rekening '+FormatDateTime('MMMM YYYY',periode.date)+'     ' , mtInformation, [mbOK], 0);


        end
        else
          exit;


        end
        else
          MessageDlg('Harap Pilih Pelanggan..', mtInformation, [mbOK], 0);


end;

procedure Tuterbitkanlimbah.cxButton2Click(Sender: TObject);
begin
if(Qpel.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PELANGGAN BELUM TERBIT REKENING';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

end.
