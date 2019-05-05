;2.Генератор совершенных чисел
(defun sd (n m r)
           (cond ((= m 1) (+ r 1))
                 ((zerop (mod n m)) (sd n (- m 1) (+ m r)))
                 ((sd n (- m 1) r))
               ))
 

(let ((curr 1) )   
  (defun next-fib nil    
         (loop 
             (incf curr )     
             (if ( =  (* curr 2) (sd curr curr 0))
                 (return curr ))
          )  
    )              
) 
 
 
(print (next-fib))
(print (next-fib))
(print (next-fib))


;6 
;28 
;496 


