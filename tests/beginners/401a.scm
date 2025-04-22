(select-module beginners.401a)
(use gauche.test)

(test-start "ABC401A")
(test* "200" #t (success? 200))
(test* "401" #f (success? 401))
(test* "999" #f (success? 999))
(test-end)
