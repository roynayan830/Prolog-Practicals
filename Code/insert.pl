goin:-
    write('Enter a list: '),
    read(L),
    write('Enter the position: '),
    read(N),
    write('Enter the element to insert: '),
    read(I),
    insert_nth(I,N,L,R),
    write('List after inserting '), write(I), write(' at position '), write(N), write(' is '), write(R), nl.
insert_nth(I,1,T,[I|T]):-!.
insert_nth(I,N,[Y|T],[Y|T1]):-
    N1 is N-1,
    insert_nth(I,N1,T,T1).
    