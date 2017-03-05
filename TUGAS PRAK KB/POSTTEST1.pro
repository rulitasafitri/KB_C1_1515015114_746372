
predicates
  nondeterm chenel(symbol,long,symbol,integer) 
  nondeterm hermes(symbol,long,symbol,integer) 
  nondeterm tas(symbol,long,symbol,integer) 

clauses
  chenel(fitri,500000,merah,4).
  chenel(resty,900000,coklat,2).
  chenel(hijratul,800000,hijau,4).

  hermes(fetrisye,850000,biru,4).
  hermes(evi,50000,kuning,1).
  hermes(juni,25000,hitam,3).

  tas(Nama,Harga,Warna,Jumlah):-
	chenel(Nama,Harga,Warna,Jumlah);
	hermes(Nama,Harga,Warna,Jumlah).

goal
  chenel(Nama,Harga,Warna,4). 