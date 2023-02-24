--Collatz.hs

hailstone :: Integer -> Integer
hailstone n
  | even n = n `div` 2
  | otherwise      = 3 * n + 1
 
hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

main = do
    input <- getLine
    let inNum = read input :: Integer
    print(hailstoneSeq inNum)