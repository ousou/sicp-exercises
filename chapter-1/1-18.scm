(define (double n)
    (+ n n)
)

(define (halve n)
    (/ n 2)
)

(define (even? n)
    (= (remainder n 2) 0)
)

(define (multiply a b)
    (fast-mult-iter a b 0)
)

(define (fast-mult-iter a counter sum)
    (cond ((= counter 0) sum)
          ((even? counter) (fast-mult-iter (double a) (halve counter) sum))
          (else (fast-mult-iter a (- counter 1) (+ a sum)))
    )
)
