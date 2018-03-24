#lang racket

(define (sod2 x y z) 
  (if (null? x) 
      '()