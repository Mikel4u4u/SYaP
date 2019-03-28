;3. Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.

(defun rep (&key lst  what  task)
    ((lambda ( x y )      
            (cond   
                    ((null lst) nil)
                    (( eq x what) (cons task (rep :lst y  :what what  :task task)))
                    ((listp x) (cons (rep :lst x :what what  :task task) (rep :lst y :what what  :task task)))
                    (t (cons x (rep :lst y :what what  :task task)))))  
    (car lst)
    (cdr lst ))) 
 
 ;Test case :

;>( print (rep :lst '(1 2 3 1 1) :what 1 :task 'a) )
;>( print (rep :lst '((1 2 3) 4 5 6 1) :what 1 :task 44) )
;>( print (rep :lst '( 1 2 3  ((1 2 3) (1 2 3)) )  :what 1 :task '( 4 5 ) ) )




;(A 2 3 A A) 
;((44 2 3) 4 5 6 44) 
;((4 5) 2 3 (((4 5) 2 3) ((4 5) 2 3))) 
