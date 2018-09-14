
(defun encode-modified (lista)
  (if lista
      (if (listp (car lista))
          (multiple-value-bind (n ele) (values-list (car lista))
            (if (eql ele (second lista))
                (encode-modified (cons (list (+ n 1) ele) (nthcdr 2 lista)))
                (cons (car lista) (encode-modified (cdr lista)))))
          (if (eql (car lista) (second lista))
              (encode-modified (cons (list 2 (car lista)) (nthcdr 2 lista)))
              (cons (car lista) (encode-modified (cdr lista)))))))

; use let
(defun encode-modified (lista)
  (if lista
      (let ((ele (split-list lista (car lista))))
        (cons (format-element ele) (encode-modified (nthcdr (length ele) lista))))))

(defun split-list (lista ele)
  (if lista
      (if (eql (car lista) ele)
          (cons ele (split-list (cdr lista) ele)))))

(defun format-element (lista)
  (if (eql (length lista) 1)
      (car lista)
      (list (length lista) (car lista))))

(encode-modified '(a a a a b c c a a d e e e e))
