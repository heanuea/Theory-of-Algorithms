#lang racket

(define n 0)
; define function = 2 lists 
(define (hamming-distance l t)
; if statement to see if not equal to 1  
  (if (not (pair? l))
; returns the difference 
      n 
      ; if the same keep calling 
      (if (= (car l) (car t)) (hamming-distance (cdr l) (cdr t)) 
      ;else we add the distance by 1 
      (+ 1 (hamming-distance (cdr l) (cdr t)))))) 


;print out the distance 
(displayln '(Here is the distance between 2 list))
(hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0))

