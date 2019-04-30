;9. Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...
(let ((curr 1) (prev 0))
  (defun next-fib  nil 
     
      (let 
       ((a curr))
       (setq prev1 prev)
       (setq curr (+ curr prev) prev a) 
       (setq curr1 prev1)
       )
  )
) 
 
(print (next-fib))
(print (next-fib))
(print (next-fib))
(print (next-fib))
(print (next-fib))
(print (next-fib))
(print (next-fib))

;0 
;1 
;1 
;2 
;3 
;5 
;8 
