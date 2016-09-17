#lang racket
;线性递归

;递归计算过程：真的递归
;递归过程：语法上递归（解释起来可能是迭代）

;尾递归的特性使得 Scheme 总能在常量空间内执行迭代过程，即使这一计算是用一个递归过程描述的
;而 C 对任何递归过程的解释，所需要消耗的存储量总是与过程调用的数量成正比
(define (factorial_rec n)
  (if (= n 1)
      1
      (* n (factorial_rec (- n 1)))))
(define (factorial_itr n)
  (define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* product counter)
                 (+ counter 1)
                 max-count)))
  (fact-iter 1 1 n))

(factorial_rec 2645)
(factorial_itr 2645)