
(defun decode (lista)
  (if lista
      (append (spawn (second (car lista)) (first (car lista))) (decode (cdr lista)))))

(defun spawn (ele n)
  (if (> n 0)
      (cons ele (spawn ele (- n 1)))))

(decode '((4 A) (1 B) (2 C) (2 A) (1 D)(4 E)))
