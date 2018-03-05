#lang racket 

(define (sublsum l)
  (for ([e (in-list (combinations l) )])
    (if(= 0 (mySum e))
       (displayln e) '())))



(define (mySum l)
  (if(empty? l) 0
     (for/sum ((i l))
    i)
  1
  ))




;define lists
(define list1(list 1 2 3 4 5))
(define l1st2(list 1 2 3 4 -5))