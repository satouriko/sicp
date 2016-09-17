;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname glimpse) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
486
(+ 137 349)
(- 1000 334)
(* 5 9)
(/ 10 5)
(+ 2.7 10)

(+ 21 35 12 7)
(* 25 4 12)
(+ (* 3 5) (- 10 6))

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define size 2)
size
(* 5 size)

(define (sqare x) (* x x))
(sqare 21)

(cond (#t 2645))

; cond:
; 相当于　switch
; 必须有真值
; else:
; 相当于 default
(define (abs1 x)
  (cond ((< x 0) (- x))
        (else x)))
(abs1 -1)

; if:
; 相当于 if-else
(define (abs2 x)
  (if (< x 0)
      (- x)
      x))

; 短路求值
; and or not
(define (xiaoyudengyu x y)
  (not (< x y)))


