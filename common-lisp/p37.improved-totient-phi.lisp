(defun improved-totient-phi (n)
  (cal-factor n 2))

(defun group-factor (n factor)
  (if (zerop (mod n factor))
      (let ((next (group-factor (/ n factor) factor)))
        (cons (+ 1 (car next)) (cdr next)))
      (list 0 n)))

(defun cal-factor (n i)
  (if (> n i)
      (if (zerop (mod n i))
          (let ((factors (group-factor n i)))
            (*
             (* (expt i (- (car factors) 1)) (- i 1))
             (cal-factor (second factors) (+ i 1))))
          (cal-factor n (+ i 1)))
      (- n 1)))

(improved-totient-phi 10090)
(totient-phi 10090)
