--7. Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождения заданного значения другим.

f :: Integer -> Integer -> [Integer] -> [Integer] 

f z x [ ] = [ ]
f z x (a:t) = if a == z
             then
            [x] ++ f z x  t 
             else
            [a] ++ f z x  t
main = print $ f 2 3 [2 , 2 , 3 , 4 , 5 ]
--[3,3,3,4,5]
