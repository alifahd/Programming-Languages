#lang racket

;;(require (planet dyoo/simply-scheme))
;;(provide (all-defined-out))

;; Racket calculator -- evaluate simple expressions

; The read-eval-print loop:

(define (calc)
  (display "calc: ")
  (flush-output)
  (print (calc-eval (read)))
  (newline)
  (calc))

; Evaluate an expression:

(define (calc-eval exp)
  (cond ((number? exp) exp)
        ((list? exp) (calc-apply (car exp) (map calc-eval (cdr exp))))
        (else (error "Calc: bad expression: " exp))))

; Apply a function to arguments:

(define (calc-apply fn args)
  (cond ((eq? fn '+) (foldr + 0 args))
        ((eq? fn '-) (cond ((null? args) (error "Calc: no args to -"))
                           ((= (length args) 1) (- (car args)))
                           (else (- (car args) (foldr + 0 (cdr args))))))
        ((eq? fn '*) (foldr * 1 args))
        ((eq? fn '/) (cond ((null? args) (error "Calc: no args to /"))
                           ((= (length args) 1) (/ (car args)))
                           (else (/ (car args) (foldr * 1 (cdr args))))))
        ((eq? fn 'abs) (cond ((= (length args) 1) (abs (car args)))
                             (else (error "Calc: abs requires exactly 1 arg"))))
        ((eq? fn '**) (cond ((= (length args) 2) (expt (car args) (foldr + 0 (cdr args))))
                             (else (error "Calc: ** requires exactly 2 arg"))))
        ((eq? fn 'max) (cond ((null? args) (error "Calc: max requires 1 or more args"))
                             (else (foldr max (car args) (cdr args)))))
        (else (error "Calc: bad operator:" fn))))