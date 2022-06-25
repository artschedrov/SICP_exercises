; 2.59.

(define (element-of-set? x set)
    (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (union-set set1 set2)
    (if (null? set1) set2 
    (let ((e (car set1))) 
    (union-set 
        (cdr set1) 
        (if (element-of-set? e set2) set2 (cons e set2))))))

;(define odds '(1 3 5))
;(define even '(0 2 4 6))
;(define test1 '(5 6 3 7))

;(union-set even test1)


; 2.60.

; остальные процедуры остаются не изменными
; процедуры element-of-set? и intersection-set будут выполнятся с Θ(n) временем, adjoin-set и union-set будут выполняться с Θ(1) временем.

(define (adjoin-set x set)
    (cons x set))

(define (union-set set1 set2)
    (append set1 set2))
