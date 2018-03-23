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

- – The Hamming distance between a and b is 5.

