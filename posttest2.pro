
domains
nama,kelas = symbol
nim = integer

predicates
nondeterm biodata(nama,nim,kelas)
nondeterm biodata(nama)

clauses
 biodata(Siswa):-
 	biodata(Siswa,_,_).
 biodata(adli,164,d2015).
 biodata(kheyfin,163,d2015).
 biodata(gusti,165,d2015).
 
 goal
 biodata(X,Y,_), Y=164.