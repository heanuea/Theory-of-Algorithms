## **_Task2_**
The Collatz conjecture, also known as the 3n + 1 problem, the Syracuse problem, the
Hailstone problem, Kakutani’s problem, Hasse’s algorithm and Ulam’s problem, is tantalizingly
simple to state and thus has seduced mathematical minds since the 1930’s. Since then, many
articles about it and its generalizations have appeared but a complete solution still evades
the mathematical community. we allow the Collatz sequence to lead us to dividing the integers
into “pure” and “impure” numbers,
and present a theorem-schema which allows us to generate a set of theorems, each theorem
characterizing a different set of numbers as impure. The Collatz conjecture is true if and only
if it is true on the set of pure numbers.
The Collatz sequence can be stated in several ways. 

![alt tag](https://github.com/heanuea/Theory-of-Algorithms/blob/master/Task2/Task2pix.png)

 **solution**
```Racket
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
```


