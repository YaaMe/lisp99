(defun wrap-t (v)
  (if v 'true 'fail))

(defun wrap-all (p)
  (if (not (zerop (length p)))
      (cons (wrap-t (car p)) (wrap-all (cdr p)))))

(defun bound-table (k &optional (code 65))
  (if (not (zerop (length k)))
      (cons
       (list (intern (string (code-char code))) (car k))
       (bound-table (cdr k) (1+ code)))))

(defun table (p v)
  (format t "~{~A ~}~%" (append (wrap-all p) (list (wrap-t (eval `(let ,(bound-table p) ,v)))))))

(defun group-all (k v0 v1)
  (if (> k 1)
      (append
       (c-all v0 (group-all (- k 1) v0 v1))
       (c-all v1 (group-all (- k 1) v0 v1)))
      (list (list v0) (list v1))))

(defun c-all (k0 k1)
  (if (not (zerop (length k1)))
      (cons (cons k0 (car k1)) (c-all k0 (cdr k1)))))

(defun loop-table (v k)
  (if (car k) (progn (table (car k) v) (loop-table v (cdr k)))))

(defun table-all (n v)
  (format t "~A ~%" v)
  (loop-table v (group-all n 'true 'false)))

(table-all 3 '(and A (or B C) (and A C)))
