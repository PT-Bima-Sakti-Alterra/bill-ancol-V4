unit unitlogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, DB, MemDS, DBAccess, MyAccess, ActnList, StdCtrls, cxButtons,
  cxTextEdit, cxLabel, frxpngimage, cxImage, cxGroupBox, dxGDIPlusClasses,
  ExtCtrls, RzPanel,  dxSkinOffice2013White, icekey, RzLabel, jpeg;
                                                               

type
  TFLogin = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Qserial: TMyQuery;
    Qpengguna: TMyQuery;
    RzPanel1: TRzPanel;
    namauser: TcxTextEdit;
    password: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    serialini: TcxTextEdit;
    lisensi: TcxTextEdit;
    id: TcxTextEdit;
    cxLabel4: TcxLabel;
    RzPanel2: TRzPanel;
    cxImage1: TcxImage;
    versi: TRzPanel;
    RzPanel3: TRzPanel;
    btnProses: TcxButton;
    txtProses: TMemo;
    QExec: TMyQuery;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
   
    procedure cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

      ftpfile:String;
    downloadfilesukses:byte;

    serialnumber:String;
    serialini2:String;
    procedure key();
    procedure downloadfileterbaru();

  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}  uses MOdule, UnitMain,eshardwareid,StrUtils, UnitSerial,
  ShellApi,URLMon, unitgantipass, DateUtils;

procedure TFLogin.key();
var
f:textfile;
serialfileini:String;
begin

      eshardwareid.gethardwareid;
      id.Text:=UpperCase( MidStr( TRIM(eshardwareid.HDDSerialno),2,1)+
                 RightStr( TRIM(eshardwareid.HDDSerialno),2)+
                  MidStr( TRIM(eshardwareid.HDDSerialno),3,2));


      DM.Qcek.close;
      DM.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select md5(:id) as licensi');
      DM.Qcek.ParamByName('id').AsString:=TRIM(UpperCase(id.Text));
      DM.Qcek.Open;

      lisensi.Text:=UpperCase( MidStr(DM.Qcek.Fieldbyname('licensi').AsString,3,4));



      if FileExists('C:\serialbimasakti.ini')then
       begin
          assignFile(f,'C:\serialbimasakti.ini');
          Reset(f);
          ReadLn(f,serialfileini);
          CloseFile(f);
       end
       else
       begin
          assignFile(f,'C:\serialbimasakti.ini');
          ReWrite(f);
          WriteLn(f,'-');
          CloseFile(f);

          serialfileini:='-';

       end;

       
       serialini.Text:=serialfileini;


       if(lisensi.Text<>serialini.Text)then
       begin
           userial.seri:=lisensi.Text;
           userial.id.Caption:='ID : '+id.Text;
           if userial.showmodal=MrOk then
           begin

             assignFile(f,'C:\serialbimasakti.ini');
             ReWrite(f);
             WriteLn(f,lisensi.text);
             CloseFile(f);


             assignFile(f,'C:\serialbimasakti.ini');
             Reset(f);
             ReadLn(f,serialfileini);
             CloseFile(f);

             serialini.Text:=serialfileini;



           end
           else
            Application.Terminate;


       end;

      
end;


function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;



procedure TFLogin.downloadfileterbaru();
var
  SourceFile : string;
  DestFile : string;
begin


  SourceFile:=ftpfile;                             
  DestFile:=GetCurrentDir+'\tempbsbs.exe';
  DeleteFile(PChar(GetCurrentDir+'\tempbsbs.exe'));
  DeleteFile(PChar(GetCurrentDir+'\backupbsbs.exe'));
  CopyFile(PChar(GetCurrentDir+'\SIMiBIMABSBS.exe'),PChar(GetCurrentDir+'\backupbsbs.exe'),false);

     if DownloadFile(SourceFile, DestFile) then
     begin
       downloadfilesukses:=1;
     end
     else
     begin

         downloadfilesukses:=0;
     end;


end;


function KillApp(const sCapt: PChar):boolean;
var
  AppHandle:Thandle;
begin
 AppHandle:=FindWindow(Nil,sCapt);
 result:=PostMessage(AppHandle, WM_QUIT,0,0);
end;


procedure TFLogin.cxButton2Click(Sender: TObject);
var
  waktulogin : Integer;
begin


    if(namauser.Text='')then
    begin
        namauser.SetFocus;
        exit;
    end;

     if(password.Text='')then
    begin
        password.SetFocus;
        exit;
    end;

    DM.Qcek2.close;
    DM.Qcek2.SQL.Clear;
    DM.Qcek2.SQL.Add('select version FROM pengaturan WHERE idx="1"');
    Dm.Qcek2.Open;

    if DM.Qcek2.fieldbyname('version').AsString<>versi.Caption then
    begin                  
       MessageDlg('PERINGATAN!!'+#13+'Aplikasi Anda masih versi Lama'+#13+'Silahkan Hubungi bagian terkait (IT)!'+#13+#13+'['+DM.Qcek2.fieldbyname('version').AsString+']', mtWarning, [MbOk], 0);
       password.SetFocus;
       RzPanel3.Show;
       FLogin.ClientHeight:=561;
       exit;
    end;

    TRY
      Qpengguna.Close;
      Qpengguna.SQL.Clear;
      Qpengguna.SQL.Add('SELECT u.*,h.* FROM userakses u left join hakakses h On u.hak_akses=h.hak_akses WHERE u.namauser=:namauser AND u.passworduser=:password AND u.aktif="1" AND h.hak_akses is not null');
      Qpengguna.ParamByName('namauser').AsString := namauser.Text;
      Qpengguna.ParamByName('password').AsString := DM.DCP_rc41.EncryptString(namauser.Text+password.Text+'B1M@S@KT1');//password.Text;
      Qpengguna.Open;

    

      IF( Qpengguna.RecordCount>0)THEN BEGIN

                 umain.openkoneksi_host();
                 if(Umain.host.Connected=true)then
                 begin

//===Start Login Sesion=============

                      key;
                      if lisensi.Text='1D8C' then
                      begin
                        if MessageDlg('Aplikasi belum jalan di Mode Administrator'+#13+'Yakin untuk melanjutkan?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
                          Application.Terminate
                      end;

                      try
                        DM.Qcek1.Close;
                        DM.Qcek1.SQL.Clear;
                        DM.Qcek1.SQL.Add('SELECT *,COALESCE(TIMESTAMPDIFF(SECOND,MAX(timeupdate),NOW()),-1) AS rentang FROM `login_session` WHERE module="BSBS" AND userID=:user');
                        DM.Qcek1.ParamByName('user').AsString:=namauser.Text;
                        DM.Qcek1.Open;
                        if DM.Qcek1.fieldByname('rentang').AsInteger=-1 THEN
                        begin
                          DM.Qexec.Close;
                          DM.Qexec.SQL.Clear;
                          DM.Qexec.SQL.Add('INSERT INTO login_session (deviceID,userID,module,loginNumber,timeUpdate) values(:deviceID,:userID,"BSBS",:loginNumber,now())');
                          DM.Qexec.ParamByName('deviceID').AsString:=lisensi.Text;
                          DM.Qexec.ParamByName('userID').AsString:=namauser.Text;
                          DM.Qexec.ParamByName('loginNumber').AsInteger:=1;
                          DM.Qexec.Execute;
                          DM.loginNumber:=1;
                        end
                        else
                        begin
                          waktuLogin:=DM.Qcek1.fieldByname('rentang').AsInteger;

                          if (DM.Qcek1.fieldByName('deviceID').asString =lisensi.Text) THEN
                          begin

                            if waktuLogin>30 then // selisih waktu login lebih dari 1 menit
                            begin
                              DM.Qexec.Close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('DELETE from `login_session` WHERE module="BSBS" AND userID=:user');
                              DM.Qexec.ParamByName('user').AsString:=namauser.Text;
                              DM.Qexec.Execute;
                            end;

                            DM.Qcek2.Close;
                            DM.Qcek2.SQL.Clear;
                            DM.Qcek2.SQL.Add('Select COALESCE(MAX(loginNumber),0)+1  as loginNumber from `login_session` WHERE module="BSBS" AND userID=:user and deviceID=:deviceID ');
                            DM.Qcek2.ParamByName('user').AsString:=namauser.Text;
                            DM.Qcek2.ParamByName('deviceID').AsString:=lisensi.Text;
                            DM.Qcek2.Open;


                            DM.Qexec.Close;
                            DM.Qexec.SQL.Clear;
                            DM.Qexec.SQL.Add('insert INTO login_session (deviceID,userID,module,loginNumber,timeUpdate) values(:deviceID,:userID,"BSBS",:loginNumber,now() )');
                            DM.Qexec.ParamByName('deviceID').AsString:=lisensi.Text;
                            DM.Qexec.ParamByName('userID').AsString:=namauser.Text;
                            DM.Qexec.ParamByName('loginNumber').AsInteger:=DM.Qcek2.fieldByName('loginNumber').AsInteger;
                            DM.Qexec.Execute;

                            DM.loginNumber:=DM.Qcek2.fieldByName('loginNumber').AsInteger;
                          end
                          else
                          begin
                            if waktuLogin>30 then // selisih waktu login lebih dari 1 menit
                            begin
                              DM.Qexec.Close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('DELETE from `login_session` WHERE module="BSBS" AND userID=:user');
                              DM.Qexec.ParamByName('user').AsString:=namauser.Text;
                              DM.Qexec.Execute;


                              DM.Qexec.Close;
                              DM.Qexec.SQL.Clear;
                              DM.Qexec.SQL.Add('insert INTO login_session (deviceID,userID,module,loginNumber,timeUpdate) values(:deviceID,:userID,"BSBS",:loginNumber,now() )');
                              DM.Qexec.ParamByName('deviceID').AsString:=lisensi.Text;
                              DM.Qexec.ParamByName('userID').AsString:=namauser.Text;
                              DM.Qexec.ParamByName('loginNumber').AsInteger:=1;
                              DM.Qexec.Execute;

                              DM.loginNumber:=1;
                            end
                            else
                            begin
                              MessageDlg('Akses Login Ditolak!'+char(13)+'Anda masih login di komputer lain.',mtWarning,[mbok],0);
                              exit;
                            end;
                          end;
                        end;
                      except on e:Exception do
                        begin
                          MessageDlg('Terjadi Kesalahan :'+e.Message,mtError,[mbok],0);
                          exit;
                        end;
                      end;

//==========END Login Sesion=============


                       Umain.user.caption := Qpengguna.Fieldbyname('nama').AsString;
                       Umain.peran.caption := Qpengguna.Fieldbyname('hak_akses').AsString;
                       Umain.noid.caption := Qpengguna.Fieldbyname('noidentitas').AsString;
                       Umain.loginmode:='Masuk';
                       DM.NamaUser := Qpengguna.Fieldbyname('namauser').AsString;
                       DM.xppndaritotal:='0';
                       DM.devideID:=lisensi.Text;

                       if SecondsBetween(Now,Qpengguna.Fieldbyname('waktu').AsDateTime)>=7948800 then
                       begin
                          ugantipass.RzPanel2.Show;

                          if ugantipass.showmodal=MrOk then
                          begin
                            MessageDlg('Password Anda Berhasil di Update ', mtInformation, [mbOK], 0);
                          end;

                          exit;
                       end;

                       DM.uraianlogakses:='Login User dengan Nama : '+Qpengguna.Fieldbyname('nama').AsString;
                       DM.targetlogakses:=Qpengguna.Fieldbyname('namauser').AsString;
                       DM.logakses;

                       ModalResult:=mrOK;

                end
                else
                begin
                  MessageDlg('Maaf, Akses Di Tolak Karena '+char(13)+
                  'Tidak Dapat Terhubung Dengan Sever Master Cloud !!! ', mtError, [mbOK], 0);
                end;



      END
      ELSE
        MessageDlg('Nama user atau Password salah !! ', mtInformation, [mbOK], 0);

    EXCEPT ON E:Exception DO
    BEGIN
         MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);


         DM.uraianError := e.Message;
         DM.eventError := 'Login';
         DM.logERROR();


    END;
    END;



end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ModalResult:=mrOK;
end;


procedure TFLogin.FormCreate(Sender: TObject);
begin
Umain.Hide;
RzPanel3.Hide;
FLogin.ClientHeight:=377;
end;

procedure TFLogin.cxButton1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFLogin.cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

const
  SC_DRAGMOVE=$F012;
begin

   if Button=mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND,SC_DRAGMOVE,0);
  end;

end;

procedure TFLogin.btnProsesClick(Sender: TObject);
begin
  TRY
    QExec.Close;
    QExec.SQL.Clear;
    QExec.SQL.Add(txtProses.Text);
    QExec.Execute;

    RzPanel3.Hide;
    FLogin.ClientHeight:=377;

    MessageDlg('Version Aplikasi Berhasil di Update ', mtInformation, [mbOK], 0);

  EXCEPT ON E:Exception DO
    BEGIN
      MessageDlg('TERJADI KESALAHAN : '+char(13)+E.message, mtInformation, [mbOK], 0);


      DM.uraianError := e.Message;
      DM.eventError := 'Login';
      DM.logERROR();

    END;
  END;
end;

end.
