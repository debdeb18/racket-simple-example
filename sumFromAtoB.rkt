#lang racket
(define (sum n s)
  (if (< n s)
     (if (= n s) n
         (+ s (sum n (- s 1)))
      )
     "invalid"
  ))