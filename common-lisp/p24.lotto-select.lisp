(defun lotto-select (k n)
  (rnd-select (range n) k))

(defun range (n)
  (if (> n 1)
      (cons n (range (- n 1)))
      (list 1)))

(defun rnd-select (lista n)
  (if (> n 1)
      (let ((listb (shuffle-to-head lista (random (length lista)))))
        (cons (car listb) (rnd-select (cdr listb) (- n 1))))
      (list (car (shuffle-to-head lista (random (length lista)))))))

(defun shuffle-to-head (lista n)
  (if (> n 1)
      (shuffle-to-head (append (cdr lista) (list (car lista))) (- n 1))
      lista))

(lotto-select 6 49)
