;10. Определите функцию, осуществл¤ющую удаление указанного количества последних элементов исходного списка.

(defun len(lst)
    (cond
        ((null lst) 0)
        ((+ 1 (len (cdr lst))))
    ))

(defun sfirst (Lst  difNum)
    (if Lst
        (if (> difNum 0)
            (cons (car Lst) (sfirst (cdr Lst)  (- difNum 1))))
    )
)

(defun dellast (Lst Num)
 (sfirst Lst  (- (len Lst) Num)))



; Test case :

;>( print  (dellast '(1 2 3 4 5) 2 ) )
;>( print  (dellast '(1 2 3 4 5 65 ( q  4) ) 2 ) )
;>( print  (dellast '(1 ) 2 ) )


;(1 2 3) 
;(1 2 3 4 5) 
;NIL 
 
