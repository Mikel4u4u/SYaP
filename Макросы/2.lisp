;Определите макрос (POP стек), который читает из стека верхний элемент и
;меняет значение переменной стека.

(defmacro Mypop (stack)
    `(prog1 (car ,stack)
        (setq ,stack (cdr ,stack))))
        
        
(setq stack '(1 2 3 4))
(print (Mypop stack))
(print stack)


;1 
;(2 3 4) 
