modulo :: Int -> Int -> Bool
modulo n k = mod n k /= 0

f :: Int -> [Int]
f n = [2..n-1]

mapped :: Int -> [Bool]
mapped n = map (modulo n) (f n)

isPrime :: Int -> Bool
isPrime n = and (mapped n) 
