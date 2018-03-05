## **_Task4_**

 Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem,
  you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. 
  
  For example: 
  ```Racket
  > (sublsum (list 1 2 3 4 -5)) '((2 3 -5) (-5 1 4)) 
  > (sublsum (list 1 2 3 4 5)) '()
  ```

## **_combinations_**

In this problem we had to use a built in function called combinations i jst put a little read me about combinations in Scheme below. 

```
From Wikipedia, the free encyclopedia
This article is about the mathematics of selecting part of a collection. For other uses, see Combination (disambiguation).
"COMBIN" redirects here. For other uses, see Combin (disambiguation).
"nCr" redirects here. For other uses, see NCR (disambiguation).

In mathematics, a combination is a selection of items from a collection, such that (unlike permutations) the order of selection does not matter. For example, given three fruits, say an apple, an orange and a pear, there are three combinations of two that can be drawn from this set: an apple and a pear; an apple and an orange; or a pear and an orange. More formally, a k-combination of a set S is a subset of k distinct elements of S. If the set has n elements, the number of k-combinations is equal to the binomial coefficient

    ( n k ) = n ( n − 1 ) ⋯ ( n − k + 1 ) k ( k − 1 ) ⋯ 1 , {\displaystyle {\binom {n}{k}}={\frac {n(n-1)\dotsb (n-k+1)}{k(k-1)\dotsb 1}},} {\binom {n}{k}}={\frac {n(n-1)\dotsb (n-k+1)}{k(k-1)\dotsb 1}},

which can be written using factorials as n ! k ! ( n − k ) ! {\displaystyle \textstyle {\frac {n!}{k!(n-k)!}}} \textstyle {\frac {n!}{k!(n-k)!}} whenever k ≤ n {\displaystyle k\leq n} k\leq n, and which is zero when k > n {\displaystyle k>n} k>n. The set of all k-combinations of a set S is often denoted by ( S k ) {\displaystyle \textstyle {\binom {S}{k}}} {\displaystyle \textstyle {\binom {S}{k}}}.

Combinations refer to the combination of n things taken k at a time without repetition. To refer to combinations in which repetition is allowed, the terms k-selection,[1] k-multiset,[2] or k-combination with repetition are often used.[3] If, in the above example, it were possible to have two of any one kind of fruit there would be 3 more 2-selections: one with two apples, one with two oranges, and one with two pears.

Although the set of three fruits was small enough to write a complete list of combinations, with large sets this becomes impractical. For example, a poker hand can be described as a 5-combination (k = 5) of cards from a 52 card deck (n = 52). The 5 cards of the hand are all distinct, and the order of cards in the hand does not matter. There are 2,598,960 such combinations, and the chance of drawing any one hand at random is 1 / 2,598,960.
```

Here is a baic example how combinations work with racket..
```Racket
(define sublists
  (match-lambda**
   [(0 _)           '(())]
   [(_ '())         '()]
   [(m (cons x xs)) (append (map (curry cons x) (sublists (- m 1) xs)) 
                            (sublists m xs))]))
 
(define (combinations n m)
  (sublists n (range m)))
```
### Output:
```
> (combinations 3 5)
'((0 1 2)
  (0 1 3)
  (0 1 4)
  (0 2 3)
  (0 2 4)
  (0 3 4)
  (1 2 3)
  (1 2 4)
  (1 3 4)
  (2 3 4))
```
## **_References_**
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29
- https://lists.racket-lang.org/users/archive/2005-June/009010.html
- https://rosettacode.org/wiki/Combinations#Haskell
