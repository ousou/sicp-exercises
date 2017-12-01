(define 
    (square x) 
    (* x x)
)

(define
    (second-largest x y z)
    (cond (= (max x y z) x) (max y z)
          (= (max x y z) y) (max x z)
          (= (max x y z) z) (max x y)
    )
)

(define 
    (sum-of-larger-squares x y z) 
    (+ (square (max x y z)) (square (second-largest x y z)))
)
