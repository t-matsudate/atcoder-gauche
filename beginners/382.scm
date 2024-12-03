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

(define (replace-empties cookies eaten)
  (define cookies-v (string->vector cookies))
  (define (go eaten pos)
    (cond ((<= eaten 0) (vector->string cookies-v))
          ((char=? #\@ (vector-ref cookies-v (- pos 1)))
           (begin (vector-set! cookies-v (- pos 1) #\.)
                  (go (- eaten 1) (- pos 1))))
          (else (go eaten (- pos 1)))))
  (go eaten (vector-length cookies-v)))

(define (abc382b)
  (let* ((preconditions (map string->number (string-split (read-line) #\space)))
         (cookies (read-line)))
    (print (replace-empties cookies (list-ref preconditions 1)))))