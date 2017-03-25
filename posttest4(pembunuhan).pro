DOMAINS
 nama,jender,pekerjaan,benda,alasan,zat = symbol
 umur=integer
PREDICATES
 nondeterm orang(nama, umur, jender, pekerjaan)
 nondeterm selingkuh(nama, nama)
 terbunuh_dengan(nama, benda)
 terbunuh(nama)
 nondeterm pembunuh(nama)
 motif(alasan)
 ternodai(nama, zat)
 milik(nama, benda)
 nondeterm cara_kerja_mirip(benda, benda)
 nondeterm kemungkinan_milik(nama, benda)
 nondeterm dicurigai(nama)
/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
 orang(budi,55,m,tukang_kayu). %titik lacak balik
 orang(aldi,25,m,pemain_sepak_bola).
 orang(aldi,25,m,tukang_jagal).
 orang(joni,25,m,pencopet).
 selingkuh(ina,joni).
 selingkuh(ina,budi).
 selingkuh(siti,joni).
 terbunuh_dengan(siti,pentungan). 
 terbunuh(siti).
 motif(uang).
 motif(cemburu).
 motif(dendam).
 ternodai(budi, darah).
 ternodai(siti, darah).
 ternodai(aldi, lumpur).
 ternodai(joni, coklat).
 ternodai(ina, coklat).
 milik(budi,kaki_palsu).
 milik(joni,pistol).
 /* * * Basis Pengetahuan * * */
 cara_kerja_mirip(kaki_palsu, pentungan).
 cara_kerja_mirip(balok, pentungan).
 cara_kerja_mirip(gunting, pisau).
 cara_kerja_mirip(sepatu_bola, pentungan).
 kemungkinan_milik(X,sepatu_bola):-
	orang(X,_,_,pemain_sepak_bola).
 kemungkinan_milik(X,gunting):-
	orang(X,_,_,pekerja_salon).
 kemungkinan_milik(X,Benda):-
	milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-	%titik lacak balik
	terbunuh_dengan(siti,Senjata), % proses unifikasi atau pencocokan sesuai fakta terbunuh_dengan(siti,pentungan)
cara_kerja_mirip(Benda,Senjata) , % unifikasi lagi dan menset titik lacak balik pada fakta pertama
kemungkinan_milik(X,Benda). % unifikasi lagi dan mendapatkan hasil bahwa aldi adalah X, ke aturan selanjutnya
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-	
	motif(cemburu),
	orang(X,_,m,_),
	selingkuh(siti,X).
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-
	motif(cemburu),
	orang(X,_,f,_),
	selingkuh(X,Lakilaki),
	selingkuh(siti,Lakilaki).
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
 dicurigai(X):-
	motif(uang),
	orang(X,_,_,pencopet).
 pembunuh(Pembunuh):-	% unifikasi dengan variable x
	orang(Pembunuh,_,_,_),	% variable pembunuh sebagai subgoal pertama
	terbunuh(Terbunuh),	% subgoal kedua mendapatkan siti sebagai terbunuh
	Terbunuh <> Pembunuh, % 2 variable ini saling mengikat dan berarti X = aldi tadi salah
	dicurigai(Pembunuh), % subgoal ketiga
	ternodai(Pembunuh,Zat), %unifikasi dan menemukan hasil bahwa Pembunuh adalah budi, dengan kesamaan Zat
	ternodai(Terbunuh,Zat).
GOAL
 pembunuh(X).
%Analisis ada di komentar di atas yg menggunakan %
 