gomax:-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    max(X,Y,M),
    write('Maximum of '), write(X), write(' and '), write(Y), write(' is '), write(M), nl.
max(X,Y,M):-
    X >= Y,
    M is X.

max(X,Y,M):-
    Y > X,
    M is Y.