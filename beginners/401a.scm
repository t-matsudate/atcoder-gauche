(define-module beginners.401a
  (export success?))
(select-module beginners.401a)

(define (success? status-code)
  (<= 200 status-code 299))
