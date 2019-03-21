;5.Определите функцию , которая увеличивет элеметы исходного списка на еденицу .

(defun plus1 ( lst )
          ((lambda ( x y ) 
               (cond ((null lst) nil)
                    ((atom x)   (cons  ( + x 1 )( plus1 y)))
                    ((listp x)  (cons  ( plus1 x )( plus1 y))))            
          (car lst)
          (cdr lst)      
 ))
 
 ;Test case :

;>( print  (plus1 '( 1 2 3 4 0 ) ) )
;>( print  (plus1 '( ( 1 2 ) 3 4 0 ) ) )
;>( print (plus1 '( 1 2 3  ((1 -2 3) (1 2 3)) )   ) )

;(2 3 4 5 1) 
;((2 3) 4 5 1) 
;(2 3 4 ((2 -1 4) (2 3 4))) 
