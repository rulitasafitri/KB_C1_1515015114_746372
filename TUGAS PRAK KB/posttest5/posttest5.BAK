domains
nama=orang(symbol,symbol)
matkul,dosen,prodi,jenis_kelamin,alamat=symbol
nim,ruang=integer

predicates

nondeterm matakuliah_yang_di_ajarkan(matkul,dosen,prodi,ruang)
nondeterm mahasiswa(nama,jenis_kelamin,nim,alamat,matkul)
matakuliah(matkul)
cetak_mhs(nama,alamat,dosen,ruang)
cetak_mahasiswa(nama,dosen,ruang)
daftar_mhs
daftar
clauses

matakuliah_yang_di_ajarkan(intelejensi_buatan,abdul_kadir,manajemen_informatika,1).
matakuliah_yang_di_ajarkan(pde,indra_yatini,teknik_informatika,2).
matakuliah_yang_di_ajarkan(teknik_antarmuka,sigit_anggoro,teknik_komputer,3).

mahasiswa(orang(sugeng,riyadi),laki_laki,2002001,"jl.sudirman No.2,Pontianak, Kalimantan Barat",intelejensi_buatan).
mahasiswa(orang(yulia,sugondo),perempuan,2002002,"jl.ahmad yani No.10, Klaten,Jawa Tengah",intelejensi_buatan).
mahasiswa(orang(budiman,sejati),laki_laki,2002003,"jl.slamet riyadi No.45,Solo,Jawa Tengah",intelejensi_buatan).

mahasiswa(orang(laksamana,sukardi),laki_laki,2002004,"jl.Mt Haryono No.10,Palembang,Sumatera Selatan",pde).
mahasiswa(orang(rini,suwandi),perempuan,2002005,"jl.letjen suprapto No.12,surabaya,jawa timur",pde).
mahasiswa(orang(kwik,kiangie),laki_laki,2002006,"jl.wr supratman No.100 ,Makassar,Sulawesi Selatan",pde).

mahasiswa(orang(riri,reza),laki_laki,2002007,"jl.rw mongonsidi No.30,Purwokerto,Jawa tengah",teknik_antarmuka).
mahasiswa(orang(rachel,maryam),perempuan,2002008,"jl.otista No.112,Bandung,Jawa Barat",teknik_antarmuka).
mahasiswa(orang(garin,nugoroho),laki_laki,2002009,"jl.tanjung_pura No.101,jayapura,papua",teknik_antarmuka).

matakuliah(pde).
matakuliah(intelejensi_buatan).
matakuliah(teknik_antarmuka).

daftar_mhs:-
write("##########################Daftar Mahasiswa yang Mengambil Matakuliah Intelejensi Buatan ############################"),nl,nl,
write(" Nama Mahasiswa\t\tAlamat\t\t\t\t\tNama Dosen\t\t\tRuang Kuliah\n"),
write("############################################################################################################"),nl,nl,

matakuliah_yang_di_ajarkan(intelejensi_buatan,Dosen,_,Ruang),
mahasiswa(Orang,_,_,Alamat,intelejensi_buatan),
cetak_mhs(Orang,Alamat,Dosen,Ruang),
fail.

cetak_mhs(orang(Pertama,Kedua),Alamat,Dosen,Ruang):-
write("",Pertama," ",Kedua,"\t\t","",Alamat,"\t\t","",Dosen,"\t\t",Ruang),nl.

daftar:-
write(""),nl,nl,
write(""),nl,nl,
write(""),nl,nl,
write("##############################DAFTAR MAHASISWA##################################"),nl,nl,
write("Nama Mahasiswa\t\tNama Dosen\t\t\t Ruang Kuliah\n"),
write("##################################################################################"),nl,nl,
matakuliah_yang_di_ajarkan(Matkul,Dosen,_,Ruang),
matakuliah(Matkul),
mahasiswa(Orang,_,_,_,Matkul),
cetak_mahasiswa(Orang,Dosen,Ruang),
fail.

cetak_mahasiswa(orang(Pertama,Kedua),Dosen,Ruang):-
write("",Pertama," ",Kedua,"\t\t\t","",Dosen,"\t\t\t",Ruang),nl.


goal
daftar_mhs;
daftar.
