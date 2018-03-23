
#lang racket
;Alan Heanue

; define function 
(define (maj x y z)
  ;x = null you have reached end of list 
  (if (null? x)
     ; 
      '()
      ; conditon to see where two or more
      ;of x, y and z contain 1’s, and 0 otherwise
      (cond 
        ((= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
        ((= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
        ;= otherwise 
        (else (cons (car y) (maj (cdr x) (cdr y) (cdr z))))
        )))

;print results
(displayln '(MAJ results :))
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
