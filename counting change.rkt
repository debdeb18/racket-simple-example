#lang racket
;counting changes
;1) case for making total_amount without the largest kind-of-coin,
;2) case for making (total_amount - largest kind-of-coin) with all (kind-of-coins)

(define (counting_change amount coins)
  (if (or (negative? amount) (empty? coins)) 0 ;if user's input is invalid
     (if(= amount 0) 1 ;end of recursion
        (+ (counting_change amount (cdr coins))
           (counting_change (- amount (car coins)) coins)))
     ))

(counting_change 100 '(100 50 10))