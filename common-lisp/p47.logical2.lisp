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

(table-all '(and A (or A (not B))))
(table-all '(and/2 A (or/2 A (not B))))
