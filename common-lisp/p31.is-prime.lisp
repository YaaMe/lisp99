(defun is-prime (n)
  (not (has-mod n 2)))

(defun has-mod (n m)
  (if (<= m (/ n 2))
      (or (zerop (mod n m)) (has-mod n (+ m 1)))))

(is-prime 1)
(is-prime 2)
(is-prime 4)
(is-prime 6)
(is-prime 7)
(is-prime 13)
(is-prime 81)
