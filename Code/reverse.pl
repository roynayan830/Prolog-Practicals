conc([],L,L).

conc([H|T],L,[H|R]):-
    conc(T,L,R).

rev([],[]).

rev([H|T],R):-
    rev(T,R1),
    conc(R1,[H],R).