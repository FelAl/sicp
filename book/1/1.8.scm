(define (sqrt_3 x)
  (define (good-enough? guess)
    (< (abs (- (* guess guess guess) x)) 0.01)
  )

  (define (average a b) (/ (+ a b) 2))

  (define (improve guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
  )

  (define (sqrt-iter guess)
    (if (good-enough? guess) guess
    (sqrt-iter (improve guess)))
  )

  (sqrt-iter 1.0)
)