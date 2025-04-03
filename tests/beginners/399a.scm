(select-module beginners.399a)
(use gauche.test)

(test-start "ABC399A")
(test* "(abcarc, agcahc)" 2 (hamming-distance "abcarc" "agcahc"))
(test* "(atcoder, contest)" 7 (hamming-distance "atcoder" "contest"))
(test* "(chokudai, chokudai)" 0 (hamming-distance "chokudai" "chokudai"))
(test* "(vexknuampx, vzxikuamlx)" 4 (hamming-distance "vexknuamp" "vzxikuaml"))
(test-end)
