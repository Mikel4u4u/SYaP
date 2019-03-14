3. Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (lst w r)
  ( ( lambda ( x y ) 
  (cond ((null lst) nil)
        (( eq x w) (cons r (rep y w r)))
        ((listp x) (cons (rep x w r) (rep y w r)))
        (t (cons x (rep y w r))))
             
       )  (car lst) ( cdr lst ) ) 
 
 Test case :

;>( print (rep '(1 2 3 1 1) 1 'a) )
;>( print (rep '((1 2 3) 4 5 6 1) 1 44) )
;>( print (rep '( 1 2 3  ((1 2 3) (1 2 3)) )  1 '( 4 5 ) ) )

;(A 2 3 A A) 
;((44 2 3) 4 5 6 44) 
;((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
