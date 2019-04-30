;8. В заданном списке списков найти самый длинный подсписок. Использовать
;отображающие и применяющие функционалы.

;Длина списка
(defun len(lst)
    (cond
        ((null lst) 0)
        ((+ 1 (len (cdr lst))))
))

(defun maxpodsp(lst)

    ;Поиск подсписка с  максимальной диной
     ((lambda (y) (mapcan #'(lambda (x) (if 
                                         ( eq  ( len x ) y )  x  )) 
                             lst ))  
      
      
      (apply #' max (mapcar   #' len lst ))    )
    
 )

;TEST

(print ( maxpodsp '( (2 )   ( 2 5 6 7)  (  1 2  3) ) ) ) ;=> (2 5 6 7) 
