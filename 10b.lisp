10. ќпределите функцию, осуществл€ющую удаление указанного количества последних элементов исходного списка.
(defun len(lst)(cond((null lst) 0)((+ 1 (len (cdr lst))))))(defun len-num(lst num)( set 'q    ( - ( len lst) num    ) )  (my-butlast lst q )    )(defun my-butlast(lst q)(cond(( <= q 0 ) NIL                )((< (len lst) q) NIL)((= (len lst) q) NIL)((> (len lst) q) (cons  (car lst)   ( my-butlast (cdr lst) (- q  1 )) )   )))

 Test case :

;>( print  (len-num '(1 2 3 4 5) 2 ) )
;>( print  (len-num '(1 2 3 4 5 65 ( q  4) ) 2 ) )
;>( print  (len-num '(1 ) 2 ) )


;(1 2 3) 
;(1 2 3 4 5) 
;NIL 
 
