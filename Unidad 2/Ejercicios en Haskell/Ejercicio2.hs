--Bismarck Rivera Zavala 6to Grupo A

--Ejercicio 2
aplicarFuncionLista :: (a -> b) -> [a] -> [b] --Recibe función y lista, regresa la nueva lista
aplicarFuncionLista funcion lista = [funcion x | x <- lista]

duplicar :: Int -> Int --Recibe un entero y lo duplica
duplicar x = x * 2

main :: IO ()
main = do
    let resultado = aplicarFuncionLista duplicar [1, 2, 3, 4]
    print resultado