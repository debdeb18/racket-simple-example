#lang racket

(define (sum_of_two a b c)
  (let ([x (max1 a b)]
        [y (max2 a b c)])
    (+ x y)))

(define (max1 a b)
  (if (> a b) a b))

(define (max2 a b c)
  (if (> a b)
      (if (> b c) b c)
      (if (> a c) a c))
      )

(sum_of_two 100 10 1)
(sum_of_two 50 100 30)