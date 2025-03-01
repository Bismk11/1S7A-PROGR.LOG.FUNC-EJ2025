--Bismarck Rivera Zavala 6to Grupo A

--Ejercicio 4
import Data.Char (toUpper)

calificacion :: Float -> String --Permite asignar una calificación de acuerdo a la calificación
calificacion nota
  | nota >= 95 = "Excelente"
  | nota >= 85 = "Notable"
  | nota >= 75 = "Bueno"
  | nota >= 70 = "Suficiente"
  | otherwise  = "Desempeño insuficiente"

calificaciones :: [(String, Float)] -> [(String, String)] --Recibe lista tuplas, pasa a mayùsculas
calificaciones asignaturas = [(map toUpper asignatura, calificacion nota) | (asignatura, nota) <- asignaturas]

main :: IO ()
main = do
    let asignaturas = [("Programacion", 92), ("Bases de Datos", 70), ("Redes", 78)]
    let resultado = calificaciones asignaturas
    print resultado