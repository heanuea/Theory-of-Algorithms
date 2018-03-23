## **_Task6_**

Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. For example:

```
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) 
5
```
### **_Hamming Distance explained_**

```
(listA 1 0 1 0 1 1 1 0) 
(listB 1 1 1 1 0 0 0 0)
--------------------------
       0 1 0 1 1 1 1 0
```
- The Hamming distnace between two words of equal length is
the number of places in which they differ.

- The Hamming distance between a and b is 5.

### **_Solution_**

```
#lang racket

(define n 0)
; define function = 2 lists 
(define (hamming-distance l t)
; if statement to see if not equal to 1  
  (if (not (pair? l))
; returns the difference 
      n 
      ; if the same keep calling 
      (if (= (car l) (car t)) (hamming-distance (cdr l) (cdr t)) 
      ;else we add the distance by 1 
      (+ 1 (hamming-distance (cdr l) (cdr t)))))) 


;print out the distance 
(displayln '(Here is the distance between 2 list))
(hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0))



```

### **_References_**
- https://wiki.math.uwaterloo.ca/statwiki/index.php?title=hamming_Distance_Metric_Learning
- https://github.com/theory-of-algorithms/example-scheme#4-functionsrkt
- https://www.youtube.com/watch?v=v_GmF1xJzGo

### **__**
### **__**
### **__**