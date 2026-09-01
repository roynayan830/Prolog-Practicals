student(riya).
student(karan).
teaches(meera, prolog).
likes(riya, programming).
eligible_for_lab(X) :-
    student(X),
    likes(X, programming).