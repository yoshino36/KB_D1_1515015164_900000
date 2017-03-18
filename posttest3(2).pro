domains
	matakuliah = symbol
	mahasiswa = symbol
	nilai = symbol
predicates
	
	nondeterm semester(matakuliah,mahasiswa,nilai)
	nondeterm m(matakuliah)
	
clauses
	
	m(kecerdasan_buatan).
	m(pde).
	m(sistem_operasi).
	
	semester(kecerdasan_buatan,irfan,a).
	semester(kecerdasan_buatan,komeng,d).
	semester(kecerdasan_buatan,dati,c).
	semester(kecerdasan_buatan,fatima,b).
	semester(kecerdasan_buatan,maspion,c).
	
	semester(pde,ricky,e).
	semester(pde,embang,a).
	semester(pde,salmin,d).
	semester(pde,vina,b).
	semester(pde,sondang,c).
	
	semester(sistem_operasi,pamuji,d).
	semester(sistem_operasi,luki,e).
	semester(sistem_operasi,sadek,b).
	semester(sistem_operasi,yusida,a).
	semester(sistem_operasi,eka,a).
goal
	write("Nama mahasiswa yang mengikut mata kuliah Intelejensi Buatan. \n"),
	semester(kecerdasan_buatan,Who,_);
	
	write("\n\nNama mahasiwa yang tidak lulus.\n"),
	semester(_,Who,Nilai), Nilai=d;
	semester(_,Who,Nilai),Nilai=e;
	
	write("\n\nNama mahasiswa yang lulus.\n"),
	semester(_,Who,Nilai), Nilai=a;
	semester(_,Who,Nilai),Nilai=b;
	semester(_,Who,Nilai),Nilai=c;
	
	write("\n\nSeluruh nama matakuliah yang diajarkan.\n"),
	m(What);
	
	write("\n\nSeluruh nama mahasiswa yang ada.\n"),
	semester(_,Who,_).
