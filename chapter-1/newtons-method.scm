(define (square x)
    (* x x)
)

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.00001)
)

(define (avg x y)
    (/ (+ x y) 2)
)

(define (next guess x)
    (avg guess (/ x guess))
)

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
         guess
         (sqrt-iter
             (next guess x)
             x)
    )
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)
