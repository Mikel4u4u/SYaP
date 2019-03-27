;48.Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который проверяет, обладает ли символ данным свойством.

(defun ИМЕЕТ-СВОЙСТВО(x property)
  (FindProperty property (symbol-plist x))
)

(defun FindProperty(property list)
    (cond
       ((null list) nil)
       ((equal property (car list)) T)
       (t (FindProperty property (cddr list)))
    )
)

(setf ( get 'apple 'color) 'red ) 
(setf ( get 'apple 'size) 'small ) 
(setf ( get 'apple 'weight ) 1 ) 

(print(ИМЕЕТ-СВОЙСТВО 'apple 'color)) ; => T
(print(ИМЕЕТ-СВОЙСТВО 'apple 'size)) ; => T
(print(ИМЕЕТ-СВОЙСТВО 'apple 'length)) ; => NIL
