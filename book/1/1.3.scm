(define (sqr x) (* x x))
(define (>= a b) (not(< a b)))

(define (sumsq a b c)
  (cond 
    ( (and (>= a b) (>= b c)) 
      (+ (sqr a) (sqr b))
    )
    ( (and (>= a b) (>= c b)) 
      (+ (sqr a) (sqr c))
    )
    ( (and (>= b c) (>= c a))
      (+ (sqr b) (sqr c))
    )
    ( (and (>= b c) (>= a c))
      (+ (sqr b) (sqr a))
    )
    ( (and (>= c a) (>= a b))
      (+ (sqr c) (sqr a))
    )
    ( (and (>= c a) (>= b a))
      (+ (sqr c) (sqr b))
    )
  )
)

(define (sumsq_rec a b c) ())

