-- a) sumList(L, N): Holds true if N is the sum of all elements in list L.

sumList([], 0).
sumList([X|Xs], N) :-
    sumList(Xs, N1),
    N is N1 + X.

-- b) gcd(M, N, X): Holds true if X is the greatest common divisor of M and N.


gcd(M, 0, M).
gcd(M, N, X) :-
    M1 is M mod N,
    gcd(N, M1, X).

-- c) secondlast(L, X): Holds true if X is the second-to-last element of list L.


secondlast([X, _], X).
secondlast([_|T], X) :-
    secondlast(T, X).


-- d) dupli(L1, L2): Holds true if L2 is obtained from L1 by duplicating all elements.


dupli([], []).
dupli([X|Xs], [X, X|Ys]) :-
    dupli(Xs, Ys).

-- e) element_at(X, L, K): Holds true if X is the K'th element of list L.


element_at(X, [X|_], 1).
element_at(X, [_|T], K) :-
    K > 1,
    K1 is K - 1,
    element_at(X, T, K1).


-- f) compress(L1, L2): Holds true if L2 is obtained from L1 by compressing repeated occurrences of elements into a single copy of the element.


compress([], []).
compress([X], [X]).
compress([X, X|Xs], Ys) :-
    compress([X|Xs], Ys).
compress([X, Y|Xs], [X|Ys]) :-
    X \= Y,
    compress([Y|Xs], Ys).

-- g) subset(L, K): Holds true if list K is a subset of list L.


subset([], []).
subset([H|T], [H|K]) :-
    subset(T, K).
subset(L, [_|K]) :-
    subset(L, K).

-- h) prefixk(P, K, L): Holds true when the list P is the K-length prefix of the list L.


prefixk(P, K, L) :-
    append(P, _, L),
    length(P, K).

-- i) reverse(L, K): Holds true if K is the reverse of list L.


reverse([], []).
reverse([X|Xs], Ys) :-
    reverse(Xs, Zs),
    append(Zs, [X], Ys).

-- j) is_palindrome(L): Holds true if L is a palindrome list.


is_palindrome(L) :-
    reverse(L, L).
You can use these predicates in Prolog to perform various operations on lists.





