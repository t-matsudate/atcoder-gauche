(define-module beginners.382
  (export abc382a))
(select-module beginners.382)
(use gauche.collection)

(define (count-empties cookies eaten)
  (define (empty? cookie)
    (char=? cookie #\.))
  (+ eaten (string-length (filter-to <string> empty? cookies))))

(define (abc382a)
  (let* ((preconditions (map string->number (string-split (read-line) #\space)))
         (cookies (read-line)))
    (print (count-empties cookies (list-ref preconditions 1)))))