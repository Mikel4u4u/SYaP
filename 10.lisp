10. Определите функцию, осуществляющую удаление указанного количества последних элементов исходного списка

(defun blast (w n)
 (butlast w n))

 Test case :

;>( print  (blast '(1 2 3 4 5) 2 ) )
;>( print  (blast '(1 2 3 4 5 65 ( q  4) ) 2 ) )
;>( print  (blast '(1 ) 2 ) )


;(1 2 3) 
;(1 2 3 4 5) 
;NIL 
 