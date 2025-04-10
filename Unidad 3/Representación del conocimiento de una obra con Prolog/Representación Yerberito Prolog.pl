% Bismarck Rivera Zavala

% Nombres de las plantas, nombre común
planta(prodigiosa).
planta(pirul).
planta(pulsatilla).
planta(quebracho).
planta(quina).

% Nombres científicos de las plantas
nombre_cientifico(prodigiosa, 'Coleosanthus squarrosus').
nombre_cientifico(pirul, 'Schinus molle').
nombre_cientifico(pulsatilla, 'Anemore pulsatilla').
nombre_cientifico(quebracho, 'Lysiloma auritum').
nombre_cientifico(quina, 'Chinchona calisaya').

% Formas de usar o aplicar las plantas
forma_uso(prodigiosa, 'Te con sal').
forma_uso(pirul, 'Jarabe').
forma_uso(pulsatilla, 'Te o aplicacion directa').
forma_uso(quebracho, 'Agua de corteza').
forma_uso(quina, 'Te o vino ya preparado').

% Enfermedades que trata cada planta
enfermedades(prodigiosa, [disenteria, diarreas, 'cirrosis hepatica', ictericia, 'colicos biliosos']).
enfermedades(pirul, ['dificultad para orinar', gonorrea]).
enfermedades(pulsatilla, ['herpes rebeldes', 'tos ferina', 'enfermedades venereas', 'jaquecas neuronales']).
enfermedades(quebracho, ['inflamaciones intestinales', diarreas, flujo, 'afecciones del rinon', 'lavado de heridas']).
enfermedades(quina, ['tos ferina', asma, 'colico nervioso', tetano, epilepsia, eclampsia]).



% Regla para obtener la forma de uso de una planta
forma_de_uso(Planta, Forma) :-
    write('La forma adecuada para usar la planta "'), write(Planta), write('" es:'),
    forma_uso(Planta, Forma).

% Regla para obtener el tratamiento de una enfermedad
tratamiento(Enfermedad, Planta, Forma) :-
    write('Para tratar la enfermedad "'), write(Enfermedad), write('" se recomienda:'),
    enfermedades(Planta, ListaEnfermedades),
    member(Enfermedad, ListaEnfermedades),
    forma_uso(Planta, Forma).

% Regla para mostrar todas las enfermedades que una planta puede curar
mostrar_enfermedades(Planta) :-
    enfermedades(Planta, ListaEnfermedades),
    member(Enfermedad, ListaEnfermedades),
    write('Puede curar: '), write(Enfermedad), nl.  % Muestra la enfermedad

% Regla para obtener todas las plantas que curan una enfermedad
plantas_que_tratan(Enfermedad, Planta) :-
    enfermedades(Planta, ListaEnfermedades),
    member(Enfermedad, ListaEnfermedades).

% Regla para contar las enfermedades que puede curar una planta
cantidad_enfermedades(Planta, Cantidad) :-
    enfermedades(Planta, ListaEnfermedades),
    length(ListaEnfermedades, Cantidad).

% Regla para obtener todas las plantas que curan enfermedades digestivas
plantas_digestivas(Planta) :-
    enfermedades(Planta, ListaEnfermedades),
    (member(diarreas, ListaEnfermedades); member(colitis, ListaEnfermedades); member(afecciones_del_rion, ListaEnfermedades)).

% Regla para verificar si una planta se utiliza como "jarabe"
planta_con_jarabe(Planta) :-
    forma_uso(Planta, 'Jarabe').

% Regla para mostrar toda la información de una planta
informacion_planta(Planta) :-
    planta(Planta),
    nombre_cientifico(Planta, NombreCientifico),
    forma_uso(Planta, Forma),
    enfermedades(Planta, ListaEnfermedades),
    write('Planta: '), write(Planta), nl,
    write('Nombre Cientifico: '), write(NombreCientifico), nl,
    write('Forma de uso: '), write(Forma), nl,
    write('Enfermedades que trata: '), nl,
    mostrar_enfermedades(ListaEnfermedades).
% Regla auxiliar para mostrar enfermedades de una lista
mostrar_enfermedades([]).
mostrar_enfermedades([Enfermedad | Resto]) :-
    write('- '), write(Enfermedad), nl,
    mostrar_enfermedades(Resto).