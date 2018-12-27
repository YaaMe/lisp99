(defun and/2 (a b)
  (if a b))

(defun or/2 (a b)
  (if a t b))

(defun nand/2 (a b)
  (not (and/2 a b)))

(defun nor/2 (a b)
  (not (or/2 a b)))

(defun xor/2 (a b)
  (if a (not b) b))

(defun impl/2 (a b)
  (if a b t))

(defun xnor/2 (a b)
  (not (xor/2 a b)))

(defun wrap-t (v)
  (if v 'true 'fail))

(defun table (a b v)
  (format t "~A ~A ~A ~%" (wrap-t a) (wrap-t b) (wrap-t (eval `(let ((a ,a) (b ,b)) ,v)))))

(defun table-all (v)
  (format t "~A ~A ~A ~%" 'A 'B v)
  (table T T v)
  (table T nil v)
  (table nil T v)
  (table nil nil v))

(table-all '(and A (or A B)))
(table-all '(and/2 A (or/2 A B)))
