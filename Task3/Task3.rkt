#lang racket 

;create a function for left cycle called lcycle 
(define (lcycle l)
     (if (null? l) ;  list = null
      '() ; output null
      (append (cdr l) (list (car l))))) ;  append it to list

;create 2nd fuction for right cycle called rcycle 
(define (rcycle l)
      (if (null? l) ; if list = null then..
      '() ; output null
      (append (cons (last l)(remove-last l))))) 



; remove-last from list
(define (remove-last l)
  (if (null? (cdr l))
        '() ;output null
        (cons (car l) (remove-last (cdr l))))) ; newly allocated list 
  


; Print out results 
(lcycle(list 1 2 3 4 5))

(rcycle(list 1 2 3 4 5)) 

