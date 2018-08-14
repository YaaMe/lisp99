(defun element-at (arr n)
  (if (> n 1)
      (element-at (cdr arr) (- n 1))
      (car arr)))

(element-at '(1 2 3 4 5) 2)
(element-at '(1 2 3 4 5) 0)
