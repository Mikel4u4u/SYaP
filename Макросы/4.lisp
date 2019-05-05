;Определите в виде макроса форму (FIF тест отр нуль полож).
(defmacro FIF (test neg zer pos)
  `(let ((ttest ,test) (nneg ,neg) (zzer ,zer) (ppos ,pos))
      (cond ((zerop ttest) zzer)
            ((minusp ttest) nneg)
            (t ppos))))
 
 

(setq x 1 y 2)

(print (FIF (- x y) 'отр  'нуль  'полож));==> отр
 
(print(FIF (- y x) 'отр  'нуль  'полож)) ;==> полож
 
(print(FIF(- x x) 'отр  'нуль  'полож)) ;==> нуль
