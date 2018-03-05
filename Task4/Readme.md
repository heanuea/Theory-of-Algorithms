## **_Task4_**

 Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem,
  you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. 
  
  For example: 
  ```Racket
  > (sublsum (list 1 2 3 4 -5)) '((2 3 -5) (-5 1 4)) 
  > (sublsum (list 1 2 3 4 5)) '()
  ```



 ```Racket

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

