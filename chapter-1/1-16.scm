(define (expt b n)
    (expt-iter b n 1))

(define (expt-iter base counter product)
    (if (= counter 0)
        product
        (expt-iter
            base
            (- counter 1)
            (* base product)
        )
    )
)

(define (fast-expt b n)
    (fast-expt-iter b n 1)
)

(define (even? n)
    (= (remainder n 2) 0)
)

(define (fast-expt-iter base counter product)
    (cond ((= counter 0) product)
          ((even? counter) (fast-expt-iter (square base) (/ counter 2) product))
          (else (fast-expt-iter base (- counter 1) (* base product)))
    )
)
