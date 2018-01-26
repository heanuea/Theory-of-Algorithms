#lang racket

; setting range for a prime num needs to be more than 1 
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