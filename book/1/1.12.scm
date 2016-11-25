; Pascal tree recursive
(define (pt m n) 
  (cond 
    ((and (= m 1) (= n 1)) 1) 
    ((and (= m 2) (= n 2)) 1)
    ((and (= m 2) (= n 1)) 1)
    ((or  (= n 1) (= m n)) 1)
    ((or  (= m 2) (= m (- n 1))) (- n 1))
    (else 
      (+ (pt (- m 1)(- n 1) ) 
         (pt (- m 1) n ) 
      )
    )
  )
)