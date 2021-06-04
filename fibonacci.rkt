#lang racket
(define (fibonacci n)
  (if (<= n 2)
      (if (= n 0) 0
          1)
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(fibonacci 10)