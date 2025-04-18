(define (f x) (+ (+ x x) (- 2 x)))

(let ((a 10))
  (let ((b (f a)))
    (let ((c (f 3)))
      (+ b c))))
