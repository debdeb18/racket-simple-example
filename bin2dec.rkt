#lang racket
(define (bin2dec n)
  (if (= n 0) 0
      (+ (modulo n 10)
         (* 2 (bin2dec (quotient n 10)))
         )
      )
  )