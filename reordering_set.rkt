#lang racket
;unordered set to ordered set
;'(97531) ---> '(13579)

(define (reorder S)
  (if (null? S) null
      (if (null? (cdr S)) S
          (cons (find_smallest S (car S))
                (reorder (remove S (find_smallest S (car S))))
                ))))

(define (find_smallest S x)
      (if (empty? S) x
          (if (< (car S) x) (find_smallest (cdr S) (car S))
            (find_smallest (cdr S) x)
            )))

(define (remove S a)
      (if (empty? S) null
          (if (= a (car S)) (cdr S)
              (cons (car S) (remove (cdr S) a))
              )))

(reorder '(7 9 1 5 3))
(reorder '())
