(select-module beginners.382)
(use gauche.test)

(test-start "ABC382A")
(test* "(.@@.@, 2)" 4 (count-empties ".@@.@" 2))
(test* "(@@@, 3)" 3 (count-empties "@@@" 3))
(test* "(@@@.@@.@@., 4)" 7 (count-empties "@@@.@@.@@." 4))
(test-end)