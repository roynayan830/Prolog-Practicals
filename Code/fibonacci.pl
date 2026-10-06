gofib:-
	write('Enter a number: '),
	read(N),
	fib(N,T),
	write('Fibonacci of '), write(N), write(' is '), write(T), nl.
fib(0,0).
fib(1,1).

fib(N,T):-
	N>1,
	N1 is N-1,
	N2 is N-2,
	fib(N1,T1),
	fib(N2,T2),
	T is T1+T2.
