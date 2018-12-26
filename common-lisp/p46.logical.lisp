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
  (if v "true" "false"))

(defun print-line (a b v)
  (format t "~A ~A ~A ~%" (wrap-t a) (wrap-t b) (wrap-t (eval `(,v ,a ,b)))))

(defun table (v)
  (progn
    (print-line T T v)
    (print-line T nil v)
    (print-line nil T v)
    (print-line nil nil v)))


(defun loop-table (v)
  (if (car v)
      (progn (format t "~A ~%" (car v)) (table (car v)) (loop-table (cdr v)))))

(loop-table '(and/2 or/2 nand/2 nor/2 xor/2 impl/2 xnor/2))
