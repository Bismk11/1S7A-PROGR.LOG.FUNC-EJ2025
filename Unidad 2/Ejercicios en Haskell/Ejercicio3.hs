--Bismarck Rivera Zavala 6to Grupo A

--Ejercicio 3
palabrasConLongitud :: String -> [(String, Int)] --Recibe frase y la hace una lista de tuplas
palabrasConLongitud frase = [(palabra, length palabra) | palabra <- words frase]

main :: IO ()
main = do
    let frase = "Este es otro ejercicio"
    let resultado = palabrasConLongitud frase
    print resultado