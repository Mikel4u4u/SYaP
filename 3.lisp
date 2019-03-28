;3. Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (&key lst  first  second)
    ((lambda ( x y )      
            (cond   
                    ((null lst) nil)
                    (( eq x first) (cons second (rep :lst y  :first first  :second second)))
                    ((listp x) (cons (rep :lst x :first first  :second second) (rep :lst y :first first  :second second)))
                    (t (cons x (rep :lst y :first first  :r r)))))  
    (car lst)
    (cdr lst ))) 
 
 ;Test case :

;>( print (rep :lst '(1 2 3 1 1) :first 1 :second 'a) )
;>( print (rep :lst '((1 2 3) 4 5 6 1) :first 1 :second 44) )
;>( print (rep :lst '( 1 2 3  ((1 2 3) (1 2 3)) )  :first 1 :second '( 4 5 ) ) )




;(A 2 3 A A) 
;((44 2 3) 4 5 6 44) 
;((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
