(define (multiply x y)
  (if (= y 0)
      0
      (+ x (multiply x (- y 1)))))

(define (square x)
  (multiply x x))

(define (cube x)
  (multiply x (square x)))

(define (poly-calc a)
  (let ((term1 (cube a)))
    (let ((term2 (square a)))
      (let ((term2-doubled (+ term2 term2)))
        (let ((result (+ term1 term2-doubled)))
          (+ result a))))))

(define (fib n)
  (if (= n 0)
      0
      (if (= n 1)
          1
          (+ (fib (- n 1)) (fib (- n 2))))))

(let ((x 3))
  (let ((y (poly-calc x)))
    (let ((fib-result (fib 5)))
      (let ((z (+ y fib-result)))
        (let ((final-square (square z)))
          final-square)))))
