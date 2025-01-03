(select-module beginners.381)
(use gauche.test)

(test-start "ABC381A")
(test* "11/22" #t (november-twentytwo? "11/22"))
(test* "/" #t (november-twentytwo? "/"))
(test* "1/22" #f (november-twentytwo? "1/22"))
(test* "22/11" #f (november-twentytwo? "22/11"))
(test* "111/222" #t (november-twentytwo? "111/222"))
(test* "1122" #f (november-twentytwo? "1122"))
(test* "11/2222" #f (november-twentytwo? "11/2222"))
(test* "//2/2/211" #f (november-twentytwo? "//2/2/211"))
(test* "112" #f (november-twentytwo? "112"))
(test-end)

(test-start "ABC381B")
(test* "aabbcc" #t (twins? "aabbcc"))
(test* "aab" #f (twins? "aab"))
(test* "zzzzzz" #f (twins? "zzzzzz"))
(test* "aabbaa" #f (twins? "aabbaa"))
(test* "abab" #f (twins? "abab"))
(test-end)