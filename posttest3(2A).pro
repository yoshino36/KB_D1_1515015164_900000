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
	semester(kecerdasan_buatan,Who,_).