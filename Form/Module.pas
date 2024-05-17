unit Module;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzStatus, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbon,DAteutils,
  ActnList,FRAME_rekening, cxContainer, cxEdit, dxGDIPlusClasses, cxImage,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMemo, cxScrollBox, cxLabel, DB,
  MemDS, DBAccess, MyAccess, RzLabel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxDBData, cxGridChartView, cxGridDBChartView, cxGridLevel,
  cxGridCustomView, cxGrid, dxSkinOffice2013White, frxExportDBF,
  frxExportMail, frxExportText, frxExportRTF, frxExportPDF, frxClass,
  frxExportXLS, ImgList, dxSkinsForm, frxDBSet, DCPcrypt2, DCPsha256, MyClasses, DCPrc4;
  

type
  TDM = class(TDataModule)
    dxSkinController1: TdxSkinController;
    Conn: TMyConnection;
    Qsetting: TMyQuery;
    Qexec: TMyQuery;
    Qcek: TMyQuery;
    Qvalidasi: TMyQuery;
    Grid: TcxImageList;
    Qpejabat: TMyQuery;
    small: TcxImageList;
    cxImageList1: TcxImageList;
    Qtanggalkini: TMyQuery;
    Qcek2: TMyQuery;
    DSpejabat: TMyDataSource;
    pejabat: TfrxDBDataset;
    Image32: TcxImageList;
    icon32: TcxImageList;
    icon24: TcxImageList;
    icon16: TcxImageList;
    png24: TcxImageList;
    png16: TcxImageList;
    cxImageList2: TcxImageList;
    Qcekvps: TMyQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    DCP_rc41: TDCP_rc4;
    Qlunas_air_dari_angsuran: TMyQuery;
    Qcek1: TMyQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    

    SN:String;
    LOKET:String;
    DB:String;
    IP:String;
    SKIN,KLIEN:String;
    Port,USER,PASS:String;
    uraianlogakses:String;
    targetlogakses:String;
    uraianError:String;
    eventError:String;

    _FOTOMETERAKTIF,_LOKASIFOTOMETER:String;


    DBLOKET:String;
    IPLOKET:String;
    PORTLOKET,USERLOKET,PASSLOKET:String;

    DBGUDANG:String;
    IPGUDANG:String;
    PORTGUDANG,USERGUDANG,PASSGUDANG:String;

    ///deklarasi semua
    Xclipbrd,
    Xflag:String;
    Xid:integer;
    Xnama,
    Xkode,
    Xkodegol,
    Xkodelimbah,
    Xkodelltt,
    Xkodediameter,
    Xkoderayon,
    Xkodekolektif,
    Xalamat,
    Xmerk,
    Xkondisi,
    Xstatus,
    Xnorekening,
    Xcabang,
    Xserimeter,
    Xkodecabang,
    Xkodekelurahan,
    Xkodewil,
    Xkodewillokasi,
    Xkodeloket,
    Xkodearea,
    Xarea,
    xwilayah,
    Xperiode:String; 
    Xpdam:String;
    Xbulan:String;
    Xkey:String;
    Xnosamb:String;
    Xjabatan:String;
    xkodeadmlain:String;
    xkodepemlain:String;
    xkoderetlain:String;
    Xsumberairlama:String;
    Xflagpel:String;
    Xheader1,Xheader2,Xfooter1:String;
    Xkepemilikan:String;
    xrayon:String;
    xkodeblok:String;
    Xluasrumah:Currency;
    parafuserdilaporan:string;


    Xversi:String;
    Xversiterbaru:String;
    Xftp:string;
    Xmulaiupdate:string;
    Xlokasifilepos:String;

    Xkodegolyangberlaku,XkodegolIPLyangberlaku,Xkodediameteryangbrlaku:String;
    _wilayah_nonair_berdasarkan_wilayah_loket:string;
    _segel_tanpa_biaya_pakai:string;
    _putus_sementara_tanpa_biaya_pakai:string;
    _administrasi_lain_drd:string;
    _pemeliharaan_lain_drd:string;
    _retribusi_lain_drd:string;
    Xnomorlimbah,Xnomorlltt:String;

    _fitur_airlimbah,_fitur_lltt:string;

   
    xppndaritotal:String;

    PesanPass,NamaUser,devideID : String;
    loginNumber : Integer;

    procedure perbaruitanggal();
    procedure logakses();
    procedure logERROR();
    function EjaAngkasen(sValue: string):string;
    function cekpassword(password:string) : Boolean;
  end;

var
  DM: TDM;

implementation

uses UnitMain, dxRibbonStatusBar;


{$R *.dfm}

function TDM.cekpassword(password:string) : Boolean;
const
  C_Upcase  = 1;
  C_Locase  = 2;
  C_Digit   = 4;
  C_SpecSym = 8;
  C_All = C_Upcase or C_Locase or C_Digit or C_SpecSym;
var
  i, keys : Integer;
begin
  PesanPass := '';
  if Length(password) < 8 then
  begin
    Result := False;
    PesanPass :='Panjang Password Minimal 8 Karakter';
    Exit;
  end;

  keys := 0;
  for i:=1 to length(password) do
  case password[i] of
    'A'..'Z' : keys := keys or C_Upcase;
    'a'..'z' : keys := keys or C_Locase;
    '0'..'9' : keys := keys or C_Digit;
    '~','!','@','#','$','%','^','&','*','(',')','_','+','{','}','|',':','"','<','>','?','`','-','=','[',']','\',';',',','.','/',' ' : keys := keys or C_SpecSym;
  end;

  Result := keys = C_All;
  if Result=False then
  begin
    PesanPass := 'Password Setidaknya Harus Memiliki Minimal 1 Hurup Besar && Kecil, 1 Symbol && 1 Angka';
    Exit;
  end;
end;


Function Encrypt(const InString:string; StartKey,MultKey,AddKey:Integer):string;
var
I : Byte;
begin
Result := '';

      //for I := 1 to Length(InString) do
      for I := 1 to Length(InString)+10  do
      begin
      Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
      StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
      end;

end;

Function Decrypt(const InString:string; StartKey,MultKey,AddKey:Integer):string;
var
I : Byte;
begin
Result := '';

    for I := 1 to Length(InString) do
    begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
    end;
end;

function TDM.EjaAngkaSen(sValue: string):string;
const
  Angka : array [1..20] of string =
          ('', 'Satu ', 'Dua ', 'Tiga ', 'Empat ',
           'Lima ', 'Enam ', 'Tujuh ', 'Delapan ',
           'Sembilan ', 'Sepuluh ', 'Sebelas ',
           'Dua Belas ', 'Tiga Belas ', 'Empat Belas ',
           'Lima Belas ', 'Enam Belas ', 'Tujuh Belas ',
           'Delapan Belas ', 'Sembilan Belas ');
  sPattern: string = '000000000000000';

var
  S,kata : string;
  Satu, Dua, Tiga, Belas, Gabung: string;
  Sen, Sen1, Sen2: string;
  Hitung : Currency;
  A1, A2, A3: Integer;

begin
  A1    := 1;
  A2    := 2;
  A3    := 3;
  Hitung := 1;
  Kata   := '';
  S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
  Sen1 := Copy(S, 14, 1);
  Sen2 := Copy(S, 15, 1);
  Sen  := Sen1 + Sen2;
  while Hitung < 5 do
  begin
    Satu := Copy(S, A1, 1);
    Dua  := Copy(S, A2, 1);
    Tiga := Copy(S, A3, 1);
    Gabung := Satu + Dua + Tiga;

    if StrToCurr(Satu) = 1 then
      Kata := Kata + 'Seratus '
    else
    if StrToCurr(Satu) > 1 Then
      Kata := Kata + Angka[strtoint(satu)+1] + 'Ratus ';

    if StrToCurr(Dua) = 1 then
    begin
      Belas := Dua + Tiga;
      Kata := Kata + Angka[strtoint(Belas)+1];
    end
    else
    if StrToCurr(Dua) > 1 Then
      Kata := Kata + Angka[strtoint(Dua)+1] + 'Puluh ' + Angka[strtoint(Tiga)+1]
    else
      if (StrToCurr(Dua) = 0) and (StrToCurr(Tiga) > 0) Then
      begin
        if ((Hitung = 3) and (Gabung = '001')) or ((Hitung = 3) and (Gabung = '  1')) then
          Kata := Kata + 'Seribu '
        else
          Kata := Kata + Angka[strtoint(Tiga)+1];
     end;

    if (hitung = 1) and (StrToCurr(Gabung) > 0) then
      Kata := Kata + 'Milyar '
    else
    if (Hitung = 2) and (StrToCurr(Gabung) > 0) then
      Kata := Kata + 'Juta '
    else
      if (Hitung = 3) and (StrToCurr(Gabung) > 0) then
      begin
        if (Gabung = '001') or (Gabung = '  1') then
          Kata := Kata + ''
        else
          Kata := Kata + 'Ribu ';
      end;
    Hitung := Hitung + 1;
    A1    := A1 + 3;
    A2    := A2 + 3;
    A3    := A3 + 3;
  end;

  if length(Kata) > 1 then
    Kata := Kata + 'Rupiah ';

  if (StrToCurr(Sen) > 0) and (StrToCurr(Sen) < 20) then
  begin
    if StrToCurr(Sen) < 10 then
      Sen := Copy(Sen, 2, 1);
    Kata := Kata + Angka[strtoint(Sen)+1] + 'Sen';
  end
  else
  if StrToCurr(Sen) > 19 then
    Kata := Kata + Angka[strtoint(Sen1)+1] + 'Puluh ' +
  Angka[strtoint(Sen2)+1] + 'Sen';

  if Kata = '' then
    Kata := 'Nol Rupiah';

  Result := Kata;
end;

procedure  TDM.perbaruitanggal();
var
  SystemTime: TSystemTime;
  NewTime, NewDate: string;
begin
  NewTime := TimeToStr(DM.Qtanggalkini.fieldbyname('waktukini').AsDateTime);//'12:00:00';
  NewDate := DateToStr(DM.Qtanggalkini.fieldbyname('tanggalkini').AsDateTime);//'01.01.2012';
  DateTimeToSystemTime(StrToDate(NewDate) + StrToTime(NewTime), SystemTime);
  SetLocalTime(SystemTime);
  PostMessage(HWND_BROADCAST, WM_TIMECHANGE, 0, 0); // *
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var

  f:TextFile; 
  FlagMasukKoneksiError:boolean;
  PortInt:integer;
  folder:String;
begin  

 if FileExists(GetCurrentDir+'\BSserver.ini')then
 begin
   assignFile(f,GetCurrentDir+'\BSserver.ini');
    Reset(f);
    ReadLn(f,USER);
    ReadLn(f,PASS);
    ReadLn(f,IP);
    ReadLn(f,PORT);
    ReadLn(f,DB);
    CloseFile(f);

  end;



  if FileExists(GetCurrentDir+'\koneksiloket.ini')then
  begin

    assignFile(f,GetCurrentDir+'\koneksiloket.ini');
    Reset(f);
    ReadLn(f,USERLOKET);
    ReadLn(f,PASSLOKET);
    ReadLn(f,IPLOKET);
    ReadLn(f,PORTLOKET);
    ReadLn(f,DBLOKET);
    CloseFile(f);

  end;


  
  if FileExists(GetCurrentDir+'\koneksigudang.ini')then
  begin
    assignFile(f,GetCurrentDir+'\koneksigudang.ini');
    Reset(f);
    ReadLn(f,USERGUDANG);
    ReadLn(f,PASSGUDANG);
    ReadLn(f,IPGUDANG);
    ReadLn(f,PORTGUDANG);
    ReadLn(f,DBGUDANG);
    CloseFile(f);

  end;


  if FileExists(GetCurrentDir+'\lokasifotometer.ini')then
  begin

    assignFile(f,GetCurrentDir+'\lokasifotometer.ini');
    Reset(f);
    ReadLn(f,_FOTOMETERAKTIF);
    ReadLn(f,_LOKASIFOTOMETER);   
    CloseFile(f);

  end;



  try
      Conn.Close;
      Conn.Username:=USER;
      Conn.Password:=Decrypt(PASS,1,1,1);
      Conn.Server:=IP;
      Conn.Port:=StrToInt(PORT);
      Conn.Database :=DB;

      Conn.Options.Protocol := mpSSL;
      Conn.SSLOptions.CACert := GetCurrentDir+'\ca-cert.pem';
      Conn.SSLOptions.Cert := GetCurrentDir+'\client-cert.pem';
      Conn.SSLOptions.ChipherList := '';
      Conn.SSLOptions.Key := GetCurrentDir+'\client-key.pem';
      Conn.Open;

      Conn.Connect;
      if(Conn.Connected=true)then
      begin
        DM.Qsetting.Close;
        DM.Qsetting.sql.Clear;
        DM.Qsetting.SQL.Add('select * from pengaturan WHERE idx="1"');
        DM.Qsetting.Open;

        DM.xppndaritotal:=DM.Qsetting.fieldbyname('ppndaritotal').Value;
        DM.parafuserdilaporan:= DM.Qsetting.fieldbyname('parafuserdilaporan').AsString;   
        DM.Xheader1:=DM.Qsetting.fieldbyname('headerreport').Value;
        DM.Xfooter1:=DM.Qsetting.fieldbyname('footerkota').Value;
        DM._wilayah_nonair_berdasarkan_wilayah_loket:=DM.Qsetting.fieldbyname('wilayah_nonair_berdasarkan_wilayah_loket').Value;
        DM._segel_tanpa_biaya_pakai:=DM.Qsetting.fieldbyname('segel_tanpa_biaya_pakai').Value;
        DM._putus_sementara_tanpa_biaya_pakai:=DM.Qsetting.fieldbyname('putus_sementara_tanpa_biaya_pakai').Value;
        DM._administrasi_lain_drd:=DM.Qsetting.fieldbyname('administrasi_lain_drd').Value;
        DM._pemeliharaan_lain_drd:=DM.Qsetting.fieldbyname('pemeliharaan_lain_drd').Value;
        DM._retribusi_lain_drd:=DM.Qsetting.fieldbyname('retribusi_lain_drd').Value;
        DM._fitur_airlimbah:=DM.Qsetting.fieldbyname('fitur_airlimbah').Value;
        DM._fitur_lltt:=DM.Qsetting.fieldbyname('fitur_lltt').Value;
      end;

      Umain.host.Close;
      Umain.host.Username:=DM.USERLOKET;
      Umain.host.Password:=Decrypt(PASSLOKET,1,1,1);
      Umain.host.Server:=DM.IPLOKET;
      Umain.host.Port:=StrToInt(DM.PORTLOKET);
      Umain.host.Database :=DM.DBLOKET;

      Umain.host.Options.Protocol := mpSSL;
      Umain.host.SSLOptions.CACert := GetCurrentDir+'\ca-cert.pem';
      Umain.host.SSLOptions.Cert := GetCurrentDir+'\client-cert.pem';
      Umain.host.SSLOptions.ChipherList := '';
      Umain.host.SSLOptions.Key := GetCurrentDir+'\client-key.pem';
      Umain.host.Open;

      Umain.host.Connect;

      Umain.wh.Close;
      Umain.wh.Username:=DM.USERGUDANG;
      Umain.wh.Password:=Decrypt(PASSGUDANG,1,1,1);
      Umain.wh.Server:=DM.IPGUDANG;
      Umain.wh.Port:=StrToInt(DM.PORTGUDANG);
      Umain.wh.Database :=DM.DBGUDANG;

      Umain.wh.Options.Protocol := mpSSL;
      Umain.wh.SSLOptions.CACert := GetCurrentDir+'\ca-cert.pem';
      Umain.wh.SSLOptions.Cert := GetCurrentDir+'\client-cert.pem';
      Umain.wh.SSLOptions.ChipherList := '';
      Umain.wh.SSLOptions.Key := GetCurrentDir+'\client-key.pem';
      Umain.wh.Open;

      Umain.wh.Connect;

  except
  on E: Exception do
  begin
  end;


  end;
 end;

procedure TDM.logakses();
begin

  Qexec.close;
  Qexec.SQL.Clear;
  Qexec.SQL.Add('INSERt INTO logakses (waktu,user,ket,target)VALUES (:date,:user,:uraian,:target)');
  Qexec.ParamByName('user').AsString:=Umain.user.caption;
  Qexec.ParamByName('uraian').AsString:= uraianlogakses; 
  Qexec.ParamByName('target').AsString:= targetlogakses;
  Qexec.ParamByName('date').AsDateTime:=now;
  Qexec.Execute; 


end;


procedure TDM.logERROR();
begin

  Qexec.close;
  Qexec.SQL.Clear;
  Qexec.SQL.Add('INSERT INTO logerror (waktu,user,ket,event) VALUES (NOW(),:user,:uraian,:event)');
  Qexec.ParamByName('user').AsString:=Umain.user.caption;
  Qexec.ParamByName('uraian').AsString:= uraianError;
  Qexec.ParamByName('event').AsString:= eventError;
  Qexec.Execute;


end;




end.