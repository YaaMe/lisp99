(defun encode (lista)
  (if lista
      (if (listp (car lista))
          (multiple-value-bind (n ele) (values-list (car lista))
            (if (eql ele (second lista))
                (encode (cons (list (+ n 1) ele) (nthcdr 2 lista)))
                (cons (car lista) (encode (cdr lista)))))
          (encode (cons (list 1 (car lista)) (cdr lista))))))

; use let
(defun encode (lista)
  (if lista
      (let ((ele (split-list lista (car lista))))
        (cons (format-element ele) (encode (nthcdr (length ele) lista))))))

(defun split-list (lista ele)
  (if lista
      (if (eql (car lista) ele)
          (cons ele (split-list (cdr lista) ele)))))

(defun format-element (lista)
  (list (length lista) (car lista)))


(encode '(a a a a b c c a a d e e e e))
(encode '(a a a a b c c a a d e e e c))
