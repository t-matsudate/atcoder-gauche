(select-module beginners.380)
(use gauche.test)

(test-start "ABC380A")
(test* "123233" #t (one-two-three? "123233"))
(test* "123234" #f (one-two-three? "123234"))
(test* "323132" #t (one-two-three? "323132"))
(test* "500000" #f (one-two-three? "500000"))
(test-end)