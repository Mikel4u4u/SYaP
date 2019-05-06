; Определите лисповскую форму (IF условие p q) в виде макроса.

(defmacro MYIF (условие р q)
    `(if ,условие ,р ,q))
    
    
    
(setq x '(a b c))
(print (MYIF (atom x) 'yes 'no)) ;NO
(print (MYIF (listp x) 'yes 'no)) ;YES
