12. Определите функцию, заменяющую в исходном списке два подряд идущих
одинаковых элемента одним.

(defun task (lst)
 (cond ((null (cdr lst)) lst)
       ((equal (car lst) (cadr lst)) (cons (car lst) (task (cddr lst))))
       (t (cons (car lst) (task (cdr lst))))))
       
 Test case :
1)
Input : ( print   (task '(a  a b b n  n n n)) )
Otput : (A B N N) 
2)
Input : ( print   (task '(a   a ( b n ) ( b n )  n n n)) )
Otput : (A (B N) N N) 
