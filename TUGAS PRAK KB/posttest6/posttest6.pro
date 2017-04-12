predicates

%tipe data unsigned artinya nilainya tidak boleh kurang dari 0 atau negatif dan harus bernilai positif, 
%tipe data Real adalah bilangan yang berisi titik desimal atau jenis bilangan pecahan

  factorial(unsigned,real) - procedure (i,o)%Predicates dengan nama factorial memiliki parameter unsigned dan real dimana unsigned dan real ini di deklarasikan terlebih dahulu di predicates,
  					    %kemudian pendeklarasian dengan nama factorial dengan tipe data unsigned dan real akan digunakan pada clauses,

  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)%Predicates dengan nama factorial dideklarasikan ulang dengan memiliki tipe data unsigned dan real, perbedaan dari yang sebelumnya di dalam parameter terdapat dua argumen sedangakn yang ke funtorial yang kedua memiliki empat argumen.



clauses
  factorial(N,FactN):-            %Predicates factorial memiliki parameter yang di dalamnya dua variabel nilai yaitu N dan FactN,diaman variabel N bertipe data unsigned dan FactN bertipe data real dengan nilai ketetapan awal (bernilai 1 karena sudah ditentukan nilai tidak boleh samadengan atau kurangdari 0,
     			          %yang nilainya akan berubah setelah terjadi perulangan lebih dari satu kali sampai nilai N tersebut memenuhi nilai yang ada pada goal dan clauses yang akan pertaman kali di cocokan dengan goal.
  factorial(N,FactN,1,1.0).   	  %Subgoal dari factorial factorial(N,FactN). factorial ini memilik 4 argumen yaitu (N,FactN,1,1.0). Karena N bernilai 3 maka factorial(3,?,1,1.0)		          
   
  factorial(N,FactN,N,FactN):-!. %predicates factorial memiliki parameter yang di dalamnya ada empat variable nilai yaitu N dan FactN, dimana N yang ditetapkan pada aturan diattas awalnya bernilai 1 
 				 %yang akan berubah nilainya sesuai perhitungan perulangannya dan perulangan ini terjadi sampai angka yang ditetapkan di goal sesuai.
  				 %maka system akan berhenti menjalankan program (cut) ketika syarat dimana N yang bernilai 1 memenuhi nilai N = 3 sesuai dengan yang terdapat di dalam goal.
  				 
  factorial(N,FactN,I,P):-     		  %untuk memenuhi nilai N = 3, maka dilakukan perhitungan berikut :
	NewI = I+1,			  %Nilai dari NewI merupakan nilai I yang sudah ditetapkan di awal bernilai 1,akan melakukan perulangan sampai mencapai angka sesuai dengan goal,dimana nilai dari NewI akan terus bertambah sampai nilai dari NewI ini sesuai dengan Nilai yang telah ditetapkan di Goal yaitu 3
	NewP = P*NewI,			  %Nilai dari NewP akan terus di di eksekusi sesuai dengan banyak nya perhitungan yang dilakukan oleh NewI sampai memenuhi nilai 3, dan saat NewI bernilai 3 maka NweP akan bernilai 6 sesuai dengan hasil yang ada di goal saat di jalankan
	factorial(N, FactN, NewI, NewP).  %Factorial memiliki 4 argumen yang nilainya dari operasi subgoal diatasnya.
	
goal
  factorial(3,X). % factorial(3,X) goal yang akan dicari, dimana pada goal factorial telah ditentukan nilai 3 pada argumen pertamanya dan pada argumen keduanya berisi variabel X. nilai dari X inilah yang akan mencari solusinya.
		  % Kemudian akan mencari fakta yang cocok dengan goal dan di mulai dari clauses atas sampai yang paling bawah, maka ditemukan factorial(N,FactN).
		  % Dan terjadi unifikasi antara variabel X dan factorial, sehingga X=FactN. 
		  % Sementara variabel N dengan nilai 3.