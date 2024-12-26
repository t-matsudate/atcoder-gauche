(define-module beginners.383
  (export abc383a))
(select-module beginners.383)

(define (read-lines n)
  (if (<= n 0)
      '()
      (let ((line (map string->number (string-split (read-line) #\space))))
        (cons line (read-lines (- n 1))))))

; (次の供給時刻, 残量 - 時間差(次の供給時刻 - 現在の供給時刻) + 次回分の供給量)
(define (supply-water remaining next)
  (let ((time-difference (- (list-ref next 0) (list-ref remaining 0)))
        (next-supply (list-ref next 1)))
    (list (list-ref next 0) (+ (max 0 (- (list-ref remaining 1) time-difference)) next-supply))))

(define (remaining-after-supply supplies)
  (let ((first-supply (list-ref supplies 0))
        (rest (list-tail supplies 1)))
    (fold-left supply-water first-supply rest)))

(define (abc383a)
  (let* ((n (string->number (read-line)))
         (supplies (read-lines n)))
    (print (list-ref (remaining-after-supply supplies) 1))))