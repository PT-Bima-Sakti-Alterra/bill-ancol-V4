unit unitsuratpiutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls, RzPanel, ActnList,
  DB, dxmdaset, MemDS, DBAccess, MyAccess, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  frxClass, frxDBSet, cxCheckBox, cxMaskEdit, cxDropDownEdit, RzLabel;

type
  Tusuratpiutang = class(TForm)
    RzPanel1: TRzPanel;
    nosamb: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    DStag: TMyDataSource;
    cxGrid1: TcxGrid;
    gridtag: TcxGridDBTableView;
    gridtagRecId: TcxGridDBColumn;
    gridtagpilih: TcxGridDBColumn;
    gridtagurutan: TcxGridDBColumn;
    gridtagbulan: TcxGridDBColumn;
    gridtagperiode: TcxGridDBColumn;
    gridtagnosamb: TcxGridDBColumn;
    gridtagkode: TcxGridDBColumn;
    gridtagnama: TcxGridDBColumn;
    gridtagalamat: TcxGridDBColumn;
    gridtagColumn2: TcxGridDBColumn;
    gridtagColumn3: TcxGridDBColumn;
    gridtagColumn4: TcxGridDBColumn;
    gridtagkodegol: TcxGridDBColumn;
    gridtagkodediameter: TcxGridDBColumn;
    gridtagbiayapemakaian: TcxGridDBColumn;
    gridtagadministrasi: TcxGridDBColumn;
    gridtagpemeliharaan: TcxGridDBColumn;
    gridtagretribusi: TcxGridDBColumn;
    gridtagColumn1: TcxGridDBColumn;
    gridtagdendatunggakan: TcxGridDBColumn;
    gridtagtotal: TcxGridDBColumn;
    gridtaggenap: TcxGridDBColumn;
    gridtagpilih2: TcxGridDBColumn;
    gridtagColumn5: TcxGridDBColumn;
    gridtagColumn6: TcxGridDBColumn;
    gridtagColumn7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    rek: TfrxDBDataset;
    report: TfrxReport;
    dxMemData1: TdxMemData;
    dxMemData1nosamb: TStringField;
    dxMemData1nama: TStringField;
    dxMemData1alamat: TStringField;
    dxMemData1lembarair: TIntegerField;
    cxGrid2: TcxGrid;
    gtv1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyDataSource1: TMyDataSource;
    gtv1RecId: TcxGridDBColumn;
    gtv1nosamb: TcxGridDBColumn;
    gtv1nama: TcxGridDBColumn;
    gtv1alamat: TcxGridDBColumn;
    gtv1lembarair: TcxGridDBColumn;
    dxMemData1pilih: TStringField;
    gtv1Column1: TcxGridDBColumn;
    Qpel: TMyQuery;
    MyDataSource2: TMyDataSource;
    RzPanel2: TRzPanel;
    ceknosamb: TcxCheckBox;
    cekstatus: TcxCheckBox;
    status: TcxComboBox;
    nomor: TcxTextEdit;
    cxLabel3: TcxLabel;
    cekrayon: TcxCheckBox;
    koderayon: TcxComboBox;
    lembar1: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    lembar2: TcxCurrencyEdit;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    RzPanel3: TRzPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    PreviewCetak1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    gtvpilih2: TcxGridDBColumn;
    Action3: TAction;
    RzPanel20: TRzPanel;
    Qcek2: TMyQuery;
    Qrek: TMyQuery;
    Qdetail: TMyQuery;
    DSdetail: TMyDataSource;
    rek2: TfrxDBDataset;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure gtv1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekstatusClick(Sender: TObject);
    procedure gtv1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gtv1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure PreviewCetak1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    adabiayabukasegel:String;

    procedure cetak;


  end;

var
  usuratpiutang: Tusuratpiutang;

implementation

{$R *.dfm}  uses Module,DAteUtils, UnitMain, UnitCombo, UnitKoreksiStan;


procedure Tusuratpiutang.cetak();
begin

     Qrek.close;
     Qrek.SQl.Clear;
     Qrek.SQL.Add('SELECT p.nosamb,p.nama,p.alamat,p.kodegol,g.golongan,COALESCE(c.rekair,0)+ IF(p.flag<>"2",COALESCE(c.denda,0),0) as total,COALESCE(c.lembar,0) AS lembar,CONCAT(n2.nama," ",LEFT(c.periodeakhir,4)) as periodeakhir,');
     Qrek.SQL.Add('CONCAT(n1.nama," ",LEFT(c.periodeawal,4)) as periodeawal FROM pelanggan p ');
     Qrek.SQL.Add('LEFT JOIN (SELECT nosamb,COUNT(kode) AS lembar,MAX(periode) AS periodeakhir,MIN(periode) AS periodeawal,SUM(rekair) as rekair, SUM(IF(current_date>= tglmulaidenda2,trf_dendatunggakan2,');
     Qrek.SQL.Add('IF(current_date>= tglmulaidenda,trf_dendatunggakan,0))) as denda FROM drd WHERE flaglunas="0" ');
     Qrek.SQL.Add('AND flagangsur="0" GROUP BY nosamb ASC) c ON p.nosamb=c.nosamb LEFT JOIN namabulan n1 ON RIGHT(c.periodeawal,2)=n1.bulan LEFT JOIN  namabulan n2 ON RIGHT(c.periodeakhir,2)=n2.bulan  ');
     Qrek.SQL.Add('LEFT JOIN golongan g ON p.kodegol=g.kodegol WHERE p.nosamb=:nosamb');
     Qrek.ParamByName('nosamb').AsString:=nosamb.Text;
     Qrek.Open;


     Qdetail.close;
     Qdetail.SQl.Clear;
     Qdetail.SQL.Add('select c.bulan,c.pakai,c.rekair, IF(p.flag<>"2",IF(current_date>= c.tglmulaidenda2,c.trf_dendatunggakan2,IF(current_date>= c.tglmulaidenda,c.trf_dendatunggakan,0)),0) as denda FROm drd c LEFT JOIN pelanggan p ON c.nosamb=p.nosamb');
     Qdetail.SQL.Add(' WHERE c.flaglunas="0" AND c.flagangsur="0" AND c.nosamb=:nosamb ORDER BY c.periode ASC');
     Qdetail.ParamByName('nosamb').AsString:=nosamb.Text;
     Qdetail.Open;


     TfrxMemoView(report.FindObject('terbilang')).Memo.Text:='#'+ ukoreksistan.fungsiterbilang(CurrToStr(Qrek.fieldbyname('total').AsCurrency))+'#';



end;



procedure Tusuratpiutang.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tusuratpiutang.FormShow(Sender: TObject);
begin
ucombo.isikombo();
koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
end;

procedure Tusuratpiutang.cxButton3Click(Sender: TObject);
var
j:integer;
begin


   umain.openkoneksi_host;


    if(status.Text='') and (cekstatus.Checked=true)then
  begin
      MessageDlg('Status masih kosong !!', mtWarning, [MbOk], 0);
      status.SetFocus;
      exit;
  end;

  if(nomor.Text='') and (ceknosamb.Checked=true)then
  begin
      MessageDlg('Nosamb masih kosong !!', mtWarning, [MbOk], 0);
      nosamb.SetFocus;
      exit;
  end;

  if(koderayon.Text='') and (cekrayon.Checked=true)then
  begin
      MessageDlg('Rayon masih kosong !!', mtWarning, [MbOk], 0);
      koderayon.SetFocus;
      exit;
  end;

  if(lembar1.Value=0) and (lembar2.Value=0)then
  begin
      MessageDlg('Isi lembar dengan benar !!', mtWarning, [MbOk], 0);
      lembar1.SetFocus;
      exit;
  end;



  gtv1.DataController.DataSource:=MyDataSource2;

  dxMemData1.close;
  dxMemData1.Open;    



  Qpel.close;
  Qpel.SQL.Clear;
  Qpel.SQL.Add(Qpel.SQLRefresh.Text);



    if(cekstatus.Checked=true)then
  begin

    Qpel.SQL.Add('AND p.status=:status ');
    Qpel.ParamByName('status').AsString:=IntToStr(status.ItemIndex);

  end;


   if(ceknosamb.Checked=true)then
  begin

    Qpel.SQL.Add('AND p.nosamb=:nosamb ');
    Qpel.ParamByName('nosamb').AsString:=nomor.Text;

  end;

  if(cekrayon.Checked=true)then
  begin

    Qpel.SQL.Add('AND p.koderayon=:koderayon ');
    Qpel.ParamByName('koderayon').AsString:=koderayon.Text;

  end;

  Qpel.SQL.Add('AND c.lembar>=:lembar1 AND c.lembar<=:lembar2 ORDER BY CAST(p.nosamb AS UNSIGNED) ASC');


  Qpel.ParamByName('lembar1').AsCurrency:=lembar1.Value;
  Qpel.ParamByName('lembar2').AsCurrency:=lembar2.Value;
  Qpel.Open;



  if Qpel.RecordCount=0 then
  begin
       MessageDlg('Tidak ada data!!', mtInformation, [MbOk], 0);
       exit;
  end;


  for j:=1 to Qpel.RecordCount do
  begin

  dxMemData1.Append;
  dxMemData1nosamb.AsString:=Qpel.fieldbyname('nosamb').AsString;
  dxMemData1nama.AsString:=Qpel.fieldbyname('nama').AsString;
  dxMemData1alamat.AsString:=Qpel.fieldbyname('alamat').AsString;
  dxMemData1lembarair.AsString:=Qpel.fieldbyname('lembar').AsString;
  dxMemData1pilih.AsString:='0';
  dxMemData1.Post;

  Qpel.Next;
  end;



  gtv1.DataController.DataSource:=MyDataSource1;
  dxMemData1.First;
end;

procedure Tusuratpiutang.gtv1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if (dxMemData1.RecordCount>0)then
begin

      if(dxMemData1pilih.AsString='0')then
      begin
      dxMemData1.Edit;
      dxMemData1pilih.AsString:='1';
      dxMemData1.Post;
      end
      else
      begin
      dxMemData1.Edit;
      dxMemData1pilih.AsString:='0';
      dxMemData1.Post;

      end;



end;

  

end;

procedure Tusuratpiutang.cxButton4Click(Sender: TObject);
var
j:integer;
begin

  try

  Enabled:=false;
  
          if dxMemData1.RecordCount>0 then
          begin

            dxMemData1.First;


              for j:=1 to dxMemData1.RecordCount do
              begin

                dxMemData1.Edit;
                dxMemData1pilih.AsString:='1';
                dxMemData1.Post;

               dxMemData1.Next;

              end;

             dxMemData1.First;
          end;

  FINALLY
      Enabled:=true;
  END;
  

end;

procedure Tusuratpiutang.cxButton5Click(Sender: TObject);
var
j:integer;
begin

  try

  Enabled:=false;
  
          if dxMemData1.RecordCount>0 then
          begin

            dxMemData1.First;


              for j:=1 to dxMemData1.RecordCount do
              begin

                dxMemData1.Edit;
                dxMemData1pilih.AsString:='0';
                dxMemData1.Post;

               dxMemData1.Next;

              end;

             dxMemData1.First;
          end;

  FINALLY
      Enabled:=true;
  END;
  

end;


procedure Tusuratpiutang.ceknosambClick(Sender: TObject);
begin

  if(ceknosamb.Checked=true)then
  begin
      nomor.Enabled:=true;
      nomor.SetFocus;
  end
  else
  begin
     nomor.Enabled:=false;
  end;

end;

procedure Tusuratpiutang.cekrayonClick(Sender: TObject);
begin
if(cekrayon.Checked=true)then
  begin
      koderayon.Enabled:=true;
      koderayon.SetFocus;
  end
  else
  begin
     koderayon.Enabled:=false;
  end;
end;

procedure Tusuratpiutang.cekstatusClick(Sender: TObject);
begin
if(cekstatus.Checked=true)then
  begin
      status.Enabled:=true;
      status.SetFocus;
  end
  else
  begin
     status.Enabled:=false;
  end;
end;

procedure Tusuratpiutang.gtv1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

PreviewCetak1.Enabled:=false;

if (dxMemData1.RecordCount>0) and (dxMemData1pilih.AsString='1')then
begin

  PreviewCetak1.Enabled:=true;

end;
end;

procedure Tusuratpiutang.gtv1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpilih2.Index], varstring)='1') then
    BEGIN
      IF (gtv1.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  clYellow;
      END;
    end;
end;

procedure Tusuratpiutang.cxButton2Click(Sender: TObject);
var
j:integer;
lanjut:byte;
begin

 lanjut:=0;


   if MessageDlg('Cetak Dokument : '+char(13)+
   'Harap pastikan printer sudah terhubung.... Lakukan Cetak ?', mtConfirmation, [MbYes,MbNo], 0)=MryEs then
   begin
    lanjut:=1;
   end
   else
    lanjut:=0;


  if lanjut=0 then
  begin
    exit;
  end;

  TRY

    Enabled:=false;

  TRY


          if dxMemData1.RecordCount>0 then
          begin

            dxMemData1.First;


              for j:=1 to dxMemData1.RecordCount do
              begin

                 if(dxMemData1pilih.AsString='1')then
                 begin

                      nosamb.Text:=dxMemData1nosamb.AsString;
                      cetak;


                      report.PrepareReport();
                      report.PrintOptions.ShowDialog:=false;
                      report.Print; 

                        //report.ShowReport();


                 end;

               dxMemData1.Next;

              end;


             dxMemData1.First;

          end;
          
    EXCEPT ON E:Exception DO
    BEGIn
       MessageDlg('Terjadi Kesalahan : '+char(13)+E.Message, mtError, [mbOK], 0);
       exit;
    END;
    END;

    


  FINALLY
      Enabled:=true;
  END;

end;

procedure Tusuratpiutang.PreviewCetak1Click(Sender: TObject);
begin

   if dxMemData1.RecordCount>0 then
   begin
            nosamb.Text:=dxMemData1nosamb.AsString;
            cetak;

            report.ShowReport();
   end;
end;

end.
