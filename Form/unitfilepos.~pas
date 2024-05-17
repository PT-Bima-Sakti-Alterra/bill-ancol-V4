unit unitfilepos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus, frxDesgn,
  frxClass, ActnList, DB, DBAccess, MyAccess, frxDBSet, MemDS, ComCtrls,
  RzDTP, StdCtrls, cxButtons, ExtCtrls, RzPanel, cxLabel, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo, RzPrgres;

type
  Tubuatfilepos = class(TForm)
    sumberair: TcxComboBox;
    ceksumberair: TcxCheckBox;
    cekkelurahan: TcxCheckBox;
    kodekelurahan: TcxComboBox;
    kelurahan: TcxComboBox;
    cxLabel3: TcxLabel;
    kodeparaf: TcxComboBox;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    periode: TRzDateTimePicker;
    RzPanel8: TRzPanel;
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    F5: TAction;
    memo: TcxMemo;
    Progress: TRzProgressBar;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ubuatfilepos: Tubuatfilepos;

implementation

uses Module, UnitMain,DateUtils;

{$R *.dfm}

procedure Tubuatfilepos.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tubuatfilepos.cxButton1Click(Sender: TObject);
var
j:integer;
f:textfile;
h:textfile;
denda:string;
nosamb:string;
waktu:Tdatetime;
begin

  TRY

  Enabled:=false;
  
  TRY

    memo.Clear;


    Dm.Qexec.Close;
    Dm.Qexec.SQL.Clear;
    Dm.Qexec.SQL.Add('START TRANSACTION');
    Dm.Qexec.Execute;



    Dm.Qexec.Close;
    Dm.Qexec.SQL.Clear;
    Dm.Qexec.SQL.Add('DROP TABLE IF EXISTS dump1000');
    Dm.Qexec.Execute;


    Dm.Qexec.Close;
    Dm.Qexec.SQL.Clear;
    Dm.Qexec.SQL.Add(' CREATE TABLE `dump1000` ( `nosamb` varchar(100) NOT NULL, PRIMARY KEY (`nosamb`)) ENGINE=InnoDB DEFAULT CHARSET=latin1');
    Dm.Qexec.Execute;

    Dm.Qexec.Close;
    Dm.Qexec.SQL.Clear;
    Dm.Qexec.SQL.Add('REPLACE INTO dump1000 SELECT nosamb FROM piutang WHERE flaglunas="0" AND flagangsur="0" AND periode<:periode GROUP BY nosamb');
    Dm.Qexec.ParamByName('periode').AsString:=FormatDateTime('YYYYMM',IncMonth(periode.Date,-2));
    Dm.Qexec.Execute;



    ForceDirectories(DM.Qsetting.fieldbyname('lokasifilepos').AsString+'\PT POSREKENING TIRTA KEPRI '+UpperCase(FormatDateTime('MMMM YYYY',periode.Date)));

    AssignFile(f,PAnsiChar(DM.Qsetting.fieldbyname('lokasifilepos').AsString+'\PT POSREKENING TIRTA KEPRI '+UpperCase(FormatDateTime('MMMM YYYY',periode.Date))+'\BILKJG'+FormatDateTime('YYYYMM',periode.Date)+'.txt'));
    Rewrite(f);
            
    AssignFile(h,PAnsiChar(DM.Qsetting.fieldbyname('lokasifilepos').AsString+'\PT POSREKENING TIRTA KEPRI '+UpperCase(FormatDateTime('MMMM YYYY',periode.Date))+'\MSTKJG'+FormatDateTime('YYYYMM',periode.Date)+'.txt'));
    Rewrite(h);


    waktu:=now;




    Dm.Qcek.Close;
    Dm.Qcek.SQL.Clear;
    Dm.Qcek.SQL.Add('SELECT c.*,p.nama,CONCAT(p.alamat," RT. ",p.rt," RW. ",p.rw," NO. ",p.norumah) as alamat FROM piutang c left join pelanggan p ON c.nosamb=p.nosamb WHERE c.flaglunas="0" AND c.flagangsur="0" ');
    Dm.Qcek.SQL.Add('AND c.nosamb NOT IN (SELECT nosamb FROM dump1000) AND c.periode<="'+FormatDateTime('YYYYMM',periode.Date)+'" ORDER BY CAST(c.nosamb AS UNSIGNED) ASC,c.periode DESC');
    Dm.Qcek.Open;


    if(Dm.Qcek.RecordCount>0)then
    begin


            Progress.Visible:=true;
            Progress.PartsComplete:=0;
            Progress.TotalParts:=Dm.Qcek.RecordCount;
            Progress.Visible:=true;
            memo.Lines.Add('-- Buat tagihan pelanggan 3 bulan ---');
            nosamb:='-';
            Application.ProcessMessages;
            for j:=1 to Dm.Qcek.RecordCount do
            begin


                denda:='0';


                 IF (Dm.Qcek.fieldbyname('periode').AsString= FormatDateTime('YYYYMM',periode.Date))then
                  denda:= Dm.Qcek.fieldbyname('trf_dendatunggakan').AsString
                 ELSE
                   denda:= Dm.Qcek.fieldbyname('trf_dendatunggakan2').AsString;




                 WriteLn(f,
                 Dm.Qcek.fieldbyname('nosamb').AsString,
                  '|',Dm.Qcek.fieldbyname('periode').AsString,
                  '|','',
                  '|',Dm.Qcek.fieldbyname('kodegol').AsString,
                  '|',Dm.Qcek.fieldbyname('stanlalu').AsString,
                  '|',Dm.Qcek.fieldbyname('stanskrg').AsString,
                  '|',Dm.Qcek.fieldbyname('pakai').AsString,
                  '|',Dm.Qcek.fieldbyname('biayapemakaian').AsString,
                  '|',Dm.Qcek.fieldbyname('administrasi').AsString,
                  '|',Dm.Qcek.fieldbyname('pemeliharaan').AsString,
                  '|','0',
                  '|','0',
                  '|','0',
                  '|',Dm.Qcek.fieldbyname('rekair').AsString,



                  '|',denda

                );



                if(nosamb<>Dm.Qcek.fieldbyname('nosamb').AsString)then
                begin


                 WriteLn(h,
                 Dm.Qcek.fieldbyname('nosamb').AsString,
                  '|',Dm.Qcek.fieldbyname('nama').AsString,
                  '|',Dm.Qcek.fieldbyname('alamat').AsString

                  );

                  nosamb:=Dm.Qcek.fieldbyname('nosamb').AsString;

                  memo.Lines.Add('  - '+Dm.Qcek.fieldbyname('nosamb').AsString+' - '+Dm.Qcek.fieldbyname('nama').AsString);

                end;


             Dm.Qexec.close;
             DM.Qexec.SQL.Clear;
             Dm.Qexec.SQl.Add('update drd'+FormatDateTime('YYYYMM',periode.Date)+' set flagbuatfilepos="1",waktubuatfilepos=:waktubuatfilepos WHERE nosamb=:nosamb' );
             Dm.Qexec.ParamByName('nosamb').AsString:= Dm.Qcek.fieldbyname('nosamb').AsString;
             Dm.Qexec.ParamByName('waktubuatfilepos').AsDateTime:= waktu;
             DM.Qexec.Execute;

             Dm.Qexec.close;
             DM.Qexec.SQL.Clear;
             Dm.Qexec.SQl.Add('update piutang set flagbuatfilepos="1",waktubuatfilepos=:waktubuatfilepos WHERE kode=:kode' );
             Dm.Qexec.ParamByName('kode').AsString:= Dm.Qcek.fieldbyname('kode').AsString;
             Dm.Qexec.ParamByName('waktubuatfilepos').AsDateTime:= waktu;
             DM.Qexec.Execute;


           Application.ProcessMessages;
           Progress.IncPartsByOne;
           Dm.Qcek.Next;
        end;

        Progress.Visible:=false;



        DM.uraianlogakses:=Umain.user.caption+' Membuat File POS untuk periode '+FormatDateTime('YYYYMM',periode.Date);
        DM.targetlogakses:=Umain.user.caption;
        DM.logakses;



        DM.Qexec.Close;
        Dm.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('DROP TABLE IF EXISTS dump1000');
        DM.Qexec.Execute;


        Dm.Qexec.Close;
        Dm.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('COMMIT');
        Dm.Qexec.Execute;

        CloseFile(f);
        CloseFile(h);

        memo.Lines.Add('...Proses Selesai...');





    end
    else
     MessageDlg('Maaf, Tidak Ada Data Untuk Pos periode '+FormatDateTime('MMMM YYYY',periode.date)+' Belum Ada !!!', mtWarning, [mbOk], 0);

  EXCEPT ON E:Exception DO
  BEGIN

        Dm.Qexec.Close;
        Dm.Qexec.SQL.Clear;
        Dm.Qexec.SQL.Add('ROLLBACK');
        Dm.Qexec.Execute;
 

     MessageDlg('TERJADI KESALAHAN !!! '+char(13)+E.Message, mtError, [mbOk], 0);
     
  END;
  END;

  FINALLY
  Progress.Visible:=false;
  Enabled:=true;  
  END;

end;

procedure Tubuatfilepos.FormCreate(Sender: TObject);
begin
periode.date:=EncodeDateTime(YearOf(date), MonthOf(date), 5, 1, 2, 3, 4);
end;

end.
