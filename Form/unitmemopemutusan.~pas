unit unitmemopemutusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxImageComboBox, cxCurrencyEdit, frxClass, frxDBSet, DBAccess, MyAccess,
  dxmdaset, MemDS, ActnList, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, StdCtrls, cxButtons,
  cxLabel, RzLabel;

type
  Tumemopemutusan = class(TForm)
    RzPanel1: TRzPanel;
    nosamb: TcxTextEdit;
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
    cxGrid2: TcxGrid;
    gtv1: TcxGridDBTableView;
    gtv1RecId: TcxGridDBColumn;
    gtv1Column1: TcxGridDBColumn;
    gtv1nosamb: TcxGridDBColumn;
    gtv1nama: TcxGridDBColumn;
    gtv1alamat: TcxGridDBColumn;
    gtv1lembarair: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ActionList1: TActionList;
    Action2: TAction;
    Action1: TAction;
    Qcek: TMyQuery;
    mem_: TdxMemData;
    mem_urutan: TIntegerField;
    mem_periode: TStringField;
    mem_nosamb: TStringField;
    mem_nama: TStringField;
    mem_kodegol: TStringField;
    mem_kodediameter: TStringField;
    mem_biayapemakaian: TCurrencyField;
    mem_administrasi: TCurrencyField;
    mem_pemeliharaan: TCurrencyField;
    mem_retribusi: TCurrencyField;
    mem_dendatunggakan: TCurrencyField;
    mem_total: TCurrencyField;
    mem_pilih: TStringField;
    mem_rekair: TCurrencyField;
    mem_stanlalu: TCurrencyField;
    mem_stanskrg: TCurrencyField;
    mem_pakai: TCurrencyField;
    mem_genap: TStringField;
    mem_angsuran: TCurrencyField;
    mem_kode: TStringField;
    mem_flagair: TStringField;
    mem_nolpp: TStringField;
    mem_ots_1: TCurrencyField;
    mem_ots_2: TCurrencyField;
    mem_bulan: TStringField;
    mem_norekening: TStringField;
    mem_set: TStringField;
    Qcekrekdenda: TMyQuery;
    DStag: TMyDataSource;
    rek: TfrxDBDataset;
    report: TfrxReport;
    dxMemData1: TdxMemData;
    dxMemData1nosamb: TStringField;
    dxMemData1nama: TStringField;
    dxMemData1lembarair: TIntegerField;
    dxMemData1pilih: TStringField;
    MyDataSource1: TMyDataSource;
    Qpel: TMyQuery;
    MyDataSource2: TMyDataSource;
    Qcek1: TMyQuery;
    gtv1Column2: TcxGridDBColumn;
    gtv1Column3: TcxGridDBColumn;
    gtv1Column4: TcxGridDBColumn;
    gtv1Column5: TcxGridDBColumn;
    gtv1Column6: TcxGridDBColumn;
    dxMemData1rekair: TCurrencyField;
    dxMemData1denda: TCurrencyField;
    dxMemData1ots: TCurrencyField;
    dxMemData1biayalain: TCurrencyField;
    dxMemData1uangjaminan: TCurrencyField;
    PopupMenu1: TPopupMenu;
    PreviewCetak1: TMenuItem;
    RzPanel2: TRzPanel;
    koderayon: TcxComboBox;
    nomor: TcxTextEdit;
    ceknosamb: TcxCheckBox;
    cekrayon: TcxCheckBox;
    cxLabel1: TcxLabel;
    alasan: TcxComboBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    gtvpilih2: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    lembar1: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    lembar2: TcxCurrencyEdit;
    mem_alamat: TStringField;
    dxMemData1alamat: TStringField;
    cekpiutang: TcxCheckBox;
    RzPanel20: TRzPanel;
    Qsurat: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure gtv1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Action2Execute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure reportPrintReport(Sender: TObject);
    procedure PreviewCetak1Click(Sender: TObject);
    procedure gtv1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gtv1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cekpiutangClick(Sender: TObject);
  private
    { Private declarations }


    _nosurat:Integer;
    _tanggal:TDate;

    _nosamb,
    _norekening,
    _kodegol:String;

    _denda,
    _ots,
    _angsuran,
    _rekair1,
    _rekair2,
    _rekair3,
    _rekairlain,
    _jaminan,
    _lainnya,
    jumlah:Currency;

    _buatnosurat:Byte;

    _alasan:String;
    
  public
    { Public declarations }

    //(:nomor,:tanggal,:nosamb,:norekening,:kodegol,:denda,:ots,:angsuran,:rekair1,:rekair2,:rekair3,:rekairlain,:jaminan,:lainnya,:jumlah)

    procedure persiapancetak;

  end;

var
  umemopemutusan: Tumemopemutusan;

implementation

{$R *.dfm} uses Module, UnitCombo,UnitMain;


procedure Tumemopemutusan.persiapancetak();

var
j:integer;
bulanlalu:Currency;
banyakbulansebelumnya:integer;
rekair,jumlah1,jumlah2:Currency;  
begin

  _buatnosurat:=1;


  Qsurat.close;
  Qsurat.SQL.Clear;
  Qsurat.SQL.Add('select * FROM nosuratpemutusan WHERE nosamb=:nosamb AND DATE_FORMAT(tanggal,"%Y%m")=DATE_FORMAT(current_date,"%Y%m")');
  Qsurat.ParamByName('nosamb').AsString:=dxMemData1nosamb.AsString;
  Qsurat.Open;


  if(Qsurat.RecordCount>0)then
  begin

      if MessageDlg('Pelanggan dengan No.Samb : '+dxMemData1nosamb.AsString+' sudah pernah dibuatkan memo pemutusan pada bulan yang sama...'+char(13)+
      'Buat ulang atau Cetak Ulang memo dengan nomor yang lama ? '+char(13)+char(13)+
      'Jika "YES" nomor surat akan menggunakan nomor yang lama..'+char(13)+
      'Jika "NO/Tidak" nomor surat akan menggunakan nomor yang baru..', mtConfirmation, [Mbyes,Mbno], 0)=Mryes then
      begin
        _buatnosurat:=0;

      end
      else
        _buatnosurat:=1;


 end;


 if(_buatnosurat=1)then
 begin


  Qsurat.close;
  Qsurat.SQL.Clear;
  Qsurat.SQL.Add('select max(nomor)+1 as nomor FROM nosuratpemutusan');
  Qsurat.Open; 

 end
 else 
 begin

  Qsurat.close;
  Qsurat.SQL.Clear;
  Qsurat.SQL.Add('select nomor FROM nosuratpemutusan WHERE nosamb=:nosamb AND DATE_FORMAT(tanggal,"%Y%m")=DATE_FORMAT(current_date,"%Y%m")');
  Qsurat.ParamByName('nosamb').AsString:=dxMemData1nosamb.AsString;
  Qsurat.Open; 

 end;




  _nosurat:=Qsurat.fieldbyname('nomor').AsInteger;

TfrxMemoView(report.FindObject('nosurat')).Memo.Text:=Qsurat.fieldbyname('nomor').AsString;



Qcek1.close;
Qcek1.SQL.Clear;
Qcek1.SQL.Add('select * FROM pelanggan WHERE nosamb=:nosamb');
Qcek1.ParamByName('nosamb').AsString:=dxMemData1nosamb.AsString;
Qcek1.Open;

  TfrxMemoView(report.FindObject('tanggal')).Memo.Text:=FormatDateTime('DD-MM-YYYY',date);
  TfrxMemoView(report.FindObject('nomor')).Memo.Text:=Qcek1.fieldbyname('nosamb').AsString+ ' / '+Qcek1.fieldbyname('norekening').AsString;
  TfrxMemoView(report.FindObject('nama')).Memo.Text:=Qcek1.fieldbyname('nama').AsString;
  TfrxMemoView(report.FindObject('alamat')).Memo.Text:=Qcek1.fieldbyname('alamat').AsString;
  TfrxMemoView(report.FindObject('kodegol')).Memo.Text:=Qcek1.fieldbyname('kodegol').AsString;
  TfrxMemoView(report.FindObject('kodediameter')).Memo.Text:=Qcek1.fieldbyname('kodediameter').AsString;
  TfrxMemoView(report.FindObject('merkmeter')).Memo.Text:=Qcek1.fieldbyname('merkmeter').AsString;
  TfrxMemoView(report.FindObject('serimeter')).Memo.Text:=Qcek1.fieldbyname('serimeter').AsString;
  TfrxMemoView(report.FindObject('alasan')).Memo.Text:=alasan.Text;
  
  _alasan:= alasan.Text;

_tanggal:=date;
_nosamb:= Qcek1.fieldbyname('nosamb').AsString;
_norekening:=Qcek1.fieldbyname('norekening').AsString;
_kodegol:=Qcek1.fieldbyname('kodegol').AsString;

  


Qcek1.close;
Qcek1.SQL.Clear;
Qcek1.SQL.Add('select * FROM drd WHERE nosamb=:nosamb and flaglunas="0" AND flagangsur="0" ORDER BY periode DESC');
Qcek1.ParamByName('nosamb').AsString:=dxMemData1nosamb.AsString;
Qcek1.Open;


 bulanlalu:=0;
 banyakbulansebelumnya:=0;
 rekair:=0;
 jumlah1:=0;
 jumlah2:=0;

 _rekair1:=0;
 _rekair2:=0;
 _rekair3:=0;
 _rekairlain:=0;
 _angsuran:=0;
 _ots:=0;
 _denda:=0;
 _jaminan:=0;
 _lainnya:=0;
 

 


 Qcek1.First;
 
  for j:=1 to Qcek1.RecordCount do
  begin

    if(j>=1) and (j<=3) then
    begin

     TfrxMemoView(report.FindObject('bulan'+IntToStr(j))).Memo.Text:= Qcek1.fieldbyname('bulan').AsString;
     TfrxMemoView(report.FindObject('rek'+IntToStr(j))).Memo.Text:= FormatCurr(',0.;(,0.)',  Qcek1.fieldbyname('rekair').AsCurrency);

       if(j=1)then
          _rekair1:=Qcek1.fieldbyname('rekair').AsCurrency

       else  if(j=2)then
          _rekair2:=Qcek1.fieldbyname('rekair').AsCurrency

        else if(j=3)then
          _rekair3:=Qcek1.fieldbyname('rekair').AsCurrency;


    end;


    if(j>3) then
    begin

      bulanlalu:=bulanlalu + Qcek1.fieldbyname('rekair').AsCurrency;
      banyakbulansebelumnya:=banyakbulansebelumnya+1;


    end;


    rekair:=rekair+ Qcek1.fieldbyname('rekair').AsCurrency;
    

    Qcek1.Next;

  end;

  TfrxMemoView(report.FindObject('banyakbulansebelumnya')).Memo.Text:='( '+  FormatCurr(',0.;(,0.)', banyakbulansebelumnya) +' Bulan)';

  TfrxMemoView(report.FindObject('bulanlalu')).Memo.Text:=FormatCurr(',0.;(,0.)', bulanlalu);
   _rekairlain:= bulanlalu;

  TfrxMemoView(report.FindObject('denda')).Memo.Text:=FormatCurr(',0.;(,0.)',dxMemData1denda.Value);
  TfrxMemoView(report.FindObject('ots')).Memo.Text:=FormatCurr(',0.;(,0.)', dxMemData1ots.Value);
  TfrxMemoView(report.FindObject('biayalain')).Memo.Text:=FormatCurr(',0.;(,0.)', dxMemData1biayalain.Value);

  _lainnya:=dxMemData1biayalain.Value;

  TfrxMemoView(report.FindObject('uangjaminan')).Memo.Text:=FormatCurr(',0.;(,0.)', dxMemData1uangjaminan.Value);
  
  _jaminan:=dxMemData1uangjaminan.Value;
  _denda:=dxMemData1denda.Value;
  _ots:=dxMemData1ots.Value;
 




Qcek1.close;
Qcek1.SQL.Clear;
Qcek1.SQL.Add('select coalesce(SUm(total),0) as angsuran FROM nonair WHERE dibebankankepada=:nosamb and flaglunas="0" AND flagangsur="1" AND DATE_FORMAT(current_date,"%Y%m")>=DATE_FORMAT(tglmulaitagih,"%Y%m")');
Qcek1.ParamByName('nosamb').AsString:=dxMemData1nosamb.AsString;
Qcek1.Open;

TfrxMemoView(report.FindObject('angsuran')).Memo.Text:= FormatCurr(',0.;(,0.)',  Qcek1.fieldbyname('angsuran').AsCurrency);

_angsuran:= Qcek1.fieldbyname('angsuran').AsCurrency;

  jumlah1:=rekair+ dxMemData1denda.Value + dxMemData1ots.Value  + dxMemData1biayalain.Value + _angsuran ;
  jumlah2:=jumlah1-  dxMemData1uangjaminan.Value;

  TfrxMemoView(report.FindObject('jumlah1')).Memo.Text:=FormatCurr(',0.;(,0.)',jumlah1);

  TfrxMemoView(report.FindObject('jumlah2')).Memo.Text:=FormatCurr(',0.;(,0.)',jumlah2);
  
  
  
end;

procedure Tumemopemutusan.FormShow(Sender: TObject);
begin
ucombo.isikombo();
koderayon.Properties.Items:=ucombo.koderayon.Properties.Items;
end;

procedure Tumemopemutusan.cxButton3Click(Sender: TObject);
var
j:integer;
begin

 umain.openkoneksi_host;
  
  if(alasan.Text='')then
  begin
      MessageDlg('Alasan masih kosong !!', mtWarning, [MbOk], 0);
      alasan.SetFocus;
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



  gtv1.DataController.DataSource:=MyDataSource2;

  dxMemData1.close;
  dxMemData1.Open;



  Qpel.close;
  Qpel.SQL.Clear;
  Qpel.SQL.Add(Qpel.SQLRefresh.Text);



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


  if(cekpiutang.Checked=true)then
  begin

    Qpel.SQL.Add('AND c.lembar>=:lembar1 AND c.lembar<=:lembar2');
    Qpel.ParamByName('lembar1').AsCurrency:=lembar1.Value;
    Qpel.ParamByName('lembar2').AsCurrency:=lembar2.Value;

  end;




  Qpel.SQL.Add(' ORDER BY CAST(p.nosamb AS UNSIGNED) ASC');



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
  dxMemData1rekair.AsCurrency:=Qpel.fieldbyname('rekair').AsCurrency;
  dxMemData1denda.AsCurrency:=Qpel.fieldbyname('denda').AsCurrency;
  dxMemData1ots.AsCurrency:=Qpel.fieldbyname('ots').AsCurrency;
  dxMemData1biayalain.AsCurrency:=Qpel.fieldbyname('biayalain').AsCurrency;
  dxMemData1uangjaminan.AsCurrency:=Qpel.fieldbyname('uangjaminan').AsCurrency;
  dxMemData1pilih.AsString:='0';
  dxMemData1.Post;

  Qpel.Next;
  end;



  gtv1.DataController.DataSource:=MyDataSource1;
  dxMemData1.First;
end;
procedure Tumemopemutusan.ceknosambClick(Sender: TObject);
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

procedure Tumemopemutusan.cekrayonClick(Sender: TObject);
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

procedure Tumemopemutusan.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tumemopemutusan.cxButton4Click(Sender: TObject);
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
procedure Tumemopemutusan.cxButton5Click(Sender: TObject);
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
procedure Tumemopemutusan.gtv1CellDblClick(Sender: TcxCustomGridTableView;
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

procedure Tumemopemutusan.Action2Execute(Sender: TObject);
begin
close;
end;

procedure Tumemopemutusan.cxButton2Click(Sender: TObject);
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

                      persiapancetak;

                      //report.ShowReport();

                      report.PrepareReport();
                      report.PrintOptions.ShowDialog:=false;
                      report.Print;



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

procedure Tumemopemutusan.reportPrintReport(Sender: TObject);
begin

  DM.Qexec.close;
  DM.Qexec.SQL.Clear;
  DM.Qexec.SQL.Add('REPLACE INTO nosuratpemutusan (nomor,tanggal,nosamb,norekening,kodegol,denda,ots,angsuran,rekair1,rekair2,rekair3,rekairlain,jaminan,lainnya,jumlah,alasan,waktuupdate) values ');
  DM.Qexec.SQL.Add('(:nomor,:tanggal,:nosamb,:norekening,:kodegol,:denda,:ots,:angsuran,:rekair1,:rekair2,:rekair3,:rekairlain,:jaminan,:lainnya,:jumlah,:alasan,NOW())');
  DM.Qexec.ParamByName('nomor').AsInteger:=_nosurat;
  DM.Qexec.ParamByName('tanggal').AsDate:=_tanggal;
  DM.Qexec.ParamByName('nosamb').AsString:=_nosamb;
  DM.Qexec.ParamByName('norekening').AsString:=_norekening;
  DM.Qexec.ParamByName('kodegol').AsString:=_kodegol;
  DM.Qexec.ParamByName('denda').AsCurrency:=_denda;
  DM.Qexec.ParamByName('ots').AsCurrency:=_ots;
  DM.Qexec.ParamByName('angsuran').AsCurrency:=_angsuran;
  DM.Qexec.ParamByName('rekair1').AsCurrency:=_rekair1;
  DM.Qexec.ParamByName('rekair2').AsCurrency:=_rekair2;
  DM.Qexec.ParamByName('rekair3').AsCurrency:=_rekair3;
  DM.Qexec.ParamByName('rekairlain').AsCurrency:=_rekairlain;
  DM.Qexec.ParamByName('jaminan').AsCurrency:=_jaminan;
  DM.Qexec.ParamByName('lainnya').AsCurrency:=_lainnya;
  DM.Qexec.ParamByName('jumlah').AsCurrency:=_rekair1+
                                             _rekair2+
                                             _rekair3+
                                             _rekairlain+
                                             _ots+
                                             _denda+
                                             _angsuran+
                                             _jaminan+
                                             _lainnya;

  DM.Qexec.ParamByName('alasan').AsString:=_alasan;
  DM.Qexec.Execute;
  
end;

procedure Tumemopemutusan.PreviewCetak1Click(Sender: TObject);
begin

 if(dxMemData1.RecordCount>0)then
 begin

  persiapancetak;
  report.ShowReport();

 end;
 
end;

procedure Tumemopemutusan.gtv1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

PreviewCetak1.Enabled:=false;

if(dxMemData1.RecordCount>0) and (dxMemData1pilih.AsString='1') then
begin
  PreviewCetak1.Enabled:=true;

end;
end;

procedure Tumemopemutusan.gtv1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
     IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvpilih2.Index], varstring)='1') then
    BEGIN
      IF (gtv1.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
       ACanvas.Canvas.Brush.Color :=  clYellow;
      END;
    end;
end;

procedure Tumemopemutusan.cekpiutangClick(Sender: TObject);
begin
if(cekpiutang.Checked=true)then
  begin
      lembar1.Enabled:=true;
      lembar2.Enabled:=true;
      lembar1.SetFocus;
  end
  else
  begin
     lembar1.Enabled:=false;
     lembar2.Enabled:=false;
  end;
end;

end.
