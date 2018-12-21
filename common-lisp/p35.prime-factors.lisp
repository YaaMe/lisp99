(defun prime-factors (n)
  (let ((factor (find-factor n 2)))
    (cons factor (if (> n factor) (prime-factors (/ n factor))))))

(defun find-factor (n i)
  (if (> n i)
      (if (zerop (mod n i))
          i
          (find-factor n (+ i 1)))
      n))

(prime-factors 315)
