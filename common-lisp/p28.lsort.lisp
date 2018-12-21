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
(defun lfsort (lista)
  (unzip-packages (discuss-lsort (pack-list lista nil) nil)))

(defun unzip-packages (packages)
  (append (car packages) (if (cdr packages) (unzip-packages (cdr packages)))))

(defun pack-list (lista packages)
  (if (car lista)
      (pack-list (cdr lista) (pack-item (car lista) (length (car lista)) packages))
      packages))

(defun pack-item (item n packages)
  (if (car packages)
      (if (eql n (length (car (car packages))))
          (cons (append (car packages) (list item)) (cdr packages))
          (cons (car packages) (pack-item item n (cdr packages))))
      (list (list item))))

(pack-item '(A B) 2 (list (list '(1)) (list '(1 2) '(3 4)) (list '(1 2 3))))
(pack-item '(A B) 2 (list (list '(1)) (list '(1 2 3))))
(pack-list '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)) nil)
(lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
