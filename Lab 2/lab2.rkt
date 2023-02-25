#lang racket
;Author: Ali Fahd
;Date: Feb 6, 2020

;Excercise 0
(define (contains? items target)
 (cond
   [(null? items) false]
   [(= (car items) target) true]
   [else (contains? (cdr items) target)]))
(display "Testing contains?")
(newline)
(display "Expected: #t, actual: ")
(contains? '(1 2 3 4 ) 1)
(display "Expected: #t, actual: ")
(contains? '(1 2 3 4 ) 3)
(display "Expected: #t, actual: ")
(contains? '(1 2 3 4 ) 4)
(display "Expected: #f, actual: ")
(contains? '(1 2 3 4 ) 7)
(display "Expected: #f, actual: ")
(contains? '() 1)
(newline)

;Excercise 1
(define (sum-numbers numbers)
 (cond
    [(empty? numbers) 0]
    [else (+ (sum-numbers (cdr numbers)) (car numbers))]))
(display "Testing sum-numbers")
(newline)
(display "Expected: 0, actual: ")
(sum-numbers empty)
(display "Expected: 21, actual: ")
(sum-numbers (list 1 2 3 4 5 6))
(newline)

;Excersice 1 part 2
(define (average numbers)
 (cond
    [(empty? numbers) 0]
    [else (/ (sum-numbers numbers) (length numbers))]))
(display "Testing average")
(newline)
(display "Expected: 3.5, actual: ")
(average (list 1 2 3 4 5 6))
(newline)

;Excercise 2
(define (occurrences numbers n)
 (cond
    [(empty? numbers) 0]
    [(= (car numbers) n) (+ (occurrences (cdr numbers) n) 1)]
    [else (occurrences (cdr numbers) n)]))
(display "Testing occurrences")
(newline)
(display "Expected: 3, actual: ")
(occurrences '(1 3 5 2 7 5 8 9 5) 5)
(display "Expected: 0, actual: ")
(occurrences '(1 3 5 2 7 5 8 9 5) 6)
(display "Expected: 0, actual: ")
(occurrences empty 1)
(newline)

;Excercise 3
(define (convert numbers)
 (cond
    [(empty? numbers) 0]
    [(= (length numbers) 1) (car numbers)]
    [else (+ (* (convert (cdr numbers)) 10) (car numbers))]))
(display "Testing convert")
(newline)
(display "Expected: 0, actual: ")
(convert empty)
(display "Expected: 3, actual: ")
(convert (list 3))
(display "Expected: 543, actual: ")
(convert (list 3 4 5))
(newline)

;Excersice 4
(define (f2c number)
  (*(- number 32) (/ 5 9))
  )
(define (convertFC numbers)
 (cond
    [(empty? numbers) numbers]
    [else (cons (f2c (car numbers)) (convertFC (cdr numbers)))]))
(display "Testing convertFC")
(newline)
(display "Expected: '(), actual: ")
(convertFC empty)
(display "Expected: '(0 100 37.0), actual: ")
(convertFC (list 32 212 98.6))
(newline)

;Excersice 5
(define (eliminate-threshold numbers value)
 (cond
    [(empty? numbers) numbers]
    [(<= (car numbers) value) (cons (car numbers) (eliminate-threshold (cdr numbers) value))]
    [else (eliminate-threshold (cdr numbers) value)]))
(display "Testing eliminate-threshold")
(newline)
(display "Expected: '(1 2 3 4 4 3 2 1), actual: ")
(eliminate-threshold (list 1 2 3 4 5 6 5 4 3 2 1 20) 4)
(display "Expected: '(), actual: ")
(eliminate-threshold (list 1 2 3 4 5 6 5 4 3 2 1 20) 0)
(display "Expected: '(1 2 3 4 5 6 5 4 3 2 1 20), actual: ")
(eliminate-threshold (list 1 2 3 4 5 6 5 4 3 2 1 20) 25)
(newline)