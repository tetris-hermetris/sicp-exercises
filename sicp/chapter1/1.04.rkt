#lang sicp

(#%require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This procedure determines its first operator by sign of second given operand. If it's positive, then procedure would sum a and b, and if negative then its substracts. Therefore it always act as sum.

(check-equal? (a-plus-abs-b 1 3) 4)
(check-equal? (a-plus-abs-b 1 -3) 4)