;Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.
(defmacro repeat (e until p)
`(if ,p nil
  (progn ,e (repeat ,e until ,p))))


(let ((i 0))
       (repeat 
            (progn (print i) (incf i) )                           
       until              
            (> i 3))
)

;0 
;1 
;2 
;3
