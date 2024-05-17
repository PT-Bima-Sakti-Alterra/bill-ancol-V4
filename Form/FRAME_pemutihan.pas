unit FRAME_pemutihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, cxContainer, cxEdit, ComCtrls, dxCore,
  cxDateUtils, Menus, StdCtrls, cxButtons, RzDTP, cxLabel, cxCurrencyEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxCheckBox,
  cxScrollBox, RzSplit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess,
  MyAccess, MemDS, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon;

type
    TFRpemutihan = class(TFrame)
    info: TRzPanel;
    RzPanel1: TRzPanel;
    RzSizePanel2: TRzSizePanel;
    cxScrollBox2: TcxScrollBox;
    RzPanel13: TRzPanel;
    cekgolongan: TcxCheckBox;
    cekrayon: TcxCheckBox;
    ceknosamb: TcxCheckBox;
    ceknama: TcxCheckBox;
    cekalamat: TcxCheckBox;
    alamat: TcxTextEdit;
    nama: TcxTextEdit;
    nosamb: TcxTextEdit;
    kodegol: TcxComboBox;
    golongan: TcxComboBox;
    namarayon: TcxComboBox;
    koderayon: TcxComboBox;
    cekrekair: TcxCheckBox;
    rekair1: TcxCurrencyEdit;
    rekair2: TcxCurrencyEdit;
    cxLabel80: TcxLabel;
    wilayah: TcxComboBox;
    kodewil: TcxComboBox;
    cekwilayah: TcxCheckBox;
    cekpakai: TcxCheckBox;
    pakai1: TcxCurrencyEdit;
    cxLabel31: TcxLabel;
    pakai2: TcxCurrencyEdit;
    RzPanel22: TRzPanel;
    cekcab: TcxCheckBox;
    cekkel: TcxCheckBox;
    kodecab: TcxComboBox;
    cab: TcxComboBox;
    kel: TcxComboBox;
    kodekel: TcxComboBox;
    RzPanel3: TRzPanel;
    RzPanel6: TRzPanel;
    periode: TRzDateTimePicker;
    cxLabel4: TcxLabel;
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
    refresh: TcxButton;
    cxButton3: TcxButton;
    verifikasi: TcxButton;
    RzPanel11: TRzPanel;
    Qrek: TMyQuery;
    DSrek: TMyDataSource;
    Qrekkode: TStringField;
    Qreknosamb: TStringField;
    Qrektahun: TStringField;
    Qrekperiode: TStringField;
    Qrektglhapussecaraakuntansi: TDateField;
    Qrekkodegol: TStringField;
    Qrekkoderayon: TStringField;
    Qrekkodekelurahan: TStringField;
    Qrekrekair: TFloatField;
    Qrekverifikasi: TStringField;
    Qrektglverifikasi: TDateTimeField;
    Qrekuserverifikasi: TStringField;
    Qrekbiayapemakaian: TFloatField;
    Qrekadministrasi: TFloatField;
    Qrekpemeliharaan: TFloatField;
    Qrekretribusi: TFloatField;
    Qrekpelayanan: TFloatField;
    Qreknama: TStringField;
    Qrekalamat: TStringField;
    Gtvrekkode: TcxGridDBColumn;
    Gtvreknosamb: TcxGridDBColumn;
    Gtvrektahun: TcxGridDBColumn;
    Gtvrekperiode: TcxGridDBColumn;
    Gtvrektglhapussecaraakuntansi: TcxGridDBColumn;
    Gtvrekkodegol: TcxGridDBColumn;
    Gtvrekkoderayon: TcxGridDBColumn;
    Gtvrekkodekelurahan: TcxGridDBColumn;
    Gtvrekrekair: TcxGridDBColumn;
    Gtvrekverifikasi: TcxGridDBColumn;
    Gtvrektglverifikasi: TcxGridDBColumn;
    Gtvrekuserverifikasi: TcxGridDBColumn;
    Gtvrekbiayapemakaian: TcxGridDBColumn;
    Gtvrekadministrasi: TcxGridDBColumn;
    Gtvrekpemeliharaan: TcxGridDBColumn;
    Gtvrekretribusi: TcxGridDBColumn;
    Gtvrekpelayanan: TcxGridDBColumn;
    Gtvreknama: TcxGridDBColumn;
    Gtvrekalamat: TcxGridDBColumn;
    Qrekstanlalu: TFloatField;
    Qrekstanskrg: TFloatField;
    Qrekstanangkat: TFloatField;
    Qrekpakai: TFloatField;
    Gtvrekstanlalu: TcxGridDBColumn;
    Gtvrekstanskrg: TcxGridDBColumn;
    Gtvrekstanangkat: TcxGridDBColumn;
    Gtvrekpakai: TcxGridDBColumn;
    tambah: TcxButton;
    hapus: TcxButton;
    cektglhps: TcxCheckBox;
    tglhps1: TcxDateEdit;
    tglhps2: TcxDateEdit;
    cxLabel5: TcxLabel;
    ceklainnya: TcxCheckBox;
    lainnya: TcxComboBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    Verifikasi1: TMenuItem;
    Hapus1: TMenuItem;
    Qexec: TMyQuery;
    procedure pindahperiodeClick(Sender: TObject);
    procedure tampilkanClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure cekrayonClick(Sender: TObject);
    procedure cekgolonganClick(Sender: TObject);
    procedure cekwilayahClick(Sender: TObject);
    procedure ceknosambClick(Sender: TObject);
    procedure ceknamaClick(Sender: TObject);
    procedure cekalamatClick(Sender: TObject);
    procedure cekrekairClick(Sender: TObject);
    procedure cekpakaiClick(Sender: TObject);
    procedure cekcabClick(Sender: TObject);
    procedure cekkelClick(Sender: TObject);
    procedure koderayonPropertiesChange(Sender: TObject);
    procedure namarayonPropertiesChange(Sender: TObject);
    procedure kodewilPropertiesChange(Sender: TObject);
    procedure wilayahPropertiesChange(Sender: TObject);
    procedure kodegolPropertiesChange(Sender: TObject);
    procedure golonganPropertiesChange(Sender: TObject);
    procedure kodecabPropertiesChange(Sender: TObject);
    procedure cabPropertiesChange(Sender: TObject);
    procedure kodekelPropertiesChange(Sender: TObject);
    procedure kelPropertiesChange(Sender: TObject);
    procedure cektglhpsClick(Sender: TObject);
    procedure ceklainnyaClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure verifikasiClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Verifikasi1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    procedure isicomborekening();
    procedure akses();
  end;

implementation

uses UnitPemutihan, UnitCombo,Module, unitloading, UnitMain, RzStatus,
  UnitVerifikasiPemutihan;

{$R *.dfm}


procedure TFRpemutihan.akses();
begin

   
   { if(Umain.olah_data_rekening<>'1') then
    begin
        Koreksi1.Enabled:=False;
        hitungulangrekening.Enabled:=False;
        Hitung1.Enabled:=False;
        PerbaruiData1.Enabled:=False;
        Hapus1.Enabled:=False;
        SetAktif1.Enabled:=False;
        SetNonAktif1.Enabled:=False;
        UploadUlang1.Enabled:=False;
        updatebcmeter.Enabled:=false;
        terbitkanpelanggan.Enabled:=false;
    end;


      if(Umain.publish_rekening<>'1') then
    begin
       publishsemua.Enabled:=False;
       Publish1.Enabled:=False;

    end;

        if(Umain.unpublish_rekening<>'1') then
    begin
       unpublishsemua.Enabled:=False;
       Unpublish1.Enabled:=False;

    end; }




end;

procedure TFRpemutihan.isicomborekening();
begin

  ucombo.isikombo();

  namarayon.properties.items:= Ucombo.namarayon.properties.items;
  koderayon.properties.items:= Ucombo.koderayon.properties.items;



  kodecab.properties.items:= Ucombo.kodecabang.properties.items;
  cab.properties.items:= Ucombo.cabang.properties.items;

  kodegol.properties.items:= Ucombo.kodegol.properties.items;
  golongan.properties.items:= Ucombo.golongan.properties.items;




 

  kodekel.properties.items:= Ucombo.kodekelurahan.properties.items;
  kel.properties.items:= Ucombo.kelurahan.properties.items;

  kodewil.properties.items:= Ucombo.kodewil.properties.items;
  wilayah.properties.items:= Ucombo.wilayah.properties.items;  







end;

procedure TFRpemutihan.pindahperiodeClick(Sender: TObject);
begin
   pindahperiode.Visible:=false;
   periode.Enabled:=true;
   periode.SetFocus;

   Qrek.close;
 
   //Qbayar.close;
  // Umain.Caption:='DAFTAR PEMUTIHAN REKENING';
end;

procedure TFRpemutihan.tampilkanClick(Sender: TObject);
begin


          Qrek.close;
          Qrek.SQL.Clear;
          Qrek.SQL.Add(Qrek.SQLLock.Text);
          

          if (cekrayon.Checked=true)then
          begin
            Qrek.SQL.add('and c.koderayon=:koderayon');
            Qrek.ParamByName('koderayon').AsString:=koderayon.Text;
          end;

          if (cekgolongan.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodegol=:kodegol');
            Qrek.ParamByName('kodegol').AsString:=kodegol.Text;
          end;

           if (cekcab.Checked=true)then
          begin
            Qrek.SQL.add('and x.kodecabang=:kodecabang');
            Qrek.ParamByName('kodecabang').AsString:=kodecab.Text;
          end;

           if (cekkel.Checked=true)then
          begin
            Qrek.SQL.add('and c.kodekelurahan=:kodekelurahan');
            Qrek.ParamByName('kodekelurahan').AsString:=kodekel.Text;
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



           if (ceknama.Checked=true)then
          begin
            Qrek.SQL.add('and p.nama LIKE "%" :nama "%"');
            Qrek.ParamByName('nama').AsString:=nama.Text;
          end;

      
          if (cekalamat.Checked=true)then
          begin
            Qrek.SQL.add('and p.alamat LIKE CONCAT("%" :alamat "%")');
            Qrek.ParamByName('alamat').AsString:=alamat.Text;
          end;

       


          if(cekrekair.Checked=true)then
          begin
            Qrek.SQL.add('AND c.rekair>=:rekair1 and c.rekair<=:rekair2');
            Qrek.ParamByName('rekair1').AsCurrency:=rekair1.Value;
            Qrek.ParamByName('rekair2').AsCurrency:=rekair2.Value;
          end;




           if(cekpakai.Checked=true)then
          begin
            Qrek.SQL.add('AND c.pakai>=:pakai1 and c.pakai<=:pakai2');
            Qrek.ParamByName('pakai1').AsCurrency:=pakai1.Value;
            Qrek.ParamByName('pakai2').AsCurrency:=pakai2.Value;
          end;


            if(cektglhps.Checked=true)then
          begin
            Qrek.SQL.add('AND date(c.tglhapussecaraakuntansi)>=:tglhps1 and date(c.tglhapussecaraakuntansi)<=:tglhps2');
            Qrek.ParamByName('tglhps1').AsDate:=tglhps1.Date;
            Qrek.ParamByName('tglhps2').AsDate:=tglhps2.Date;
          end;

           if (ceklainnya.Checked=true)then
          begin

            if(lainnya.Text='Sudah Verifikasi')then
            begin
              Qrek.SQL.add('and c.verifikasi="1"');
            end;

            if(lainnya.Text='Belum Verifikasi')then
            begin
              Qrek.SQL.add('and c.verifikasi="0"');
            end;

          end;






          Qrek.SQL.add('ORDER BY CAST(c.nosamb AS UNSIGNED),c.periode asc limit :limit');
          Qrek.ParamByName('limit').AsCurrency:=limit.Value;
          Qrek.ParamByName('tahun').AsString:=FormatDateTime('YYYY',periode.date);
          Qrek.Open;
          info.Caption:='DAFTAR PEMUTIHAN TAHUN '+UpperCase(FormatDateTime('YYYY',periode.date));
          pindahperiode.Visible:=true;
          periode.Enabled:=false;

end;

procedure TFRpemutihan.tambahClick(Sender: TObject);
begin


 if pindahperiode.Visible=false then
 begin
    MessageDlg('Harap Pilih Tahun Pemutihan terlebih Dahulu', mtInformation, [mbOk], 0);
    periode.SetFocus;
    Exit;
 end
 else
 begin


    UTpemutihan._tahun:=FormatDateTime('YYYY',periode.date);
   if utpemutihan.showmodal=mrOk then
   begin

    tampilkan.Click;


   end;

 end;

end;

procedure TFRpemutihan.cekrayonClick(Sender: TObject);
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

procedure TFRpemutihan.cekgolonganClick(Sender: TObject);
begin
  if(cekgolongan.Checked=true)then
  begin
    kodegol.Enabled:=true;
    golongan.Enabled:=true;
    kodegol.SetFocus;
   end
  else
  begin
    kodegol.Enabled:=false;
    golongan.Enabled:=false;
  end;
end;

procedure TFRpemutihan.cekwilayahClick(Sender: TObject);
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

procedure TFRpemutihan.ceknosambClick(Sender: TObject);
begin
 if(ceknosamb.Checked=true)then
  begin
    nosamb.Enabled:=true;
    nosamb.SetFocus;
  end
  else
    nosamb.Enabled:=false;
end;

procedure TFRpemutihan.ceknamaClick(Sender: TObject);
begin
 if(ceknama.Checked=true)then
 begin
    nama.Enabled:=true;
    nama.SetFocus;
 end
 else
    nama.Enabled:=false;
end;

procedure TFRpemutihan.cekalamatClick(Sender: TObject);
begin
if(cekalamat.Checked=true)then
 begin
    alamat.Enabled:=true;
    alamat.SetFocus;
 end
  else
    alamat.Enabled:=false;
end;

procedure TFRpemutihan.cekrekairClick(Sender: TObject);
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

procedure TFRpemutihan.cekpakaiClick(Sender: TObject);
begin
    if(cekpakai.Checked=true)then
  begin
    pakai1.Enabled:=true;
    pakai2.Enabled:=true;
    pakai1.SetFocus;
   end
  else
  begin
    pakai1.Enabled:=false;
    pakai2.Enabled:=false;
  end;
end;

procedure TFRpemutihan.cekcabClick(Sender: TObject);
begin
if(cekcab.Checked=true)then
  begin
    kodecab.Enabled:=true;
    cab.Enabled:=true;
  end
  else
  begin
    kodecab.Enabled:=false;
    cab.Enabled:=false;
  end;
end;

procedure TFRpemutihan.cekkelClick(Sender: TObject);
begin
  if(cekkel.Checked=true)then
  begin
    kodekel.Enabled:=true;
    kel.Enabled:=true;
  end
  else
  begin
    kodekel.Enabled:=false;
    kel.Enabled:=false;
  end;
end;

procedure TFRpemutihan.koderayonPropertiesChange(Sender: TObject);
begin
namarayon.itemindex:=koderayon.itemindex;
end;

procedure TFRpemutihan.namarayonPropertiesChange(Sender: TObject);
begin
koderayon.ItemIndex:=namarayon.ItemIndex;
end;

procedure TFRpemutihan.kodewilPropertiesChange(Sender: TObject);
begin
wilayah.ItemIndex:=kodewil.ItemIndex;
end;

procedure TFRpemutihan.wilayahPropertiesChange(Sender: TObject);
begin
kodewil.ItemIndex:=wilayah.ItemIndex;
end;

procedure TFRpemutihan.kodegolPropertiesChange(Sender: TObject);
begin
golongan.ItemIndex:=kodegol.ItemIndex;
end;

procedure TFRpemutihan.golonganPropertiesChange(Sender: TObject);
begin
kodegol.ItemIndex:=golongan.ItemIndex;
end;

procedure TFRpemutihan.kodecabPropertiesChange(Sender: TObject);
begin
cab.ItemIndex:=kodecab.ItemIndex; 
end;

procedure TFRpemutihan.cabPropertiesChange(Sender: TObject);
begin
kodecab.ItemIndex:=cab.ItemIndex;
end;

procedure TFRpemutihan.kodekelPropertiesChange(Sender: TObject);
begin
kel.ItemIndex:=kodekel.itemindex;
end;

procedure TFRpemutihan.kelPropertiesChange(Sender: TObject);
begin
kodekel.ItemIndex:=kel.itemindex;
end;

procedure TFRpemutihan.cektglhpsClick(Sender: TObject);
begin
 if(cektglhps.Checked=true)then
  begin
    tglhps1.Enabled:=true;
    tglhps2.Enabled:=true;
    tglhps1.SetFocus;
   end
  else
  begin
    tglhps1.Enabled:=false;
    tglhps2.Enabled:=false;
  end;
end;

procedure TFRpemutihan.ceklainnyaClick(Sender: TObject);
begin
if(ceklainnya.Checked=true)then
begin
    lainnya.Enabled:=true;
    lainnya.SetFocus;
end
else
    lainnya.Enabled:=false;
end;

procedure TFRpemutihan.hapusClick(Sender: TObject);
begin


  if Qrek.RecordCount>0 then
  begin  

      if Qrek.fieldbyname('verifikasi').AsString='1' then
      begin
          MessageDlg('Daftar Ini Sudah Di Verifikasi !', mtInformation, [mbOk], 0);
          Exit;
      end;


        if MessageDlg('Hapus Daftar Pemutihan '+Qrek.fieldbyname('kode').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
        begin



              TRY

                Enabled:=false;

                  TRY

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('START TRANSACTION');
                     DM.Qexec.Execute;

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('DELETE FROM drdpemutihan WHERE kode=:kode');
                     DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                     DM.Qexec.Execute;

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('COMMIT');
                     DM.Qexec.Execute;

                     Qrek.Refresh;

                  EXCEPT ON E:Exception DO
                  BEGIN

                     DM.Qexec.close;
                     DM.Qexec.SQL.Clear;
                     DM.Qexec.SQL.Add('ROLLBACK');
                     DM.Qexec.Execute;

                     MessageDlg('Terjadi Kesalahan : '+E.Message, mtError, [mbOk], 0);

                  END;
                  END;

              FINALLY            
                  Enabled:=true;
              END;

        end;

  end;

end;

procedure TFRpemutihan.verifikasiClick(Sender: TObject);
var
J:integer;
begin


  if Qrek.RecordCount=0 then
  begin
      Exit;
  end;


  if(pindahperiode.Visible=true)then
  begin


    if uverifikasipemutihan.ShowModal=MrOk then
    begin



           TRY
             TRY

             Enabled:=false;

             Qrek.First;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('START TRANSACTION');
             DM.Qexec.Execute;

             Qexec.close;
             Qexec.SQL.Clear;
             Qexec.SQL.Add('START TRANSACTION');
             Qexec.Execute;



              uloading.proses.Caption:='Verifikasi Rekening Tampil...';
              uloading.Progress.PartsComplete:=0;
              uloading.Progress.TotalParts:=Qrek.RecordCount;
              uloading.proses.Visible:=true;
              uloading.Progress.Visible:=true;
              uloading.Show;

              Application.ProcessMessages;

                    for j:=1 to Qrek.RecordCount do
                    begin

                        if(Qrek.fieldbyname('verifikasi').AsString='0')
                        then
                        begin

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE piutang SET flag="4"');
                             DM.Qexec.SQL.add('where kode=:kode');
                             DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                             DM.Qexec.Execute;

                             Qexec.close;
                             Qexec.SQL.Clear;
                             Qexec.SQL.Add('UPDATE piutang SET flag="4"');
                             Qexec.SQL.add('where kode=:kode');
                             Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                             Qexec.Execute;

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('REPLACE INTO drdhapussecaraakuntansi (kode,nosamb,periode,tglhapussecaraakuntansi,rekair) values (:kode,:nosamb,:periode,:tglhapussecaraakuntansi,:rekair)');
                             DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                             DM.Qexec.ParamByName('nosamb').AsString:=Qrek.fieldbyname('nosamb').AsString;
                             DM.Qexec.ParamByName('periode').AsString:=Qrek.fieldbyname('periode').AsString;
                             DM.Qexec.ParamByName('tglhapussecaraakuntansi').AsDate:=Uverifikasipemutihan.tanggal.Date;
                             DM.Qexec.ParamByName('rekair').AsCurrency:=Qrek.fieldbyname('rekair').AsCurrency;
                             DM.Qexec.Execute;

                             DM.Qexec.close;
                             DM.Qexec.SQL.Clear;
                             DM.Qexec.SQL.Add('UPDATE drdpemutihan SET verifikasi="1",tglverifikasi=now(),userverifikasi=:user,tglhapussecaraakuntansi=:tglhapussecaraakuntansi WHERE kode=:kode'); 
                             DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                             DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
                             DM.Qexec.ParamByName('tglhapussecaraakuntansi').AsDate:=Uverifikasipemutihan.tanggal.Date;
                             DM.Qexec.Execute;



                        end;

                  uloading.Progress.IncPartsByOne;
                  Application.ProcessMessages;
                  Qrek.Next;
                  end;


               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('COMMIT');
               Qexec.Execute;


               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('COMMIT');
               DM.Qexec.Execute;


               uloading.proses.Visible:=false;
               uloading.Progress.Visible:=false;
               uloading.Close;




          except On E:exception  do
          begin


            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('ROLLBACK');
            Qexec.Execute;

            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
          end;
          FINALLY

            tampilkan.click;
            Enabled:=true;

          END;

    end;


  end;

end;

procedure TFRpemutihan.cxButton3Click(Sender: TObject);
begin
 if not Qrek.Eof then
  begin
      if Umain.DialSaveexcel.Execute then
      Umain.ExportViewToExcel(TcxGridDBTableView(Gridrek.FocusedView.PatternGridView));
  end;
end;

procedure TFRpemutihan.cxButton1Click(Sender: TObject);
begin
 if(Qrek.RecordCount>0)then
  begin
    dxComponentPrinter1Link1.ReportTitle.Text:='DAFTAR PELANGGAN';
    dxComponentPrinter1Link1.Preview(true);
  end;
end;

procedure TFRpemutihan.Verifikasi1Click(Sender: TObject);
var
J:integer;
begin


  if Qrek.RecordCount=0 then
  begin
      Exit;
  end;

  if(pindahperiode.Visible=true)then
  begin


     if uverifikasipemutihan.ShowModal=MrOk then
    begin



           TRY
             TRY

             Enabled:=false;

             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('START TRANSACTION');
             DM.Qexec.Execute;

             Qexec.close;
             Qexec.SQL.Clear;
             Qexec.SQL.Add('START TRANSACTION');
             Qexec.Execute;




              if(Qrek.fieldbyname('verifikasi').AsString='0')
              then
              begin

                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('UPDATE piutang SET flag="4"');
                   DM.Qexec.SQL.add('where kode=:kode');
                   DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                   DM.Qexec.Execute;

                   Qexec.close;
                   Qexec.SQL.Clear;
                   Qexec.SQL.Add('UPDATE piutang SET flag="4"');
                   Qexec.SQL.add('where kode=:kode');
                   Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                   Qexec.Execute;


                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('REPLACE INTO drdhapussecaraakuntansi (kode,nosamb,periode,tglhapussecaraakuntansi,rekair) values (:kode,:nosamb,:periode,:tglhapussecaraakuntansi,:rekair)');
                   DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                   DM.Qexec.ParamByName('nosamb').AsString:=Qrek.fieldbyname('nosamb').AsString;
                   DM.Qexec.ParamByName('periode').AsString:=Qrek.fieldbyname('periode').AsString;
                   DM.Qexec.ParamByName('tglhapussecaraakuntansi').AsDate:=Uverifikasipemutihan.tanggal.date;
                   DM.Qexec.ParamByName('rekair').AsCurrency:=Qrek.fieldbyname('rekair').AsCurrency;
                   DM.Qexec.Execute;

                   DM.Qexec.close;
                   DM.Qexec.SQL.Clear;
                   DM.Qexec.SQL.Add('UPDATE drdpemutihan SET verifikasi="1",tglverifikasi=now(),userverifikasi=:user,tglhapussecaraakuntansi=:tglhapussecaraakuntansi WHERE kode=:kode');
                   DM.Qexec.ParamByName('kode').AsString:=Qrek.fieldbyname('kode').AsString;
                   DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
                   DM.Qexec.ParamByName('tglhapussecaraakuntansi').AsDate:=Uverifikasipemutihan.tanggal.Date;
                   DM.Qexec.Execute;



              end;


               Qexec.close;
               Qexec.SQL.Clear;
               Qexec.SQL.Add('COMMIT');
               Qexec.Execute;

               DM.Qexec.close;
               DM.Qexec.SQL.Clear;
               DM.Qexec.SQL.Add('COMMIT');
               DM.Qexec.Execute;

               Qrek.Refresh;

          except On E:exception  do
          begin


            Qexec.close;
            Qexec.SQL.Clear;
            Qexec.SQL.Add('ROLLBACK');
            Qexec.Execute;


            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('ROLLBACK');
            DM.Qexec.Execute;

            MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
          end;
          end;
          FINALLY  

            Enabled:=true;

          END;

    end;


  end;

end;


end.


