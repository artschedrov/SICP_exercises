; ex 2.17.

(define (last-pair items)
    (if (null?(cdr items))
        items
        (last-pair (cdr items))))

;(last-pair (list 20 33 44))    ; 44


; ex 2.18.

(define (reverse items)
    (define (reverse-iter source result)
        (if (null? source)
            result
            (reverse-iter (cdr source) (cons (car source) result))))
    (reverse-iter items (list)))

;(reverse (list 10 20 50))      ;(50 20 10)

; ex 2.20

(define (same-parity x . z)
    (define (iter source target)
        (if (null? source)
            (reverse target)
            (let ((sign (remainder x 2))
                (i (car source))
                (tail (cdr source)))
            (if (= sign (remainder i 2))
                (iter tail (cons i target))
                (iter tail target)))))
    (cons x (iter z (list))))

;(same-parity 1 2 3 4 5 6 7)    ;(1 3 5 7)


; ex 2.21.

(define nil '())

(define (square-list items)
    (if (null? items) nil
        (cons (* (car items) (car items))
              (square-list (cdr items)))))

(define (square-list2 items)
    (map square items))

;(square-list (list 2 3 4))     ;(4 9 12)
;(square-list2 (list 2 3 4))    ;(4 9 12)
