DOMAINS
mylist=integer*
index,el=integer

PREDICATES
nondeterm get_el(mylist,index,el)
nondeterm split(el,mylist,mylist,mylist).
nondeterm elem (index,el)

CLAUSES
get_el([X|_],1,X).
get_el([_|L],N,Y):-M=N-1,get_el(L,M,Y).
elem(M,Y).
split(Y,[Head|Tail],[Head|L1],L2) :- Head = Y, split(Y,Tail,L1,L2). 
elem(M+1,Z).
split(Z,[Head|Tail],L1,[Head|L2]) :- split(Z,Tail,L1,L2), Head = Z.
split(_,[],[],[]).

GOAL
get_el([1,2,3,4,5,6],3,Y)
split(, [1,2,3,4,5,6],L1,L2).