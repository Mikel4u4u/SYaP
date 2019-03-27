;10. Определите функцию, осуществл¤ющую удаление указанного количества последних элементов исходного списка.

(defun len(lst)
    (cond
        ((null lst) 0)
        ((+ 1 (len (cdr lst))))
    ))

(defun F (L N C)
    (if L
        (if (> C 0)
            (cons (car L) (F (cdr L) N (- C 1))))
    )
)

(defun dellast (L N)
 (F L N (- (len L) N)))



; Test case :

;>( print  (dellast '(1 2 3 4 5) 2 ) )
;>( print  (dellast '(1 2 3 4 5 65 ( q  4) ) 2 ) )
;>( print  (dellast '(1 ) 2 ) )


;(1 2 3) 
;(1 2 3 4 5) 
;NIL 
 
