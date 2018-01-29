#lang racket






(define (collatz )

  ;function 
  (define (collatz-list n counter)

  ;condition 
    (if (<=  n 1)
        1
        (if (even? n)
            (collatz-list (/ n 2) (+ counter 1))
            
            (collatz-list (+ (* n 3) 1) (+ counter 1))))))