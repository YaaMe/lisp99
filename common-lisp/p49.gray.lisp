(defun gray (n)
  (group-all n 0 1))

(defun group-all (k v0 v1)
  (if (> k 1)
      (append
       (c-all v0 (group-all (- k 1) v0 v1))
       (c-all v1 (group-all (- k 1) v0 v1)))
      (list (list v0) (list v1))))

(defun c-all (k0 k1)
  (if (not (zerop (length k1)))
      (cons (cons k0 (car k1)) (c-all k0 (cdr k1)))))

(gray 3)
