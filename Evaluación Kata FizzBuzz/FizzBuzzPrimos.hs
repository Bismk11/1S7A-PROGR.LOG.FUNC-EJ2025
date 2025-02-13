module Fizzbuzzprimos where

fizzbuzz :: Int -> Bool
fizzbuzz n
    | n <= 1  = False
    | otherwise = null [d | d <- [2..n-1], n `mod` d == 0]

menorDe20 :: Int -> String           
menorDe20 n
    | n > 0 && n < 20 = 
        let answers = words ("uno dos tres cuatro cinco seis siete ocho nueve diez " ++
                        "once doce trece catorce quince dieciséis " ++
                        "diecisiete dieciocho diecinueve")
        in answers !! (n - 1)

dieces :: Int -> String
dieces n
    | n > 1 && n <= 9 =
        let answers = words "veinte treinta cuarenta cincuenta sesenta setenta ochenta noventa"
        in answers !! (n - 2)

cienes :: Int -> String
cienes n 
    | n >= 1 && n <= 9 =
        let answers = words ("ciento doscientos trecientos cuatrocientos quinientos seiscientos " ++
                            "setesientos ochocientos novecientos")
        in answers !! (n - 1)

final :: Int -> String
final n
    | n > 0 && n < 20 = menorDe20 n
    | n `mod` 10 == 0 && n < 100 = dieces (n `div` 10)
    | n < 100 = dieces (n `div` 10) ++ " y " ++ menorDe20 (n `mod` 10)
    | n == 100 = "cien"
    | n < 1000 && n `mod` 100 == 0 = cienes (n `div` 100)
    | n < 1000 = cienes (n `div` 100) ++ " " ++ final (n `mod` 100)
    | n == 1000 = "mil"
    | n <= 10000 && n `mod` 1000 == 0 = menorDe20 (n `div` 1000) ++ " mil"
    | n > 1000 && n < 2000 = "mil " ++ final (n `mod`1000)
    | n > 1999 && n < 10000 = menorDe20 (n `div` 1000) ++ " mil " ++ final (n `mod` 1000)
    | n < 10000 && n `mod` 10000 == 0 = dieces (n `div` 10000) ++ " mil"
    | n < 1000000 && n `mod` 1000 == 0 = final (n `div` 1000) ++ " mil"
    | n < 1000000 = final (n `div` 1000) ++ " mil " ++ final (n `mod` 1000)
    | n == 1000000 = "un millón"
  
main :: IO ()
main = do
    putStrLn "Número entre 1 y 1000000:"
    entrada <- getLine
    let num = read entrada :: Int

    if num > 0 && num <= 1000000
        then if fizzbuzz num
                 then putStrLn "FizzBuzz!"
                 else putStrLn $ final num
        else putStrLn "Número incorrecto"