(defun compress (lista)
  (if lista
      (if (eql (car lista) (car (cdr lista)))
          (compress (cdr lista))
          (cons (car lista) (compress (cdr lista))))))

(compress '(a a a a b c c a a d e e e e))
