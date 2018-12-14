(defun range (i k)
  (if (< i k)
      (cons i (range (+ i 1) k))
      (list i)))

(range 4 9)
