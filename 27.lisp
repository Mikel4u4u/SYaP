;27. Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
;образует новый список (a 1 b 2 ...).

(defun chered (ls1 ls2)
	(cond 
		((null ls1) nil)
		((null ls2) nil)
		(
			t
			(cons 
				(car ls1)
				(cons (car ls2) (chered (cdr ls1) (cdr ls2)))
			)
		)
	)
)
;>(print ( chered '(a ) '(1 )))
;>(print ( chered '(a b c d) '(1 2 3 4)))

;(A 1) 
;(A 1 B 2 C 3 D 4) 
