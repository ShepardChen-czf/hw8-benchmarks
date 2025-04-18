(define (double x) (+ x x))
(define (is-zero x) (if (= x 0) true false))

(let ((val 0))
  (let ((check (is-zero val)))
    (if check
        (double 10)
        (double 20))))
