#lang racket
;Excersice 4
(define (build-naturals x)
  (build-list x (lambda (x) x)))
(define (build-rationals x)
  (build-list x (lambda (x) (/ 1 (+ x 1)))))
(define (build-evens x)
  (build-list x (lambda (x) (* x 2))))

;Excersice 5
(define (cubic a b c) (lambda (x)
                        (+(*  x x x)
                          (* a x x)
                          (* b x)
                          c)))

;Excersice 6
(define (twice x) (lambda (y) (x(x y))))
(define (square x) (* x x))