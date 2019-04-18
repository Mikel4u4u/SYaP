;9. Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...
(let ((curr 1) (prev 0))
  (defun next-fib  nil (let ((a curr)) (setq curr (+ curr prev) prev a)))
  (defun reset-fib nil (setq curr 1 prev 0))) 
 
(next-fib)
 
==> 1
(next-fib)
 
==> 1
(next-fib)
 
==> 2
(next-fib)
 
==> 3
(next-fib)
 
==> 5
(next-fib)
 
==> 8
(next-fib)
 
==> 13

(defun generator (&optional(a 0))
    (let
         ((numb a))
     (lambda () (setq numb (+ numb 1)))
     )
    )
(defun task1 ()
   (if (> (random 10) 5 ) (print (list (funcall next-number1))) (print (funcall next-number2)) )


)
(setq  next-number1 (generator))
(setq next-number2 (generator))

( task1)
( task1)
