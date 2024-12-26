(select-module beginners.383)
(use gauche.test)

(test-start "ABC383A")
(test* "(1 3) (3 1) (4 4) (7 1)" 3 (list-ref (remaining-after-supply '((1 3) (3 1) (4 4) (7 1))) 1))
(test* "(1 8) (10 11) (21 5)" 5 (list-ref (remaining-after-supply '((1 8) (10 11) (21 5))) 1))
(test* "(2 1) (22 10) (26 17) (29 2) (45 20) (47 32) (72 12) (75 1) (81 31) (97 7)" 57 (list-ref (remaining-after-supply '((2 1) (22 10) (26 17) (29 2) (45 20) (47 32) (72 12) (75 1) (81 31) (97 7))) 1))
(test-end)