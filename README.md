
To see Problem and Solutions go to the Wiki or select this link [Wiki](https://github.com/heanuea/Theory-of-Algorithms/wiki/Problem-Sheet-1)
## **_About Me_**

My name is Alan Heanue I am a 4th year software development Studying in the Galway-Mayo Intitute of Technology
This is one of 5 modules i am Working on this semester it focuses mainly on Theory of Algorithms.  

# **_RACKET_**

![alt tag](https://avatars0.githubusercontent.com/u/232371?s=200&v=4)


## **__An Overview of Racket__**

Racket is a general purpose programming language derived from Lisp. It is referred to as a "programmable programming language" 
because its built-in macro system is so powerful that it allows a programmer to redefine everything about the language itself.
For this reason, Racket is often used to design and implement custom programming languages for specific project needs.

Racket was originally developed as part of the PLT ("Programming Language Team") project by computer scientist Matthias Felleisen in the 1995.
His intention was to create a language which would help novice programmers learn more about the potential of computers.


## **_Hello world Example_**

**Hello world Program**

```Racket

; This is comment it starts wit a semi colon 

#lang racket/base
"Hello, World!"

```
## **_Functional Programming_**
here is a link to a bit of Functional Programming 

https://ianmcloughlin.github.io/2017/10/30/functional-programming.html


## **_DrRacket IDE_**
DrRacket (formerly DrScheme) is widely used among introductory Computer Science courses that teach Scheme or Racket and is lauded for its simplicity
and appeal to beginner programmers. The IDE was originally built for use with the TeachScheme! project (now ProgramByDesign), an outreach effort 
Northeastern University and a number of affiliated universities for attracting high school students to computer science courses at the college level.

The editor provides source highlighting for syntax and run-time errors, parenthesis matching, a debugger and an algebraic stepper.
Its student-friendly features include support for multiple "language levels" (Beginning Student, Intermediate Student and so on).
It also has integrated library support, and sophisticated analysis tools for advanced programmers.
In addition, module-oriented programming is supported with the module browser, a contour view, integrated testing and coverage measurements, and refactoring support.
It provides integrated, context-sensitive access to an extensive hyper-linked help system named "Help Desk".

DrRacket is available for Windows (95 and up), Mac OS X, Unix, and Linux with the X Window System and programs behave similarly on all these platforms.


# **_Problem Sheets_**
I have a print out of problems with the answers on a WIKI page follow links own below

**Problem Sheet 1**
- https://github.com/heanuea/Theory-of-Algorithms/wiki/Problem-Sheet-1



# **_Programming Tasks_**

### Task1

1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
    a single positive integer and return true if the number is a prime and false otherwise.
    Call the function decide-prime.
    
 **solution**
```Racket
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
```

### Task2

2. Write, from scratch, a function in Racket that takes a positive integer n0 as input
    and returns a list by recursively applying the following operation, starting with the
    input number.
    ni+1 =
    (
    3ni + 1 if ni
    is odd
    ni ÷ 2 otherwise
    End the recursion when (or if) the number becomes 1. Call the function collatz-list.
    So, collatz-list should return a list whose first element is n0, the second element
    is n1, and so on. For example:

```Racket
    > (collatz-list 5)
    '(5 16 8 4 2 1)
    > (collatz-list 9)
    '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
    > (collatz-list 2)
    '(2 1)
```

**solution**


### **_References_**
- https://en.wikipedia.org/wiki/Racket_(programming_language)
- https://ianmcloughlin.github.io/theoryofalgorithms
- https://github.com/theory-of-algorithms/example-scheme
- https://ianmcloughlin.github.io/2017/10/30/functional-programming.html
