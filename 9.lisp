;9. Определите фенкцию , разделяющую исходный список на два подсписка . В первый из них  должны попасть элементы с нечетными номерами , во 
;второй - элементы с четными номерами .
(defun task (lst &optional (p nil) (n nil))
	((lambda ( x y  )    
		(cond       
			((null (cdr lst))  ( list x  n  ))
			((null (cddr lst)) ( list x  y  )) 
			( t 
			( task (cddr lst) x  y ))))          
			(cons ( car lst )  p )  (cons (cadr lst) n)  ))
	
; Test case :

;>( print (task '(1 2    )) )
;>( print (task '(1 2 3 4 5 6   )) )
;>( print (task '(1 2 3 4 5  ( 6 7 )   )) )

;((1) (2))  
;((5 3 1) (6 4 2)) 
;((5 3 1) ((6 7) 4 2)) 
