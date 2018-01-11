(define (double n)
    (+ n n)
)

(define (halve n)
    (/ n 2)
)

(define (multiply a b)
    (fast-mult a b 0)
)

(define (even? n)
    (= (remainder n 2) 0)
)

(define (fast-mult a b)
    (cond ((= b 0) 0)
          ((even? b) (double (fast-mult a (halve b))))
          (else (+ (fast-mult a (- b 1)) a))
    )
)
