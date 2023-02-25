#lang racket

;; SYSC 3101 A Winter 2020 Lab 4

;; Exercise 1

(define (make-upcounter counter)
  (lambda ()
    (set! counter (+ counter 1))
    counter))


;; Exercise 2

(define (make-counter counter)

  (define (count-up)
    (set! counter (+ counter 1))
    counter)

  (define (count-down)
    (if (> counter 0)
        (begin (set! counter (- counter 1))
               counter)
        "Counter is 0"))

  (define (dispatch cmd)
    (cond ((eq? cmd 'inc) count-up)
          ((eq? cmd 'dec) count-down)
          (else (error "Unknown command:" cmd))))

  dispatch)


;; Exercise 3

(define (make-counter-with-let initial-count)

  (let ((counter initial-count))

    (define (count-up)
      (set! counter (+ counter 1))
      counter)

    (define (count-down)
      (if (> counter 0)
          (begin (set! counter (- counter 1))
                 counter)
          "Counter is 0"))

    (define (dispatch cmd)
      (cond ((eq? cmd 'inc) count-up)
            ((eq? cmd 'dec) count-down)
            (else (error "Unknown command:" cmd))))

    dispatch))

;; Exercise 4

(define (make-counter-ex4 initial-count)

  (let ((counter initial-count))

    (define (count-up)
      (set! counter (+ counter 1))
      counter)

    (define (count-down)
      (if (> counter 0)
          (begin (set! counter (- counter 1))
                 counter)
          "Counter is 0"))

    (lambda (cmd)
      (cond ((eq? cmd 'inc) count-up)
            ((eq? cmd 'dec) count-down)
            (else (error "Unknown command:" cmd))))
))
(display "Testing Exercise 4")
(newline)
(define counter4 (make-counter-ex4 0)) 
(display "((counter4 'inc)):")
((counter4 'inc))
(newline)
(display "((counter4 'inc)):")
((counter4 'inc))
(newline)
(display "((counter4 'dec)):")
((counter4 'dec))
(newline)
(display "((counter4 'dec)):")
((counter4 'dec))
(newline)
(display "((counter4 'dec)):")
((counter4 'dec))
(newline)
(newline)

;; Exercise 5

(define (make-counter-ex5 initial-count)

  (let ((counter initial-count))

    (define (count-up)
      (set! counter (+ counter 1))
      counter)

    (define (count-down)
      (if (> counter 0)
          (begin (set! counter (- counter 1))
                 counter)
          "Counter is 0"))
    
    (define (value)
      counter)
    
    (define (reset)
      (set! counter 0))

    (lambda (cmd)
      (cond ((eq? cmd 'inc) count-up)
            ((eq? cmd 'dec) count-down)
            ((eq? cmd 'get) value)
            ((eq? cmd 'reset) reset)
            (else (error "Unknown command:" cmd))))
))
(display "Testing Exercise 5")
(newline)
(define counter5 (make-counter-ex5 0)) 
(display "((counter5 'inc)):")
((counter5 'inc))
(newline)
(display "((counter5 'inc)):")
((counter5 'inc))
(newline)
(display "((counter5 'inc)):")
((counter5 'inc))
(newline)
(display "((counter5 'dec)):")
((counter5 'dec))
(newline)
(display "((counter5 'get)):")
((counter5 'get))
(newline)
(display "((counter5 'reset)):")
((counter5 'reset))
(newline)
(display "((counter5 'get)):")
((counter5 'get))
(newline)
(newline)


;; Exercise 6

(define (make-counter-ex6 initial-count amount)

  (let ((counter initial-count))

    (define (count-up)
      (set! counter (+ counter amount))
      counter)

    (define (count-down)
      (if (> counter 0)
          (begin (set! counter (- counter 1))
                 counter)
          "Counter is 0"))
    
    (define (value)
      counter)
    
    (define (reset)
      (set! counter 0))

    (lambda (cmd)
      (cond ((eq? cmd 'inc) count-up)
            ((eq? cmd 'dec) count-down)
            ((eq? cmd 'get) value)
            ((eq? cmd 'reset) reset)
            (else (error "Unknown command:" cmd))))
))
(display "Testing Exercise 6")
(newline)
(define counter6 (make-counter-ex6 0 5)) 
(display "((counter6 'get)):")
((counter6 'get))
(newline)
(display "((counter6 'inc)):")
((counter6 'inc))
(newline)
(display "((counter6 'inc)):")
((counter6 'inc))
(newline)
(display "((counter6 'dec)):")
((counter6 'dec))
(newline)
(display "((counter6 'inc)):")
((counter6 'inc))
(newline)
(display "((counter6 'reset)):")
((counter6 'reset))
(newline)
(display "((counter6 'get)):")
((counter6 'get))
(newline)
(newline)


;; Exercise 7

(define (make-counter-ex7 initial-count amount)

  (let ((counter initial-count)(high-water-mark 0))

    (define (count-up)
      (set! counter (+ counter amount))
      (if (>= counter high-water-mark)
          (set! high-water-mark counter)
          (= high-water-mark high-water-mark))
      counter)

    (define (count-down)
      (if (> counter 0)
          (begin (set! counter (- counter 1))
                 counter)
          "Counter is 0"))
    
    (define (value)
      counter)
    
    (define (reset)
      (set! counter 0)
      (set! high-water-mark 0))

    (define (max)
      high-water-mark)

    (lambda (cmd)
      (cond ((eq? cmd 'inc) count-up)
            ((eq? cmd 'dec) count-down)
            ((eq? cmd 'get) value)
            ((eq? cmd 'reset) reset)
            ((eq? cmd 'max) max)
            (else (error "Unknown command:" cmd))))
))
(display "Testing Exercise 7")
(newline)
(define counter7 (make-counter-ex7 0 2)) 
(display "((counter7 'inc)):")
((counter7 'inc))
(newline)
(display "((counter7 'inc)):")
((counter7 'inc))
(newline)
(display "((counter7 'max)):")
((counter7 'max))
(newline)
(display "((counter7 'inc)):")
((counter7 'inc))
(newline)
(display "((counter7 'max)):")
((counter7 'max))
(newline)
(display "((counter7 'dec)):")
((counter7 'dec))
(newline)
(display "((counter7 'dec)):")
((counter7 'dec))
(newline)
(display "((counter7 'max)):")
((counter7 'max))
(newline)
(display "((counter7 'reset)):")
((counter7 'reset))
(newline)
(display "((counter7 'max)):")
((counter7 'max))
(newline)
(newline)
