gomaxl:-
    write('Enter a list: '),
    read(L),
    maxlist(L,M),
    write('Maximum of the list '), write(L), write(' is '), write(M), nl.
maxlist([X],X).
maxlist([H|T],M):-
    maxlist(T,M1),
    M is max(H,M1).