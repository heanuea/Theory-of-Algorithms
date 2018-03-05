## **_Task4_**

 Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem,
  you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. 
  
  For example: 
  ```Racket
  > (sublsum (list 1 2 3 4 -5)) '((2 3 -5) (-5 1 4)) 
  > (sublsum (list 1 2 3 4 5)) '()
  ```

### **_Here is a version that uses Combinations and filter the lists but no subset_** 

 ```Racket
#lang racket
 ;This procedure returns trun if some (non-empty) sublist of l sums to 0.
(define (sublsum l)
  ; If there is more than one sublist then return true.
  ; Note the null list always sums to zero but isn't considered a solution.
  (> (length
   ; Filter out all the sublists that don't sum to zero.
   (filter
    zero?
    ; Map all of the combinations of l to a function that sums the elements of a list.
    (map
     (lambda (i) (apply + i))
     (combinations l)))) 1))

; Define a list to test the function.
(define L (list -10 -2 -4 9 5 8 6 1 10 20 3 -5 5 6 10 15 20))

; Call the function.
(sublsum L)

 ```

### **_Here is a version that subsets a list but need to combine the 2_** 

 ```Racket
 #lang racket 



(define (sublsum 1)
  
       (define (sublists lst)
      (if (null? lst)
          '()
          (cons (list(car lst))(sublists (cdr lst)))
         )
    )
      
    (sublists '(1 2 3))
 
 ```

