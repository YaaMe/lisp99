(defun pack (lista)
  (if lista
      (if (listp (car lista))
          (if (eql (car (car lista)) (car (cdr lista)))
              (pack (cons (append (car lista) (list (car (cdr lista)))) (cdr (cdr lista))))
              (cons (car lista) (pack (cdr lista))))
          (pack (cons (list (car lista)) (cdr lista))))))

; use let
(defun pack (lista)
  (if lista
      (let ((ele (split-list lista (car lista))))
        (cons (format-element ele) (pack (nthcdr (length ele) lista))))))

(defun split-list (lista ele)
  (if lista
      (if (eql (car lista) ele)
          (cons ele (split-list (cdr lista) ele)))))

(defun format-element (lista)
  lista)


(pack '(a a a a b c c a a d e e e e))
