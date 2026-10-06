gosum:-
    write('Enter first number: '),
    read(N1),
    write('Enter second number: '),
    read(N2),
    sum(N1,N2,R),
    write('Sum of '), write(N1), write(' and '), write(N2), write(' is '), write(R), nl.

sum(N1,N2,R):-
    R is N1+N2.