--2. Реализовать на языке Haskell функцию нахождения максимального элемента списка
mymaximum :: (Ord a) => [a] -> a
mymaximum [x]     =  x
mymaximum (x:xs)  =  max x (mymaximum xs)


                       
main = do 

print $ mymaximum  [1 , 2 , 3 , 4]
--4
