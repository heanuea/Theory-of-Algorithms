
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
