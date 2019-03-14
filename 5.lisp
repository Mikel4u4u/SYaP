3. Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (lst w r)
  (cond ((null lst) nil)
        (( eq (car lst) w) (cons r (rep (cdr lst) w r)))
        ((listp (car lst)) (cons (rep (car lst) w r) (rep (cdr lst) w r)))
        (t (cons (car lst) (rep (cdr lst) w r)))))  
 
 Test case :

;>( print (rep '(1 2 3 1 1) 1 'a) )
;>( print (rep '((1 2 3) 4 5 6 1) 1 44) )
;>( print (rep '( 1 2 3  ((1 2 3) (1 2 3)) )  1 '( 4 5 ) ) )

;>(A 2 3 A A) 
;>((44 2 3) 4 5 6 44) 
;>((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
