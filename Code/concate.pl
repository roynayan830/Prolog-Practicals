goconc:-
    write('Enter first list: '),
    read(L1),
    write('Enter second list: '),
    read(L2),
    conc(L1,L2,R),
    write('Concatenation of '), write(L1), write(' and '), write(L2), write(' is '), write(R), nl.
conc([],L,L).

conc([H|T],L,[H|R]):-
    conc(T,L,R).