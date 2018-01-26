; Rewrite in racket
;(a) (3 × (5 + (10 ÷ 5)))
(* 3 (+ 5(/ 10 5)))

;(b) (2 + 3 + 4 + 5)
(+ 2 3 4 5)

;(c) (1 + (5 + (2 + (10 ÷ 3))))
(+ 1 (+ 5 (+ 2 (/ 10 3))))

;(d) (1 + (5 + (2 + (10 ÷ 3.0))))
(+ 1 ( + 5 (+ 2 (/ 10 3.0))))

;(e) (3 + 5) × (10 ÷ 2)
(* (+ 3 5) (/ 10 2))

;(f) (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3))))
(+ (* (+ 3 5) (/ 10 2)) (+ 1 (+ 5 (+ 2 (/ 10 3)))))

; define a procedure discount that takes 2 arguments, an items initial price ad a % discount
; return the new price
(define (discount x y)
  (* x (- 1 (/ y 100.0))))
(discount 10 5)
(discount 29.90 50)

; Define a function grcomdiv that takes two integers and returns their greatest common
;divisor
(define (grcomdiv x y)
  (if (= y 0)
      x
      (grcomdiv y (remainder x y))))

(grcomdiv 10 15)
(grcomdiv 64 30)

; Write a function called appearances that returns the number of times its first argument
; appears as a member of its second argument
(define (appearances x y)
  (if (null? y)
      0
      (if (= x (car y))
          (+ 1 (appearances x (cdr y)))
          (appearances x (cdr y)))))

(define l (list 1 2 2 3 4 5))
(appearances 2 l)

; Write a procedure inter that takes two lists as arguments. It should return a list
; containing every element that appears in both lists, exactly once.
(define (inter a b)
  (if (null? a)
      '()
      (if (member (car a) b)
          (cons (car a) (inter (cdr a) b))
          (inter (cdr a) b))))

(define c (list 2 3 4 5 6 7 8))
(inter c l)

; Write a procedure noatoms that takes a list and returns the number of atoms it contains.
(define (noatoms l)
  (if (null? l)
      0
      (+ 1 (noatoms (cdr l)))))

(noatoms l)

; Write a function called range that takes an integer n and returns a list containing the
; atoms 1, 2, 3, . . . , n
(define (range n)
  (if (= n 0)
      '()
      (cons n (range (- n 1)))))

(range 5)
      