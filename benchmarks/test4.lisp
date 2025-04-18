(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(let ((x 5))
  (let ((y (inc x)))
    (let ((z (inc y)))
      (let ((w (dec z)))
        (+ w w)))))
