% Entradas
entrada(antipasto).
entrada(sopa).
entrada(quesos).

% Platos principales
carne(milanesa).
carne(steak).
pescado(pejerrey).
pescado(salmón).

% Postres
postre(flan).
postre(tarta).

% Calorías de los platos
calorias(antipasto, 100).
calorias(sopa, 150).
calorias(quesos, 200).
calorias(milanesa, 350).
calorias(steak, 400).
calorias(pejerrey, 250).
calorias(salmón, 300).
calorias(flan, 200).
calorias(tarta, 250).

% Plato principal (es carne o pescado)
plato_principal(P) :- carne(P).
plato_principal(P) :- pescado(P).

% Comida completa (entrada, plato principal, postre)
comida(E, P, D) :- entrada(E), plato_principal(P), postre(D).

% Valor calórico total de una comida
valor(E, P, D, V) :- calorias(E, X), calorias(P, Y), calorias(D, Z), V is X + Y + Z.

% Comida equilibrada (menos de 800 calorías)
comida_equilibrada(E, P, D) :- valor(E, P, D, V), V =< 800.