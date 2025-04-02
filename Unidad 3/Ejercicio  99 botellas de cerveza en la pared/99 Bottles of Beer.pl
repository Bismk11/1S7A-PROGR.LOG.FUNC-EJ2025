%Regla base: cuando no hay botellas, imprime el final de la canción.
bottle_song(0) :-
    write('No more bottles of beer on the wall, no more bottles of beer.'), nl,
    write('Go to the store and buy some more, 99 bottles of beer on the wall.').

%Regla recursiva: cuando hay más de 0 botellas, imprime la parte correspondiente de la canción.
bottle_song(N) :-
    N > 0,
    write(N), write(' bottles of beer on the wall, '), 
    write(N), write(' bottles of beer.'), nl,
    write('Take one down, pass it around, '), 
    N1 is N - 1,
    write(N1), write(' bottles of beer on the wall.'), nl, nl,
    bottle_song(N1).  % Llamada recursiva para el siguiente número de botellas

%Regla de inicio para ejecutar la canción desde 99 botellas.
start_song :-
    bottle_song(99).
