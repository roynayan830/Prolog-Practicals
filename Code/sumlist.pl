gosuml:-
    write('Enter a list: '),
    read(L),
    sumlist(L,R),
    write('Sum of the list '), write(L), write(' is '), write(R), nl.
sumlist([],0).
sumlist([H|T],R):-
    sumlist(T,R1),
    R is H+R1.