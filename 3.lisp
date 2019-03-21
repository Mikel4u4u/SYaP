3. Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (&key lst  w  r)
    ((lambda ( x y )      
            (cond   
                    ((null lst) nil)
                    (( eq x w) (cons r (rep :lst y  :w w  :r r)))
                    ((listp x) (cons (rep :lst x :w w  :r r) (rep :lst y :w w  :r r)))
                    (t (cons x (rep :lst y :w w  :r r)))))  
    (car lst)
    (cdr lst ))) 
 
 Test case :

;>( print (rep :lst '(1 2 3 1 1) :w 1 :r 'a) )
;>( print (rep :lst '((1 2 3) 4 5 6 1) :w 1 :r 44) )
;>( print (rep :lst '( 1 2 3  ((1 2 3) (1 2 3)) )  :w 1 :r '( 4 5 ) ) )




;(A 2 3 A A) 
;((44 2 3) 4 5 6 44) 
;((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
