;; a
(defun lsort (lista)
  (discuss-lsort lista nil))

(defun discuss-lsort (lista result)
  (if (car lista)
      (discuss-lsort (cdr lista) (insert-lsort (car lista) result))
      result))

(defun insert-lsort (item choas)
  (if (car choas)
      (if (<= (length item) (length (car choas)))
          (append (list item) (list (car choas)) (cdr choas))
          (append (list (car choas)) (insert-lsort item (cdr choas))))
      (list item)))

(lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))

;; b
(defun lfsort (lista))

;;(defun to-be-choas (lista choas)
;;  (if (car lista)
;;      (if (eql (length lista) (length (car (car choas))))
;;          (append () (to-be-choas (cdr lista) )))
;;      choas))
