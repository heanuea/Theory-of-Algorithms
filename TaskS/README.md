## What is Brute Force Algorithm 

In computer science, brute-force search or exhaustive search, also known as generate and test, is a very general problem-solving technique that consists of systematically enumerating all possible candidates for the solution and checking whether each candidate satisfies the problem's statement.



### Task1

1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
    a single positive integer and return true if the number is a prime and false otherwise.
    Call the function decide-prime.
    
 **solution**
```Racket
#lang racket

; setting range for a prime num needs to be more than 1 as 1 is not a prime 
(define range 2) 
(define (decide-prime? n);called function decide-prime 
  
;setting condition 
   (not   (for/or [(d (in-range range n))]=
   ; check if is fully dividable
      (= 0 (remainder n d))))) 
     
; range to 10 
(for [(m (in-range range 10))]
  (display "\n")(display m)(display "= ")
  ; pass current number to fucntion
  (display (decide-prime? m))) 
```


