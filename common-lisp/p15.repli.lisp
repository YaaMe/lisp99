(defun repli (lista n)
  (if lista
      (append (spawn (car lista) n) (repli (cdr lista) n))))

(defun spawn (ele n)
  (if (> n 0)
      (cons ele (spawn ele (- n 1)))))

(repli '(a b c) 3)
