(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y
  )
)

(test 0 (p))



; ===================
;(test 0 p)
; applicative-order - it hangs, because of p -> p -> p -> p....
;   (test 0 (p)), p -> p -> p ->..... It goes to the infinite loop.
; normal-order - it returns 0, and no call of p will be executed