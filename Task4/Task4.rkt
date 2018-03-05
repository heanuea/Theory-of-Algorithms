#lang racket 
;Alan Heanue
;https://github.com/heanuea/Theory-of-Algorithms/blob/master/Task4/Readme.md

(define (sublsum l)
  ; Map all of the combinations of l to a function that sums the elements of a list.
  (for ([e (in-list (combinations l) )])
    (if(= 0 (mySum e))
       (displayln e) '())))



(define (mySum l)
  ;checks to see if list is empty 
  (if(not(null? l));
  (for/sum ((i l)) i)1 ))



;define lists
;define lists to tet the function 
;in output type list1 , list2 etc 
(define list1(list 1 2 3 4 5))
(displayln '(List 1))(sublsum list1)
(display "new list: \n")
(display " \n\n")

(define list2(list 1 2 3 4 -5))
(displayln '(List 2))(sublsum list2)
(display " \n\n")
(display "new list: \n")
(define list3(list 1 2 3 4 6 7 9 -5))
(display " \n\n")
(displayln '(List 3))(sublsum list2)
(display " \n\n")
(display "new list: \n")

(define list4(list 1 2 3 0 -5))
(displayln '(List 4))(sublsum list4)
(display " \n\n")
(display " \n\n")

