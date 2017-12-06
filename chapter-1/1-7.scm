(define (square x)
    (* x x)
)

(define (close-enough? guess last-guess)
    (< (abs (- guess last-guess)) 0.0000001)
)

(define (avg x y)
    (/ (+ x y) 2)
)

(define (next guess x)
    (avg guess (/ x guess))
)

(define (sqrt-iter guess last-guess x)
    (if (close-enough? guess last-guess)
         guess
         (sqrt-iter
             (next guess x)
             guess
             x)
    )
)

(define (sqrt x)
    (sqrt-iter 1.0 0.0 x)
)
