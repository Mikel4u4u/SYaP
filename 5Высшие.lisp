;5. Определите функциональный предикат (НЕКОТОРЫй пред список), который истинен,когда,
;являющейся функциональным аргументом предикат пред истинен хотя бы для одного элемента списка список.

(defun mypred (func  args)
             ( mysearch   (mapcar func args)))

(defun mysearch (lst)
    (cond
       ((eq (car lst) T)  T)
       ((eq (cdr lst) nil)  nil)
       (t (mysearch (cdr lst )))
    )   
)


(print (mypred #' atom '(1 2 3 4) )) ;=> T
(print (mypred #' zerop '(1 2 3 4) )) ;=> NIL 
(print (mypred #' zerop '(1 2 4 0) )) ;=> T 
