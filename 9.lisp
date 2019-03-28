;9. Определите фенкцию , разделяющую исходный список на два подсписка . В первый из них  должны попасть элементы с нечетными номерами , во 
;второй - элементы с четными номерами .
(defun chetnechet ( lst )
    (if lst
        (list
            (cons (car lst)  (car (chetnechet (cddr lst))))
            (if (cadr lst)
                (cons (cadr lst)   (cadr (chetnechet (cddr lst))))
            )
        ) 
    ) 
)
	
; Test case :

;>( print (chetnechet '(1 2    )))
;>( print (chetnechet '(1 2 3 4 5 6   )))
;>( print (chetnechet '(1 2 3 4 5  6 7    )))

;((1) (2)) 
;((1 3 5) (2 4 6)) 
;((1 3 5 7) (2 4 6)) 
