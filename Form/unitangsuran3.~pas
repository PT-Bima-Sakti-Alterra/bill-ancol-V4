unit unitangsuran3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxMemo, cxTextEdit, cxLabel, cxCurrencyEdit, ActnList,
  cxMaskEdit, cxDropDownEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, dxmdaset,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess,
  MyAccess, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxImageComboBox, MemDS, ComCtrls, dxCore, cxDateUtils, cxCalendar;

type
  Tuangsuran3 = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    RzPanel1: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    cxLabel1: TcxLabel;
    noangsuran: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    nama: TcxTextEdit;
    cxLabel3: TcxLabel;
    alamat: TcxMemo;
    cxLabel10: TcxLabel;
    bunga: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    telp: TcxTextEdit;
    cxLabel12: TcxLabel;
    hp: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel13: TcxLabel;
    keperluan: TcxTextEdit;
    nomor: TcxTextEdit;
    info: TRzPanel;
    RzPanel2: TRzPanel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    biaya: TcxCurrencyEdit;
    meterai: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    pokok: TcxCurrencyEdit;
    uangmuka: TcxCurrencyEdit;
    RzPanel3: TRzPanel;
    cxLabel9: TcxLabel;
    sisa: TcxCurrencyEdit;
    lama: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxLabel5: TcxLabel;
    RzPanel4: TRzPanel;
    cxLabel19: TcxLabel;
    mindp: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    dp2: TcxCurrencyEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gridbiaya: TcxGridDBColumn;
    rek: TdxMemData;
    rekurutan: TStringField;
    reknoangsuran: TStringField;
    rektermin: TStringField;
    rekmeterai: TCurrencyField;
    rektotal: TCurrencyField;
    rektglmulaitagih: TDateField;
    rekketjenis: TStringField;
    rekdibebankankepada: TStringField;
    MyDataSource1: TMyDataSource;
    rekbiaya: TCurrencyField;
    procedure noClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pokokPropertiesChange(Sender: TObject);
    procedure bungaPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure nomorPropertiesChange(Sender: TObject);
    procedure uangmukaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure biayaPropertiesChange(Sender: TObject);
    procedure lamaPropertiesChange(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    
     jenis:string;
     urutanpilih:integer;
     xnomor:String;
     xkeperluan:String;
     _fieldnonair:String;

     procedure proses();
     
  end;

var
  uangsuran3: Tuangsuran3;

implementation

uses Module, UnitMain,  RzStatus, UnitCombo;

{$R *.dfm}

procedure Tuangsuran3.noClick(Sender: TObject);
begin
close;
end;

procedure Tuangsuran3.cxButton1Click(Sender: TObject);
begin

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('SELECT CONCAT( MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","bima"))),3,3) , MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","sakti"))),10,3), MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","sanjay4"))),8,4),"-'+FormatDateTime('DDMMYYhhmmss',Now)+'") AS nomor ;');
  DM.Qcek.Open;

  noangsuran.Text:=DM.Qcek.fieldbyname('nomor').AsString;

end;

procedure Tuangsuran3.okClick(Sender: TObject);
var
waktu:TdateTime;
j:integer;
begin

 TRY
  TRY


       if keperluan.Text='' then
      begin
          MessageDlg('Harap isikan Keperluan !', mtWarning, [mbOK], 0);
          exit;
      end;


      if noangsuran.Text='' then
      begin
          MessageDlg('Harap isikan Nomor Angsuran !', mtWarning, [mbOK], 0);
          exit;
      end;

        if nomor.Text='' then
      begin
          MessageDlg('Harap isikan Nomor Sambungan !', mtWarning, [mbOK], 0);
          exit;
      end;


        if nama.Text='' then
      begin
          MessageDlg('Harap isikan nama !', mtWarning, [mbOK], 0);
          exit;
      end;

        if alamat.Text='' then
      begin
          MessageDlg('Harap isikan alamat !', mtWarning, [mbOK], 0);
          exit;
      end;


        if sisa.Value<=0 then
      begin
          MessageDlg('Harap isikan jumlah dengan benar !', mtWarning, [mbOK], 0);
          exit;
      end;

        if lama.Value<=0 then
      begin
          MessageDlg('Harap isikan lama angsuran dengan benar !', mtWarning, [mbOK], 0);
          exit;
      end;  


        if tanggal.Text='' then
      begin
          MessageDlg('Harap isikan Tanggal Mulai Ditagih !', mtWarning, [mbOK], 0);
          exit;
      end;

      Enabled:=false;
      waktu:=now;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;


      if(DM.Xkey='Tambah')then
      begin


          {DM.Qcek.close;
          DM.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('select *  FROM daftarangsuran WHERE flaglunas="0" AND nomor=:nomor');
          DM.Qcek.ParamByName('nomor').AsString:=nomor.Text;
          DM.Qcek.Open;

          if(DM.Qcek.RecordCount>0) then
          begin
               MessageDlg('PENDAFTARAN ANGSURAN DITOLAK... !!'+char(13)+char(13)+
               'Pelanggan dengan identitas '+nama.Text+'  '+nomor.Text+' masih mempunyai angsuran lain yang belum terlunasi...',mtwarning, [mbOK], 0);
              exit;
          end; }

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('INSERT INTO daftarangsuran (noangsuran,nomor,nama,alamat,notelp,nohp,noreg,keperluan,waktudaftar,jumlahtermin,jumlahangsuranpokok,jumlahangsuranbunga,jumlahuangmuka,jumlah,userdaftar,verifikasi,waktuverifikasi,userverifikasi,flagupload,');
          DM.Qexec.SQL.Add('waktuupload,flaglunas,dibebankankepada,tglmulaitagih)');
          DM.Qexec.SQL.Add('VALUES                     (:noangsuran,:nomor,:nama,:alamat,:notelp,:nohp,:noreg,:keperluan,:waktudaftar,:jumlahtermin,:jumlahangsuranpokok,:jumlahangsuranbunga,:jumlahuangmuka,:jumlah,:user,"1",NOW(),:user,"0",null,"0",');
          DM.Qexec.SQL.Add(':dibebankankepada,:tglmulaitagih)');
          DM.Qexec.ParamByName('noangsuran').AsString:=noangsuran.Text;
          DM.Qexec.ParamByName('nomor').AsString:=nomor.Text;
          DM.Qexec.ParamByName('nama').AsString:=nama.Text;
          DM.Qexec.ParamByName('alamat').AsString:=alamat.Text;
          DM.Qexec.ParamByName('noreg').AsString:='-';
          DM.Qexec.ParamByName('keperluan').AsString:=keperluan.Text;
          DM.Qexec.ParamByName('jumlahtermin').AsCurrency:=lama.Value;
          DM.Qexec.ParamByName('jumlahangsuranpokok').AsCurrency:=pokok.Value;
          DM.Qexec.ParamByName('jumlahangsuranbunga').AsCurrency:=bunga.Value;
          DM.Qexec.ParamByName('jumlahuangmuka').AsCurrency:=uangmuka.Value;
          DM.Qexec.ParamByName('jumlah').AsCurrency:=sisa.Value;
          DM.Qexec.ParamByName('waktudaftar').AsDateTime:=waktu;
          DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
          DM.Qexec.ParamByName('notelp').AsString:=telp.Text;
          DM.Qexec.ParamByName('nohp').AsString:=hp.Text;
          DM.Qexec.ParamByName('dibebankankepada').AsString:=nomor.Text;
          DM.Qexec.ParamByName('tglmulaitagih').AsDateTime:=tanggal.date;
          DM.Qexec.Execute;

      end
      else
      begin  

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE daftarangsuran SET');
          DM.Qexec.SQL.Add('waktukoreksi=:waktukoreksi,jumlahtermin=:jumlahtermin,jumlahangsuranpokok=:jumlahangsuranpokok,jumlahangsuranbunga=:jumlahangsuranbunga,jumlahuangmuka=:jumlahuangmuka,jumlah=:jumlah,userkoreksi=:user,dibebankankepada=:dibebankankepada,');
          DM.Qexec.SQL.Add('tglmulaitagih=:tglmulaitagih WHERE noangsuran=:noangsuran');
          DM.Qexec.ParamByName('noangsuran').AsString:=noangsuran.Text;
          DM.Qexec.ParamByName('jumlahtermin').AsCurrency:=lama.Value;
          DM.Qexec.ParamByName('jumlahangsuranpokok').AsCurrency:=pokok.Value;
          DM.Qexec.ParamByName('jumlahangsuranbunga').AsCurrency:=bunga.Value;
          DM.Qexec.ParamByName('jumlahuangmuka').AsCurrency:=uangmuka.Value;
          DM.Qexec.ParamByName('jumlah').AsCurrency:=sisa.Value;
          DM.Qexec.ParamByName('waktukoreksi').AsDateTime:=waktu;
          DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
          DM.Qexec.ParamByName('dibebankankepada').AsString:=nomor.Text;
          DM.Qexec.ParamByName('tglmulaitagih').AsDateTime:=tanggal.date;
          DM.Qexec.Execute;

      end;



        if(keperluan.Text='BIAYA PERBAIKAN')then
          _fieldnonair:='biayaperbaikan'
        else
        if(keperluan.Text='DENDA PELANGGARAB')then
          _fieldnonair:='dendapelanggaran'
        else
         if(keperluan.Text='PIUT. GANTI WM')then
          _fieldnonair:='piutanggwm'
        else
         if(keperluan.Text='RENCANA SAMBUNGAN')then
          _fieldnonair:='rencanasambungan';


         rek.First;
      
          for  j:=1 to rek.RecordCount do
          begin

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('INSERT INTO detailangsuran (noangsuran,nomor,termin,jumlah,ketjenis,dibebankankepada,tglmulaitagih,'+_fieldnonair+',meterai) values ');
              DM.Qexec.SQL.Add('(:noangsuran,:nomor,:termin,:jumlah,:ketjenis,:dibebankankepada,:tglmulaitagih,:biaya,:meterai)');
              DM.Qexec.ParamByName('noangsuran').AsString:=reknoangsuran.AsString;
              DM.Qexec.ParamByName('nomor').AsString:=nomor.Text;
              DM.Qexec.ParamByName('termin').AsInteger:=StrToInt(rektermin.AsString);
              DM.Qexec.ParamByName('ketjenis').AsString:=rekketjenis.AsString;
              DM.Qexec.ParamByName('dibebankankepada').AsString:=rekdibebankankepada.AsString;
              DM.Qexec.ParamByName('tglmulaitagih').AsDate:=rektglmulaitagih.AsDateTime;
              DM.Qexec.ParamByName('biaya').AsCurrency:=rekbiaya.AsCurrency;
              DM.Qexec.ParamByName('meterai').AsCurrency:=rekmeterai.AsCurrency;
              DM.Qexec.ParamByName('jumlah').AsCurrency:=rektotal.AsCurrency;
              DM.Qexec.Execute;

              rek.Next;
          end;


      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('COMMIT');
      DM.Qexec.Execute;

      ModalResult:=MrOk;

  EXCEPT ON E:Exception DO
  BEGIN

       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('ROLLBACK');
       DM.Qexec.Execute;
       MessageDlg('Terjadi kesalahan : '+E.Message, mtError, [mbOK], 0);
  END;
  END;
 FINALLY
     Enabled:=true;
 END;


end;

procedure Tuangsuran3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
nomor.Clear;
nama.Clear;
noangsuran.Clear;
alamat.Clear;
lama.Value:=0;
pokok.Value:=0;
bunga.Value:=0;
sisa.Value:=0;
uangmuka.Value:=0;
biaya.Value:=0; 
meterai.Value:=0;
mindp.Value:=0;

telp.Clear;
hp.Clear;
tanggal.Clear;



Umain.host.close;


end;

procedure Tuangsuran3.pokokPropertiesChange(Sender: TObject);
begin
sisa.Value:=(pokok.Value+bunga.Value)- uangmuka.Value;
end;

procedure Tuangsuran3.bungaPropertiesChange(Sender: TObject);
begin
sisa.Value:=(pokok.Value+bunga.Value)- uangmuka.Value;
end;

procedure Tuangsuran3.cxButton2Click(Sender: TObject);
var
j:integer;
begin

              nama.Clear;
              alamat.Clear;
              telp.Clear;
              hp.Clear;
              sisa.Value:=0;
              pokok.Value:=0;
              bunga.Value:=0;
              lama.Value:=0;
              

              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * FROM pelanggan WHERE nosamb = :nosamb');
              DM.Qcek.ParamByName('nosamb').AsString:=nomor.Text;
              DM.Qcek.Open;

              if(DM.Qcek.RecordCount>0) then
              begin
               nama.Text:=DM.Qcek.fieldbyname('nama').AsString;
               alamat.Text:=DM.Qcek.fieldbyname('alamat').AsString;
               telp.Text:=DM.Qcek.fieldbyname('notelp').AsString;
               hp.Text:=DM.Qcek.fieldbyname('nohp').AsString;
              end;

              proses;

end;

procedure Tuangsuran3.nomorPropertiesChange(Sender: TObject);
begin
nomor.Text:=nomor.Text;

end;

procedure Tuangsuran3.uangmukaPropertiesChange(Sender: TObject);
begin
sisa.Value:=(pokok.Value+bunga.Value)- uangmuka.Value;
dp2.Value:=uangmuka.Value-mindp.Value;
proses;

end;

procedure Tuangsuran3.FormShow(Sender: TObject);
begin
tanggal.date:=date;
cxLabel17.Caption:=keperluan.Text;
//cxLabel9.Caption:='SISA '+keperluan.Text;
gridbiaya.Caption:=keperluan.Text;

end;

procedure Tuangsuran3.biayaPropertiesChange(Sender: TObject);
begin
pokok.Value:=biaya.Value+meterai.Value;
mindp.Value:=meterai.Value;
proses;
end;


procedure Tuangsuran3.proses();
var
x:integer;
mulai:integer;
begin

  if(lama.Value>0)then
  begin 

      rek.Close;
      rek.Open;


      for x:=0 to StrToInt(lama.Text) do
      begin

          rek.Append;
          rekurutan.AsString:=noangsuran.Text+'.'+IntToStr(x);
          reknoangsuran.AsString:=noangsuran.Text;
          rekdibebankankepada.AsString:=nomor.Text;
          rektglmulaitagih.AsDateTime:=IncMonth(tanggal.date,+x);


          


                if(x=0) then
                begin
                  rektermin.AsString:=IntToStr(x);
                  rekbiaya.AsCurrency:=dp2.Value;
                  rekmeterai.AsCurrency:=meterai.Value;

                  rektotal.AsCurrency:= dp2.Value +
                                        meterai.Value;


                  rekketjenis.AsString:='Uang Muka / '+CurrToStr(dp2.Value + meterai.Value )+' / '+lama.Text+' kali angsur...';



                end
                else
                begin
                  rektermin.AsString:=IntToStr(x);
                  rekbiaya.AsCurrency:=sisa.Value / lama.Value ;
                  rekmeterai.AsCurrency:=0;    
                  rektotal.AsCurrency:= sisa.Value / lama.Value ;
                  rekketjenis.AsString:='Angsuran ke '+IntToStr(x);

                end;



          rek.Post;


      end;


  end
  else
    rek.close;

end;


procedure Tuangsuran3.lamaPropertiesChange(Sender: TObject);
begin
proses;
end;

end.



