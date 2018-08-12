(defun my-last (arr)
  (if (cdr arr)
      (my-last (cdr arr))
      (car arr)))
