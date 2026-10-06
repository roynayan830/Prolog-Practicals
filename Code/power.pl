gopow:-
    write('Enter the base: '),
    read(N),
    write('Enter the exponent: '),
    read(P),
    pow(N,P,A),
    write('Power of '), write(N), write(' to '), write(P), write(' is '), write(A), nl.

pow(_,0,1).

pow(N,P,A):-
	P>0,
	P1 is P-1,
	pow(N,P1,A1),
	A is N*A1.
