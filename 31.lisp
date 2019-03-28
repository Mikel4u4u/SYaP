;31. Определите функцию (ПЕРВЫЙ-СОВПАДАЮЩИЙ х у), которая возвращает первый
;элемент, входящий в оба списка х и у, в противном случае NIL.

(defun my-member (atom1 lst)
  (cond ((null lst) nil)
        ((equalp atom1 (car lst)) (cons (car lst) (cdr lst)))
        ((my-member atom1 (cdr lst)))))
    
(defun first-common (l1 l2)
  (cond ((null l1) nil)
        ((my-member (car l1) l2) (car l1))
        (t (first-common (cdr l1) l2))))




;>(print (first-common '(5 6 7 8) '(6 5 3))  )
;>(print (first-common '(6 7 8) '(3 4 5)) )  
;>(print (first-common '(1 2 3) '(1)) )

;5 
;NIL 
;1 
