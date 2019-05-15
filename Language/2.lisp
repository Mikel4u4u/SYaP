(defun хим_реакция (lst1 lst2 )
    
    (list 
      lst1 '+ lst2
      '->
      (list  (car lst1) (cadr lst2)  (caddr lst2 ) (cadddr lst1 ))
      '+
      (list  (car lst2) (cadr lst1)  (caddr lst1 ) (cadddr lst2 ))
    )
    
)   

(defun определить (lst1 )

	(cond 
		((eq (caddr lst1) 'OH )  'csheloch )
		((eq (car lst1) 'H )  'kislota )
		(t 'soli)
	)
)   

 


(defmacro Химия (&rest args)
	`(let
		(
			(operation (car ',args))
			(реагенты (cdr ',args))
			(val Nil)
		)
				
		(cond
		
			((eq operation 'хим_реакция) (setq val (хим_реакция (car реагенты )(caddr реагенты ))))			
			((eq operation 'определить) (setq val (определить  (car реагенты )  )))			                    			
		)
		(print val)		
	)    
)
