DOMAINS
list = integer*	

PREDICATES
nondeterm length(list, integer)% длина списка
nondeterm conc(list, list, list)
nondeterm sepr(list, list, list, integer)
	
CLAUSES
conc([], L, L).% при добавлении списка L к пустому списку, будет список L
conc([H|T], L, [H|T1]) if conc(T, L, T1). /* соединяеям хвост T и список L, 
						получается список с головой H и хвостом T1,
						где Т1=T+L*/
length([],0).% длина пустого списка равна 0
length([_|T], L) :- length(T, R), L = R + 1. % длина исходного списка = L, длина хвоста = R
sepr(L, R, T, N) :- conc(L, R, T), length(L, N)./* если длина левой части = N, а левая + правая часть будет равна списку,
						то выводим L и R*/

GOAL
sepr(L, R, [1,2,3,4,5], 3).




