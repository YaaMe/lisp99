(defun comprimento (lista)
  (if (null lista)
      0
      (+ 1 (comprimento (rest lista)))))

(comprimento '(1 2 3 nil 5 8 9))
