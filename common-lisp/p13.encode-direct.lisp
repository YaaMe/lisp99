
; solved in p11
(defun encode-direct (lista)
  (if lista
      (if (listp (car lista))
          (let ((n (first (car lista))) (ele (second (car lista))))
            (if (eql ele (second lista))
                (encode-direct (cons (list (+ n 1) ele) (nthcdr 2 lista)))
                (cons (car lista) (encode-direct (cdr lista)))))
          (if (eql (car lista) (second lista))
              (encode-direct (cons (list 2 (car lista)) (nthcdr 2 lista)))
              (cons (car lista) (encode-direct (cdr lista)))))))

(encode-direct '(a a a a b c c a a d e e e e))
