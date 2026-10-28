godel:-
    write('Enter a list: '),
    read(L),
    write('Enter the position of the element to delete: '),
    read(N),
    delete_nth(N,L,R),
    write('List after deleting element at position '), write(N), write(' is '), write(R), nl.
delete_nth(1,[_|T],T):-!.
delete_nth(N,[H|T],[H|T1]):-
    N1 is N-1,
    delete_nth(N1,T,T1).