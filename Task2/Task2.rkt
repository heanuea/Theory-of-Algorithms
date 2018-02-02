#lang racket






(define (collatz '())

  ;function 
  (define (collatz-list n counter)

  ;condition 
    (if (<=  n 1)
        1
        (if (even? n)
            (collatz-list (/ n 2) (+ counter 1))
            
            (collatz-list (+ (* n 3) 1) (+ counter 1))))))


(odd 4)
(even 4)
(collatz-list 10)

;-----------------------------------------------

            (define (collatz n)
  (cond ((= n 1) 1)
        ((> n 1) (collatz_h n))))

(define (collatz-list n)
   (if (even? n)
      (collatz (/ n 2))
         (collatz-list (+ (* 3 n) 1))))