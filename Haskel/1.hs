-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

f :: [Integer] -> Integer


f (x) = foldl1 (+)  x

main = print $ f [1 , 2 , 3 , 4 , 5 , 6 ]

-- 21
