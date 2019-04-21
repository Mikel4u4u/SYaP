;13. Определите функцию, которая возвращает в качестве значения свое определение (лямбда-выражение).
(defun quine ()
    
  ((LAMBDA (X) (LIST X (LIST 'QUOTE X))) '(LAMBDA (X) (LIST X (LIST 'QUOTE X)))) 
    
)
 
(print (quine) ) ;=> ((LAMBDA (X) (LIST X (LIST 'QUOTE X))) '(LAMBDA (X) (LIST X (LIST 'QUOTE X)))) 
