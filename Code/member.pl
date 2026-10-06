gomem:-
    write('Enter a element to search: '),
    read(X),
    write('Enter a list: '),
    read(L),
    memb(X,L),
    write('Element '), write(X), write(' is in the list '), write(L), nl.
memb(X,[X|_]).
memb(X,[_|T]):-
    memb(X,T).