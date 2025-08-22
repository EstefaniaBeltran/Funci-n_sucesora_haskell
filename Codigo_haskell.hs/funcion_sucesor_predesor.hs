-- Función sucesor: suma 1
sucesor :: Int -> Int
sucesor n = n + 1

-- Función predecesor: resta 1
predecesor :: Int -> Int
predecesor n = n - 1

-- Suma usando sucesor
suma :: Int -> Int -> Int
suma a 0 = a
suma a b = suma (sucesor a) (b - 1)

-- Resta usando predecesor
resta :: Int -> Int -> Int
resta c 0 = c
resta c d = resta (predecesor c) (d - 1)

-- Multiplicación usando suma
multi :: Int -> Int -> Int
multi _ 0 = 0
multi e f = suma e (multi e (f - 1))

-- División usando resta y sucesor
divi :: Int -> Int -> Int
divi _ 0 = error "División por cero no definida"
divi g h
  | g < h     = 0
  | otherwise = sucesor (divi (resta g h) h)

-- Suma de números reales
addReal :: Float -> Float -> Float
addReal x y = x + y

-- Función principal para probar las operaciones
main :: IO ()
main = do
  -- Suma
  putStrLn "Ingrese el primer número a sumar:"
  a <- readLn
  putStrLn "Ingrese el segundo número a sumar:"
  b <- readLn
  putStrLn (show a ++ " + " ++ show b ++ " = " ++ show (suma a b))

  -- Resta
  putStrLn "Ingrese el primer número a restar:"
  c <- readLn
  putStrLn "Ingrese el segundo número a restar:"
  d <- readLn
  putStrLn (show c ++ " - " ++ show d ++ " = " ++ show (resta c d))

  -- Multiplicación
  putStrLn "Ingrese el primer número a multiplicar:"
  e <- readLn
  putStrLn "Ingrese el segundo número a multiplicar:"
  f <- readLn
  putStrLn (show e ++ " * " ++ show f ++ " = " ++ show (multi e f))

  -- División
  putStrLn "Ingrese el dividendo:"
  g <- readLn
  putStrLn "Ingrese el divisor:"
  h <- readLn
  putStrLn (show g ++ " / " ++ show h ++ " = " ++ show (divi g h))

  -- Suma de números reales
  putStrLn "Ingrese el primer número real a sumar:"
  r1 <- readLn
  putStrLn "Ingrese el segundo número real a sumar :"
  r2 <- readLn
  putStrLn (show r1 ++ " + " ++ show r2 ++ " = " ++ show (addReal r1 r2))
