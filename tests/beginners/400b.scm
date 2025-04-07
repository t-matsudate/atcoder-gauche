(select-module beginners.400b)
(use gauche.test)

(test-start "ABC400B")
(test* "(7, 3)" 400 (sum-powers 7 3))
(test* "(1000000, 2)" "inf" (sum-powers 1000000 2))
(test* "(999999999, 1)" 1000000000 (sum-powers 999999999 1))
(test* "(998244353 99)" "inf" (sum-powers 998244353 99))
(test-end)
