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
