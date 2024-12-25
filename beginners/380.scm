(define-module beginners.380
  (export abc380a
          abc380b))
(select-module beginners.380)

(define (one-two-three? line)
  (equal? '(#\1 #\2 #\2 #\3 #\3 #\3) (sort (string->list line))))

(define (abc380a)
  (let ((line (read-line)))
    (if (one-two-three? line)
        (print "Yes")
        (print "No"))))

(define (count-hyphens line)
  ; 0x7c = |
  (map string-length (string-split (substring line 1 (- (string-length line) 1)) #\x7c)))

(define (abc380b)
  (let ((line (read-line)))
    (apply print (intersperse " " (count-hyphens line)))))