unit unitrekaplppjogja2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, DBAccess, MyAccess, frxDBSet, MemDS, ExtCtrls,
  RzPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, Menus,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox, ComCtrls, RzDTP,
  StdCtrls, cxButtons, cxLabel, dxCore, cxDateUtils, cxCalendar, ActnList;

type
  Turekaplppjogja2 = class(TForm)
    Qrek: TMyQuery;
    rek: TfrxDBDataset;
    DSrek: TMyDataSource;
    report: TfrxReport;
    MyDataSource1: TMyDataSource;
    Qna: TMyQuery;
    na: TfrxDBDataset;
    Qexec: TMyQuery;
    RzPanel1: TRzPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cekwil: TcxCheckBox;
    kodewil: TcxComboBox;
    wilayah: TcxComboBox;
    cekloket: TcxCheckBox;
    kodeloket: TcxComboBox;
    loket: TcxComboBox;
    cekbayar: TcxCheckBox;
    bayar: TcxComboBox;
    RzPanel8: TRzPanel;
    tanggal1: TcxDateEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qrekap: TMyQuery;
    MyDataSource2: TMyDataSource;
    rekap: TfrxDBDataset;
    Qnaloketbayar: TStringField;
    Qnaperiode: TStringField;
    Qnadibebankankepada: TStringField;
    Qnanama: TStringField;
    Qnabiayapasang: TFloatField;
    Qnajaminan: TFloatField;
    Qnabiaya1: TFloatField;
    Qnaadministrasi: TFloatField;
    Qnabiayaperbaikan: TFloatField;
    Qnabiayafpb: TFloatField;
    Qnagwm: TFloatField;
    Qnameterkas: TFloatField;
    Qnabiayateswm: TFloatField;
    Qnadendatunggakan: TFloatField;
    Qnabiayagantinama: TFloatField;
    Qnameterai: TFloatField;
    Qnalainnya: TFloatField;
    Qnabiayaprosestutup: TFloatField;
    Qnabiayaprosesbuka: TFloatField;
    Qnapul: TFloatField;
    Qnamemakaiairtidaksah: TFloatField;
    Qnadendaadmpelanggan: TFloatField;
    Qnabiayasegelputus: TFloatField;
    Qnabiayakartupemakaianair: TFloatField;
    Qnasewakendaraantangki: TFloatField;
    Qnapenjualanairtangki: TFloatField;
    Qnaperbaikan: TFloatField;
    Qnapiutangsisapemakaianair: TFloatField;
    Qnapiutanggwm: TFloatField;
    Qnapiutangmeterkas: TFloatField;
    Qnadendapelanggaran: TFloatField;
    Qnabiayabahan: TFloatField;
    Qnaangsuran: TFloatField;
    Qnappn: TFloatField;
    Qnatotal: TFloatField;
    Qrek2: TMyQuery;
    rek2: TfrxDBDataset;
    DSrek2: TMyDataSource;
    cxLabel2: TcxLabel;
    tanggal2: TcxDateEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  urekaplppjogja2: Turekaplppjogja2;

implementation

{$R *.dfm} uses Module, UnitMain, DateUtils;

procedure Turekaplppjogja2.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Turekaplppjogja2.FormCreate(Sender: TObject);
begin
tanggal1.date:=date;
tanggal2.date:=date;
end;

procedure Turekaplppjogja2.cxButton1Click(Sender: TObject);
begin


  if YearOf(tanggal1.date)<>YearOf(tanggal2.date) then
  begin
     MessageDlg('HARUS TAHUN YANG SAMA !! ', mtInformation, [mbOK], 0);
     exit;

  end;


 TRY



  Qexec.close;
  Qexec.SQL.Clear;
  Qexec.SQL.Add(Qexec.SQLInsert.Text);
  Qexec.ParamByName('tanggal1').AsDate:=tanggal1.Date;
  Qexec.ParamByName('tanggal2').AsDate:=tanggal2.Date;
  Qexec.ParamByName('tahun').AsInteger:=StrToInt(FormatDateTime('YYYY',tanggal1.date));
  Qexec.Execute;


 


  EXCEPT ON E:Exception DO
  BEGIn



     MessageDlg('TERJADI KESALAHAN : '+char(13)+
                 E.Message, mtError, [mbOK], 0);

     exit;

  END;
  END;


  Qrekap.close;
  Qrekap.SQL.Clear;
  Qrekap.SQL.Add(Qrekap.SQLRefresh.Text);
  Qrekap.Open; 


  Qrek.close;
  Qrek.SQL.Clear;
  Qrek.SQL.Add(Qrek.SQLRefresh.Text);
  Qrek.Open;



  Qrek2.close;
  Qrek2.SQL.Clear;
  Qrek2.SQL.Add(Qrek2.SQLRefresh.Text);
  Qrek2.Open;


  Qna.close;
  Qna.SQL.Clear;
  Qna.SQL.Add(Qna.SQLRefresh.Text);
  Qna.ParamByName('tanggal1').AsDate:=tanggal1.Date;
  Qna.ParamByName('tanggal2').AsDate:=tanggal2.Date;
  Qna.Open;



   DM.Qpejabat.close;
            DM.Qpejabat.SQL.Clear;
            DM.Qpejabat.SQL.Add(DM.Qpejabat.SQLRefresh.Text);
            DM.Qpejabat.ParamByName('kode').AsString:='REKAPLPP';
            DM.Qpejabat.ParamByName('parafuserdilaporan').AsString:=DM.parafuserdilaporan;
            DM.Qpejabat.ParamByName('ketuser').AsString:='DIBUAT OLEH :';
            DM.Qpejabat.ParamByName('jabuser').AsString:=UpperCase( Umain.peran.Caption);
            DM.Qpejabat.ParamByName('namauser').AsString:=UpperCase( Umain.user.Caption);
            DM.Qpejabat.ParamByName('nikuser').AsString:=UpperCase( Umain.noid.Caption);
            DM.Qpejabat.ParamByName('header1').AsString:=UpperCase( DM.Xheader1);
            DM.Qpejabat.ParamByName('header2').AsString:=UpperCase( DM.Xheader2);
            DM.Qpejabat.ParamByName('footer').AsString:=UpperCase( DM.Xfooter1);
            DM.Qpejabat.Open;




            if(tanggal1.date=tanggal2.date) then
            begin

                TfrxMemoView(report.FindObject('bulan')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date));
                TfrxMemoView(report.FindObject('bulan2')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date));
                TfrxMemoView(report.FindObject('bulan3')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date));
                TfrxMemoView(report.FindObject('bulan4')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date));

            end
            else
            begin
              TfrxMemoView(report.FindObject('bulan')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date)+'  S/D  '+FormatDateTime('DD MMMM YYYY',tanggal2.date)   );
              TfrxMemoView(report.FindObject('bulan2')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date)+'  S/D  '+FormatDateTime('DD MMMM YYYY',tanggal2.date)   );
              TfrxMemoView(report.FindObject('bulan3')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date)+'  S/D  '+FormatDateTime('DD MMMM YYYY',tanggal2.date)   );
              TfrxMemoView(report.FindObject('bulan4')).Memo.Text:=UpperCase('TANGGAL  :  '+FormatDateTime('DD MMMM YYYY',tanggal1.date)+'  S/D  '+FormatDateTime('DD MMMM YYYY',tanggal2.date)   );

            end;


 if( Qrek.RecordCount>0) or (Qrek2.RecordCount>0) or (Qrekap.RecordCount>0) or (Qna.RecordCount>0)then
 report.ShowReport()
 else
  MessageDlg('TIDAK ADA DATA ', mtInformation, [mbOK], 0);



end;

end.
