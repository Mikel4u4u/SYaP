

;gnu clisp 2.49
;Сформировать список разностей соседних элементов в последовательности квадратов натуральных чисел .
;Убедиться что эта последовательность представляет собой список нечетных чисел .

;Гллавная функция
(defun main (num)
    (raznost (squlst num))
)

;Проверка нечетности разности соседних элементов
(defun raznost ( lst )
    ( cond    
        ((null (cdr lst) ) T )    
        ((oddp (- (cadr lst) (car lst )))  (raznost ( cdr lst ))) 
    ) 
)

;Список квадратов натуральных чисел
(defun squlst(num)
  (if (< 0 num)
      (append (squlst (- num 1)) (list (* num num)))))


(print (main 6)) ;=>T
(print  ( raznost '( 1 3 9 ))) ;=>NIL
