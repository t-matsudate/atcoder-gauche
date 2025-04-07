(define-module beginners.400a
  (export divide-exactly-400-by))
(select-module beginners.400a)

(define (divide-exactly-400-by n)
  (if (zero? (remainder 400 n))
      (quotient 400 n)
      -1))
