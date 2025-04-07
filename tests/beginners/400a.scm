(select-module beginners.400a)
(use gauche.test)

(test-start "ABC400A")
(test* "mod(400, 10) => 40" 40 (divide-exactly-400-by 10))
(test* "mod(400, 11) => -1" -1 (divide-exactly-400-by 11))
(test* "mod(400, 400) => 1" 1 (divide-exactly-400-by 400))
(test-end)
