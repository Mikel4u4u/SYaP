;8. В заданном списке списков найти самый длинный подсписок. Использовать
;отображающие и применяющие функционалы.

;Длина списка
(defun len(lst)
    (cond
        ((null lst) 0)
        ((+ 1 (len (cdr lst))))
))

(defun maxpodsp(lst)
   ;Максимальная дина подсписка
   (set   'maxlen  (apply #' max (mapcar   #' len lst )))
    
    ;Поиск подсписка с  максимальной диной
   (mapcan #'(lambda (x) (if ( eq  ( len x ) maxlen )  x  )) lst )
    
 )

;TEST

(print ( maxpodsp '( (2 )   ( 2 5 6 7)  (  1 2  3) ) ) ) ;=> (2 5 6 7) 
