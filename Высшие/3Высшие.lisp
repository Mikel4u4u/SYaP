;3. Определите функционал (APL-APPLY f x), который применяет каждую функцию fi списка
;(f1 f2 ... fn) к соответствующему элементу списка x = (x1 x2 ... xn)
;и возвращает список, сформированный из результатов.

(defun APL-APPLY (w x) 
 ( if w
    (cons   (funcall (car w)(car x))  (APL-APPLY (cdr w)(cdr x)))
 )
)

(print (APL-APPLY  '(sin cos sin cos ) '(0 1 1 0)  )) ;=> (0 0.5403023 0.84147096 1) 
