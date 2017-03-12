domains
  orang = symbol
  hp    = symbol
  harga = long

predicates
  nondeterm harga(hp,harga).  	
  nondeterm beli(orang,hp).	

clauses
harga(samsung_galaxy_j1,1050000).
harga(samsung_galaxy_j2,1600000).
harga(samsung_galaxy_j3,1950000).
harga(samsung_galaxy_j5,2850000).
beli(fitri,samsung_galaxy_j5).
beli(ruli,samsung_galaxy_j1).
beli(safitri,samsung_galaxy_j2).
beli(lita,samsung_galaxy_j3).

goal
beli(X,Y),harga(Y,1600000).





  
