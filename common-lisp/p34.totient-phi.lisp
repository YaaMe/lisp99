(defun totient-phi (n)
  (find-gcd n (- n 1)))

(defun find-gcd (n i)
  (if (> i 1)
      (+ (if (= 1 (gcd n i)) 1 0) (find-gcd n (- i 1)))
      1))

(totient-phi 10)
