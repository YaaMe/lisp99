(defun dupli (lista)
  (if lista
      (append (spawn (car lista) 2) (dupli (cdr lista)))))

(defun spawn (ele n)
  (if (> n 0)
      (cons ele (spawn ele (- n 1)))))

(dupli '(a b c c d))
