unit unitTloket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,  Menus, StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, ActnList, ExtCtrls, RzPanel, cxMemo,
  dxSkinOffice2013White, cxCheckBox;

type
  Tutloket = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    RzPanel1: TRzPanel;
    loket: TcxTextEdit;
    btnOK: TcxButton;
    cxButton2: TcxButton;
    kodeloket: TcxTextEdit;
    cxLabel3: TcxLabel;
    notelp: TcxTextEdit;
    cxLabel4: TcxLabel;
    nohp: TcxTextEdit;
    cxLabel6: TcxLabel;
    pj: TcxTextEdit;
    cxLabel7: TcxLabel;
    status: TcxComboBox;
    alamat: TcxMemo;
    kodewil2: TcxComboBox;
    wilayah2: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    serial: TcxTextEdit;
    RzPanel4: TRzPanel;
    RzPanel2: TRzPanel;
    cxLabel10: TcxLabel;
    flagMitra: TcxComboBox;
    admMitra: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kodewil2PropertiesChange(Sender: TObject);
    procedure wilayah2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    loketlama:String;
    xkodewil1,xkodewil2:String;
  end;

var
  utloket: Tutloket;

implementation

{$R *.dfm}USES MODULE,unitmain, UnitCombo, unitloading,StrUtils;

procedure Tutloket.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tutloket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
loket.Clear;
kodeloket.Clear;

kodewil2.Clear;
alamat.Clear;
notelp.Clear;
nohp.Clear;
status.ItemIndex:=0;
pj.Clear;
serial.Clear;

wilayah2.Clear;




end;

procedure Tutloket.btnOKClick(Sender: TObject);
var
j:integer;
begin

if(kodeloket.Text<>'') and
(loket.Text<>'') And (kodewil2.Text<>'') then
begin


        TRY
        Umain.openkoneksi_host;


        if(Umain.host.Connected=true)then
        begin


          if DM.Xflag='Tambah' then
          begin
              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * from loket where kodeloket=:kodeloket' );
              DM.Qcek.ParamByName('kodeloket').AsString:=kodeloket.Text;
              DM.Qcek.Open;

              if (DM.Qcek.RecordCount>0)then
                  MessageDlg('Maaf, Loket sudah ada !!', mtWarning, [mbOK], 0)
              else
              begin


                Umain.Qhost1.Close;
                Umain.Qhost1.SQL.Clear;
                Umain.Qhost1.SQL.Add('REPLACE INTO loket VALUES (:kodeloket,:loket,:kodewillokasi,:aktif,:flagmitra,:admmitra)');
                Umain.Qhost1.ParamByName('kodeloket').AsString:= kodeloket.Text;
                Umain.Qhost1.ParamByName('loket').AsString:= loket.Text;
                Umain.Qhost1.ParamByName('aktif').AsString:= IntToStr(status.ItemIndex);
                Umain.Qhost1.ParamByName('kodewillokasi').AsString:= kodewil2.Text;
                Umain.Qhost1.ParamByName('flagmitra').AsString:= IntToStr(flagMitra.ItemIndex);
                Umain.Qhost1.ParamByName('admmitra').AsCurrency:= admMitra.Value;
                Umain.Qhost1.Execute;


                DM.Qexec.Close;
                DM.Qexec.SQL.Clear;
                DM.Qexec.SQL.Add('INSERT INTO loket VALUES (NULL,:kodeloket,:loket,:alamat,:notelp,:nohp,:pj,:kodewillokasi,:aktif,:serial,:flagmitra,:admmitra)');
                DM.Qexec.ParamByName('kodeloket').AsString:= kodeloket.Text;
                DM.Qexec.ParamByName('loket').AsString:= loket.Text;
                DM.Qexec.ParamByName('alamat').AsString:= alamat.Text;
                DM.Qexec.ParamByName('notelp').AsString:= notelp.Text;
                DM.Qexec.ParamByName('nohp').AsString:= nohp.Text;
                DM.Qexec.ParamByName('pj').AsString:= pj.Text;
                DM.Qexec.ParamByName('aktif').AsString:= IntToStr(status.ItemIndex);
                DM.Qexec.ParamByName('kodewillokasi').AsString:= kodewil2.Text;
                DM.Qexec.ParamByName('serial').AsString:= serial.Text;
                DM.Qexec.ParamByName('flagmitra').AsString:= IntToStr(flagMitra.ItemIndex);
                DM.Qexec.ParamByName('admmitra').AsCurrency:= admMitra.Value;
                DM.Qexec.Execute;





               DM.uraianlogakses:='Tambah Loket '+loket.text;
               DM.targetlogakses:=loket.Text;
               DM.logakses;

                ModalResult:=mrOk;

              end;

          end
          else
          begin
              DM.Qcek.close;
              DM.Qcek.SQL.Clear;
              DM.Qcek.SQL.Add('select * from loket where kodeloket=:kodeloket and id<>:id' );
              DM.Qcek.ParamByName('kodeloket').AsString:=kodeloket.Text;
              DM.Qcek.ParamByName('id').AsInteger:=DM.Xid;
              DM.Qcek.Open;

              if (DM.Qcek.RecordCount>0)then
                  MessageDlg('Maaf, Kodeloket sudah ada !!', mtWarning, [mbOK], 0)
              else
              begin


                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQL.Add('update loket set kodeloket=:kodeloket,loket=:loket,kodewillokasi=:kodewillokasi,aktif=:aktif,flagmitra=:flagmitra,admmitra=:admmitra where kodeloket=:kodeloketlama');
                      Umain.Qhost1.ParamByName('loket').AsString:= TRIM(loket.Text);
                      Umain.Qhost1.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                      Umain.Qhost1.ParamByName('aktif').AsString:= IntToStr(status.ItemIndex);
                      Umain.Qhost1.ParamByName('kodeloketlama').AsString:=DM.Xkodeloket;
                      Umain.Qhost1.ParamByName('kodewillokasi').AsString:= TRIM(kodewil2.Text); 
                      Umain.Qhost1.ParamByName('flagmitra').AsString:= IntToStr(flagMitra.ItemIndex);
                      Umain.Qhost1.ParamByName('admmitra').AsCurrency:= admMitra.Value;
                      Umain.Qhost1.Execute;


                      DM.Qexec.Close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update loket set kodeloket=:kodeloket,loket=:loket,alamat=:alamat,notelp=:notelp,nohp=:nohp,penanggungjawab=:pj,aktif=:aktif,kodewillokasi=:kodewillokasi,serialgate=:serial,flagmitra=:flagmitra,admmitra=:admmitra where id=:id');
                      DM.Qexec.ParamByName('loket').AsString:= TRIM(loket.Text);
                      DM.Qexec.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                      DM.Qexec.ParamByName('alamat').AsString:= TRIM(alamat.Text);
                      DM.Qexec.ParamByName('notelp').AsString:= TRIM(notelp.Text);
                      DM.Qexec.ParamByName('nohp').AsString:= TRIM(nohp.Text);
                      DM.Qexec.ParamByName('pj').AsString:= TRIM(pj.Text);
                      DM.Qexec.ParamByName('aktif').AsString:= IntToStr(status.ItemIndex);
                      DM.Qexec.ParamByName('kodewillokasi').AsString:= TRIM(kodewil2.Text);
                      DM.Qexec.ParamByName('id').AsInteger:=DM.Xid;
                      DM.Qexec.ParamByName('serial').AsString:= serial.Text;
                      DM.Qexec.ParamByName('flagmitra').AsString:= IntToStr(flagMitra.ItemIndex);
                      DM.Qexec.ParamByName('admmitra').AsCurrency:= admMitra.Value;
                      DM.Qexec.Execute;





                    if(DM.Xkodeloket<>kodeloket.Text)then
                    begin
                      if MessageDlg('Merubah Kode Loket Akan Menyebabkan Semua Histori Pembayaran Akan merubah Loket Pembayarannya...', mtConfirmation, [mbYes,MbNo], 0)=mrYes then
                      begin
                      

                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQL.Add('update bayar set loketbayar=:kodeloket where loketbayar=:kodeloketlama');
                      Umain.Qhost1.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                      Umain.Qhost1.ParamByName('kodeloketlama').AsString:=DM.Xkodeloket;
                      Umain.Qhost1.Execute;


                      DM.Qexec.Close;
                      DM.Qexec.SQL.Clear;
                      DM.Qexec.SQL.Add('update bayar'+FormatDateTime('YYYY',Now())+' set loketbayar=:kodeloket where loketbayar=:kodeloketlama');
                      DM.Qexec.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                      DM.Qexec.ParamByName('kodeloketlama').AsString:=DM.Xkodeloket;
                      DM.Qexec.Execute;



                                DM.Qcek.Close;
                                Dm.Qcek.SQL.Clear;
                                Dm.Qcek.SQL.add('SHOW TABLES');
                                DM.Qcek.Open;

                                uloading.Progress.PartsComplete:=0;
                                uloading.Progress.TotalParts:=DM.Qcek.RecordCount;
                                uloading.Progress.Visible:=true;
                                uloading.show;
                                Application.ProcessMessages;
                  
                                for j:=1 to DM.Qcek.RecordCount do
                                begin

                                  IF(LeftStr(DM.Qcek.fieldbyname('tables_in_'+DM.DB).AsString,3)='drd')then
                                  begin

                                    DM.Qexec.Close;
                                    DM.Qexec.SQL.Clear;
                                    DM.Qexec.SQL.Add('UPDATE '+DM.Qcek.fieldbyname('tables_in_'+DM.DB).AsString+' SET loketbayar=:kodeloket WHERE loketbayar=:kodeloketlama');
                                    DM.Qexec.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                                    DM.Qexec.ParamByName('kodeloketlama').AsString:=DM.Xkodeloket;
                                    DM.Qexec.Execute;

                                  end;
                                  uloading.Progress.IncPartsByOne;
                                  Application.ProcessMessages;

                                 DM.Qcek.Next;
                                end;
                                uloading.close;


                      Umain.Qhost1.Close;
                      Umain.Qhost1.SQL.Clear;
                      Umain.Qhost1.SQL.Add('update userakses set kodeloket=:kodeloket where kodeloket=:kodeloketlama');
                      Umain.Qhost1.ParamByName('kodeloket').AsString:= TRIM(kodeloket.Text);
                      Umain.Qhost1.ParamByName('kodeloketlama').AsString:=DM.Xkodeloket;
                      Umain.Qhost1.Execute;


                 end
                 else
                  exit;
                end;

                     DM.uraianlogakses:='Ubah Loket '+loket.text;
                     DM.targetlogakses:=loket.Text;
                     DM.logakses;

                     ModalResult:=mrOk;

              end;

          end;

    end
    else
       MessageDlg('Maaf, Koneksi Tidak Terhubung Dengan Master Cloud ', mtInformation, [mbOK], 0);

  except ON E:Exception do
  begin
          Umain.host.close;
          MessageDlg('Terjadi Kesalahan : '+char(13)+char(13)+
                    E.message, mtwarning, [MbOk], 0);
          close;
  end;
  end;

end
else
  MessageDlg('Harap Lengkapi Data!!! ', mtWarning, [mbOK], 0);
  

 Umain.host.close;

end;

procedure Tutloket.FormShow(Sender: TObject);
begin


    ucombo.isikombo();  



    kodewil2.Properties.Items:=ucombo.kodewil.Properties.Items;
   
    wilayah2.Properties.Items:=ucombo.wilayah.Properties.Items;

    kodewil2.Text:=DM.Xkodewillokasi;


    if(DM.Xflag='Koreksi')then
    begin
      kodeloket.Enabled:=false;
      loket.SetFocus;

    end
    else
    begin
      kodeloket.Enabled:=true;
      kodeloket.SetFocus;
     
    end;




end;

procedure Tutloket.kodewil2PropertiesChange(Sender: TObject);
begin
wilayah2.ItemIndex:=kodewil2.ItemIndex;
end;

procedure Tutloket.wilayah2PropertiesChange(Sender: TObject);
begin
kodewil2.ItemIndex:=wilayah2.ItemIndex;
end;

end.
