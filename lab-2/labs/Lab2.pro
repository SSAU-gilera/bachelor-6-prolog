Domains
name,role=symbol
actor = c(name, role)
actors = actor*

Predicates
nondeterm solve
name(actor ,name)
role(actor, role)
nondeterm in(actor, actors)

Clauses
name(c(N,_), N).
role(c(_,D), D).
in(X,[X,_,_,_]).
in(X,[_,X,_,_]).
in(X,[_,_,X,_]).
in(X,[_,_,_,X]).
solve:- in(C1,Actors),name(C1,�������),
in(C2,Actors),name(C2,������),
in(C3,Actors),name(C3,�����),
in(C4,Actors),name(C4,�������),
in(C5,Actors),role(C5,������),
in(C6,Actors),role(C6,������),
in(C7,Actors),role(C7,������_���),
in(C8,Actors),role(C8,�����),
not(role(C1,������)),
not(role(C1,������)),
not(role(C3,������)),
not(role(C3,�����)),
not(role(C2,������)),
not(role(C2,�����)),
not(role(C4,������)),
not(role(C4,������)),
role(C3,������),
not(role(C1,������_���)),
write(Actors).

Goal
solve.