--module MyLib (someFunc) where

--someFunc :: IO ()
--someFunc = putStrLn "someFunc"

module FizzBuzz where

ifThenElse :: Bool -> a -> a -> a
ifThenElse cond thenVal elseVal =
    case cond of
        True -> thenVal
        False -> elseVal   

fizzbuzz :: Int -> String
fizzbuzz n
    | n `mod` 15 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Fizz!"
    | n `mod` 5 == 0 = "Buzz!"
    | otherwise = number n

lessThan20 :: Int -> String           
lessThan20 n
    | n > 0 && n < 20 = 
        let answers = words ("one! two! three! four! five! six! seven! eight! nine! ten! " ++
                        "eleven! twelve! thirteen! fourteen! fifteen! sixteen! " ++
                        "seventeen! eighteen! nineteen!")
        in answers !! (n - 1)

tens :: Int -> String
tens n 
    | n > 1 && n <= 9 =
        let answers = words "twenty thirty forty fifty sixty seventy eighty ninety"
        in answers !! (n - 2)

number :: Int -> String
number n
    | n > 0 && n < 20 = lessThan20 n
    | n `mod` 10 == 0 && n < 100 = tens (n `div` 10)
    | n < 100 = tens (n `div` 10) ++ " " ++ lessThan20 (n `mod` 10)
    | n == 100 = "one hundred"
  
main :: IO ()
main = do
    putStrLn "Número entre 1 y 100:"
    entrada <- getLine
    let num = read entrada :: Int
    if num > 0 && num <= 100
        then putStrLn $ fizzbuzz num
        else putStrLn "Número incorrecto"