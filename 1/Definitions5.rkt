;;Write a Scheme function that returns the number of zeros in a given simple list of numbers.

(define s 0) ;;define s for count

;; This function counts zeros in a list
;; Params: a list and a counter
(define (numzeros array sum)
  (cond ((NOT (list? array)) 0)
        ((null? array) 0)
        ((zero? (car array)) (set! sum (+ sum 1)))
        ;;(ELSE (write array)) ;;test
  )
  (cond ((NOT (null? array)) (numzeros (cdr array) sum))
        (ELSE (set! s sum))
  )
)

(define items '(1 2 0 3 4 0 5 6 0))  ;;create list

(numzeros items s)  ;;call function to count zeros in list
s ;;output count

