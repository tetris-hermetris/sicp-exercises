#lang sicp

(#%require rackunit)

(define (sqr x) (* x x))

(define (sum-sqr a b)
  (+ (sqr a)
     (sqr b)))

(define (solution a b c)
  (cond ((and (< a b) (< a c)) (sum-sqr b c))
        ((and (< b a) (< b c)) (sum-sqr a c))
        ((and (< c a) (< c b)) (sum-sqr a b))
))

(check-equal? (solution 1 3 9) (sum-sqr 3 9)) 
(check-equal? (solution 3 1 9) (sum-sqr 3 9))
(check-equal? (solution 9 1 3) (sum-sqr 3 9))
(check-equal? (solution 9 3 1) (sum-sqr 3 9))