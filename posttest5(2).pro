DOMAINS
nama = symbol
alamat_asal = alamat(symbol,symbol,symbol)
PREDICATES
nondeterm dosen(nama,symbol,symbol,integer)
nondeterm mahasiswa(symbol,symbol,symbol,alamat_asal,symbol)
nondeterm mahasiswa_mengikuti
nondeterm matkul

CLAUSES

dosen("Abdul Kadir","Intelejensi Buatan","Manajemen Informatika",1).
dosen("Indra Yatini","PDE","Teknik Informatika",2).
dosen("Sigit Anggoro","Teknik Antar Muka","Teknik Komputer",3).


mahasiswa("Sugeng Riyadi","Laki-Laki","2002001",alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat"),"Intelejensi Buatan").
mahasiswa("Yulia Sugondo","Perempuan","2002002",alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah"),"Intelejensi Buatan").
mahasiswa("Budiman Sejati","Laki-Laki","2002003",alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah"),"Intelejensi Buatan").
mahasiswa("Laksamana Sukardi","Laki-Laki","2002004",alamat("Jl. MT Haryono No. 10","Palembang","Sumatera Selatan"),"PDE").
mahasiswa("Rini Suwandi","Perempuan","2002005",alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur"),"PDE").
mahasiswa("Kwik Kian Gie","Laki-Laki","2002006",alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan"),"PDE").
mahasiswa("Riri Reza","Laki-Laki","2002007",alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah"),"Teknik Antar Muka").
mahasiswa("Rachel Maryam","Perempuan","2002008",alamat("Jl. Otista No. 112","Bandung","Jawa Barat"),"Teknik Antar Muka").
mahasiswa("Garin Nugroho","Laki-Laki","2002009",alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua"),"Teknik Antar Muka").

mahasiswa_mengikuti:-
dosen(A,"Intelejensi Buatan",_,_),
mahasiswa(B,_,"2002001",C,"Intelejensi Buatan"),
mahasiswa(D,_,"2002002",E,"Intelejensi Buatan"),
mahasiswa(F,_,"2002003",G,"Intelejensi Buatan"),
write("Nama Mahasiswa : ",B,"\tNama Dosen : ",A,"\tAlamat Mahasiswa : ",C),nl,
write("Nama Mahasiswa : ",D,"\tNama Dosen : ",A,"\tAlamat Mahasiswa : ",E),nl,
write("Nama Mahasiswa : ",F,"\tNama Dosen : ",A,"\tAlamat Mahasiswa : ",G),nl.

matkul:-
dosen(Z,X,_,1),
dosen(Y,W,_,2),
dosen(V,L,_,3),
mahasiswa(Ab,_,_,_,X),
mahasiswa(Ac,_,_,_,X),
mahasiswa(Ad,_,_,_,X),
mahasiswa(Ae,_,_,_,W),
mahasiswa(Af,_,_,_,W),
mahasiswa(Ag,_,_,_,W),
mahasiswa(Ah,_,_,_,L),
mahasiswa(Ai,_,_,_,L),
mahasiswa(Aj,_,_,_,L),
write("Nama Mahasiswa : ",Ab,"\tRuang : 1\tNama Dosen : ",Z),nl,
write("Nama Mahasiswa : ",Ac,"\tRuang : 1\tNama Dosen : ",Z),nl,
write("Nama Mahasiswa : ",Ad,"\tRuang : 1\tNama Dosen : ",Z),nl,
write("Nama Mahasiswa : ",Ae,"\tRuang : 2\tNama Dosen : ",Y),nl,
write("Nama Mahasiswa : ",Af,"\tRuang : 2\tNama Dosen : ",Y),nl,
write("Nama Mahasiswa : ",Ag,"\tRuang : 2\tNama Dosen : ",Y),nl,
write("Nama Mahasiswa : ",Ah,"\tRuang : 3\tNama Dosen : ",V),nl,
write("Nama Mahasiswa : ",Ai,"\tRuang : 3\tNama Dosen : ",V),nl,
write("Nama Mahasiswa : ",Aj,"\tRuang : 3\tNama Dosen : ",V),nl.


GOAL
write("Mahasiswa Yang Mengikuti Mata Kuliah Intelejensi Buatan "),nl,
mahasiswa_mengikuti,nl,nl,

write("Matakuliah Yang di Ajarkan pada Semester ini "),nl,
matkul.




