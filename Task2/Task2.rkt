#lang racket


(define (collatz-list n)
  (if (even? n)
      (/ n 2)
      (+ (* 3 n) 1)))
 
(define (collatz-range m)
  (for-each (lambda (n) (collatz-list n))
            (stream->list (in-range 5 m))))
 
(collatz-list 5)
(collatz-list 9)
(collatz-list 2) 