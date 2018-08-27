(defun palin (lista)
  (equal lista (reverse lista)))

(palin '(1 2 3 2 1))
(palin '(1 2 2 1))
(palin '(1 3 2 1))
