--Bismarck Rivera Zavala 6to Grupo A

--Ejercicio 5
moduloVector :: [Float] -> Float --Recibe lista float, 
                        --utiliza Teorema de Pitágoras
moduloVector vector = sqrt (sum [x^2 | x <- vector])

main :: IO ()
main = do
    let vector = [5, 12]
    let resultado = moduloVector vector
    putStrLn ("El módulo del vector " ++ show vector ++ " es: " ++ show resultado)