#lang racket

;define function with 3 lists 
(define (sod2 x y z)
    (cond [(null? x) '()] ;checking the list til null
        [(= (modulo (+ (car x)(car y)(car z)) 2) 0) (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))] ; add 
        [else (cons 1 (sod2 (cdr x)(cdr y)(cdr z)))] ; else statement
    )
)

(display "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n  =>  ")
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))