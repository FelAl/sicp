; Implement the Ackermann's function A. It takes two parameters, x and y, and works as follows:

; if y = 0, then it returns 0;
; if x = 0, then it returns 2*y;
; if y = 1, then it returns 2;
; else, it calls itself (function A) with x = x-1 and y = A ( x, (y - 1) )


(define (A x y)
  (cond ((= y 0) (0))
    ((= x 0) (* y 2) )
    ((= y 1) 2)
    (else (A (- x 1) (A x(- y 1))))
  )
)