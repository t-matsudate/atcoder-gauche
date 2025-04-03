(define-module beginners.399a
  (export hamming-distance))
(select-module beginners.399a)

(define (hamming-distance a b)
  (define a-length (string-length a))
  (define b-length (string-length b))
  (define (count-difference i)
    (if (and (< i a-length) (< i b-length))
	(if (char=? (string-ref a i) (string-ref b i))
	    (count-difference (+ i 1))
	    (+ 1 (count-difference (+ i 1))))
	0))
  (count-difference 0))
