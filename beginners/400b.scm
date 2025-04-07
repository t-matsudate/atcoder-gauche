(define-module beginners.400b
  (export sum-powers))
(select-module beginners.400b)

(define (sum-powers n times)
  (define (sum ret times)
    (if (or (negative? times) (> ret 1000000000))
	ret
	(sum (+ ret (expt n times)) (- times 1))))
  (let ((s (sum 0 times)))
    (if (> s 1000000000)
	"inf"
	s)))
