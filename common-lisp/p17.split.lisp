(defun split (lista n)
  (if (> n 1)
      (let ((l (split (cdr lista) (- n 1))))
        (cons (cons (car lista) (car l)) (cdr l)))
      (list (list (car lista)) (cdr lista))))

(split '(a b c d e f g h i k) 3)
