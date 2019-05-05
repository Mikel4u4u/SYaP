;1.Определите макрос, который возвращает свой вызов.

(defmacro self (&rest arg)
 `(quote (self ,@arg)))
 

 
(print (self 1 2 3))  ;==> (self 1 2 3)
 
