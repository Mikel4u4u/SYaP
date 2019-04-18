;11. Определите фукнционал МНОГОФУН, который использует функции, являющиеся аргументами, по следующей схеме:
;(МНОГОФУН ’(f g ... h) x) ⇔ (LIST (f x) (g x) ... (h x)).


(defun mnogofun (w x)
  (mapcar #' (lambda (f) (funcall f x)) w))
(print (mnogofun '(sin cos zerop  atom) '0 )) ;=> (0 1 T T) 
