domains 
orang = symbol % variabel orang dengan tipe data symbol
pelajaran = symbol % variabel pelajaran dengan tipe data symbol
nilai = symbol % variabel nilai dengan tipe data symbol

predicates

 nondeterm mahasiswa(orang,pelajaran,nilai). 
 nondeterm matakuliah(pelajaran).
 nondeterm nilai(nilai).
 
clauses

nilai("A").
nilai("B").
nilai("C").
nilai("D").
nilai("E").

matakuliah("Intelejensi Buatan").
matakuliah("PDE").
matakuliah("Sistem Operasi").

mahasiswa("Irfan","Intelejensi Buatan","A").
mahasiswa("Komeng","Intelejensi Buatan","D").
mahasiswa("Dati","Intelejensi Buatan","C").
mahasiswa("Fatimah","Intelejensi Buatan","B").
mahasiswa("Maspion","Intelejensi Buatan","C").

mahasiswa("Ricky","PDE","E").
mahasiswa("Embang","PDE","A").
mahasiswa("Salim","PDE","D").
mahasiswa("Vina","PDE","B").
mahasiswa("Sondang","PDE","C").

mahasiswa("Pamuji","Sistem Operasi","D").
mahasiswa("Luki","Sistem Operasi","E").
mahasiswa("Sadek","Sistem Operasi","B").
mahasiswa("Yusida","Sistem Operasi","A").
mahasiswa("Eka","Sistem Operasi","A").

goal
mahasiswa(NAMA,"Intelejensi Buatan",_);
mahasiswa(NAMA,_,LULUS),LULUS<="C";
mahasiswa(NAMA,_,TIDAK_LULUS),TIDAK_LULUS>"C";
matakuliah(MATAKULIAH);
mahasiswa(NAMA,_,_).
