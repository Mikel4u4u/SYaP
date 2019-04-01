;47. Определите функцию УДАЛИТЬ-ВСЕ-СВОЙСТВА, которая удаляет все свойства
;символа.

(defun удалить-все-свойства (a)
    (setf   (symbol-plist a) nil ))


(setf ( get 'apple 'color) 'red ) 
(setf ( get 'apple 'size) 'small ) 
(setf ( get 'apple 'weight ) 1 ) 

(print (symbol-plist  'apple )) ; => (WEIGHT 1 SIZE SMALL COLOR RED) 
(удалить-все-свойства   'apple) 
(print (symbol-plist  'apple )) ; =>  NIL
