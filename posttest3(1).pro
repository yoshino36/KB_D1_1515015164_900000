
domains
 	things = symbol
 	person = symbol
 	many = integer
predicates
	nondeterm has(person,things,many)
clauses
	has(arif,laptop,3).
	has(satria,hp,2).
	has(melky,laptop,1).
	has(taufik,hp,1).
	
goal
	has(Who,_,X),
	X = 1.
	