unit FRAME_lltt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, cxContainer, cxEdit, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxCurrencyEdit, ComCtrls,
  dxCore, cxDateUtils, Menus, StdCtrls, cxButtons, RzDTP, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxCheckBox, cxGridChartView, cxGridDBChartView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxImage, cxPC, cxMemo, cxTextEdit,
  cxLabel, cxGroupBox, cxScrollBox, RzSplit, cxImageComboBox, DBAccess,
  MyAccess, MemDS, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon;

type
  TFRlltt = class(TFrame)
    info: TRzPanel;
    RzSizePanel2: TRzSizePanel;
    cxScrollBox2: TcxScrollBox;
    RzPanel13: TRzPanel;
    cekgolongan: TcxCheckBox;
    cekrayon: TcxCheckBox;
    ceknosamb: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekalamat: TcxCheckBox;
    cekkolektif: TcxCheckBox;
    kolektif: TcxComboBox;
    alamat: TcxTextEdit;
    nama: TcxTextEdit;
    nosamb: TcxTextEdit;
    kodelltt: TcxComboBox;
    golonganlltt: TcxComboBox;
    namarayon: TcxComboBox;
    koderayon: TcxComboBox;
    tglbayar1: TcxDateEdit;
    cektglbayar: TcxCheckBox;
    cekrekair: TcxCheckBox;
    rekair1: TcxCurrencyEdit;
    rekair2: TcxCurrencyEdit;
    tglbayar2: TcxDateEdit;
    cxLabel80: TcxLabel;
    cxLabel5: TcxLabel;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    wilayah: TcxComboBox;
    kodewil: TcxComboBox;
    cekwilayah: TcxCheckBox;
    cekkasir: TcxCheckBox;
    kasir: TcxComboBox;
    cekloket: TcxCheckBox;
    loket: TcxComboBox;
    kodekolektif: TcxComboBox;
    RzPanel22: TRzPanel;
    ceknorek: TcxCheckBox;
    nomorlltt: TcxTextEdit;
    RzPanel3: TRzPanel;
    RzPanel6: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel4: TcxLabel;
    cekstatus: TcxCheckBox;
    status: TcxComboBox;
    pindahperiode: TcxButton;
    tampilkan: TcxButton;
    limit: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    RzPanel2: TRzPanel;
    Gridrek: TcxGrid;
    Gtvrek: TcxGridDBTableView;
    GridrekLevel1: TcxGridLevel;
    RzPanel15: TRzPanel;
    cxButton1: TcxButton;
    terbitkanpelanggan: TcxButton;
    refresh: TcxButton;
    cxButton3: TcxButton;
    publishsemua: TcxButton;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    GtvrekColumn1: TcxGridDBColumn;
    GtvrekColumn2: TcxGridDBColumn;
    GtvrekColumn3: TcxGridDBColumn;
    GtvrekColumn4: TcxGridDBColumn;
    GtvrekColumn5: TcxGridDBColumn;
    GtvrekColumn6: TcxGridDBColumn;
    GtvrekColumn7: TcxGridDBColumn;
    GtvrekColumn8: TcxGridDBColumn;
    GtvrekColumn9: TcxGridDBColumn;
    GtvrekColumn10: TcxGridDBColumn;
    GtvrekColumn11: TcxGridDBColumn;
    GtvrekColumn12: TcxGridDBColumn;
    GtvrekColumn13: TcxGridDBColumn;
    GtvrekColumn14: TcxGridDBColumn;
    GtvrekColumn15: TcxGridDBColumn;
    GtvrekColumn16: TcxGridDBColumn;
    GtvrekColumn17: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Koreksi1: TMenuItem;
    Unpublish1: TMenuItem;
    Publish1: TMenuItem;
    UploadUlang1: TMenuItem;
    Hapus1: TMenuItem;
    Qcekhost: TMyQuery;
    Qexec: TMyQuery;
    GtvrekColumn18: TcxGridDBColumn;
    gtvreklunas: TcxGridDBColumn;
    cekcab: TcxCheckBox;
    cekkel: TcxCheckBox;
    kodecab: TcxComboBox;
    cab: TcxComboBox;
    kel: TcxComboBox;
    kodekel: TcxComboBox;
    MyDataSource1: TMyDataSource;
    RzPanel11: TRzPanel;
    cxLabel15: TcxLabel;
    RzPanel12: TRzPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure tampilkanClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekwilayahClick(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure ceknorekClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekalamatClick(Sender: TObject);
    procedure cekkolektifClick(Sender: TObject);
    procedure cektglbayarClick(Sender: TObject);
    procedure cekrekairClick(Sender: TObject);
    procedure cekkasirClick(Sender: TObject);
    procedure cekloketClick(Sender: TObject);
    procedure ceklainnyaClick(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure kodekolektifPropertiesChange(Sender: TObject);
    procedure kolektifPropertiesChange(Sender: TObject);
    procedure cekgolonganClick(Sender: TObject);
    procedure pindahperiodeClick(Sender: TObject);
    procedure publishsemuaClick(Sender: TObject);
    procedure Publish1Click(Sender: TObject);
    procedure Unpublish1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure UploadUlang1Click(Sender: TObject);
    procedure GtvrekCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Koreksi1Click(Sender: TObject);
    procedure GtvrekCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure kodellttPropertiesChange(Sender: TObject);
    procedure golonganllttPropertiesChange(Sender: TObject);
    procedure cekcabClick(Sender: TObject);
    procedure cekkelClick(Sender: TObject);
    procedure kodecabPropertiesChange(Sender: TObject);
    procedure cabPropertiesChange(Sender: TObject);
    procedure kodekelPropertiesChange(Sender: TObject);
    procedure kelPropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure terbitkanpelangganClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     procedure isicomborekening();
  end;

implementation

uses UnitCombo, Module, UnitMain, unitloading, UnitKoreksiLimbah,
  UnitKoreksilltt, unitterbitkanlltt;

{$R *.dfm}


procedure TFRlltt.isicomborekening();
begin

  ucombo.isikombo();

  namarayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;


  kodelltt.properties.items:= Ucombo.kodelltt.properties.items;
  golonganlltt.properties.items:= Ucombo.namalltt.properties.items;


  kodekolektif.properties.items:= Ucombo.kodekolektif.properties.items;
  kolektif.properties.items:= Ucombo.kolektif.properties.items;



  kodewil.properties.items:= Ucombo.kodewil.properties.items;
  wilayah.properties.items:= Ucombo.wilayah.properties.items;  

  kasir.properties.items:= Ucombo.kasir.properties.items;
  loket.properties.items:= Ucombo.kodeloket.properties.items;

  kodecab.properties.items:= Ucombo.kodecabang.properties.items;
  cab.properties.items:= Ucombo.cabang.properties.items;

  kodekel.properties.items:= Ucombo.kodekelurahan.properties.items;
  kel.properties.items:= Ucombo.kelurahan.properties.items;




{  sumberair.properties.items:= Ucombo.sumberair.properties.items;
  flag.properties.items:= Ucombo.flag.properties.items;
  kodeflag.properties.items:= Ucombo.kodeflag.properties.items;

  kodeadm_lain.properties.items:= Ucombo.kodeadmlain.properties.items;
  adm_lain.properties.items:= Ucombo.ketadmlain.properties.items;

   kodepem_lain.properties.items:= Ucombo.kodepemlain.properties.items;
  pem_lain.properties.items:= Ucombo.ketpemlain.properties.items;

   koderet_lain.properties.items:= Ucombo.koderetlain.properties.items;
  ret_lain.properties.items:= Ucombo.ketretlain.properties.items;

  namapembaca.properties.items:= Ucombo.namapembaca.properties.items;

   kodekondisi.properties.items:= Ucombo.kodekondisi.properties.items;
  kondisimeter.properties.items:= Ucombo.kondisimeter.properties.items; }


end;

procedure TFRlltt.tampilkanClick(Sender: TObject);
begin


 Dm.Qcek.close;
 Dm.Qcek.SQL.Clear;
 Dm.Qcek.SQL.Add('SHOW TABLES  LIKE "%drdlltt'+FormatDateTime('YYYYMM',periode.date)+'%" ');
 Dm.Qcek.Open;


 if Dm.Qcek.recordcount=0 then
 begin
    MessageDlg('Periode Rekening L2T2 '+FormatDateTime('MMMM YYYY',periode.date)+' Belum Tersedia !!', mtInformation, [mbOK], 0);
    Exit;
 end;





  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add('select c.*,p.nama,p.flag,p.alamat,r.namarayon,r.kodewil,r.wilayah,gl.nama as golonganlltt FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan_lltt p ON c.nomorlltt=p.nomorlltt LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN (select kodelltt,nama FROm golongan_lltt GROUP BY kodelltt) gl ON c.kodelltt=gl.kodelltt ');
  Qrek.SQL.Add('LEFT JOIN kelurahan k ON k.`kodekelurahan` = p.`kodekelurahan`  WHERE c.nomorlltt IS NOT NULL ');

  
          if (cekrayon.Checked=true)then
          begin
            Qrek.SQL.add('and c.koderayon=:koderayon');
            Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
          end;

          if (cekgolongan.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodelltt=:kodelltt');
            Qrek.ParamByName('kodelltt').AsString:=kodelltt.Text;
          end;

            if (cekwilayah.Checked=true)then
          begin
              Qrek.SQL.add('and r.kodewil=:kodewil');
              Qrek.ParamByName('kodewil').AsString:=kodewil.Text;
            
          end;

           if (ceknosamb.Checked=true)then
          begin
            Qrek.SQL.add('and c.nosamb=:nosamb');
            Qrek.ParamByName('nosamb').AsString:=nosamb.Text;
          end;

           if (ceknorek.Checked=true)then
          begin
            Qrek.SQL.add('and c.nomorlltt=:nomorlltt');
            Qrek.ParamByName('nomorlltt').AsString:=nomorlltt.Text;
          end;

           if (ceknama.Checked=true)then
          begin
            Qrek.SQL.add('and p.nama LIKE "%" :nama "%"');
            Qrek.ParamByName('nama').AsString:=nama.Text;
          end;

          if cekcab.Checked=true then
          begin
            Qrek.SQL.Add('AND k.kodecabang=:kodecabang');
            Qrek.ParamByName('kodecabang').AsString:=kodecab.Text;
          end;

          if cekkel.Checked=true then
          begin
            Qrek.SQL.Add('AND p.kodekelurahan=:kodekelurahan');
            Qrek.ParamByName('kodekelurahan').AsString:=kodekel.Text;
          end;



          if (cekalamat.Checked=true)then
          begin
            Qrek.SQL.add('and p.alamat LIKE CONCAT("%" :alamat "%")');
            Qrek.ParamByName('alamat').AsString:=alamat.Text;
          end;

          if (cekkolektif.Checked=true)then
          begin
            Qrek.SQL.add('and p.kodekolektif LIKE CONCAT("%",:kodekolektif,"%")');
            Qrek.ParamByName('kodekolektif').AsString:=kodekolektif.Text;
          end;

          if(cektglbayar.Checked=true)then
          begin
            Qrek.SQL.add('AND date(c.tglbayar)>=:tglbayar1 and date(c.tglbayar)<=:tglbayar2');
            Qrek.ParamByName('tglbayar1').AsDate:=tglbayar1.Date;
            Qrek.ParamByName('tglbayar2').AsDate:=tglbayar2.Date;
          end;

          if(cekrekair.Checked=true)then
          begin
            Qrek.SQL.add('AND c.total>=:total1 and c.total<=:total2');
            Qrek.ParamByName('total1').AsCurrency:=rekair1.Value;
            Qrek.ParamByName('total2').AsCurrency:=rekair2.Value;
          end;


          if (cekstatus.Checked=true)then
          begin
            Qrek.SQL.add('and c.flagaktif=:flagaktif');
            Qrek.ParamByName('flagaktif').AsString:= IntToStr(status.ItemIndex);
          end;

          
          if (cekkasir.Checked=true)then
          begin
            Qrek.SQL.add('and c.kasir=:kasir');
            Qrek.ParamByName('kasir').AsString:=kasir.Text;
          end;


          if (cekloket.Checked=true)then
          begin
            Qrek.SQL.add('and c.loketbayar=:loketbayar');
            Qrek.ParamByName('loketbayar').AsString:=loket.Text;
          end;



          if (ceklainnya.Checked=true)then
          begin


            if(lainnya.Text='Sudah Publish')then
            begin
              Qrek.SQL.add('and c.flagpublish="1"');
            end;

            if(lainnya.Text='Belum Publish')then
            begin
              Qrek.SQL.add('and c.flagpublish="0"');
            end;

            if(lainnya.Text='Sudah Lunas')then
            begin
              Qrek.SQL.add('and c.flaglunas="1"');
            end;

            if(lainnya.Text='Belum Lunas')then
            begin
              Qrek.SQL.add('and c.flaglunas="0"');
            end;

            if(lainnya.Text='Sudah Upload')then
            begin
              Qrek.SQL.add('and c.flagkirim="1"');
            end;

            if(lainnya.Text='Belum Upload')then
            begin
              Qrek.SQL.add('and c.flagpublish="1" AND c.flagkirim="0"');
            end; 

          end;

          Qrek.SQL.add('order by CAST(c.nomorlltt AS UNSIGNED) asc limit :limit');
          Qrek.ParamByName('limit').AsCurrency:=limit.Value;
          Qrek.Open;






    info.Caption:='DAFTAR REKENING L2T2 '+UpperCase(FormatDateTime('MMMM YYYY',periode.date));
    pindahperiode.Visible:=true;
    periode.Enabled:=false;

end;

procedure TFRlltt.cekrayonClick(Sender: TObject);
begin
 if(cekrayon.Checked=true)then
  begin
    koderayon.Enabled:=true;
    namarayon.Enabled:=true;
    koderayon.SetFocus;
  end
  else
  begin
    koderayon.Enabled:=false;
    namarayon.Enabled:=false;
  end;

end;

procedure TFRlltt.cekwilayahClick(Sender: TObject);
begin
 if(cekwilayah.Checked=true)then
  begin
    kodewil.Enabled:=true;
    wilayah.Enabled:=true;
    kodewil.SetFocus;
  end
  else
  begin
    kodewil.Enabled:=false;
    wilayah.Enabled:=false;
  end;
end;

procedure TFRlltt.ceknosambClick(Sender: TObject);
begin
  if(ceknosamb.Checked=true)then
  begin
    nosamb.Enabled:=true;
    nosamb.SetFocus;
  end
  else
    nosamb.Enabled:=false;
end;

procedure TFRlltt.ceknorekClick(Sender: TObject);
begin
   if(ceknorek.Checked=true)then
   begin
    nomorlltt.Enabled:=true;
    nomorlltt.SetFocus;
  end
  else
    nomorlltt.Enabled:=false;
end;

procedure TFRlltt.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
 begin
    nama.Enabled:=true;
    nama.SetFocus;
 end
 else
    nama.Enabled:=false;
end;

procedure TFRlltt.cekalamatClick(Sender: TObject);
begin
 if(cekalamat.Checked=true)then
 begin
    alamat.Enabled:=true;
    alamat.SetFocus;
 end
  else
    alamat.Enabled:=false;
end;

procedure TFRlltt.cekkolektifClick(Sender: TObject);
begin
   if(cekkolektif.Checked=true)then
  begin
    kodekolektif.Enabled:=true;
    kolektif.Enabled:=true;
    kodekolektif.SetFocus;
   end
  else
  begin
    kodekolektif.Enabled:=false;
    kolektif.Enabled:=false;
  end;
end;

procedure TFRlltt.cektglbayarClick(Sender: TObject);
begin
 if(cektglbayar.Checked=true)then
  begin
    tglbayar1.Enabled:=true;
    tglbayar2.Enabled:=true;
    tglbayar1.SetFocus;
   end
  else
  begin
    tglbayar1.Enabled:=false;
    tglbayar2.Enabled:=false;
  end;
end;

procedure TFRlltt.cekrekairClick(Sender: TObject);
begin
   if(cekrekair.Checked=true)then
  begin
    rekair1.Enabled:=true;
    rekair2.Enabled:=true;
    rekair1.SetFocus;
   end
  else
  begin
    rekair1.Enabled:=false;
    rekair2.Enabled:=false;
  end;
end;

procedure TFRlltt.cekkasirClick(Sender: TObject);
begin
 if(cekkasir.Checked=true)then
 begin
    kasir.Enabled:=true;
    kasir.SetFocus;
 end
  else
    kasir.Enabled:=false;
end;

procedure TFRlltt.cekloketClick(Sender: TObject);
begin
 if(cekloket.Checked=true)then
 begin
    loket.Enabled:=true;
    loket.SetFocus;
 end
  else
    loket.Enabled:=false;
end;

procedure TFRlltt.ceklainnyaClick(Sender: TObject);
begin
if(ceklainnya.Checked=true)then
begin
    lainnya.Enabled:=true;
    lainnya.SetFocus;
end
else
    lainnya.Enabled:=false;
end;

procedure TFRlltt.koderayonPropertiesChange(Sender: TObject);
begin
namarayon.ItemIndex:=koderayon.ItemIndex;
end;

procedure TFRlltt.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFRlltt.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRlltt.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRlltt.kodekolektifPropertiesChange(Sender: TObject);
begin
kolektif.ItemIndex:=kodekolektif.ItemIndex;
end;

procedure TFRlltt.kolektifPropertiesChange(Sender: TObject);
begin
kodekolektif.ItemIndex:=kolektif.ItemIndex;
end;

procedure TFRlltt.cekgolonganClick(Sender: TObject);
begin
 if(cekgolongan.Checked=true)then
  begin
    kodelltt.Enabled:=true;
    golonganlltt.Enabled:=true;
    kodelltt.SetFocus;
  end
  else
  begin
    kodelltt.Enabled:=false;
    golonganlltt.Enabled:=false;
  end;
end;

procedure TFRlltt.pindahperiodeClick(Sender: TObject);
begin

   pindahperiode.Visible:=false;
   periode.Enabled:=true;
   periode.SetFocus;

   Qrek.close;
   Umain.Caption:='DAFTAR REKENING L2T2';
end;

procedure TFRlltt.publishsemuaClick(Sender: TObject);
var
j:integer;
begin


  if Qrek.RecordCount>0 then
  begin

      TRY

        TRY

              Umain.Enabled:=false;
              Enabled:=false;

              Gtvrek.DataController.DataSource:=MyDataSource1;



              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(' START TRANSACTION');
              DM.Qexec.Execute;


              Qrek.First;


              uloading.proses.Caption:='Publish..';
              uloading.Progress.PartsComplete:=0;
              uloading.Progress.TotalParts:=Qrek.RecordCount;
              uloading.proses.Visible:=true;
              uloading.Progress.Visible:=true;
              uloading.Show;

              Application.ProcessMessages;
        

              for j :=1  to Qrek.RecordCount  do
              begin

                  if (Qrek.fieldbyname('flaglunas').AsString='0') and (Qrek.fieldbyname('flagpublish').AsString='0') and (Qrek.fieldbyname('flagaktif').AsString<>'0') then
                  begin


                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' SET flagpublish="1" WHERE nomorlltt=:nomorlltt');
                      DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('REPLACE INTO piutanglltt SELECT :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c WHERE nomorlltt=:nomorlltt');
                      DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                      DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.date); 
                      DM.Qexec.ParamByName('flag').AsString:=Qrek.fieldbyname('flag').AsString;
                      DM.Qexec.ParamByName('golongan').AsString:=Qrek.fieldbyname('golonganlltt').AsString;
                      DM.Qexec.ParamByName('namaloket').AsString:='';
                      DM.Qexec.ParamByName('kodewil').AsString:=Qrek.fieldbyname('kodewil').AsString;
                      DM.Qexec.ParamByName('namawil').AsString:=Qrek.fieldbyname('wilayah').AsString;
                      DM.Qexec.Execute;


                  end;

                  uloading.Progress.IncPartsByOne;
                  Application.ProcessMessages;
                  Qrek.Next;
              end;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              tampilkan.Click;

        EXCEPT ON E:Exception DO
        BEGIN


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('ROLLBACK');
              DM.Qexec.Execute;

              MessageDlg('Terjadi Kesalahan !!'+char(13)+E.Message, mtError, [mbok], 0);

        END;
        END;


      FINALLY
         Enabled:=true;
         Umain.Enabled:=true;
         Gtvrek.DataController.DataSource:=DSrek;
         uloading.close;
      END;

  END;




  


end;

procedure TFRlltt.Publish1Click(Sender: TObject);
begin


  if Qrek.RecordCount>0 then
  begin

        if (Qrek.fieldbyname('total').AsCurrency=0) then
        begin
            MessageDlg('Tagihan 0 Rupiah tidak dapat di publish', mtWarning, [mbok], 0);
            Exit;
        end;

         if (Qrek.fieldbyname('flaglunas').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah Lunas tidak dapat di publish Ulang', mtWarning, [mbok], 0);
            Exit;
        end;


           if (Qrek.fieldbyname('flagpublish').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah di Publish', mtWarning, [mbok], 0);
            Exit;
        end;




      TRY

        TRY


              Enabled:=false;



              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(' START TRANSACTION');
              DM.Qexec.Execute;




                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' SET flagpublish="1" WHERE nomorlltt=:nomorlltt');
                      DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.Execute;

                      DM.Qexec.close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('REPLACE INTO piutanglltt SELECT :kode,:periode,:bulan,c.*,:flag,:golongan,:namaloket,:kodewil,:namawil FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c WHERE nomorlltt=:nomorlltt');
                      DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',periode.date);
                      DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                      DM.Qexec.ParamByName('bulan').AsString:=FormatDateTime('MMM YYYY',periode.date);
                      DM.Qexec.ParamByName('flag').AsString:=Qrek.fieldbyname('flag').AsString;
                      DM.Qexec.ParamByName('golongan').AsString:=Qrek.fieldbyname('golonganlltt').AsString;
                      DM.Qexec.ParamByName('namaloket').AsString:='';
                      DM.Qexec.ParamByName('kodewil').AsString:=Qrek.fieldbyname('kodewil').AsString;
                      DM.Qexec.ParamByName('namawil').AsString:=Qrek.fieldbyname('wilayah').AsString;
                      DM.Qexec.Execute;





              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;


              Qrek.SQLRefresh.Clear;
              Qrek.SQLRefresh.Add('select c.*,p.nama,p.alamat,r.namarayon,r.kodewil,r.wilayah,gl.nama as golonganlltt FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan_lltt p ON c.nomorlltt=p.nomorlltt LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN (select kodelltt,nama FROm golongan_lltt GROUP BY kodelltt) gl ON c.kodelltt=gl.kodelltt WHERE c.nomorlltt=:nomorlltt')  ;
              Qrek.RefreshRecord;

            

        EXCEPT ON E:Exception DO
        BEGIN


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('ROLLBACK');
              DM.Qexec.Execute;

              MessageDlg('Terjadi Kesalahan !!'+char(13)+E.Message, mtError, [mbok], 0);

        END;
        END;


      FINALLY
         Enabled:=true;
      END;

  END;


end;

procedure TFRlltt.Unpublish1Click(Sender: TObject);
begin

  if Qrek.RecordCount>0 then
  begin


         if (Qrek.fieldbyname('flaglunas').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah Lunas tidak dapat di Unpublish', mtWarning, [mbok], 0);
            Exit;
        end;


           if (Qrek.fieldbyname('flagpublish').AsCurrency=0) then
        begin
            MessageDlg('Tagihan Sudah di Unpublish', mtWarning, [mbok], 0);
            Exit;
        end;




      TRY

        TRY


              Enabled:=false;

              umain.openkoneksi_host;




              Qcekhost.close;
              Qcekhost.SQL.Clear;
              Qcekhost.SQL.Add('select * FROm bayarlltt WHERE kode=:kode AND flaglunas="1"');
              Qcekhost.parambyname('kode').asstring:= FormatDateTime('YYYYMM',periode.Date)+'.'+Qrek.fieldbyname('nomorlltt').asstring;
              Qcekhost.Open;

              if(Qcekhost.recordcount>0) then
              begin
                  MessageDlg('Maaf, Rekening sudah di Lunasi !!! di Loket...', mtInformation, [MbOk], 0);

              end
              else
              begin


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(' START TRANSACTION');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('START TRANSACTION');
              Qexec.Execute;





                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' SET flagpublish="0",flagkirim="0" WHERE nomorlltt=:nomorlltt');
                  DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                  DM.Qexec.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('DELETE FROM piutanglltt WHERE kode=:kode');
                  DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nomorlltt').AsString;  
                  DM.Qexec.Execute;


                  Qexec.close;
                  Qexec.SQL.Clear;
                  Qexec.SQL.Add('DELETE FROM piutanglltt WHERE kode=:kode');
                  Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nomorlltt').AsString;
                  Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('COMMIT');
              Qexec.Execute;


              Qrek.SQLRefresh.Clear;
              Qrek.SQLRefresh.Add('select c.*,p.nama,p.alamat,r.namarayon,r.kodewil,r.wilayah,gl.nama as golonganlltt FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan_lltt p ON c.nomorlltt=p.nomorlltt LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN (select kodelltt,nama FROm golongan_lltt GROUP BY kodelltt) gl ON c.kodelltt=gl.kodelltt WHERE c.nomorlltt=:nomorlltt')  ;
              Qrek.RefreshRecord;




              end;




            

        EXCEPT ON E:Exception DO
        BEGIN


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('ROLLBACK');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('ROLLBACK');
              Qexec.Execute;

              MessageDlg('Terjadi Kesalahan !!'+char(13)+E.Message, mtError, [mbok], 0);

        END;
        END;


      FINALLY
         Enabled:=true;
         Umain.host.close;
      END;

  END;

end;

procedure TFRlltt.Hapus1Click(Sender: TObject);
begin


  
  if Qrek.RecordCount>0 then
  begin


         if (Qrek.fieldbyname('flaglunas').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah Lunas tidak dapat di hapus', mtWarning, [mbok], 0);
            Exit;
        end;


           if (Qrek.fieldbyname('flagpublish').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah di Publish tidak dapat di Hapus', mtWarning, [mbok], 0);
            Exit;
        end;  



      TRY

        TRY


              Enabled:=false;       

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(' START TRANSACTION');
              DM.Qexec.Execute;  


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('DELETE FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' WHERE nomorlltt=:nomorlltt');
              DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
              DM.Qexec.Execute;


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              tampilkan.Click;

            

        EXCEPT ON E:Exception DO
        BEGIN


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('ROLLBACK');
              DM.Qexec.Execute;

              MessageDlg('Terjadi Kesalahan !!'+char(13)+E.Message, mtError, [mbok], 0);

        END;
        END;


      FINALLY
         Enabled:=true;
      END;

  END;


end;

procedure TFRlltt.UploadUlang1Click(Sender: TObject);
begin
if Qrek.RecordCount>0 then
  begin


          if (Qrek.fieldbyname('flaglunas').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah Lunas tidak dapat di Upload Ulang', mtWarning, [mbok], 0);
            Exit;
        end;


        if (Qrek.fieldbyname('flagpublish').AsCurrency=0) then
        begin
            MessageDlg('Tagihan Belum di Unpublish', mtWarning, [mbok], 0);
            Exit;
        end;  


      TRY

        TRY


              Enabled:=false;

              umain.openkoneksi_host;


              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * FROm piutanglltt WHERE kode=:kode');
              DM.Qcek.parambyname('kode').asstring:= FormatDateTime('YYYYMM',periode.Date)+'.'+Qrek.fieldbyname('nomorlltt').asstring;
              DM.Qcek.Open;

             if(DM.Qcek.recordcount>0) then
              begin


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add(' START TRANSACTION');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('START TRANSACTION');
              Qexec.Execute;



                 Qexec.close;
                 Qexec.SQl.Clear;
                 Qexec.SQL.Add('REPLACE INTO piutanglltt (kode,periode,bulan,nomorlltt,nosamb,kodellttyangberlaku,kodelltt,koderayon,total,flagaktif,flag) VALUES (:kode,:periode,:bulan,:nomorlltt,:nosamb,:kodellttyangberlaku,:kodelltt,:koderayon,:total,:flagaktif,:flag)');
                 Qexec.ParamByName('kode').AsString:=DM.Qcek.fieldbyname('kode').AsString; 
                 Qexec.ParamByName('periode').AsString:=DM.Qcek.fieldbyname('periode').AsString;
                 Qexec.ParamByName('nomorlltt').AsString:=DM.Qcek.fieldbyname('nomorlltt').AsString;
                 Qexec.ParamByName('nosamb').AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
                 Qexec.ParamByName('kodellttyangberlaku').AsString:=DM.Qcek.fieldbyname('kodellttyangberlaku').AsString;
                 Qexec.ParamByName('kodelltt').AsString:=DM.Qcek.fieldbyname('kodelltt').AsString;
                 Qexec.ParamByName('koderayon').AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
                 Qexec.ParamByName('total').AsCurrency:=DM.Qcek.fieldbyname('total').AsCurrency;
                 Qexec.ParamByName('flagaktif').AsString:=DM.Qcek.fieldbyname('flagaktif').AsString;
                 Qexec.ParamByName('bulan').AsString:=DM.Qcek.fieldbyname('bulan').AsString;
                 Qexec.ParamByName('flag').AsString:=DM.Qcek.fieldbyname('flag').AsString;
                 Qexec.Execute;



                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' SET flagkirim="1" WHERE nomorlltt=:nomorlltt');
                  DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
                  DM.Qexec.Execute;

                  DM.Qexec.close;
                  DM.Qexec.SQL.Clear;
                  DM.Qexec.SQL.Add('UPDATE piutanglltt SET flagkirim="1" WHERE kode=:kode');
                  DM.Qexec.ParamByName('kode').AsString:=FormatDateTime('YYYYMM',periode.date)+'.'+Qrek.fieldbyname('nomorlltt').AsString;
                  DM.Qexec.Execute;





              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('COMMIT');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('COMMIT');
              Qexec.Execute;


              Qrek.SQLRefresh.Clear;
              Qrek.SQLRefresh.Add('select c.*,p.nama,p.alamat,r.namarayon,r.kodewil,r.wilayah,gl.nama as golonganlltt FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan_lltt p ON c.nomorlltt=p.nomorlltt LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN (select kodelltt,nama FROm golongan_lltt GROUP BY kodelltt) gl ON c.kodelltt=gl.kodelltt WHERE c.nomorlltt=:nomorlltt')  ;
              Qrek.RefreshRecord;




              end;

            

        EXCEPT ON E:Exception DO
        BEGIN


              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('ROLLBACK');
              DM.Qexec.Execute;

              Qexec.close;
              Qexec.SQL.Clear;
              Qexec.SQL.Add('ROLLBACK');
              Qexec.Execute;

              MessageDlg('Terjadi Kesalahan !!'+char(13)+E.Message, mtError, [mbok], 0);

        END;
        END;


      FINALLY
         Enabled:=true;
         Umain.host.close;
      END;

  END;
end;

procedure TFRlltt.GtvrekCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
    IF (VarAsType(AViewInfo.GridRecord.DisplayTexts[gtvreklunas.Index], varstring)='1')  then
    BEGIN
      IF (GtvRek.IsControlFocused=false) or (AViewInfo.RecordViewInfo.Focused=false) or (AViewInfo.Item.Focused=true) then
      begin
      
        ACanvas.Canvas.Brush.Color :=  TColor($004F4FFF);
        ACanvas.Canvas.Font.Color := clWhite;


      END;
    end;

end;

procedure TFRlltt.Koreksi1Click(Sender: TObject);
begin


  
  if Qrek.RecordCount>0 then
  begin


         if (Qrek.fieldbyname('flaglunas').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah Lunas tidak dapat di Koreksi', mtWarning, [mbok], 0);
            Exit;
        end;


           if (Qrek.fieldbyname('flagpublish').AsCurrency=1) then
        begin
            MessageDlg('Tagihan Sudah di Publish', mtWarning, [mbok], 0);
            Exit;
        end;


    Ukoreksilltt.kodelltt.Properties.Items:=Ucombo.kodelltt.Properties.Items;
    Ukoreksilltt.nama.Properties.Items:=Ucombo.namalltt.Properties.Items;

    Ukoreksilltt.total.value:=Qrek.fieldbyname('total').ascurrency;
    Ukoreksilltt.kodelltt.Text:=Qrek.fieldbyname('kodelltt').AsString;

    Ukoreksilltt._periode:=FormatDateTime('YYYYMM',periode.date);
    Ukoreksilltt._kodellttyangberlaku:='-';


  if  ukoreksilltt.showmodal=mrOk then
  begin


    DM.Qexec.close;
    DM.Qexec.SQL.Clear;
    DM.Qexec.SQL.Add('UPDATE drdlltt'+FormatDateTime('YYYYMM',periode.date)+' SET kodellttyangberlaku=:kodellttyangberlaku,kodelltt=:kodelltt,total=:total WHERE nomorlltt=:nomorlltt');
    DM.Qexec.ParamByName('nomorlltt').AsString:=Qrek.fieldbyname('nomorlltt').AsString;
    DM.Qexec.ParamByName('kodellttyangberlaku').AsString:=Ukoreksilltt._kodellttyangberlaku;
    DM.Qexec.ParamByName('kodelltt').AsString:=Ukoreksilltt.kodelltt.Text;
    DM.Qexec.ParamByName('total').AsCurrency:=Ukoreksilltt.total.Value;
    DM.Qexec.Execute;

    Qrek.SQLRefresh.Clear;
    Qrek.SQLRefresh.Add('select c.*,p.nama,p.alamat,r.namarayon,r.kodewil,r.wilayah,gl.nama as golonganlltt FROM drdlltt'+FormatDateTime('YYYYMM',periode.date)+' c LEFT JOIN pelanggan_lltt p ON c.nomorlltt=p.nomorlltt LEFT JOIN rayon r ON c.koderayon=r.koderayon LEFT JOIN (select kodelltt,nama FROm golongan_lltt GROUP BY kodelltt) gl ON c.kodelltt=gl.kodelltt WHERE c.nomorlltt=:nomorlltt')  ;
    Qrek.RefreshRecord;



  end;


  end;

end;

procedure TFRlltt.GtvrekCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
Koreksi1.Click;
end;

procedure TFRlltt.kodellttPropertiesChange(Sender: TObject);
begin
golonganlltt.ItemIndex:=kodelltt.ItemIndex;
end;

procedure TFRlltt.golonganllttPropertiesChange(Sender: TObject);
begin
kodelltt.ItemIndex:=golonganlltt.ItemIndex;
end;

procedure TFRlltt.cekcabClick(Sender: TObject);
begin
  if cekcab.Checked=true then
  begin
     kodecab.Enabled:=true;
     cab.Enabled:=true;
  end else
  if cekcab.Checked=false then
  begin
     kodecab.Enabled:=false;
     cab.Enabled:=false;
  end;

end;

procedure TFRlltt.cekkelClick(Sender: TObject);
begin
  if cekkel.Checked=true then
  begin
     kodekel.Enabled:=true;
     kel.Enabled:=true;
  end else
  if cekkel.Checked=false then
  begin
     kodekel.Enabled:=false;
     kel.Enabled:=false;
  end;
end;

procedure TFRlltt.kodecabPropertiesChange(Sender: TObject);
begin
cab.ItemIndex:=kodecab.ItemIndex;
end;

procedure TFRlltt.cabPropertiesChange(Sender: TObject);
begin
kodecab.ItemIndex:=cab.ItemIndex;
end;

procedure TFRlltt.kodekelPropertiesChange(Sender: TObject);
begin
 kel.ItemIndex:=kodekel.ItemIndex;
end;

procedure TFRlltt.kelPropertiesChange(Sender: TObject);
begin
 kodekel.ItemIndex:=kel.ItemIndex;
end;

procedure TFRlltt.cxButton3Click(Sender: TObject);
begin
  if not Qrek.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
          Umain.ExportViewToExcel(TcxGridDBTableView(Gridrek.FocusedView.PatternGridView));
  end;
end;

procedure TFRlltt.cxButton1Click(Sender: TObject);
begin
if(Qrek.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR REKENING L2T2';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRlltt.terbitkanpelangganClick(Sender: TObject);
begin
if (pindahperiode.visible=true) then
  begin

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('DROP TABLE IF EXISTS dump111');
            DM.Qexec.Execute;


            DM.Qexec.close;            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('DROP TABLE IF EXISTS dump222');
            DM.Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('CREATE TABLE dump111 ');
            DM.Qexec.SQL.Add('(nomorlltt varchar(30) NOT NULL DEFAULT ""');            DM.Qexec.SQL.Add(',flag char(1) DEFAULT "0"');            DM.Qexec.SQL.Add(',PRIMARY KEY (nomorlltt))');            DM.Qexec.SQL.Add(' ENGINE=MEMORY DEFAULT CHARSET=latin1');            DM.Qexec.Execute;
            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('CREATE TABLE dump222 ');
            DM.Qexec.SQL.Add('(nomorlltt varchar(30) NOT NULL DEFAULT ""');            DM.Qexec.SQL.Add(',PRIMARY KEY (nomorlltt))');            DM.Qexec.SQL.Add(' ENGINE=MEMORY DEFAULT CHARSET=latin1');            DM.Qexec.Execute;
            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('REPLACE INTO dump111 SELECT nomorlltt,0 FROM pelanggan_lltt');
            DM.Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('REPLACE INTO dump222 SELECT nomorlltt FROM drdlltt'+formatdatetime('YYYYMM',periode.date)+'');
            DM.Qexec.Execute;



            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('DELETE FROM dump111 WHERE nomorlltt IN (SELECT nomorlltt FROM dump222)');
            DM.Qexec.Execute;

            uterbitkanlltt.caption:='Terbitkan Pelanggan lltt ke Rekening lltt '+formatdatetime('MMMM YYYY',periode.date);
            uterbitkanlltt.periode.date:=periode.date;
            uterbitkanlltt.refresh.click;
            uterbitkanlltt.showmodal;

  end;
end;

end.



