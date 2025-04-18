(define (double x) (+ x x))
(define (triple x) (+ x (double x)))

(let ((a 3))
  (let ((b 4))
    (let ((c (double a)))
      (let ((d (triple b)))
        (+ c d)))))
