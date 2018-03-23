## **_Task7_**
Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. For example:

```
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 0 0 1 0 1 1 1)
```
### **_Majority funtion(Maj)_**
Majority function (sometimes quorum function) is a threshold function that produces a 1 if and only if the majority of the inputs are 1. Otherwise, the output is 0. This function is only defined for three or more odd inputs. The majority function can be found in various applications such as adders, subtractors, hash functions, and Muller C-element.


### **_Solution_**
```
#lang racket
;Alan Heanue

; define function 
(define (maj x y z)
  ;x = null you have reached end of list 
  (if (null? x)
     ; 
      '()
      ; conditon to see where two or more
      ;of x, y and z contain 1’s, and 0 otherwise
      (cond 
        ((= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
        ((= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
        ;= otherwise 
        (else (cons (car y) (maj (cdr x) (cdr y) (cdr z))))
        )))

;print results
(displayln '(MAJ results :))
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

```
### **_References_**
- https://en.wikichip.org/wiki/boolean_algebra/majority_function
- https://en.wikipedia.org/wiki/Majority_function
- 

### **__**