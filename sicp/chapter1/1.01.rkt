#lang sicp

(#%require rackunit)

(define solution1 10)

(define solution2 (+ 5 3 4) )

(define solution3 (- 9 1))

(define solution4 (/ 6 2))

(define solution5 (+ (* 2 4) (- 4 6)))

(define a 3)
(define b (+ a 1))

(define solution6 (+ a b (* a b)))

(define solution7 (= a b))

(define solution8 (if (and (> b a) (< b (* a b)))
                       b
                       a))

(define solution9 (cond ((= a 4) 6)
                        ((= b 4) (+ 6 7 a))
                        (else 25)))

(define solution10 (+ 2 (if (> b a) b a)))

(define solution11 (* (cond ((> a b) a)
                            ((< a b) b)
                            (else -1))
                      (+ a 1)))

;;; check solutions
(check-equal? solution1 10)
(check-equal? solution2 12)
(check-equal? solution3 8)
(check-equal? solution4 3)
(check-equal? solution5 6)
(check-equal? solution6 19)
(check-equal? solution7 #f)
(check-equal? solution8 b)
(check-equal? solution9 (+ 6 7 a))
(check-equal? solution10 (+ 2 b))
(check-equal? solution11 16)