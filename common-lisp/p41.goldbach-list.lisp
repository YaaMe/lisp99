(defun goldbach-list (n m &optional (k 2))
  (if (<= n m)
      (let ((lista (conjecture (prime-list 3 (/ n 2)) n)))
        (if (and lista (> (car lista) k))
            (format t "~{~A=~A+~A~}~%" (cons n lista)))
        (goldbach-list (+ n 1) m k))))

(defun conjecture (lista n)
  (if (car lista)
      (if (is-prime (- n (car lista)))
          (list (car lista) (- n (car lista)))
          (conjecture (cdr lista) n))))

(defun prime-list (n m)
  (if (< n m)
      (if (is-prime n)
          (cons n (prime-list (+ n 2) m))
          (prime-list (+ n (if (oddp n) 2 1)) m))))

(defun is-prime (n)
  (not (has-mod n 2)))

(defun has-mod (n m)
  (if (<= m (/ n 2))
      (or (zerop (mod n m)) (has-mod n (+ m 1)))))

(goldbach-list 1 2000 50)
