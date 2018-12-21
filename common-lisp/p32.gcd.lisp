(defun p32-gcd (n m)
  (if (> m n)
      (p32-gcd m n)
      (if (zerop m) n (p32-gcd m (mod n m)))))

(p32-gcd 1997 615)
(p32-gcd 36 63)
