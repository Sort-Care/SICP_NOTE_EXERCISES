(define (sqrt x)
  (define (square a)
    (* a a))
  (define (average n m)
    (/ (+ n m) 2.0))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       .001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1.0))

(sqrt 2.0)
