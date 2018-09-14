(defun compress (lista)
  (if lista
      (if (eql (car lista) (car (cdr lista)))
          (compress (cdr lista))
          (cons (car lista) (compress (cdr lista))))))

; use let
(defun compress (lista)
  (if lista
      (let ((ele (split-list lista (car lista))))
        (cons (format-element ele) (compress (nthcdr (length ele) lista))))))

(defun split-list (lista ele)
  (if lista
      (if (eql (car lista) ele)
          (cons ele (split-list (cdr lista) ele)))))

(defun format-element (lista)
  (car lista))

(compress '(a a a a b c c a a d e e e e))
