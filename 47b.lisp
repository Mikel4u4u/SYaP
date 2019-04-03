;47. Определите функцию УДАЛИТЬ-ВСЕ-СВОЙСТВА, которая удаляет все свойства
;символа.

(defun удалить-все-свойства(x )
  (удалить-все x  (symbol-plist x))
)

(defun удалить-все(x  lst)
    (if lst
        (cons (remprop x (car lst ))   (удалить-все x ( cdr lst )))
     )        
)

(setf ( get 'apple 'color) 'red ) 
(setf ( get 'apple 'size) 'small ) 
(setf ( get 'apple 'weight ) 1 ) 

(print (symbol-plist  'apple )) ; => (WEIGHT 1 SIZE SMALL COLOR RED) 
(удалить-все-свойства   'apple) 
(print (symbol-plist  'apple )) ; =>  NIL
