--5. Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых
--элемента одним
removeOdd :: [Integer] -> [Integer]
removeOdd [] = []
removeOdd (a:b:xs) = if a == b
                 then
                 b: (removeOdd xs )
                 else
                 a:b:(removeOdd xs )


                       
main = do 


print $ removeOdd  [1 , 1 , 3 , 3 , 6, 6, 6, 7]   --[1,3,6,6,7]
