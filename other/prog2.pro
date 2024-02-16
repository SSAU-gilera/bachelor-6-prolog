domains
	list = integer*	

predicates
	nondeterm length(list, integer)
	nondeterm conc(list, list, list)
	nondeterm sepr(list, list, list, integer)
	
clauses
	conc([], L, L).
	conc([H|T], L, [H|T1]) if conc(T, L, T1).
	
	length([],0).
	length([_|T], L) if length(T, R), L = R + 1.
	
	sepr(L, R, T, N) if conc(L, R, T), length(L, N).

goal
	sepr(L, R, [1,2,3,4,5], 2), write(L), write(R).