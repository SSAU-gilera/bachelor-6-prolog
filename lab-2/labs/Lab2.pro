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
solve:- in(C1,Actors),name(C1,смирнов),
in(C2,Actors),name(C2,снегов),
in(C3,Actors),name(C3,морев),
in(C4,Actors),name(C4,никитин),
in(C5,Actors),role(C5,гамлет),
in(C6,Actors),role(C6,оттело),
in(C7,Actors),role(C7,король_лир),
in(C8,Actors),role(C8,ромео),
not(role(C1,оттело)),
not(role(C1,гамлет)),
not(role(C3,оттело)),
not(role(C3,ромео)),
not(role(C2,гамлет)),
not(role(C2,ромео)),
not(role(C4,гамлет)),
not(role(C4,оттело)),
role(C3,гамлет),
not(role(C1,король_лир)),
write(Actors).

Goal
solve.