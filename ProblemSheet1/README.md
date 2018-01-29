


## 1. Re-write the following expressions in Racket and evaluate them using a Racket interpreter/compiler.
```Racket
#lang racket

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
```

## 2. define a procedure discount that takes 2 arguments, an items initial price ad a % discount return the new price

```Racket
(define (discount x y)
  (* x (- 1 (/ y 100.0))))
(discount 10 5)
(discount 29.90 50)
```
## 3.Define a function grcomdiv that takes two integers and returns their greatest common divisor.

```Racket
(define (grcomdiv x y)
  (if (= y 0)
      x
      (grcomdiv y (remainder x y))))

(grcomdiv 10 15)
(grcomdiv 64 30)
```
## 4. Write a function called appearances that returns the number of times its first argument appears as a member of its second argument.

```Racket
(define (appearances x y)
  (if (null? y)
      0
      (if (= x (car y))
          (+ 1 (appearances x (cdr y)))
          (appearances x (cdr y)))))

(define l (list 1 2 2 3 4 5))
(appearances 2 l)
```
## 5. Write a procedure inter that takes two lists as arguments. It should return a list containing every element that appears in both lists, exactly once.

```Racket
(define (inter a b)
  (if (null? a)
      '()
      (if (member (car a) b)
          (cons (car a) (inter (cdr a) b))
          (inter (cdr a) b))))

(define c (list 2 3 4 5 6 7 8))
(inter c l)
```

## 6.Write a procedure noatoms that takes a list and returns the number of atoms it contains.

```Racket
(define (noatoms l)
  (if (null? l)
      0
      (+ 1 (noatoms (cdr l)))))

(noatoms l)
```
## 7. Here is a Racket procedure that never finishes its job when n is not 0:

```Racket
(define (forever n)
(if (= n 0)
1
(+ 1 (forever n))))
```
Explain why it doesn’t give any result.


## 8. Write a function called range that takes an integer n and returns a list containing the atoms 1, 2, 3, . . . , n

```Racket
(define (range n)
  (if (= n 0)
      '()
      (cons n (range (- n 1)))))

(range 5)
```