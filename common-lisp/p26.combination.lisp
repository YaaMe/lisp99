(defun combination (n lista)
  (if (> n 1)
      (combinate-n n lista lista)
      (if (car lista)
          (cons (list (car lista)) (combination n (cdr lista))))))

;; Cartesian
(defun combinate-n (n lista listb)
  (append
   ;; discuss every row
   (if (> (- n 1) (length (to-list (car lista))))
       ;; member not enough
       (combinate-n n (invite (car lista) (cdr listb) n) (cdr listb))
       ;; member enough
       (invite (car lista) (cdr listb) n))
   ;; go next
   (if (and (cdr lista) (> (+ (length (to-list (car lista))) (length (cdr listb))) n))
       (combinate-n n (cdr lista) (cdr listb)))))

(defun invite (ele lista n)
  (if (and (cdr lista) (> (+ (length (to-list ele)) (length (to-list lista))) n))
      (cons (append (to-list ele) (to-list (car lista))) (invite ele (cdr lista) n))
      (list (append (to-list ele) (to-list (car lista))))))

(defun to-list (ele)
  (if (listp ele)
      ele
      (list ele)))

(combination 1 '(1 2 3 4 5))
(combination 2 '(1 2 3 4 5))
(combination 3 '(1 2 3 4 5))
(combination 4 '(1 2 3 4 5))
(combination 5 '(1 2 3 4 5))

;; draft
;;(defun group (n lista listb)
;;  (if (> (- n 1) (length (to-list (car lista))))
;;      (append
;;       (group n (invite (car lista) (cdr listb) n) (cdr listb))
;;       (if (and (cdr lista) (> (+ (length (to-list (car lista))) (length (cdr listb))) n))
;;           (group n (cdr lista) (cdr listb))))
;;      (append
;;       (invite (car lista) (cdr listb) n)
;;       (if (and (cdr lista) (> (+ (length (to-list (car lista))) (length (cdr listb))) n))
;;           (group n (cdr lista) (cdr listb))))))

