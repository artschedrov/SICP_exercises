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

(define (same-parity first-value . other-values) 
    (define (accept-parity? value) 
        (equal? (even? first-value) (even? value))) 
    (define (filter-parity values) 
        (cond ((null? values) null) 
            ((accept-parity? (car values)) (cons (car values) 
                (filter-parity (cdr values)))) 
            (else (filter-parity (cdr values))))) 
    (cons first-value (filter-parity other-values)))
