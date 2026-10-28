goevod :-
    write('Enter the list:'),
    read(L),nl,
    evenlen(L).
evenlen([]) :-
 write('The list has even length').
evenlen([_]) :-
 write('The list has odd length').
evenlen([_|T]) :-
 oddlen(T).
oddlen([_|T]) :-
 evenlen(T).
