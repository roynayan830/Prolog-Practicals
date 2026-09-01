male(raj).
male(veer).
male(jai).
male(arjun).
male(karan).

female(laxmi).
female(zara).
female(malini).
female(vaanya).

parent(raj,veer).
parent(raj,jai).
parent(laxmi,veer).
parent(laxmi,jai).
parent(veer,arjun).
parent(veer,vaanya).
parent(zara,arjun).
parent(zara,vaanya).
parent(jai,karan).
parent(malini,karan).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).

sibling(X,Y):-
    parent(Z,X),
    parent(Z,Y),
    X \= Y.

child(X,Y):-
    parent(Y,X).

uncle_aunt(X,Y):-
    sibling(X,Z),
    parent(Z,Y).

father(X,Y):-
    parent(X,Y),
    male(X).

mother(X,Y):-
    parent(X,Y),
    female(X).

grandfather(X,Y):-
    grandparent(X,Y),
    male(X).

grandmother(X,Y):-
    grandparent(X,Y),
    female(X).

uncle(X,Y):-
    uncle_aunt(X,Y),
    male(X).

aunt(X,Y):-
    uncle_aunt(X,Y),
    female(X).

cousin(X,Y):-
    uncle_aunt(Z,Y),
    parent(Z,X).

brother(X,Y):-
    sibling(X,Y),
    male(X).

sister(X,Y):-
    sibling(X,Y),
    female(X).

son(X,Y):-
    child(X,Y),
    male(X).

daughter(X,Y):-
    child(X,Y),
    female(X).