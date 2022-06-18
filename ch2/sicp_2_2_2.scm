;2.26.

(define x (list 1 2 3))
(define y (list 4 5 6))

;(append x y)   ; (1 2 3 4 5 6)
;(cons x y)     ; ((1 2 3) 4 5 6)
;(list x y)     ; ((1 2 3) (4 5 6))


; 2.27

(define (deep-revers items)
   (define (deep-revers-iter source result)
        (define (revers-it element)
            (if (list? element)
                (deep-revers element)
                element))
        (if (null? source)
            result
            (deep-revers-iter (cdr source) 
                              (cons (revers-it (car source)) result))))
   (deep-revers-iter items (list)))

(deep-revers (list (list 1 2) (list 3 4)))
