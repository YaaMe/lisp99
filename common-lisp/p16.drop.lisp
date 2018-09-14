; drop-every
(defun drop (lista n)
  (if lista
      (append (slice lista n) (drop (nthcdr n lista) n))))

(defun slice (lista n)
  (if (and (> n 1) lista)
      (cons (car lista) (slice (cdr lista) (- n 1)))))

;; 
(defun drop (lista n)
  (defun drop-x (listb x)
    (if listb
        (if (> x 1)
            (cons (car listb) (drop-x (cdr listb) (- x 1)))
            (drop-x (cdr listb) n))))
  (drop-x lista n))

(drop '(a b c d e f g h i k) 3)
