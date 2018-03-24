## **_Task8_**

Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise. For example:

```
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 0 1 0 0 1 1)
```

## **_solution_**
```
#lang racket
;Alan Heanue

;define function
(define (chse x y z)
  (if (null? y) ; exit statement if y is null we've reached the end of the list
      
      '() ; return
      ;do condition for the problem y for x whereever 1 is and elements of Z 
      (cond
        ((= 1 (car x)) (cons (car y)(chse (cdr x) (cdr y) (cdr z))))
        (else (cons (car z)(chse (cdr x) (cdr y) (cdr z)))))))


(displayln '(here is outcome for chse))
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
```