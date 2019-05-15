;Определите в виде макроса форму (FIF тест отр нуль полож).
(defmacro FIF (test neg zer pos)
  `(cond ((zerop ,ttest) ,zzer)
            ((minusp ,ttest) ,nneg)
            (t ,ppos)))
 
 

(setq x 1 y 2)

(print (FIF (- x y) 'отр  'ноль  'полож));==> отр
 
(print(FIF (- y x) 'отр  'ноль  'полож)) ;==> полож
 
(print(FIF(- x x) 'отр  'ноль  'полож)) ;==> ноль
