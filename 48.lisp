;48.Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который проверяет, обладает ли символ данным свойством.

(defun Искать-свойства(property list)
    (cond
       ((null list) nil)
       ((equal property (car list)) T)
       (t (Искать-свойства property (cddr list)))
    )
)

(defun ИМЕЕТ-СВОЙСТВО(x property)
  (Искать-свойства property (symbol-plist x))
)


(setf ( get 'apple 'color) 'red ) 
(setf ( get 'apple 'size) 'small ) 
(setf ( get 'apple 'weight ) 1 ) 

(print(ИМЕЕТ-СВОЙСТВО 'apple 'color)) ; => T
(print(ИМЕЕТ-СВОЙСТВО 'apple 'size)) ; => T
(print(ИМЕЕТ-СВОЙСТВО 'apple 'length)) ; => NIL
