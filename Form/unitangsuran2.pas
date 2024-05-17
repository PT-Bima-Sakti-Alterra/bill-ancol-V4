unit unitangsuran2;

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
  Tuangsuran2 = class(TForm)
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
    lama: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    sisabiayapasang: TcxCurrencyEdit;
    cxLabel10: TcxLabel;
    pokok: TcxCurrencyEdit;
    bunga: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel11: TcxLabel;
    telp: TcxTextEdit;
    cxLabel12: TcxLabel;
    hp: TcxTextEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qcek: TMyQuery;
    cxButton2: TcxButton;
    RzPanel3: TRzPanel;
    nomor: TcxComboBox;
    cnama: TcxComboBox;
    calamat: TcxComboBox;
    ctelp: TcxComboBox;
    chp: TcxComboBox;
    cxLabel4: TcxLabel;
    noreg: TcxTextEdit;
    cnoreg: TcxComboBox;
    uangmuka: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    tanggal: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    nosamb: TcxComboBox;
    Qexec: TMyQuery;
    info: TRzPanel;
    cxLabel17: TcxLabel;
    biayapasang: TcxCurrencyEdit;
    cxLabel19: TcxLabel;
    jaminan: TcxCurrencyEdit;
    cxLabel21: TcxLabel;
    meterai: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    lainnya: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    ppn: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    RzPanel2: TRzPanel;
    cbiayapasang: TcxComboBox;
    cjaminan: TcxComboBox;
    cmeterai: TcxComboBox;
    clainnya: TcxComboBox;
    cppn: TcxComboBox;
    cxLabel20: TcxLabel;
    mindp: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    dpbiayapasang: TcxCurrencyEdit;
    rek: TdxMemData;
    rekurutan: TStringField;
    reknoangsuran: TStringField;
    rektermin: TStringField;
    rekbiayapasang: TCurrencyField;
    rekjaminan: TCurrencyField;
    rekmeterai: TCurrencyField;
    rekppn: TCurrencyField;
    rektotal: TCurrencyField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    rektglmulaitagih: TDateField;
    rekketjenis: TStringField;
    rekdibebankankepada: TStringField;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    procedure noClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure uangmukaPropertiesChange(Sender: TObject);
    procedure lamaPropertiesChange(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
     jenis:string;
     urutanpilih:integer;
     xnomor:String;


     procedure proses();
  end;

var
  uangsuran2: Tuangsuran2;

implementation

uses Module, UnitMain,  RzStatus, UnitCombo;

{$R *.dfm}

procedure Tuangsuran2.noClick(Sender: TObject);
begin
close;
end;

procedure Tuangsuran2.cxButton1Click(Sender: TObject);
begin

  DM.Qcek.close;
  DM.Qcek.SQL.Clear;
  DM.Qcek.SQL.Add('SELECT CONCAT( MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","bima"))),3,3) , MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","sakti"))),10,3), MID(UPPER(MD5(CONCAT(NOW(),"'+umain.user.Caption+'","sanjay4"))),8,4),"-'+FormatDateTime('DDMMYYhhmmss',Now)+'") AS nomor ;');
  DM.Qcek.Open;

  noangsuran.Text:=DM.Qcek.fieldbyname('nomor').AsString;

end;

procedure Tuangsuran2.okClick(Sender: TObject);
var
waktu:TdateTime;
j:integer;
begin

 TRY
  TRY



      Umain.openkoneksi_host;

      if noangsuran.Text='' then
      begin
          MessageDlg('Harap isikan Nomor Angsuran !', mtWarning, [mbOK], 0);
          exit;
      end;

        if nomor.Text='' then
      begin
          MessageDlg('Harap isikan nomor R.A.B !', mtWarning, [mbOK], 0);
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


        if (sisabiayapasang.Value<=0) then
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



       if mindp.Value>uangmuka.Value then
      begin
          MessageDlg('MINIMAL DP Rp. '+CurrToStr(mindp.Value)+' ... !', mtWarning, [mbOK], 0);
          exit;
      end;

      Enabled:=false;
      waktu:=now;


       DM.Qexec.close;
       DM.Qexec.SQL.Clear;
       DM.Qexec.SQL.Add('START TRANSACTION');
       DM.Qexec.Execute;

       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('START TRANSACTION');
       Qexec.Execute;



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
               'RAB dengan nomor '+nomor.Text+' a/n  '+nama.Text+'   masih mempunyai angsuran lain yang belum terlunasi...',mtwarning, [mbOK], 0);
              exit;
          end; }


         

          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('INSERT INTO daftarangsuran (noangsuran,nomor,nama,alamat,notelp,nohp,noreg,keperluan,waktudaftar,jumlahtermin,jumlahangsuranpokok,jumlahangsuranbunga,jumlahuangmuka,');
          DM.Qexec.SQL.Add('jumlah,userdaftar,verifikasi,waktuverifikasi,userverifikasi,flagupload,waktuupload,flaglunas,dibebankankepada,tglmulaitagih)');
          DM.Qexec.SQL.Add('VALUES                     (:noangsuran,:nomor,:nama,:alamat,:notelp,:nohp,:noreg,:keperluan,:waktudaftar,:jumlahtermin,:jumlahangsuranpokok,:jumlahangsuranbunga,:jumlahuangmuka,:jumlah,:user,"1",NOW(),:user,"0"');
          DM.Qexec.SQL.Add(',null,"0",:dibebankankepada,:tglmulaitagih)');
          DM.Qexec.ParamByName('noangsuran').AsString:=noangsuran.Text;
          DM.Qexec.ParamByName('nomor').AsString:=nomor.Text;
          DM.Qexec.ParamByName('nama').AsString:=nama.Text;
          DM.Qexec.ParamByName('alamat').AsString:=alamat.Text;
          DM.Qexec.ParamByName('noreg').AsString:=noreg.Text;
          DM.Qexec.ParamByName('keperluan').AsString:='SAMB.BARU';
          DM.Qexec.ParamByName('jumlahtermin').AsCurrency:=lama.Value;
          DM.Qexec.ParamByName('jumlahangsuranpokok').AsCurrency:=pokok.Value;
          DM.Qexec.ParamByName('jumlahangsuranbunga').AsCurrency:=bunga.Value;
          DM.Qexec.ParamByName('jumlahuangmuka').AsCurrency:=uangmuka.Value;
          DM.Qexec.ParamByName('jumlah').AsCurrency:=sisabiayapasang.Value;
          DM.Qexec.ParamByName('waktudaftar').AsDateTime:=waktu;
          DM.Qexec.ParamByName('user').AsString:=Umain.user.Caption;
          DM.Qexec.ParamByName('notelp').AsString:=telp.Text;
          DM.Qexec.ParamByName('nohp').AsString:=hp.Text;
          DM.Qexec.ParamByName('dibebankankepada').AsString:=nosamb.Text;
          DM.Qexec.ParamByName('tglmulaitagih').AsDateTime:=tanggal.date;
          DM.Qexec.Execute;

          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('REPLACE INTO nonairpindah SELECT * FROm nonair WHERE urutan=:urutan');
          Qexec.ParamByName('urutan').AsString:=nomor.Text;
          Qexec.Execute;

          Qexec.close;
          Qexec.SQL.Clear;
          Qexec.SQL.Add('UPDATE nonair SET flaghapus="1",waktuupdate=NOW(),keterangan="Telah di Angsur.." WHERE urutan=:urutan');
          Qexec.ParamByName('urutan').AsString:=nomor.Text;
          Qexec.Execute;

      end
      else
      begin


          DM.Qexec.close;
          DM.Qexec.SQL.Clear;
          DM.Qexec.SQL.Add('UPDATE daftarangsuran SET');
          DM.Qexec.SQL.Add('waktukoreksi=:waktukoreksi,jumlahtermin=:jumlahtermin,jumlahangsuranpokok=:jumlahangsuranpokok,jumlahangsuranbunga=:jumlahangsuranbunga,jumlahuangmuka=:jumlahuangmuka,jumlah=:jumlah,userkoreksi=:userkoreksi,');
          DM.Qexec.SQL.Add('dibebankankepada=:dibebankankepada,tglmulaitagih=:tglmulaitagih WHERE noangsuran=:noangsuran');
          DM.Qexec.ParamByName('noangsuran').AsString:=noangsuran.Text;
          DM.Qexec.ParamByName('jumlahtermin').AsCurrency:=lama.Value;
          DM.Qexec.ParamByName('jumlahangsuranpokok').AsCurrency:=pokok.Value;
          DM.Qexec.ParamByName('jumlahangsuranbunga').AsCurrency:=bunga.Value;
          DM.Qexec.ParamByName('jumlahuangmuka').AsCurrency:=uangmuka.Value;
          DM.Qexec.ParamByName('jumlah').AsCurrency:=sisabiayapasang.Value;
          DM.Qexec.ParamByName('waktukoreksi').AsDateTime:=waktu;
          DM.Qexec.ParamByName('userkoreksi').AsString:=Umain.user.Caption;
          DM.Qexec.ParamByName('dibebankankepada').AsString:=nosamb.Text;
          DM.Qexec.ParamByName('tglmulaitagih').AsDateTime:=tanggal.date;
          DM.Qexec.Execute;



      end;


           rek.First;
      
          for  j:=1 to rek.RecordCount do
          begin

              DM.Qexec.close;
              DM.Qexec.SQL.Clear;
              DM.Qexec.SQL.Add('INSERT INTO detailangsuran (noangsuran,nomor,termin,jumlah,ketjenis,dibebankankepada,tglmulaitagih,biayapasang,jaminan,meterai,ppn) values ');
              DM.Qexec.SQL.Add('(:noangsuran,:nomor,:termin,:jumlah,:ketjenis,:dibebankankepada,:tglmulaitagih,:biayapasang,:jaminan,:meterai,:ppn)');
              DM.Qexec.ParamByName('noangsuran').AsString:=reknoangsuran.AsString;
              DM.Qexec.ParamByName('nomor').AsString:=nomor.Text;
              DM.Qexec.ParamByName('termin').AsInteger:=StrToInt(rektermin.AsString);
              DM.Qexec.ParamByName('ketjenis').AsString:=rekketjenis.AsString;
              DM.Qexec.ParamByName('dibebankankepada').AsString:=rekdibebankankepada.AsString;
              DM.Qexec.ParamByName('tglmulaitagih').AsDate:=rektglmulaitagih.AsDateTime;
              DM.Qexec.ParamByName('biayapasang').AsCurrency:=rekbiayapasang.AsCurrency;
              DM.Qexec.ParamByName('jaminan').AsCurrency:=rekjaminan.AsCurrency;
              DM.Qexec.ParamByName('meterai').AsCurrency:=rekmeterai.AsCurrency;
              DM.Qexec.ParamByName('ppn').AsCurrency:=rekppn.AsCurrency;
              DM.Qexec.ParamByName('jumlah').AsCurrency:=rektotal.AsCurrency;
              DM.Qexec.Execute;

              rek.Next;
          end;



       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('UPDATE rab set flagangsur="1" WHERE norab=:norab');
       Qexec.ParamByName('norab').AsString:=nomor.Text;
       Qexec.Execute;


      Qexec.close;
      Qexec.SQL.Clear;
      Qexec.SQL.Add('COMMIT');
      Qexec.Execute;


      DM.Qexec.close;
      DM.Qexec.SQL.Clear;
      DM.Qexec.SQL.Add('COMMIT');
      DM.Qexec.Execute;

      ModalResult:=MrOk;

  EXCEPT ON E:Exception DO
  BEGIN

       Qexec.close;
       Qexec.SQL.Clear;
       Qexec.SQL.Add('ROLLBACK');
       Qexec.Execute;

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

procedure Tuangsuran2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
nomor.Clear;
nama.Clear;
noangsuran.Clear;
alamat.Clear;
lama.Value:=0;
pokok.Value:=0;
bunga.Value:=0;
uangmuka.Value:=0;
sisabiayapasang.Value:=0;


telp.Clear;
hp.Clear;
noreg.Clear;
tanggal.Clear;
nosamb.clear;


Umain.host.close;


end;

procedure Tuangsuran2.cxButton2Click(Sender: TObject);  
begin

              cnama.ItemIndex:=nomor.ItemIndex;
              calamat.ItemIndex:=nomor.ItemIndex;
              ctelp.ItemIndex:=nomor.ItemIndex;
              chp.ItemIndex:=nomor.ItemIndex;
              cnoreg.ItemIndex:=nomor.ItemIndex;

              cbiayapasang.ItemIndex:=nomor.ItemIndex;
              cjaminan.ItemIndex:=nomor.ItemIndex;
              cmeterai.ItemIndex:=nomor.ItemIndex;
              clainnya.ItemIndex:=nomor.ItemIndex;
              cppn.ItemIndex:=nomor.ItemIndex;

              nama.Text:=cnama.Text;
              alamat.Text:=calamat.Text;
              telp.Text:=ctelp.Text;
              hp.Text:=chp.Text;
              noreg.Text:=cnoreg.Text;  

              if cbiayapasang.Text<>'' then
                biayapasang.Value:=StrToCurr(cbiayapasang.Text)
              else
                biayapasang.Value:=0;


            

                 if cjaminan.Text<>'' then
                jaminan.Value:=StrToCurr(cjaminan.Text)
              else
                jaminan.Value:=0;

                 if cmeterai.Text<>'' then
                meterai.Value:=StrToCurr(cmeterai.Text)
              else
                meterai.Value:=0;

                 if clainnya.Text<>'' then
                lainnya.Value:=StrToCurr(clainnya.Text)
              else
                lainnya.Value:=0;


              if cppn.Text<>'' then
                ppn.Value:=StrToCurr(cppn.Text)
              else
                ppn.Value:=0;


                pokok.Value:=biayapasang.Value+jaminan.Value+lainnya.Value+meterai.Value+ppn.Value;
                mindp.Value:=lainnya.Value+jaminan.Value+meterai.Value+ppn.Value;
                proses;
               

end;

procedure Tuangsuran2.FormShow(Sender: TObject);
begin


  if(DM.Xkey='Koreksi')then
  begin
    nomor.Text:=xnomor;
  end;

  tanggal.date:=date;

end;

procedure Tuangsuran2.uangmukaPropertiesChange(Sender: TObject);
var
kelebihandp:Currency;
begin


  kelebihandp:=0;
  kelebihandp:=(uangmuka.Value-mindp.Value);

  if(biayapasang.Value>0)then
  begin  
   sisabiayapasang.Value:=biayapasang.Value-kelebihandp;
   dpbiayapasang.Value:=kelebihandp;
  end;

  proses;

end;


procedure Tuangsuran2.proses();
var
x:integer;  
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
          rekdibebankankepada.AsString:='SAMB.BARU';
          rektglmulaitagih.AsDateTime:=IncMonth(tanggal.date,+x);


          if(x=0) then
          begin
            rektermin.AsString:=IntToStr(x);
            rekbiayapasang.AsCurrency:=dpbiayapasang.Value;
            rekjaminan.AsCurrency:=jaminan.Value;
            rekmeterai.AsCurrency:=meterai.Value;
            rekppn.AsCurrency:=ppn.Value;
            rektotal.AsCurrency:= dpbiayapasang.Value +
                                  jaminan.Value +
                                  meterai.Value +
                                  ppn.Value;

            rekketjenis.AsString:='Uang Muka / '+CurrToStr(dpbiayapasang.Value + jaminan.Value + meterai.Value + ppn.Value)+' / '+lama.Text+' kali angsur...';



          end
          else
          begin
            rektermin.AsString:=IntToStr(x);
            rekbiayapasang.AsCurrency:=sisabiayapasang.Value / lama.Value ;
            rekjaminan.AsCurrency:=0;
            rekmeterai.AsCurrency:=0;
            rekppn.AsCurrency:=0;
            rektotal.AsCurrency:= sisabiayapasang.Value / lama.Value ;
            rekketjenis.AsString:='Angsuran ke '+IntToStr(x);

          end;

          rek.Post;


      end;


  end
  else
    rek.close;

end;

procedure Tuangsuran2.lamaPropertiesChange(Sender: TObject);
begin
proses;
end;

end.



