(defun remove-at (lista n)
  (if (> n 1)
      (cons (car lista) (remove-at (cdr lista) (- n 1)))
      (cdr lista)))

(remove-at '(a b c d) 2)
