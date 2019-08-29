;;Write a Scheme function that returns the reverse of its simple list parameter. (Scheme has a reverse function, I believe, which is ineligible
;;for use with this problem. Name your function something different, like myreverse, to make sure you are invoking your function, rather than one that Scheme might already have.)

(DEFINE (reverselist list1 list2)
        (SET! list2 (CONS (CAR list1) list2))
        (COND ((NULL? (CDR list1)) list2)
              (ELSE (reverselist (CDR list1) list2))
        )
)
(DEFINE l1 '(1 2 3 4 5 6))
(DEFINE l2 '())
(reverselist l1 l2)