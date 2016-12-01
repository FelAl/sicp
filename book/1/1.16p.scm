
(define (expt_rec b n)
  (if (= n 0)
    1
    (* b (expt_rec b (- n 1)))
  )
)

(define (expt_iter b n)
  (define (exp_local_iter b counter product)
    (if (= counter 0)
      product
      (exp_local_iter 
        b
        (- counter 1)
        (* b product)
      )
    )
  )

  (exp_local_iter b n 1)
)



(define (fast-exp a b) (0))