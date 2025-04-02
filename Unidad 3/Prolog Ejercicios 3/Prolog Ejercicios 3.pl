%Ejercicio 1:
%Definición de costos de viaje y alojamiento 
costo_transporte(paris, 500). 
costo_transporte(londres, 600). 
costo_transporte(nueva_york, 700).

costo_alojamiento(paris, hotel, 100).
costo_alojamiento(paris, hostal, 50).
costo_alojamiento(londres, hotel, 120).
costo_alojamiento(londres, hostal, 60).
costo_alojamiento(nueva_york, hotel, 150).
costo_alojamiento(nueva_york, hostal, 80).

%Regla para calcular el costo total del viaje
costo_total(Viaje, Alojamiento, Dias, CostoTotal) :-
costo_transporte(Viaje, CostoTransporte),
costo_alojamiento(Viaje, Alojamiento, CostoPorDia),
costoAlojamiento is Dias * CostoPorDia,
costoTotal is CostoTransporte + CostoAlojamiento.

%Ejercicio 2:
%Definición de días por mes
dias_del_mes(enero, 31).
dias_del_mes(febrero, 28).
dias_del_mes(marzo, 31).
dias_del_mes(abril, 30).
dias_del_mes(mayo, 31).
dias_del_mes(junio, 30).
dias_del_mes(julio, 31).
dias_del_mes(agosto, 31).
dias_del_mes(septiembre, 30).
dias_del_mes(octubre, 31).
dias_del_mes(noviembre, 30).
dias_del_mes(diciembre, 31).

%Regla para validar el día del mes
dia_valido(Dia, Mes) :-
dias_del_mes(Mes, MaxDias),
Dia > 0, Dia =< MaxDias.

%Regla para saber el signo zodiacal
signo(Dia, enero, capricornio) :- Dia =< 19.
signo(Dia, enero, acuario) :- Dia > 19.
signo(Dia, febrero, acuario) :- Dia =< 18.
signo(Dia, febrero, piscis) :- Dia > 18.

%Ejercicio 3:
%Base sobre enfermedades y síntomas
sintoma(gripe, fiebre).
sintoma(gripe, tos).
sintoma(gripe, dolor_cabeza).
sintoma(covid, fiebre).
sintoma(covid, tos).
sintoma(covid, perdida_olfato).
sintoma(alergia, estornudos).
sintoma(alergia, ojos_llorosos).

%Regla para diagnosticar una enfermedad según síntomas
diagnostico(Enfermedad, Sintoma) :- sintoma(Enfermedad, Sintoma).
