(defun prime-factors-mult (n)
  (find-factor n 2))

(defun group-factor (n factor)
  (if (zerop (mod n factor))
      (let ((next (group-factor (/ n factor) factor)))
        (cons (+ 1 (car next)) (cdr next)))
      (list 0 n)))

(defun find-factor (n i)
  (if (> n i)
      (if (zerop (mod n i))
          (let ((factors (group-factor n i)))
            (cons
             (list i (car factors))
             (find-factor (second factors) (+ i 1))))
          (find-factor n (+ i 1)))
      (list (list n 1))))

(prime-factors-mult 315)
