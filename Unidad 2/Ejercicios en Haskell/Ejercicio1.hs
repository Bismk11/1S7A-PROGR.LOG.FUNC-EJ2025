--Bismarck Rivera Zavala 6to Grupo A

--Ejercicio 1
precioDescuento :: Float -> Float -> Float --Primero recibe el descuento, luego el precio
precioDescuento descuento precio = precio - (precio * descuento / 100)

precioIVA :: Float -> Float --Recibe nada más el precio, el iva es .16
precioIVA precio = precio + (precio * 0.16)

aplicarFuncion :: [(String, Float)] -> Float -> (Float -> Float -> Float) -> [(String, Float)] --Recibe lista
                    --de tuplas, el descuento y la función, usa lista por comprensión y así recorre cada tupla
aplicarFuncion cesta descuento aplicador = [(producto, aplicador descuento precio) | (producto, precio) <- cesta]

main :: IO ()
main = do
    let cesta = [("Producto1", 100), ("Producto2", 200), ("Producto3", 300)]
    let porcentajeDescuento = 10

    putStrLn "Precios con descuento:"
    let cestaConDescuento = aplicarFuncion cesta porcentajeDescuento precioDescuento
    print cestaConDescuento

    putStrLn "\nPrecios con IVA:"
    let cestaConIVA = [(producto, precioIVA precio) | (producto, precio) <- cesta]
    print cestaConIVA