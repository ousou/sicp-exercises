(define (f-recursive n)
    (if (< n 3)
        n
        (+
            (f-recursive (- n 1))
            (* 2 (f-recursive (- n 2)))
            (* 3 (f-recursive (- n 3)))
        )
    )
)

(define (f-iter n)
    (define (iter k km1 km2 counter)
        (if (> counter n)
            k
            (iter (+ k (* 2 km1) (* 3 km2)) k km1 (+ counter 1))
        )
    )
    (if (< n 3)
        n
        (iter 2 1 0 3)
    )
)
