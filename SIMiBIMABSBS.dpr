program SIMiBIMABSBS;

uses
  Forms,
  UnitMain in 'Form\UnitMain.pas' {Umain},
  Module in 'Form\Module.pas' {DM: TDataModule},
  UnitCombo in 'Form\UnitCombo.pas' {Ucombo},
  UnitUpdate in 'Form\UnitUpdate.pas' {Uupdate},
  FRAME_golongan in 'Form\FRAME_golongan.pas' {FRgol: TFrame},
  UnitTgolongan in 'Form\UnitTgolongan.pas' {FGolongan},
  UnitTgolonganIPL in 'Form\UnitTgolonganIPL.pas' {FGolonganIPL},
  FRAME_rekening in 'Form\FRAME_rekening.pas' {FRrekening: TFrame},
  UnitKoreksiStan in 'Form\UnitKoreksiStan.pas' {ukoreksistan},
  unitpass in 'Form\unitpass.pas' {upass},
  unitterbitkan in 'Form\unitterbitkan.pas' {uterbitkan},
  FRAME_periode in 'Form\FRAME_periode.pas' {FRperiode: TFrame},
  unittambahperiode in 'Form\unittambahperiode.pas' {Ubuatperiode},
  unitsetdenda in 'Form\unitsetdenda.pas' {usetdenda},
  unittdiameter in 'Form\unittdiameter.pas' {Udiameter},
  Unittkolektif in 'Form\Unittkolektif.pas' {utkolektif},
  unittcabang in 'Form\unittcabang.pas' {Fcabang},
  unittmerk in 'Form\unittmerk.pas' {utmerk},
  UnitSerial in 'Form\UnitSerial.pas' {Userial},
  UnitRepair in 'Form\UnitRepair.pas' {urepair},
  FormBackup in 'Form\FormBackup.pas' {Fbackup},
  ukelurahan in 'Form\ukelurahan.pas' {fkelurahan},
  unitwilayah in 'Form\unitwilayah.pas' {uwil},
  unitTloket in 'Form\unitTloket.pas' {utloket},
  unitbackuphosting in 'Form\unitbackuphosting.pas' {ubackuphost},
  unithisbayar in 'Form\unithisbayar.pas' {uhisbayar},
  unitpengaturan in 'Form\unitpengaturan.pas' {ulokasifoto},
  unitfotobesar in 'Form\unitfotobesar.pas' {ufotobesar},
  unittsumberair in 'Form\unittsumberair.pas' {utsumberair},
  unitdaftarjabatan in 'Form\unitdaftarjabatan.pas' {udaftarjabatan},
  FRAME_pengguna in 'Form\FRAME_pengguna.pas' {FRpengguna: TFrame},
  Unitpengguna in 'Form\Unitpengguna.pas' {upengguna},
  unitlogin in 'Form\unitlogin.pas' {FLogin},
  FRAME_loket in 'Form\FRAME_loket.pas' {FRloket: TFrame},
  unitflag in 'Form\unitflag.pas' {usetflag},
  unitbiayalain in 'Form\unitbiayalain.pas' {ubiayalain},
  drd_posting in 'Form\drd_posting.pas' {udrd_posting},
  FRAME_chart1 in 'Form\FRAME_chart1.pas' {FRchart1: TFrame},
  FRAME_chart2 in 'Form\FRAME_chart2.pas' {FRchart2: TFrame},
  FRAME_chart3 in 'Form\FRAME_chart3.pas' {FRchart3: TFrame},
  FRAME_chart4 in 'Form\FRAME_chart4.pas' {FRchart4: TFrame},
  rekapgolongan in 'Form\rekapgolongan.pas' {urekapgolongan},
  rekapperbandingan in 'Form\rekapperbandingan.pas' {urekapperbandingan},
  rekapikthisar in 'Form\rekapikthisar.pas' {urekapikthisar},
  unittkepemilikan in 'Form\unittkepemilikan.pas' {utkepemilikan},
  FRAME_lainnya in 'Form\FRAME_lainnya.pas' {FRlainnya: TFrame},
  unithakakses in 'Form\unithakakses.pas' {uhakakses},
  unitupload2 in 'Form\unitupload2.pas' {uupload2},
  unitgantipass in 'Form\unitgantipass.pas' {ugantipass},
  rekapikthisar4 in 'Form\rekapikthisar4.pas' {urekapikthisar4},
  unithispakai in 'Form\unithispakai.pas' {uhispakai},
  rekapgolongan5 in 'Form\rekapgolongan5.pas' {urekapgolongan5},
  rekapgolongan7 in 'Form\rekapgolongan7.pas' {urekapgolongan7},
  unitlog in 'Form\unitlog.pas' {ulog},
  unitposting3 in 'Form\unitposting3.pas' {upostingdrd},
  drd_real in 'Form\drd_real.pas' {udrd_real},
  drd_koreksi in 'Form\drd_koreksi.pas' {udrd_koreksi},
  FRAME_angsuran in 'Form\FRAME_angsuran.pas' {FRangsuran: TFrame},
  unitangsuran in 'Form\unitangsuran.pas' {uangsuran},
  unitjenisangsuran in 'Form\unitjenisangsuran.pas' {ujenisangsuran},
  unitangsuran2 in 'Form\unitangsuran2.pas' {uangsuran2},
  unitangsuran3 in 'Form\unitangsuran3.pas' {uangsuran3},
  unitloading in 'Form\unitloading.pas' {uloading},
  unitarea in 'Form\unitarea.pas' {Uarea},
  Unittrayon in 'Form\Unittrayon.pas' {Urayon},
  unitblok in 'Form\unitblok.pas' {Ublok},
  FRAME_wilayah in 'Form\FRAME_wilayah.pas' {FRwilayah: TFrame},
  FRAME_rab in 'Form\FRAME_rab.pas' {FRrab: TFrame},
  unitbaliknama in 'Form\unitbaliknama.pas' {ubaliknama},
  unitrubahgolongan in 'Form\unitrubahgolongan.pas' {urubahgolongan},
  unitgantimeter in 'Form\unitgantimeter.pas' {ugantimeter},
  unitrubahalamat in 'Form\unitrubahalamat.pas' {urubahalamat},
  unitrubahnosamb in 'Form\unitrubahnosamb.pas' {urubahnosamb},
  unitlpp in 'Form\unitlpp.pas' {ulpp},
  tagihanbelumdibayar in 'Form\tagihanbelumdibayar.pas' {utagbelumbayar},
  unitgantisttaus in 'Form\unitgantisttaus.pas' {ustatus},
  ulapmemo in 'Form\ulapmemo.pas' {lapmemo},
  FRAME_penggunaloket in 'Form\FRAME_penggunaloket.pas' {FRuserloket: TFrame},
  unituserloket in 'Form\unituserloket.pas' {uuserloket},
  unituserloket2 in 'Form\unituserloket2.pas' {uuserloket2},
  unitrekaplppjogja in 'Form\unitrekaplppjogja.pas' {urekaplppjogja},
  unitdetailangsuran in 'Form\unitdetailangsuran.pas' {udetailangsuran},
  unitlapakun1 in 'Form\unitlapakun1.pas' {ulapakun1},
  drd_real_karyawan in 'Form\drd_real_karyawan.pas' {udrd_real_karyawan},
  unitstatistik in 'Form\unitstatistik.pas' {ustatistik},
  unitstatistik2 in 'Form\unitstatistik2.pas' {ustatistik2},
  unitmemopemutusan in 'Form\unitmemopemutusan.pas' {umemopemutusan},
  unitsuratpiutang in 'Form\unitsuratpiutang.pas' {usuratpiutang},
  unitdaftarpengesahantagihan in 'Form\unitdaftarpengesahantagihan.pas' {udaftarpengesahantagihan},
  unitrekapmemopemutusan in 'Form\unitrekapmemopemutusan.pas' {urekapmemopemutusan},
  unitposisisambungan in 'Form\unitposisisambungan.pas' {uposisisambungan},
  unitikthisar in 'Form\unitikthisar.pas' {uikthisar},
  unitlpp2 in 'Form\unitlpp2.pas' {ulpp2},
  unitrekaplppjogja2 in 'Form\unitrekaplppjogja2.pas' {urekaplppjogja2},
  unitpembacaan in 'Form\unitpembacaan.pas' {upembacaan},
  unitpenggunaloket in 'unitpenggunaloket.pas' {upenggunaloket},
  unittpejabat in 'Form\unittpejabat.pas' {ftambahpejabat},
  unitpiutang in 'Form\unitpiutang.pas' {upiutang},
  drd_posting2 in 'Form\drd_posting2.pas' {udrd_posting2},
  drd_posting3 in 'Form\drd_posting3.pas' {udrd_posting3},
  drd_posting5 in 'Form\drd_posting5.pas' {udrd_posting5},
  unitdrdlancar in 'Form\unitdrdlancar.pas' {udrdlancar},
  unitfilepos in 'Form\unitfilepos.pas' {ubuatfilepos},
  unitlppharian1 in 'Form\unitlppharian1.pas' {ulppharian1},
  unitdaftarmaterial in 'Form\unitdaftarmaterial.pas' {udaftarmaterial},
  unitharganet in 'Form\unitharganet.pas' {uharganet},
  unitongkos in 'Form\unitongkos.pas' {uongkos},
  unitpaket in 'Form\unitpaket.pas' {upaket},
  unitdaftarongkos in 'Form\unitdaftarongkos.pas' {udaftarongkos},
  unitpaketrab in 'Form\unitpaketrab.pas' {upaketrab},
  unitlppharian2 in 'Form\unitlppharian2.pas' {ulppharian2},
  unitlppharian3 in 'Form\unitlppharian3.pas' {ulppharian3},
  unitlppharian4 in 'Form\unitlppharian4.pas' {ulppharian4},
  unitlppharian5 in 'Form\unitlppharian5.pas' {ulppharian5},
  unitlppharian7 in 'Form\unitlppharian7.pas' {ulppharian7},
  unitlppharian8 in 'Form\unitlppharian8.pas' {ulppharian8},
  unitpilihconfig in 'Form\unitpilihconfig.pas' {upilihunit},
  unitbakoreksi in 'Form\unitbakoreksi.pas' {ubakoreksi},
  UnitPiutangGolongan in 'Form\UnitPiutangGolongan.pas' {Fpiutanggolongan},
  unitlapkoreksi in 'Form\unitlapkoreksi.pas' {ulapkoreksi},
  UnitPiutang2 in 'Form\UnitPiutang2.pas' {Fpiutang2},
  unitbakoreksi2 in 'Form\unitbakoreksi2.pas' {ubakoreksi2},
  FRAME_laporan in 'Form\FRAME_laporan.pas' {FRlaporan: TFrame},
  UnitPilihPeriode in 'Form\UnitPilihPeriode.pas' {Upilihperiode},
  UnitDaftarBA in 'Form\UnitDaftarBA.pas' {UdaftarBA},
  unitpasspublishsemua in 'Form\unitpasspublishsemua.pas' {upasspublishsemua},
  FRAME_listupdate in 'Form\FRAME_listupdate.pas' {FRlistupdate: TFrame},
  FRAME_limbah in 'Form\FRAME_limbah.pas' {FRlimbah: TFrame},
  UnitKoreksiLimbah in 'Form\UnitKoreksiLimbah.pas' {UkoreksiLimbah},
  FRAME_lltt in 'Form\FRAME_lltt.pas' {FRlltt: TFrame},
  UnitKoreksilltt in 'Form\UnitKoreksilltt.pas' {Ukoreksilltt},
  FRAME_pelanggan in 'Form\FRAME_pelanggan.pas' {FRpelanggan: TFrame},
  UnitTpelanggan in 'Form\UnitTpelanggan.pas' {UTpelanggan},
  FRAME_pelangganlimbah in 'Form\FRAME_pelangganlimbah.pas' {FRpelangganlimbah: TFrame},
  UnitTpelangganlimbah in 'Form\UnitTpelangganlimbah.pas' {UTpelangganlimbah},
  unitpiutanglimbah in 'Form\unitpiutanglimbah.pas' {upiutanglimbah},
  unithisbayarlimbah in 'Form\unithisbayarlimbah.pas' {uhisbayarlimbah},
  unitrubahgolonganlimbah in 'Form\unitrubahgolonganlimbah.pas' {urubahgolonganlimbah},
  unitrubahalamatlimbah in 'Form\unitrubahalamatlimbah.pas' {urubahalamatlimbah},
  FRAME_pelangganlltt in 'Form\FRAME_pelangganlltt.pas' {FRpelangganlltt: TFrame},
  UnitTpelangganlltt in 'Form\UnitTpelangganlltt.pas' {UTpelangganlltt},
  unitpiutanglltt in 'Form\unitpiutanglltt.pas' {upiutanglltt},
  unithisbayarlltt in 'Form\unithisbayarlltt.pas' {uhisbayarlltt},
  unitrubahgolonganlltt in 'Form\unitrubahgolonganlltt.pas' {urubahgolonganlltt},
  unitrubahalamatlltt in 'Form\unitrubahalamatlltt.pas' {urubahalamatlltt},
  UnitTpelanggan2 in 'Form\UnitTpelanggan2.pas' {UTpelanggan2},
  UnitTpelangganlimbah2 in 'Form\UnitTpelangganlimbah2.pas' {UTpelangganlimbah2},
  unitterbitkanlimbah in 'Form\unitterbitkanlimbah.pas' {uterbitkanlimbah},
  unitterbitkanlltt in 'Form\unitterbitkanlltt.pas' {uterbitkanlltt},
  UnitTpelangganlltt2 in 'Form\UnitTpelangganlltt2.pas' {UTpelangganlltt2},
  unit_perbaruidata in 'Form\unit_perbaruidata.pas' {uperbaruidata},
  FRAME_pemutihan in 'Form\FRAME_pemutihan.pas' {FRpemutihan: TFrame},
  UnitPemutihan in 'Form\UnitPemutihan.pas' {UTpemutihan},
  UnitVerifikasiPemutihan in 'Form\UnitVerifikasiPemutihan.pas' {Uverifikasipemutihan};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SIMiBIMA BILLING';
  Application.CreateForm(TUmain, Umain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TUcombo, Ucombo);
  Application.CreateForm(TUupdate, Uupdate);
  Application.CreateForm(TFGolongan, FGolongan);
  Application.CreateForm(TFGolonganIPL, FGolonganIPL);
  Application.CreateForm(Tukoreksistan, ukoreksistan);
  Application.CreateForm(Tupass, upass);
  Application.CreateForm(Tuterbitkan, uterbitkan);
  Application.CreateForm(TUbuatperiode, Ubuatperiode);
  Application.CreateForm(Tusetdenda, usetdenda);
  Application.CreateForm(TUdiameter, Udiameter);
  Application.CreateForm(Tutkolektif, utkolektif);
  Application.CreateForm(TFcabang, Fcabang);
  Application.CreateForm(Tutmerk, utmerk);
  Application.CreateForm(TUserial, Userial);
  Application.CreateForm(Turepair, urepair);
  Application.CreateForm(TFbackup, Fbackup);
  Application.CreateForm(Tfkelurahan, fkelurahan);
  Application.CreateForm(Tuwil, uwil);
  Application.CreateForm(Tutloket, utloket);
  Application.CreateForm(Tubackuphost, ubackuphost);
  Application.CreateForm(Tuhisbayar, uhisbayar);
  Application.CreateForm(Tulokasifoto, ulokasifoto);
  Application.CreateForm(Tufotobesar, ufotobesar);
  Application.CreateForm(Tutsumberair, utsumberair);
  Application.CreateForm(Tudaftarjabatan, udaftarjabatan);
  Application.CreateForm(Tupengguna, upengguna);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(Tusetflag, usetflag);
  Application.CreateForm(Tubiayalain, ubiayalain);
  Application.CreateForm(Tudrd_posting, udrd_posting);
  Application.CreateForm(Turekapgolongan, urekapgolongan);
  Application.CreateForm(Turekapperbandingan, urekapperbandingan);
  Application.CreateForm(Turekapikthisar, urekapikthisar);
  Application.CreateForm(Tutkepemilikan, utkepemilikan);
  Application.CreateForm(Tuhakakses, uhakakses);
  Application.CreateForm(Tuupload2, uupload2);
  Application.CreateForm(Tugantipass, ugantipass);
  Application.CreateForm(Turekapikthisar4, urekapikthisar4);
  Application.CreateForm(Tuhispakai, uhispakai);
  Application.CreateForm(Turekapgolongan5, urekapgolongan5);
  Application.CreateForm(Turekapgolongan7, urekapgolongan7);
  Application.CreateForm(Tulog, ulog);
  Application.CreateForm(Tupostingdrd, upostingdrd);
  Application.CreateForm(Tudrd_real, udrd_real);
  Application.CreateForm(Tudrd_koreksi, udrd_koreksi);
  Application.CreateForm(Tuangsuran, uangsuran);
  Application.CreateForm(Tujenisangsuran, ujenisangsuran);
  Application.CreateForm(Tuangsuran2, uangsuran2);
  Application.CreateForm(Tuangsuran3, uangsuran3);
  Application.CreateForm(Tuloading, uloading);
  Application.CreateForm(TUarea, Uarea);
  Application.CreateForm(TUrayon, Urayon);
  Application.CreateForm(TUblok, Ublok);
  Application.CreateForm(Tubaliknama, ubaliknama);
  Application.CreateForm(Turubahgolongan, urubahgolongan);
  Application.CreateForm(Tugantimeter, ugantimeter);
  Application.CreateForm(Turubahalamat, urubahalamat);
  Application.CreateForm(Turubahnosamb, urubahnosamb);
  Application.CreateForm(Tulpp, ulpp);
  Application.CreateForm(Tutagbelumbayar, utagbelumbayar);
  Application.CreateForm(Tustatus, ustatus);
  Application.CreateForm(Tlapmemo, lapmemo);
  Application.CreateForm(Tuuserloket, uuserloket);
  Application.CreateForm(Tuuserloket2, uuserloket2);
  Application.CreateForm(Turekaplppjogja, urekaplppjogja);
  Application.CreateForm(Tudetailangsuran, udetailangsuran);
  Application.CreateForm(Tulapakun1, ulapakun1);
  Application.CreateForm(Tudrd_real_karyawan, udrd_real_karyawan);
  Application.CreateForm(Tustatistik, ustatistik);
  Application.CreateForm(Tustatistik2, ustatistik2);
  Application.CreateForm(Tumemopemutusan, umemopemutusan);
  Application.CreateForm(Tusuratpiutang, usuratpiutang);
  Application.CreateForm(Tudaftarpengesahantagihan, udaftarpengesahantagihan);
  Application.CreateForm(Turekapmemopemutusan, urekapmemopemutusan);
  Application.CreateForm(Tuposisisambungan, uposisisambungan);
  Application.CreateForm(Tuikthisar, uikthisar);
  Application.CreateForm(Tulpp2, ulpp2);
  Application.CreateForm(Turekaplppjogja2, urekaplppjogja2);
  Application.CreateForm(Tupembacaan, upembacaan);
  Application.CreateForm(Tupenggunaloket, upenggunaloket);
  Application.CreateForm(Tftambahpejabat, ftambahpejabat);
  Application.CreateForm(Tupiutang, upiutang);
  Application.CreateForm(Tudrd_posting2, udrd_posting2);
  Application.CreateForm(Tudrd_posting3, udrd_posting3);
  Application.CreateForm(Tudrd_posting5, udrd_posting5);
  Application.CreateForm(Tudrdlancar, udrdlancar);
  Application.CreateForm(Tubuatfilepos, ubuatfilepos);
  Application.CreateForm(Tulppharian1, ulppharian1);
  Application.CreateForm(Tudaftarmaterial, udaftarmaterial);
  Application.CreateForm(Tuharganet, uharganet);
  Application.CreateForm(Tuongkos, uongkos);
  Application.CreateForm(Tupaket, upaket);
  Application.CreateForm(Tudaftarongkos, udaftarongkos);
  Application.CreateForm(Tupaketrab, upaketrab);
  Application.CreateForm(Tulppharian2, ulppharian2);
  Application.CreateForm(Tulppharian3, ulppharian3);
  Application.CreateForm(Tulppharian4, ulppharian4);
  Application.CreateForm(Tulppharian5, ulppharian5);
  Application.CreateForm(Tulppharian7, ulppharian7);
  Application.CreateForm(Tulppharian8, ulppharian8);
  Application.CreateForm(Tupilihunit, upilihunit);
  Application.CreateForm(Tubakoreksi, ubakoreksi);
  Application.CreateForm(TFpiutanggolongan, Fpiutanggolongan);
  Application.CreateForm(Tulapkoreksi, ulapkoreksi);
  Application.CreateForm(TFpiutang2, Fpiutang2);
  Application.CreateForm(Tubakoreksi2, ubakoreksi2);
  Application.CreateForm(TUpilihperiode, Upilihperiode);
  Application.CreateForm(TUdaftarBA, UdaftarBA);
  Application.CreateForm(Tupasspublishsemua, upasspublishsemua);
  Application.CreateForm(TUkoreksiLimbah, UkoreksiLimbah);
  Application.CreateForm(TUkoreksilltt, Ukoreksilltt);
  Application.CreateForm(TUTpelanggan, UTpelanggan);
  Application.CreateForm(TUTpelangganlimbah, UTpelangganlimbah);
  Application.CreateForm(Tupiutanglimbah, upiutanglimbah);
  Application.CreateForm(Tuhisbayarlimbah, uhisbayarlimbah);
  Application.CreateForm(Turubahgolonganlimbah, urubahgolonganlimbah);
  Application.CreateForm(Turubahalamatlimbah, urubahalamatlimbah);
  Application.CreateForm(TUTpelangganlltt, UTpelangganlltt);
  Application.CreateForm(Tupiutanglltt, upiutanglltt);
  Application.CreateForm(Tuhisbayarlltt, uhisbayarlltt);
  Application.CreateForm(Turubahgolonganlltt, urubahgolonganlltt);
  Application.CreateForm(Turubahalamatlltt, urubahalamatlltt);
  Application.CreateForm(TUTpelanggan2, UTpelanggan2);
  Application.CreateForm(TUTpelangganlimbah2, UTpelangganlimbah2);
  Application.CreateForm(Tuterbitkanlimbah, uterbitkanlimbah);
  Application.CreateForm(Tuterbitkanlltt, uterbitkanlltt);
  Application.CreateForm(TUTpelangganlltt2, UTpelangganlltt2);
  Application.CreateForm(Tuperbaruidata, uperbaruidata);
  Application.CreateForm(TUTpemutihan, UTpemutihan);
  Application.CreateForm(TUverifikasipemutihan, Uverifikasipemutihan);
  Application.Run;
end.
