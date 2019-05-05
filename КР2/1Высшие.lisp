;gnu clisp 2.49
;Умножение матриц
(defun multmatriz (A B)
 (mapcar
 #'(lambda (row)
   (mapcar
   #'(lambda (col)
     (apply '+ (mapcar '* row col)))
    (apply 'mapcar (cons 'list B))))
  A))


;Сумма матриц
(defun plusmatiz ( lst1 lst2 )
     (cond
         ((null lst1) nil)
         ((null (cdr lst1)) (list (mapcar '+ (car lst1) (car lst2))) )
         (t
        (cons (mapcar '+ (car lst1) (car lst2)) ( plusmatiz  (cdr lst1) (cdr lst2)) )
        )  
    )
    
)
 


( print  (plusmatiz '((1 2 1 ) ( 3 4 5 ) (1 2 1 ))    '((1 2 1 ) ( 3 4 5 ) (1 2 1 ))     ) )
