#lang racket
(define (fast-expt b n)
  (define (even? n)
  (= (remainder n 2) 0))
  (define (square n) (* n n))
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(fast-expt 2 10)
