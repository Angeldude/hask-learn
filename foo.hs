modulo :: Int -> Int -> Bool
modulo n k = if mod n k == 0 then False else True

f :: Int -> [Int]
f n = [2..n-1]


mapped :: Int -> [Bool]
mapped n = map (modulo n) (f n)

isPrime :: Int -> Bool
isPrime n = all id (mapped n) 
