-- 3) Define a predicate merge(L,K,M) which, given two ordered lists of integers L and K, returns an ordered list M containing all the elements of L and K.

merge([], K, K).
merge(L, [], L).

merge([X|Xs], [Y|Ys], [X|Rest]) :-
    X =< Y,
    merge(Xs, [Y|Ys], Rest).

merge([X|Xs], [Y|Ys], [Y|Rest]) :-
    X > Y,
    merge([X|Xs], Ys, Rest).

