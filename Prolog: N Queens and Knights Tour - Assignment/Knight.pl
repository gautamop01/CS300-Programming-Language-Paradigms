% Helper predicate to generate all possible knight moves
knight_move((X, Y), (XNew, YNew)) :-
    member(XNew, [X - 2, X + 2]),
    member(YNew, [Y - 1, Y + 1]).
knight_move((X, Y), (XNew, YNew)) :-
    member(XNew, [X - 1, X + 1]),
    member(YNew, [Y - 2, Y + 2]).

% Helper predicate to check if a move is valid on an NxN chessboard
valid_move(N, (X, Y)) :-
    X > 0, X =< N,
    Y > 0, Y =< N.

% Helper predicate to check if a move is not repeated in the tour
not_member(_, []).
not_member(X, [Y | Rest]) :-
    X \= Y,
    not_member(X, Rest).

% Main predicate for Knight's Tour
knightsTour(N, Start, Tour) :-
    length(Tour, N * N),
    knights_tour_helper(N, [Start], Tour).

% Helper predicate for backtracking in Knight's

knights_tour_helper(N, [Current | Rest], Tour) :-
    length([Current | Rest], Len),
    Len < N * N,
    knight_move(Current, Next),
    valid_move(N, Next),
    not_member(Next, Rest),
    knights_tour_helper(N, [Next, Current | Rest], Tour).


