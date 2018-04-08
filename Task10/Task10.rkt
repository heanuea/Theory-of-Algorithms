#lang racket

(define (square x)
  (* x x )
)
   
; lstq function
(define (lstq x y)
  (if(null? x)
  0
  ;https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket
  (+ (square(- (car x) (car y))) (lstq (cdr x) (cdr y)))
  )                                                   
)  


;define lists 
(define x (list 4.5 5.1 6.2 7.8))
(define y (list 1.1 -0.1 6.1 3.8))

;display result
(lstq x y)
