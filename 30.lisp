;30. Запрограммируйте интерпретатор ВЫЧИСЛИ, который преобразует инфиксную
;запись операций в префиксную и возвращает значение выражения. 

(defun вычисли (lst )
    (eval ( pref2inf lst )))

(defun pref2inf (m)
   (cond ((null m) nil)
         ((atom m) m)
         (t (list (pref2inf (cadr m)) (pref2inf (car m) ) (pref2inf (caddr m))))))
    

(print  (вычисли '((-2 + 4 ) *  3 ))) ;=> 6
(print  (вычисли '((-2 + 1 ) * (  3 / 9 ) ))) ;=> -1/3 
