;9. Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...
(defun Fibon (num)
  (if (< 0 num)
      (append (Fibon (- num 1)) (list (Fib num)))
   )
)


(defun Fib (num)
    (cond
        ((eq num 0 ) 0)
        ((eq num 1 ) 1)
        (t
          (+ (Fib (- num 1) ) (Fib (- num 2) ) ) 
         )
    )
)
 
(print ( Fibon 6) ) ;=> (1 1 2 3 5 8) 

