gorev:-
	write('Enter a list: '),
	read(L),
	rev(L,R),
	write('Reverse of '), write(L), write(' is '), write(R), nl.
conc([],L,L).

conc([H|T],L,[H|R]):-
    conc(T,L,R).

rev([],[]).

rev([H|T],R):-
    rev(T,R1),
    conc(R1,[H],R).