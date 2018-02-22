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

## **_Example_**
For instance, starting with n = 12, one gets the sequence 12, 6, 3, 10, 5, 16, 8, 4, 2, 1.


 **solution**
```Racket

#lang racket



(display "Problem 2 \n")
(define (collatz-list n);define function
  (if (= n 1);check if n = 1
      
      (cons n true)
      
   (cons n(if (integer? (/ n 2))

          (collatz-list (/ n 2));recursion 
          (collatz-list (+ 1 (* n 3)))))
      )
  )

 ;Print out list for testing
(display "\nResults: ")
(collatz-list 5)
(display "\nResults: ")
(collatz-list 9)
(display "\nResults: ")
(collatz-list 2) 

```


## **_References_**

- https://en.wikipedia.org/wiki/Collatz_conjecture#Examples
- https://stackoverflow.com/questions/19285547/collatz-function-in-scheme
- https://gist.github.com/gscacco/783ab3a9856eee6263509a248c8ffead
