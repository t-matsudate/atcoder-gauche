(define-module beginners.380
  (export abc380a))
(select-module beginners.380)

(define (one-two-three? line)
  (equal? '(#\1 #\2 #\2 #\3 #\3 #\3) (sort (string->list line))))

(define (abc380a)
  (let ((line (read-line)))
    (if (one-two-three? line)
        (print "Yes")
        (print "No"))))