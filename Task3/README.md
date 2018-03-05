
## **_Task3_**
   Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.
For example:
```Racket
#lang racket 

;create a function for left cycle called lcycle 
(define (lcycle l)
     (if (null? l) ;  list = null
      '() ; output null
      (append (cdr l) (list (car l))))) ;  append it to list

;create 2nd fuction for right cycle called rcycle 
(define (rcycle l)
      (if (null? l) ; if list = null then..
      '() ; output null
      (append (cons (last l)(remove-last l))))) 



; remove-last from list
(define (remove-last l)
  (if (null? (cdr l))
        '() ;output null
        (cons (car l) (remove-last (cdr l))))) ; newly allocated list 
  


; Print out results 
(lcycle(list 1 2 3 4 5))

(rcycle(list 1 2 3 4 5)) 


```

## **_Problem_**
So we see in this problem we have 3 functions one to move element to the left of the list and one to the an element to the right. 
With the right(rcycle) we had to move the element to the right but also had to remove the element (remove-last).
With the left all we had to do is move a 1 place to the left and put that element to the end wasnt as difficult as the the right. 


## **_References_**

- https://stackoverflow.com/questions/29425944/racket-accumulator-list-function
- https://docs.racket-lang.org/reference/pairs.html
- https://docs.racket-lang.org/guide/Lists__Iteration__and_Recursion.html