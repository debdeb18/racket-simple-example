#lang racket
;'(1 2 3 4 5 6)

(define n1 (cons 1 (cons null null)))
(define n3 (cons 3 (cons null null)))
(define n5 (cons 5 (cons null null)))
(define n2 (cons 2 (cons n1 n3)))
(define n6 (cons 6 (cons n5 null)))
(define root (cons 4 (cons n2 n6)))

root

(define (data node) (car node))
(define (left node) (car (cdr node)))
(define (right node) (cdr (cdr node)))

(define (search x node)
  (if (null? node) #f
      (if (< x (data node)) (search x (left node))
          (if (> x (data node)) (search x (right node))
              #t))))

(search 5.5 root)
(search 3 root)