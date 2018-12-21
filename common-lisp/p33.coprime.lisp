(defun p33-coprime (n m)
  (eql 1 (p32-gcd n m)))

(defun p32-gcd (n m)
  (if (> m n)
      (p32-gcd m n)
      (if (zerop m) n (p32-gcd m (mod n m)))))
