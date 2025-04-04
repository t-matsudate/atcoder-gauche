(define-module beginners.399b
  (export rank))
(select-module beginners.399b)
(use scheme.list)

(define (rank participants)
  (define sorted (sort participants >))
  (map (lambda (participant) (+ 1 (or (list-index (lambda (s) (= participant s)) sorted) 0))) participants))
