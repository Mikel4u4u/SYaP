;1. Определите FUNCALL через функционал APPLY.

(defun myfuncall (f &rest args)
              (apply f args))

 
(print (myfuncall #' + 1 2 3 4)) ;=> 10 
