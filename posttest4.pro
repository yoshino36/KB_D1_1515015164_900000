DOMAINS
 nickname,favgear,ranks,favgun,favmap = symbol
PREDICATES
nondeterm profile(nickname,ranks,favgun,favmap)
nondeterm casual(favgun)
nondeterm comp(ranks,favmap,favgun)
nondeterm mic(symbol)
nondeterm csgo(symbol)
CLAUSES
 profile("KennyS","GlobalElite","AWP","Dust II").
 profile("Scream","GlobalElite","AK-47","Dust II").
 profile("DeSilver1","GoldNova1","AWP","Train").
 profile("Garry's","GoldNova1","P90","Inferno").
 
 casual("AK-47").
 casual("Deagle").
 casual("M4A4").
 casual("AWP").
 casual("Zeus").
 
 comp("SilverElite","Dust II","AWP").
 comp("GoldNova1","Train","AWP").
 comp("GlobalElite","CobbleStone","AWP").
 
 mic(on).
 mic(off).
 
 csgo(Nick):-
  profile(Nick,_,Gun,_),
  comp(_,_,"AWP"),!, %Jika tidak di beri cut, maka titik lacak balik berlanjut dan hasil nya ada 9
  casual(Gun).

 
GOAL
 write("\n\nPostest 4 \nNama = Adli Dzil \nNIM = 1515015164\n\n"),
 csgo(Nick).
 
	