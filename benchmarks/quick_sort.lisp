(define (append lst1 lst2)
  (if (empty? lst1)
      lst2
      (pair (left lst1) (append (right lst1) lst2))))

(define (filter-less lst pivot)
  (if (empty? lst)
      ()
      (if (< (left lst) pivot)
          (pair (left lst) (filter-less (right lst) pivot))
          (filter-less (right lst) pivot))))

(define (filter-geq lst pivot)
  (if (empty? lst)
      ()
      (if (< (left lst) pivot)
          (filter-geq (right lst) pivot)
          (pair (left lst) (filter-geq (right lst) pivot)))))

(define (quicksort lst)
  (if (empty? lst)
      ()
      (let ((pivot (left lst)))
      (let ((rest (right lst))) 
      (append (quicksort (filter-less rest pivot))
                (pair pivot (quicksort (filter-geq rest pivot))))))))


(let ((my-list (pair 3 (pair 1 (pair 4 (pair 1 (pair 5 (pair 9 (pair 2 (pair 6 (pair 5 ())))))))))))
  (print (quicksort my-list)))
