;; a

;; b
(defun group (lista sizes)
  (solution nil lista sizes nil))

(defun solution (target lista sizes rest)
  (if (cdr sizes)
      (append
       (if (eql (car sizes) (length target))
           ;; target enough combinate n+1
           (distribute (list target) (solution nil (append lista rest) (cdr sizes) nil))
           ;; target not enough row n+1
           (append
            (if (car lista)
                (solution (if target
                          (append target (list (car lista)))
                          (list (car lista)))
                      (cdr lista) sizes rest))
            (if (cdr lista)
                (solution target (cdr lista) sizes (append rest (list (car lista))))))))
   (distribute (list lista) nil)))

(solution nil '(1 2 3) '(2 1) nil)
(group '(a b c d e f g h i) '(2 2 5))
