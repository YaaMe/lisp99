(defun goldbach (n)
  (conjecture (prime-list 2 (/ n 2)) n))

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

(goldbach 28)
