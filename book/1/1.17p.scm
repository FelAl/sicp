(define (*! a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))
  ) 
)

(*! 2 10 2)


