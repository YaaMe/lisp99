; O(n^2)
(defun rnd-select (lista n)
  (if (> n 1)
      (let ((listb (shuffle-to-head lista (random (length lista)))))
        (cons (car listb) (rnd-select (cdr listb) (- n 1))))
      (list (car (shuffle-to-head lista (random (length lista)))))))

(defun shuffle-to-head (lista n)
  (if (> n 1)
      (shuffle-to-head (append (cdr lista) (list (car lista))) (- n 1))
      lista))

(shuffle-to-head '(1 2 3 4 5 6) 3)

(rnd-select '(a b c d e f g h) 3)
