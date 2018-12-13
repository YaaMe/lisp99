(defun slice (lista i k)
  (if (> i 1)
      (slice (cdr lista) (- i 1) (- k 1))
      (if (> k 1)
          (cons (car lista) (slice (cdr lista) 0 (- k 1)))
          (list (car lista)))))

(slice '(a b c d e f g h i k) 3 7)
