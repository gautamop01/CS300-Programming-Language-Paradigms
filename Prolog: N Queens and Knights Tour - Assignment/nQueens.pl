% Name - Gautam Kumar Mahar 
% Roll. N. 2103114 


% nQueens.pl

% Main predicate to solve the N-Queens problem
nQueens(N, L) :-
    % Generate a list of rows from 1 to N
    range(1, N, Rows),
    % Permute the rows to get different configurations
    permutation(Rows, L),
    % Check if the queens are safe in the current configuration
    safeQueens(L).

% Predicate to check if a list of queens is safe
safeQueens([]).
safeQueens([H|T]) :- 
    % Check if the current queen is not attacking any other queen
    no_attack(H, T, 1),
    % Recursively check the rest of the queens
    safeQueens(T).

% Predicate to check if a queen at position Q1 is not attacking another queen at position Q2
no_attack(_, [], _).
no_attack(Q1, [Q2|T], D) :-
    % Check if the queens are not in the same column or diagonals
    Q1 =\= Q2 + D,
    Q1 =\= Q2 - D,
    % Move to the next diagonal
    D1 is D + 1,
    % Recursively check the rest of the queens
    no_attack(Q1, T, D1).

% Predicate to generate a range of numbers from M to N
range(M, N, [M|L]) :- 
    M < N, 
    M1 is M + 1, 
    range(M1, N, L).
range(N, N, [N]).

% Predicate to generate permutations of a list
permutation([], []).
permutation(L, [X|R]) :- 
    select(X, L, L1), 
    permutation(L1, R).

