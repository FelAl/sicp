(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.01)
  )

  (define (average a b) (/ (+ a b) 2))

  (define (improve guess)
    (average guess(/ x guess))
  )

  (define (sqrt-iter guess)
    (if (good-enough? guess) guess
    (sqrt-iter (improve guess)))
  )

  (sqrt-iter 1.0)
)

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))




; ==============================================
(define (sqrt_nf x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.01)
  )

  (define (average a b) (/ (+ a b) 2))

  (define (improve guess)
    (average guess(/ x guess))
  )

  (define (sqrt-iter guess)
    (new-if (good-enough? guess) 
      guess
      (sqrt-iter (improve guess)))
  )

  (sqrt-iter 1.0)
)

(sqrt_nf 9)
;Aborting!: maximum recursion depth exceeded
; additional level of recursion
; =========
; (new-if (good-enough? guess) 
; guess
; (sqrt-iter (improve guess)))
; In our new-if procedure , two branches execute:
;   ( if true  then guess or if true then (sqrt-iter ...))
; In `classical` if only one branch executes
; So, in our example, we have a kind of `recursion overflow`
; new-if calls sqrt-iter, sqrt-iter calls new new-if and there is no end to this
