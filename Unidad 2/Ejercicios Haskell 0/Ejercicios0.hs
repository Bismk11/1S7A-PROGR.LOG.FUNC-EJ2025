-- Bismarck Rivera Zavala 6to Grupo A 

sumarLista :: [Int] -> Int
sumarLista = sum --"sum" función de Haskell, que calcula la suma de los elementos de una lista

factorial :: Int -> Int
factorial 0 = 1 --Factorial de 0 es 1
factorial n = n * factorial (n-1) --Función recursiva, multiplica n por el factorial de n-1

numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [0..n], even x] --Usa una comprensión de listas y filtra los números divisibles por 2

longitudCadena :: String -> Int
longitudCadena = length

reversoLista :: [a] -> [a]
reversoLista = reverse --Función de Haskell invierte una lista

duplicarElementos :: [Int] -> [Int]
duplicarElementos = concatMap (\x -> [x,x]) --Recibe lista de enteros, "concatMap" duplica cada elemento, concatena resultado

filtrarPares :: [Int] -> [Int]
filtrarPares = filter even --"filter" selecciona elementos de una lista que cumplen una condición

fibonacci :: Int -> Int
fibonacci 0 = 0 --Caso base
fibonacci 1 = 1 --Caso base
fibonacci n = fibonacci(n-1)+fibonacci(n-2) --Recursiva, se suman los dos valores anteriores en la secuencia

divisores :: Int -> [Int] --Usa comprensión de listas, genera números que son divisores de n
divisores n = [x|x <- [1..n], n `mod` x == 0]

esPalindromo :: String -> Bool
esPalindromo str = str == reverse str