(defun pack (lista)
  (if lista
      (if (listp (car lista))
          (if (eql (car (car lista)) (car (cdr lista)))
              (pack (cons (append (car lista) (list (car (cdr lista)))) (cdr (cdr lista))))
              (cons (car lista) (pack (cdr lista))))
          (pack (cons (list (car lista)) (cdr lista))))))

(pack '(a a a a b c c a a d e e e e))
