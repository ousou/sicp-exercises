(define (square x)
    (* x x)
)

(define (close-enough? guess last-guess)
    (< (abs (- guess last-guess)) 0.0000001)
)

(define (next guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (cube-root-iter guess last-guess x)
    (if (close-enough? guess last-guess)
         guess
         (cube-root-iter
             (next guess x)
             guess
             x)
    )
)

(define (cube-root x)
    (cube-root-iter 1.0 0.0 x)
)
