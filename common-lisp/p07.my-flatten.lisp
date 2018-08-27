(defun my-flatten (lista)
  (if lista
      (if (listp (car lista))
          (my-flatten (append (car lista) (cdr lista)))
          (cons (car lista) (my-flatten (cdr lista))))))

(my-flatten '(a (a b) (a (c d))))
(my-flatten '(a (b (c d) e)))
