DOMAINS % Digunakan sebagai tempat untuk inisialisasi variabel

nama,jender,pekerjaan,benda,alasan,zat = symbol % dimana domain berisi nama,jender,pekerjaan,benda,alasan dan zat bertipe data symbol.symbol dipakai pada predikat yang argumennya memiliki nilai berupa kumpulan karakter yang hanya terdiri dari huruf atau kata tanpa dipisahkan oleh spasi. 
umur=integer %domain umur bertipe data integer. integer dipakai pada predikat yang argumennya memiliki nilai berupa bilangan bulat.

PREDICATES %  Digunakan sebagai tempat untuk mendeklarasikan predikat yang ada pada bagian Predicates dan mendefinisikannya dalam bagian Clauses

nondeterm orang(nama, umur, jender, pekerjaan) % nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi, predicates dengan nama orang memiliki peremeter yang di dalamnya terdapat variabel (nama,umur,jender,pekerjaan) dengan tipe data symbol untuk nama,jender,pekerjaan dan umur bertipe data integer yang sudah di inisialisasikan pada domain
nondeterm selingkuh(nama, nama) % nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi, predicates dengan nama selingkuh memiliki parameter yang di dalamnya terdapat variabel (nama,nama) dengan tipe data symbol yang sudah di inisialisasi pada domain
terbunuh_dengan(nama, benda) % predicates dengan nama terbunuh_dengan memiliki parameter yang di dalamnya terdapat variabel (nama, benda) yang bertipe data symbol yang sudah di inisialisasikan pada domain
terbunuh(nama) % predicates dengan nama terbunuh memiliki parameter yang di dalamnya terdapat variabel(nama) yang bertipe data symbol yang sudah di inisialisasikan pada domain
nondeterm pembunuh(nama) %nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi, predicates dengan nama pembunuh memiliki parameter yang di dalamnya terdapat variabel (nama) dengan tipe data symbol yang sudah di inisialisasikan pada domain
motif(alasan)% predicates dengan nama motif memiliki parameter yang di dalamnya terdapat variabel (alasan) yang bertipe data symbol yang sudah di inisialisasikan pada domain
ternodai(nama, zat) % predicates dengan nama ternodai memiliki parameter yang di dalamnya terdapat variabel (nama,zat) yang bertipe data symbol yang sudah di inisialisasikan pada domain
milik(nama, benda) % predicates dengan nama milik memiliki parameter yang di dalamnya terdapat variabel (nama ,benda) yang bertipe data symbol yang sudah di inisialisasikan pada domain
nondeterm cara_kerja_mirip(benda, benda) % nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi, perdicates dengan nama cara_kerja_mirip memiliki parameter yang di dalamnya terdapat variabel (benda,benda) yang bertipe data symbol yang sudah di inisialisasikan pada domain
nondeterm kemungkinan_milik(nama, benda) % nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi, predicates dengan nama kemungkinan_milik memiliki parameter yang di dalmnya terdapat varibel (nama,benda) yang bertipe data symbol yang sudah di inisialisasikan pada domain
nondeterm dicurigai(nama) % nondeterm pada section predicates berfungsi untuk memberi tahu compiler bahwa predikat tersebut mempunyai lebih dari satu solusi predicates dengan nama di curigai memiliki variabel yang di dalamnya terdapat variabel (nama) yang bertipe data symbol yang sudah di inisialisasikan pada domain

CLAUSES % Digunakan sebagai tempat untuk meletakkan fakta dan aturan   

% --- FAKTA --- %

orang(budi,55,m,tukang_kayu).       % predikat orang(nama,umur,jender,pekerjaan) /orang nama = budi, umur = 55, jender = m dan pekerjaan = tukang_kayu / orang dengan nama budi umurnya 55 dengan jender m dan pekerjaan sebagai tukang kayu
orang(aldi,25,m,pemain_sepak_bola). % predikat orang(nama,umur,jender,pekerjaan) /orang nama = aldi, umur = 25, jender = m, pekerjaan = pemain_sepak_bola /orang dengan nama aldi umur 25 dengan jender m dan pekerjaan sebagai pemain sepak bola
orang(aldi,25,m,tukang_jagal).      % predikat orang(nama,umur,jender,pekerjaan) /orang nama = aldi, umur = 25, jender = m, pekerjaan = tukang_jagal / orang dengan nama aldi umur 25 dengan jender m dan pekerjaan sebagai tukang jagal
orang(joni,25,m,pencopet).          % predikat orang(nama,umur,jender,pekerjaan) /orang nama = joni, umur = 25, jender = m, pekerjaan = pencopet / orang dengan nama joni umur 25 dengan jender m dan pekerjaan sebagai pencopet

selingkuh(ina,joni). % predikat selingkuh(nama,nama) /selingkuh nama = ina dan nama = joni  /ina selingkuh dengan joni
selingkuh(ina,budi). % predikat selingkuh(nama,nama) /selingkuh nama = ina dan nama = budi  /ina selingkuh dengan budi
selingkuh(siti,joni).% predikat selingkuh(nama,nama) /selingkuh nama = siti dan nama = joni /siti selingkuh dengan joni

terbunuh_dengan(siti,pentungan). % predikat terbunuh_dengan(nama,benda)/ terbunuh_dengan nama = siti , benda = pentungan / siti terbunuh dengan pentungan

terbunuh(siti). % predikat terbunuh(nama) /terbunuh nama = siti / siti yang terbunuh

motif(uang).    % predikat motif(alasan) /motif alasan = uang    / uang adalah motif terbunuhnya siti
motif(cemburu). % predikat motif(alasan) /motif alasan = cemburu / cemburu adalah motif terbunuhnya siti
motif(dendam).  % predikat motif(alasan) /motif alasan = dendam  / dendam adalah motif terbunuhnya siti

ternodai(budi, darah). % predikat ternodai(nama,zat) /ternodai nama = budi, zat = darah  / budi ternodai darah
ternodai(siti, darah). % predikat ternodai(nama,zat) /ternodai nama = siti, zat = darah  / siti ternodai darah
ternodai(aldi, lumpur).% predikat ternodai(nama,zat) /ternodai nama = aldi, zat = lumpur / aldi ternodai lumpur
ternodai(joni, coklat).% predikat ternodai(nama,zat) /ternodai nama = joni, zat = coklat / joni ternodai coklat
ternodai(ina, coklat). % predikat ternodai(nama,zat) /ternodai nama = ina,  zat = coklat / budi ternodai coklat

milik(budi,kaki_palsu).% predikat milik(nama,benda) /milik nama = budi,  benda = kaki_palsu /budi memiliki kaki palsu 
milik(joni,pistol).    % predikat milik(nama,benda) /milik nama = joni,  benda = pistol     /joni memiliki pistol

cara_kerja_mirip(kaki_palsu, pentungan). % predikat cara_kerja_mirip(benda,benda) /cara_kerja_mirip benda = kaki_palsu,  benda = pentungan / kaki palsu  cara kerja mirip dengan pentungan
cara_kerja_mirip(balok, pentungan).      % predikat cara_kerja_mirip(benda,benda) /cara_kerja_mirip benda = balok,       benda = pentungan / balok       cara kerja mirip dengan pentungan
cara_kerja_mirip(gunting, pisau).        % predikat cara_kerja_mirip(benda,benda) /cara_kerja_mirip benda = gunting,     benda = pisau     / gunting     cara kerja mirip dengan pisau
cara_kerja_mirip(sepatu_bola, pentungan).% predikat cara_kerja_mirip(benda,benda) /cara_kerja_mirip benda = sepatu_bola, benda = pentungan / sepatu bola cara kerja mirip dengan pentungan


% --- ATURAN --- %

% Nb : 
%      (:-)              jika 
%      (<>)              tidak sama dengan
%      (,)               dan
%      (;)               atau
%      (_)               mengabaikan variabel yang tidak igin di tampilkan 
%      (X,Benda,Senjata,Lakilaki,Pembunuh,Zat) variabel yang merupakan sebuah interpretasi yang digunakan untuk menemukan nilai dari sebuah klausa, Variabel harus diawali dengan huruf besar
 
kemungkinan_milik(X,sepatu_bola):-  % predikat kemungkinan_milik(nama,benda)     /kemungkinan_milik nama= X, benda = sepatu_bola 
orang(X,_,_,pemain_sepak_bola).     % predikat orang(nama,umur,jender,pekerjaan) /orang nama = X umur = _ , jender = _ , pekerjaan = pemain_sepak_bola
				    % X kemungkinan memiliki sepatu bola jika X seorang pemain bola

kemungkinan_milik(X,gunting):-      % predikat kemungkinan_milik(nama,benda)     /kemungkinan_milik nama= X, benda = gunting  
orang(X,_,_,pekerja_salon).         % predikat orang(nama,umur,jender,pekerjaan) /orang nama = X umur = _ , jender = _ , pekerjaan = pekerja_salon
			            % X kemungkinan memiliki gunting jika X seorang pekerja salon

kemungkinan_milik(X,Benda):-        % predikat kemungkinan_milik(nama,benda) /kemungkinan_milik nama= X, benda = Benda  
milik(X,Benda).                     % predikat milik(nama,benda)             /orang nama = X benda = Benda
                                    % X kemungkinan memiliki Benda jika X memiliki benda tersebut

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */


dicurigai(X):-                  % X di curigai jika
terbunuh_dengan(siti,Senjata) , % siti terbunuh dengan Senjata

cara_kerja_mirip(Benda,Senjata) , % Benda yang cara kerjanya mirip Senjata
kemungkinan_milik(X,Benda).       % X kemungkinan memiliki Benda tersebut

/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */

dicurigai(X):-    % X dicurigai jika
motif(cemburu),   % cemburu adalah motifnya dan
orang(X,_,m,_),   % X adalah orang dengan jender m
selingkuh(siti,X).

/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */

dicurigai(X):- % X di curigai jika 
motif(cemburu),% cemburu adalah motifnya dan
orang(X,_,f,_),% X adalah orang dengan jender f dan
selingkuh(X,Lakilaki),% X selingkuh dengan Lakilaki dan
selingkuh(siti,Lakilaki). %siti selingkuh dengan Lakilaki

/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */

dicurigai(X):- % X di curigai jika
motif(uang), % uang adalah motifnya dan
orang(X,_,_,pencopet).% X adalah orang yang pekerjaannya pencopet

pembunuh(Pembunuh):- % Pembunuh adalah pembunuh jika 
orang(Pembunuh,_,_,_),% Pembunuh adalah orang dan
terbunuh(Terbunuh), % Terbunuh telah terbunuh dan
Terbunuh <> Pembunuh,% Terbunuh tidak sama dengan Pembunuh /* Bukan bunuh diri */
dicurigai(Pembunuh),% Pembunuh di curigai dan
ternodai(Pembunuh,Zat),% Pembunuh ternodai Zat dan
ternodai(Terbunuh,Zat). % Terbunuh ternodai Zat

GOAL % sama dengan body dari sebuah aturan, tujuan akhir

pembunuh(X).% X adalah pembunuhnya