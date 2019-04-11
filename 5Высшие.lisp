
(defun mnogofun (w x)    
  (mapcar #' (lambda (f) (funcall f x)) w))

(print (mnogofun '(atom zerop) '0 ))  
