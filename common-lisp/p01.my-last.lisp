(defun my-last (arr)
  (if (cdr arr)
      (my-last (cdr arr))
      (car arr)))

(my-last '(a b c d))
(my-last '(1 2 nil 3 4))
