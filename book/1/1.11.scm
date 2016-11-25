; f(n) = n if n < 3, and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3

(define (f n) 
  (cond 
    ((= n 0) 0) 
    ((= n 1) 1)
    ((= n 2) 2)
    (else 
      (+ (f(- n 1)) 
         (* 2 (f (- n 2))) 
         (* 3 (f (- n 3)))
      )
    )
  )
)

(define (f_iter n)
    (define (f_tail count x1 x2 x3)     
      (cond 
        ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        ((= n (+ count 2)) x3)
        ((> n 2) 
          (f_tail 
            (+ count 1) 
            x2
            x3
            (+ x3 (* 2 x2) (* 3 x1))
          )
        )
      )
    )
  (f_tail 0 0 1 2)
)