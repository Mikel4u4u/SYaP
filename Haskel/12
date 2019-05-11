--12. Реали�оват� на ��ыке Haskell функци� ПЕРЕСЕЧЕНИЕ, формиру�щу� пересечение двух мно�еств.
intersect  :: Eq a => [a] -> [a] -> [a]
intersect  =  intersectBy (==)

intersectBy  :: (a -> a -> Bool) -> [a] -> [a] -> [a]
intersectBy eq xs ys  =  [x | x <- xs, any (eq x) ys]



main = print $ intersect [1 , 2 , 4 ] [8 , 2 , 7 ]
--[2]
