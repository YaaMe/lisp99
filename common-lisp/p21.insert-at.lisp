(defun insert-at (ch lista n)
  (if (> n 1)
      (cons (car lista) (insert-at ch (cdr lista) (- n 1)))
      (cons ch lista)))

(insert-at 'alfa '(a b c d) 2)
