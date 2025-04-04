(select-module beginners.399b)
(use gauche.test)

(test-start "ABC399B")
(test* "(3, 12, 9, 9)" '(4 1 2 2) (rank '(3 12 9 9)))
(test* "(3, 9, 6)" '(3 1 2) (rank '(3 9 6)))
(test* "(100, 100, 100, 100)" '(1 1 1 1) (rank '(100 100 100 100)))
(test* "(87, 87, 87, 88, 41, 38, 41, 38)" '(2 2 2 1 5 7 5 7) (rank '(87 87 87 88 41 38 41 38)))
(test-end)
