;12. Определите функцию, заменяющую в исходном списке два подряд идущих
;одинаковых элемента одним.

(defun task (lst)
  ((lambda ( x y )    
        (cond ((null y) lst)
             ((equal x (cadr lst)) (cons x (task (cddr lst))))
             (t (cons x (task y )))))  
  (car lst) 
  (cdr lst )))   

; Test case :

;> ( print   (task '(a  a b b n  n n n)) )
;> ( print   (task '(a   a ( b n ) ( b n )  n n n)) )

;(A B N N) 
;(A (B N) N N) 
