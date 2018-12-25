(defun prime-list (n m)
  (if (< n m)
      (if (is-prime n)
          (cons n (prime-list (+ n 2) m))
          (prime-list (+ n (if (oddp n) 2 1)) m))))

(prime-list 2 10)
