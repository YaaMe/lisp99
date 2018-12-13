(defun rotate (lista n)
  (if (> n 0)
      (rotate (append (cdr lista) (list (car lista))) (- n 1))
      (if (< n 0)
          (rotate lista (+ (length lista) n))
          lista)))

(rotate '(a b c d e f g h) 3)
(rotate '(a b c d e f g h) -2)
