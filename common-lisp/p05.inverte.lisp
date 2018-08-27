(defun inverte (lista)
  (if (rest lista)
      (append (inverte (rest lista)) (list (car lista)))
      lista))

(inverte '(1 2 3 4 nil))
