## **_Task5_**

Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:

```
> (hamming-weight (list 1 0 1 0 1 1 1 0)) 
5
```

### **_Solution_**

```
#lang racket

(define n 0)

(define (hamming-weight l)
  (if (null? l);if list returns nothing 
   n

   (if (= 1 (car l))(+ 1 (hamming-weight (cdr l)));checking to see if its a one 
      (hamming-weight (cdr l))))); if true add again (recursion)

;display the number of 1 s in list 
(displayln '(Here is the results below :))
(hamming-weight (list 1 0 0 1 1 1 1 1))
(hamming-weight (list 1 0 0 0 0 0 0 1))
(hamming-weight (list 1 1 1 1 1 1 1 1))
(hamming-weight (list 0 1 0 1 0 1 1 0))
(hamming-weight (list 0 0 0 0 0 0 0 0))
```

### **_Hamming-Weight_**

The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. For the most typical case, a string of bits, this is the number of 1's in the string, or the digit sum of the binary representation of a given number and the ℓ₁ norm of a bit vector. In this binary case, it is also called the population count,[1] popcount, sideways sum,[2] or bit summation.[3]

### **_References_**
- https://bisqwit.iki.fi/source/misc/bitcounting/
- https://en.wikipedia.org/wiki/Hamming_weight
-
