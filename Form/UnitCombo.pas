unit UnitCombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  dxSkinOffice2013White;


type
  TUcombo = class(TForm)
    cekrayon2: TcxCheckBox;
    cekgol2: TcxCheckBox;
    kodegol: TcxComboBox;
    koderayon: TcxComboBox;
    namarayon: TcxComboBox;
    golongan: TcxComboBox;
    cabang: TcxComboBox;
    kodecabang: TcxComboBox;
    kodediameter: TcxComboBox;
    ukuran: TcxComboBox;
    cekdia2: TcxCheckBox;
    cekwil2: TcxCheckBox;
    user: TcxComboBox;
    kelainan: TcxComboBox;
    kodekolektif: TcxComboBox;
    kolektif: TcxComboBox;
    cekkelompok2: TcxCheckBox;
    cekkoreksi2: TcxCheckBox;
    cekkelainan: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    namaperiode: TcxComboBox;
    periode: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    merk: TcxComboBox;
    cxCheckBox3: TcxCheckBox;
    loket: TcxComboBox;
    cxCheckBox4: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cxCheckBox5: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cxCheckBox6: TcxCheckBox;
    kasir: TcxComboBox;
    cxCheckBox7: TcxCheckBox;
    kepemilikan: TcxComboBox;
    cxCheckBox8: TcxCheckBox;
    sumberair: TcxComboBox;
    kodeloket: TcxComboBox;
    cxCheckBox10: TcxCheckBox;
    flag: TcxComboBox;
    cxCheckBox11: TcxCheckBox;
    jenisnonair: TcxComboBox;
    kodeflag: TcxComboBox;
    cxCheckBox12: TcxCheckBox;
    kodeadmlain: TcxComboBox;
    ketadmlain: TcxComboBox;
    cxCheckBox13: TcxCheckBox;
    kodepemlain: TcxComboBox;
    ketpemlain: TcxComboBox;
    cxCheckBox14: TcxCheckBox;
    koderetlain: TcxComboBox;
    ketretlain: TcxComboBox;
    cxCheckBox15: TcxCheckBox;
    kodepembaca: TcxComboBox;
    namapembaca: TcxComboBox;
    jenisangsuran: TcxComboBox;
    cxCheckBox17: TcxCheckBox;
    jenis: TcxComboBox;
    kodeparaf: TcxComboBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox18: TcxCheckBox;
    cxCheckBox16: TcxCheckBox;
    kodeblok: TcxComboBox;
    namablok: TcxComboBox;
    kodearea: TcxComboBox;
    cxCheckBox19: TcxCheckBox;
    area: TcxComboBox;
    cxCheckBox20: TcxCheckBox;
    kodekondisi: TcxComboBox;
    kondisimeter: TcxComboBox;
    cxCheckBox21: TcxCheckBox;
    kodelimbah: TcxComboBox;
    namalimbah: TcxComboBox;
    cxCheckBox22: TcxCheckBox;
    kodelltt: TcxComboBox;
    namalltt: TcxComboBox;
    cxCheckBox23: TcxCheckBox;
    paketketerangan: TcxComboBox;
    cxCheckBox24: TcxCheckBox;
    kodekecamatan: TcxComboBox;
    kecamatan: TcxComboBox;
    cxCheckBox25: TcxCheckBox;
    kodebanjar: TcxComboBox;
    banjar: TcxComboBox;
    cxCheckBox26: TcxCheckBox;
    dayalistrik: TcxComboBox;
    daya: TcxComboBox;
    cxCheckBox27: TcxCheckBox;
    kodeIPL: TcxComboBox;
    namaIPL: TcxComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure isikombo();
  end;

var
  Ucombo: TUcombo;

implementation

{$R *.dfm} uses Module,
  UnitMain;

procedure TUcombo.isikombo();
begin
    TRY
      Umain.loadingMain.PartsComplete:=0;
      Umain.loadingMain.TotalParts:=28;
      Umain.loadingMain.Visible:=true; 

      //DIAMETER
      Umain.loadingMain.PartsComplete:=1;
      DM.Qcek.Close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('SELECT ukuran,kodediameter FROM diameter GROUP BY kodediameter ASC ');
      DM.Qcek.Open;
      ukuran.Properties.Items.Clear;
      kodediameter.Properties.Items.Clear;

      while not DM.Qcek.Eof do
      begin
        ukuran.Properties.Items.Add(DM.Qcek.FieldByName('ukuran').ASstring);
        kodediameter.Properties.Items.Add(DM.Qcek.FieldByName('kodediameter').ASstring);
        DM.Qcek.Next;
      end;

       //RAYON
       Umain.loadingMain.PartsComplete:=2;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM rayon ORDER BY CAST(koderayon AS UNSIGNED) ASC ');
       DM.Qcek.Open;
       namarayon.Properties.Items.Clear;
       koderayon.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                namarayon.Properties.Items.Add(DM.Qcek.FieldByName('namarayon').ASstring);
                koderayon.Properties.Items.Add(DM.Qcek.FieldByName('koderayon').ASstring);

                DM.Qcek.Next;
       end;

       //GOLONGAN
       Umain.loadingMain.PartsComplete:=3;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodegol,golongan FROM golongan GROUP BY kodegol ASC ');
       DM.Qcek.Open;
       golongan.Properties.Items.Clear;
       kodegol.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                golongan.Properties.Items.Add(DM.Qcek.FieldByName('golongan').ASstring);
                kodegol.Properties.Items.Add(DM.Qcek.FieldByName('kodegol').ASstring);


                DM.Qcek.Next;
       end;


        //CABANg
        Umain.loadingMain.PartsComplete:=4;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodecabang,cabang FROM cabang ORDER BY kodecabang ASC ');
       DM.Qcek.Open;
        cabang.Properties.Items.Clear;
       kodecabang.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                 cabang.Properties.Items.Add(DM.Qcek.FieldByName('cabang').ASstring);
                kodecabang.Properties.Items.Add(DM.Qcek.FieldByName('kodecabang').ASstring);
                DM.Qcek.Next;
       end;


       Umain.loadingMain.PartsComplete:=5;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM blok ORDER BY kodeblok ASC ');
       DM.Qcek.Open;
       kodeblok.Properties.Items.Clear;
       namablok.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodeblok.Properties.Items.Add(DM.Qcek.FieldByName('kodeblok').ASstring);
                namablok.Properties.Items.Add(DM.Qcek.FieldByName('namablok').ASstring);
                DM.Qcek.Next;
       end;


         //KELURAHAN
       Umain.loadingMain.PartsComplete:=6;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodekelurahan,kelurahan FROM kelurahan ORDER BY kodekelurahan ASC ');
       DM.Qcek.Open;
       kodekelurahan.Properties.Items.Clear;
       kelurahan.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodekelurahan.Properties.Items.Add(DM.Qcek.FieldByName('kodekelurahan').ASstring);
                kelurahan.Properties.Items.Add(DM.Qcek.FieldByName('kelurahan').ASstring);
                DM.Qcek.Next;
       end;


          //kecamatan
       Umain.loadingMain.PartsComplete:=7;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodekecamatan,kecamatan FROM kecamatan  ORDER BY kodekecamatan ASC ');
       DM.Qcek.Open;
       kodekecamatan.Properties.Items.Clear;
       kecamatan.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodekecamatan.Properties.Items.Add(DM.Qcek.FieldByName('kodekecamatan').ASstring);
                kecamatan.Properties.Items.Add(DM.Qcek.FieldByName('kecamatan').ASstring);
                DM.Qcek.Next;
       end;


          //WILAYAH
       Umain.loadingMain.PartsComplete:=8;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodewil,wilayah FROM wilayah ORDER BY kodewil ASC ');
       DM.Qcek.Open;
       kodewil.Properties.Items.Clear;
       wilayah.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodewil.Properties.Items.Add(DM.Qcek.FieldByName('kodewil').ASstring);
                wilayah.Properties.Items.Add(DM.Qcek.FieldByName('wilayah').ASstring);
                DM.Qcek.Next;
       end;

       Umain.loadingMain.PartsComplete:=9;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodearea,area FROM area ORDER BY kodearea ASC ');
       DM.Qcek.Open;
       area.Properties.Items.Clear;
       kodearea.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodearea.Properties.Items.Add(DM.Qcek.FieldByName('kodearea').ASstring);
                area.Properties.Items.Add(DM.Qcek.FieldByName('area').ASstring);
                DM.Qcek.Next;
       end;

  

       //KOLEKTIF
       Umain.loadingMain.PartsComplete:=10;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodekolektif,kolektif FROM kolektif ORDER BY CAST(kodekolektif AS UNSIGNED) ASC ');
       DM.Qcek.Open;

        kodekolektif.Properties.Items.Clear;
        kolektif.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodekolektif.Properties.Items.Add(DM.Qcek.FieldByName('kodekolektif').ASstring);
                kolektif.Properties.Items.Add(DM.Qcek.FieldByName('kolektif').ASstring);
                DM.Qcek.Next;
       end;

       //USER
       Umain.loadingMain.PartsComplete:=11;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT nama FROM userakses ORDER BY nama ASC ');
       DM.Qcek.Open;

        user.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin     
                user.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);
                DM.Qcek.Next;
       end;


        //USER
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT keterangan FROM paketketerangan ORDER BY keterangan ASC ');
       DM.Qcek.Open;

        paketketerangan.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin     
                paketketerangan.Properties.Items.Add(DM.Qcek.FieldByName('keterangan').ASstring);
                DM.Qcek.Next;
       end;



       //KELAINAN
       Umain.loadingMain.PartsComplete:=12;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kelainan FROM kelainan ORDER BY kelainan ASC ');
       DM.Qcek.Open;

        kelainan.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kelainan.Properties.Items.Add(DM.Qcek.FieldByName('kelainan').ASstring);
                DM.Qcek.Next;
       end;

       //MERK WM
       Umain.loadingMain.PartsComplete:=13;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT merk FROM merkmeter ORDER BY merk ASC ');
       DM.Qcek.Open;

        merk.Properties.Items.Clear;
       while not DM.Qcek.Eof do
       begin
                merk.Properties.Items.Add(DM.Qcek.FieldByName('merk').ASstring);
                DM.Qcek.Next;
       end;


            //PERIODE
       Umain.loadingMain.PartsComplete:=14;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT nama,periode FROM periode ORDER BY periode DESC LIMIT 100 ');
       DM.Qcek.Open;

        namaperiode.Properties.Items.Clear;
        periode.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                namaperiode.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);
                periode.Properties.Items.Add(DM.Qcek.FieldByName('periode').ASstring); 
                DM.Qcek.Next;
       end;


             //LOKET
       Umain.loadingMain.PartsComplete:=15;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodeloket,loket FROM loket ORDER BY CAST(kodeloket AS UNSIGNED) ASC ');
       DM.Qcek.Open;

        kodeloket.Properties.Items.Clear;
        loket.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodeloket.Properties.Items.Add(DM.Qcek.FieldByName('kodeloket').ASstring);
                loket.Properties.Items.Add(DM.Qcek.FieldByName('loket').ASstring);
                DM.Qcek.Next;
       end;


       Umain.loadingMain.PartsComplete:=16;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodekondisi,kondisi FROM kondisimeter ORDER BY CAST(kodekondisi AS UNSIGNED) ASC ');
       DM.Qcek.Open;

        kodekondisi.Properties.Items.Clear;
        kondisimeter.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodekondisi.Properties.Items.Add(DM.Qcek.FieldByName('kodekondisi').ASstring);
                kondisimeter.Properties.Items.Add(DM.Qcek.FieldByName('kondisi').ASstring);
                DM.Qcek.Next;
       end;

   
       //KASIR

       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT nama FROM kasir order BY nama ASC');
       DM.Qcek.Open;


        kasir.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin

                kasir.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);
                DM.Qcek.Next;
       end; 



       Umain.loadingMain.PartsComplete:=17;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM kepemilikan ORDER BY kepemilikanbangunan ASC ');
       DM.Qcek.Open;


        kepemilikan.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin

                kepemilikan.Properties.Items.Add(DM.Qcek.FieldByName('kepemilikanbangunan').ASstring);
                DM.Qcek.Next;
       end;

       Umain.loadingMain.PartsComplete:=18;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM sumberair ORDER BY sumberair ASC ');
       DM.Qcek.Open;


        sumberair.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin

                sumberair.Properties.Items.Add(DM.Qcek.FieldByName('sumberair').ASstring);
                DM.Qcek.Next;
       end;

  
       Umain.loadingMain.PartsComplete:=19;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM flag ORDER BY kodeflag ASC ');
       DM.Qcek.Open;

       flag.Properties.Items.Clear;
       kodeflag.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                flag.Properties.Items.Add(DM.Qcek.FieldByName('uraian').ASstring);
                kodeflag.Properties.Items.Add(DM.Qcek.FieldByName('kodeflag').ASstring);
                DM.Qcek.Next;
       end;





       Umain.loadingMain.PartsComplete:=20;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kode,keterangan FROM byadministrasi_lain ORDER BY kode ASC ');
       DM.Qcek.Open;

        kodeadmlain.Properties.Items.Clear;
        ketadmlain.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodeadmlain.Properties.Items.Add(DM.Qcek.FieldByName('kode').ASstring);
                ketadmlain.Properties.Items.Add(DM.Qcek.FieldByName('keterangan').ASstring);
                DM.Qcek.Next;
       end;

       Umain.loadingMain.PartsComplete:=21;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kode,keterangan FROM bypemeliharaan_lain ORDER BY kode ASC ');
       DM.Qcek.Open;

        kodepemlain.Properties.Items.Clear;
        ketpemlain.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodepemlain.Properties.Items.Add(DM.Qcek.FieldByName('kode').ASstring);
                ketpemlain.Properties.Items.Add(DM.Qcek.FieldByName('keterangan').ASstring);
                DM.Qcek.Next;
       end;

       Umain.loadingMain.PartsComplete:=22;  
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kode,keterangan FROM byretribusi_lain ORDER BY kode ASC ');
       DM.Qcek.Open;

        koderetlain.Properties.Items.Clear;
        ketretlain.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                koderetlain.Properties.Items.Add(DM.Qcek.FieldByName('kode').ASstring);
                ketretlain.Properties.Items.Add(DM.Qcek.FieldByName('keterangan').ASstring);
                DM.Qcek.Next;
       end;


       Umain.loadingMain.PartsComplete:=23;

       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT nama FROM pembacameter ORDER BY nama ASC ');
       DM.Qcek.Open;


        namapembaca.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin

                namapembaca.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);
                DM.Qcek.Next;
       end;





       Umain.loadingMain.PartsComplete:=24;

       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM jenisnonair ORDER BY jenis ASC ');
       DM.Qcek.Open;


       jenisangsuran.Properties.Items.Clear;    
       jenisangsuran.Properties.Items.add('TUNGGAKAN');
       jenisangsuran.Properties.Items.add('SAMB.BARU');
       while not DM.Qcek.Eof do
       begin

                jenisangsuran.Properties.Items.Add(DM.Qcek.FieldByName('jenis').ASstring);
                DM.Qcek.Next;
       end;


       Umain.loadingMain.PartsComplete:=25;

       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM jenisnonair ORDER BY jenis ASC ');
       DM.Qcek.Open;


        jenis.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin

                jenis.Properties.Items.Add(DM.Qcek.FieldByName('jenis').ASstring);
                DM.Qcek.Next;
       end;


       Umain.loadingMain.PartsComplete:=26;

        DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT * FROM paraf ORDER BY kode ASC ');
       DM.Qcek.Open;


        kodeparaf.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin

                kodeparaf.Properties.Items.Add(DM.Qcek.FieldByName('kode').ASstring);
                DM.Qcek.Next;
       end;




       Umain.loadingMain.PartsComplete:=27;
         //LIMBAH
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodelimbah,nama FROM golongan_limbah GROUP BY kodelimbah ASC ');
       DM.Qcek.Open;
       kodelimbah.Properties.Items.Clear;
       namalimbah.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodelimbah.Properties.Items.Add(DM.Qcek.FieldByName('kodelimbah').ASstring);
                namalimbah.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);


                DM.Qcek.Next;
       end;

      Umain.loadingMain.PartsComplete:=28;
           //L2T2
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodelltt,nama FROM golongan_lltt GROUP BY kodelltt ASC ');
       DM.Qcek.Open;
       kodelltt.Properties.Items.Clear;
       namalltt.Properties.Items.Clear;

       while not DM.Qcek.Eof do
       begin
                kodelltt.Properties.Items.Add(DM.Qcek.FieldByName('kodelltt').ASstring);
                namalltt.Properties.Items.Add(DM.Qcek.FieldByName('nama').ASstring);


                DM.Qcek.Next;
       end;

       //BANJAR
       Umain.loadingMain.PartsComplete:=29;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kodebanjar,namabanjar FROM banjar ORDER BY kodebanjar ASC ');
       DM.Qcek.Open;
       kodebanjar.Properties.Items.Clear;
       banjar.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodebanjar.Properties.Items.Add(DM.Qcek.FieldByName('kodebanjar').ASstring);
                banjar.Properties.Items.Add(DM.Qcek.FieldByName('namabanjar').ASstring);
                DM.Qcek.Next;
       end;

       //KWH
       Umain.loadingMain.PartsComplete:=30;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT idkwh,daya FROM kwhlistrik ORDER BY idkwh ASC ');
       DM.Qcek.Open;
       dayalistrik.Properties.Items.Clear;
       daya.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                dayalistrik.Properties.Items.Add(FormatCurr('#,##0',DM.Qcek.FieldByName('idkwh').AsInteger));
                daya.Properties.Items.Add(FormatCurr('#,##0',DM.Qcek.FieldByName('daya').AsCurrency));
                DM.Qcek.Next;
       end;

       //IPL
       Umain.loadingMain.PartsComplete:=31;
       DM.Qcek.Close;
       DM.Qcek.SQL.Clear;
       DM.Qcek.SQL.Add('SELECT kode,keterangan FROM byretribusi_lain ORDER BY kode ASC ');
       DM.Qcek.Open;
       kodeIPL.Properties.Items.Clear;
       namaIPL.Properties.Items.Clear;


       while not DM.Qcek.Eof do
       begin
                kodeIPL.Properties.Items.Add(DM.Qcek.FieldByName('kode').ASstring);
                namaIPL.Properties.Items.Add(DM.Qcek.FieldByName('keterangan').ASstring);
                DM.Qcek.Next;
       end;

       Umain.loadingMain.Visible:=false;

    EXCEPT ON E:Exception DO
    BEGIN

         Umain.loadingMain.Visible:=false;
         MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);   

         DM.uraianError := e.Message;
         DM.eventError := 'Load ComboBox';
         DM.logERROR();


    END;
    END;


end;

end.
