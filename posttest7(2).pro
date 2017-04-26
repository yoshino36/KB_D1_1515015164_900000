DOMAINS
nilailist = string*
matakuliah = symbol
nilai = symbol
PREDICATES
nondeterm mahasiswa(symbol,matakuliah,nilai)

CLAUSES
mahasiswa("Supardi","Intelejensi Buatan","A").
mahasiswa("Suradi","Intelejensi Buatan","B").
mahasiswa("Suyatmi","Intelejensi Buatan","C").
mahasiswa("Suparni","Intelejensi Buatan","D").
mahasiswa("Sujiman","Intelejensi Buatan","C").
mahasiswa("Suharto","PDE","B").
mahasiswa("Sudirman","PDE","C").
mahasiswa("Supardi","PDE","C").
mahasiswa("Suyatmi","PDE","B").
mahasiswa("Sutini","PDE","D").
mahasiswa("Suharto","Sistem Operasi","B").
mahasiswa("Sutini","Sistem Operasi","A").
mahasiswa("Supardi","Sistem Operasi","A").
mahasiswa("Suparni","Sistem Operasi","B").
mahasiswa("Suripah","Sistem Operasi","C").

GOAL
 write("No. 1 "),nl,
 mahasiswa("Supardi",Matakuliah,Nilai),nl;
 write("No. 2 "),nl,
 mahasiswa("Suripah",Matkuliah,_),nl;
 write("No. 3 "),nl,
 mahasiswa(Nama,Matakuliah,Nilai),Nilai="D",nl.