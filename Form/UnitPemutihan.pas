unit UnitPemutihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkiniMaginary,
  dxSkinOffice2013White, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess,
  MyAccess, dxmdaset, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxImageComboBox, cxCurrencyEdit, ActnList;

type
  TUTpemutihan = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel8: TRzPanel;
    ok: TcxButton;
    no: TcxButton;
    RzPanel2: TRzPanel;
    cxButton1: TcxButton;
    nosamb: TcxTextEdit;
    cxLabel3: TcxLabel;
    Gridrek: TcxGrid;
    Gtvrek: TcxGridDBTableView;
    GridrekLevel1: TcxGridLevel;
    data_: TdxMemData;
    data_pilih: TStringField;
    data_periode: TStringField;
    data_bulan: TStringField;
    data_nosamb: TStringField;
    data_rekair: TCurrencyField;
    DSdata: TMyDataSource;
    GtvrekRecId: TcxGridDBColumn;
    Gtvrekpilih: TcxGridDBColumn;
    Gtvrekperiode: TcxGridDBColumn;
    Gtvrekbulan: TcxGridDBColumn;
    Gtvreknosamb: TcxGridDBColumn;
    Gtvrekrekair: TcxGridDBColumn;
    RzPanel3: TRzPanel;
    MyDataSource1: TMyDataSource;
    cxLabel1: TcxLabel;
    nama: TcxTextEdit;
    cxLabel2: TcxLabel;
    alamat: TcxTextEdit;
    cxLabel4: TcxLabel;
    status: TcxTextEdit;
    data_kode: TStringField;
    data_stanlalu: TCurrencyField;
    data_stanskrg: TCurrencyField;
    data_stanangkat: TCurrencyField;
    data_pakai: TCurrencyField;
    data_biayapemakaian: TCurrencyField;
    data_administrasi: TCurrencyField;
    data_pemeliharaan: TCurrencyField;
    data_retribusi: TCurrencyField;
    data_pelayanan: TCurrencyField;
    data_kodegol: TStringField;
    data_koderayon: TStringField;
    data_kodekelurahan: TStringField;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxLabel5: TcxLabel;
    procedure noClick(Sender: TObject);
    procedure okClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure GtvrekCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    _tahun:string;
  end;

var
  UTpemutihan: TUTpemutihan;

implementation

uses Module;

{$R *.dfm}

procedure TUTpemutihan.noClick(Sender: TObject);
begin
Close;
end;

procedure TUTpemutihan.okClick(Sender: TObject);
var
i:integer;
begin


     if data_.RecordCount=0 then
      begin
          MessageDlg('Tidak Ada Piutang Yang Dipilih !', mtInformation, [mbOk], 0);
          Exit;
      end;


    TRY

         Enabled:=false;


         data_.First;

        TRY
             DM.Qexec.close;
             DM.Qexec.SQL.Clear;
             DM.Qexec.SQL.Add('START TRANSACTION');
             DM.Qexec.Execute;


             Application.ProcessMessages;

             for i :=1  to data_.RecordCount  do
             begin


              if data_pilih.AsString='1' then
              begin 

                 DM.Qexec.close;
                 DM.Qexec.SQL.Clear;
                 DM.Qexec.SQL.Add('REPLACE INTO drdpemutihan (kode,tahun,nosamb,periode,verifikasi,kodegol,koderayon,kodekelurahan,stanlalu,stanskrg,stanangkat,pakai,biayapemakaian,administrasi,pemeliharaan,retribusi,pelayanan,rekair)');
                 DM.Qexec.SQL.Add('VALUES (:kode,:tahun,:nosamb,:periode,:verifikasi,:kodegol,:koderayon,:kodekelurahan,:stanlalu,:stanskrg,:stanangkat,:pakai,:biayapemakaian,:administrasi,:pemeliharaan,:retribusi,:pelayanan,:rekair)');
                 DM.Qexec.ParamByName('kode').AsString:=data_kode.AsString;
                 DM.Qexec.ParamByName('tahun').AsString:=_tahun;
                 DM.Qexec.ParamByName('nosamb').AsString:=data_nosamb.AsString;
                 DM.Qexec.ParamByName('periode').AsString:=data_periode.AsString;
                 DM.Qexec.ParamByName('kodegol').AsString:=data_kodegol.AsString;
                 DM.Qexec.ParamByName('koderayon').AsString:=data_koderayon.AsString;
                 DM.Qexec.ParamByName('kodekelurahan').AsString:=data_kodekelurahan.AsString;
                 DM.Qexec.ParamByName('verifikasi').AsString:='0';
                 DM.Qexec.ParamByName('stanlalu').AsCurrency:=data_stanlalu.AsCurrency;
                 DM.Qexec.ParamByName('stanskrg').AsCurrency:=data_stanskrg.AsCurrency;
                 DM.Qexec.ParamByName('stanangkat').AsCurrency:=data_stanangkat.AsCurrency;
                 DM.Qexec.ParamByName('pakai').AsCurrency:=data_pakai.AsCurrency;
                 DM.Qexec.ParamByName('biayapemakaian').AsCurrency:=data_biayapemakaian.AsCurrency;
                 DM.Qexec.ParamByName('administrasi').AsCurrency:=data_administrasi.AsCurrency;
                 DM.Qexec.ParamByName('pemeliharaan').AsCurrency:=data_pemeliharaan.AsCurrency;
                 DM.Qexec.ParamByName('pelayanan').AsCurrency:=data_pelayanan.AsCurrency;
                 DM.Qexec.ParamByName('retribusi').AsCurrency:=data_retribusi.AsCurrency;
                 DM.Qexec.ParamByName('rekair').AsCurrency:=data_rekair.AsCurrency;
                 DM.Qexec.Execute;

              end;


                Application.ProcessMessages;
                data_.Next;

             end;



            DM.Qexec.close;
            DM.Qexec.SQL.Clear;
            DM.Qexec.SQL.Add('COMMIT');
            DM.Qexec.Execute;

            ModalResult:=mrOk;



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

procedure TUTpemutihan.cxButton1Click(Sender: TObject);
var
  i:integer;
begin

  TRY

    TRY

      Enabled:=false;
      nama.Clear;
      alamat.Clear;
      status.Clear;
      data_.Close;

      Gtvrek.DataController.DataSource:=MyDataSource1;


      DM.Qcek.close;
      Dm.Qcek.SQL.Clear;
      DM.Qcek.SQL.Add('select nama,alamat,CASE status');
      DM.Qcek.SQL.Add('   WHEN 1 THEN "Aktif"');
      DM.Qcek.SQL.Add('   WHEN 0 THEN "Tutup Total / Non Aktif"');
      DM.Qcek.SQL.Add('   WHEN 2 THEN "Segel" ');
      DM.Qcek.SQL.Add('   WHEN 3 THEN "Tutup Sementara" ');
      DM.Qcek.SQL.Add('  END  ');
      DM.Qcek.SQL.Add('  AS aktif FROm pelanggan WHERE nosamb=:nosamb');
      DM.Qcek.ParamByName('nosamb').AsString:=nosamb.Text;
      DM.Qcek.Open;

      if DM.Qcek.RecordCount=0 then
      begin
         MessageDlg('PELANGGAN TIDAK DITEMUKAN!', mtInformation, [MbOk], 0);
      end
      else
      begin


          nama.Text:=DM.Qcek.fieldbyname('nama').AsString;
          alamat.Text:=DM.Qcek.fieldbyname('alamat').AsString;
          status.Text:=DM.Qcek.fieldbyname('aktif').AsString;




          DM.Qcek.close;
          Dm.Qcek.SQL.Clear;
          DM.Qcek.SQL.Add('select kode,nosamb,periode,kodegol,koderayon,kodekelurahan,bulan,biayapemakaian,administrasi,pemeliharaan,pelayanan,retribusi,rekair FROm piutang WHERE nosamb=:nosamb AND flag<>"4"AND flagangsur="0" ORDER BY periode ASC');
          DM.Qcek.ParamByName('nosamb').AsString:=nosamb.Text;
          DM.Qcek.Open;

          data_.Open;

          for i :=1  to DM.Qcek.RecordCount  do
          begin

              data_.Append;
              data_pilih.AsString:='0';
              data_kode.AsString:=DM.Qcek.fieldbyname('kode').AsString;
              data_periode.AsString:=DM.Qcek.fieldbyname('periode').AsString;
              data_bulan.AsString:=DM.Qcek.fieldbyname('bulan').AsString;
              data_nosamb.AsString:=DM.Qcek.fieldbyname('nosamb').AsString;
              data_kodegol.AsString:=DM.Qcek.fieldbyname('kodegol').AsString;
              data_koderayon.AsString:=DM.Qcek.fieldbyname('koderayon').AsString;
              data_kodekelurahan.AsString:=DM.Qcek.fieldbyname('kodekelurahan').AsString;
              data_biayapemakaian.AsCurrency:=DM.Qcek.fieldbyname('biayapemakaian').AsCurrency;
              data_administrasi.AsCurrency:=DM.Qcek.fieldbyname('administrasi').AsCurrency;
              data_pemeliharaan.AsCurrency:=DM.Qcek.fieldbyname('pemeliharaan').AsCurrency;
              data_retribusi.AsCurrency:=DM.Qcek.fieldbyname('retribusi').AsCurrency;
              data_pelayanan.AsCurrency:=DM.Qcek.fieldbyname('pelayanan').AsCurrency;  
              data_rekair.AsCurrency:=DM.Qcek.fieldbyname('rekair').AsCurrency;
              data_.Post;

              DM.Qcek.Next;

          end;

          data_.First;

          Gtvrek.DataController.DataSource:=DSdata;

      end;

    except On E:exception  do
    begin 
      MessageDlg('Terjadi Kesalahan : '+ E.message, mtError, [MbOk], 0);
      data_.Close;
    end;
    end;

  FINALLY

     Enabled:=true;
                 

  END;



end;

procedure TUTpemutihan.GtvrekCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin


    if data_.RecordCount>0 then
    begin


        if data_pilih.AsString='0' then
        begin

          data_.Edit;
          data_pilih.AsString:='1';
          data_.Post;

      end
      else
      begin

         data_.Edit;
         data_pilih.AsString:='0';
         data_.Post;

      end;

    end;

end;

end.
