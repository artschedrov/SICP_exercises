; precondition

(define (add-interval x y)
    (make-interval  (+ (lower-bound x) (lower-bound y)) 
                    (+ (upper-bound x) (upper-bound y))))

(define (make-interval a b) (cons a b))

; ex 2.7

(define (lower-bound interval) (car interval))
(define (upper-bound interval) (cdr interval))

; ex 2.8

(define (sub-interval x y)
    (make-interval  (- (lower-bound x) (upper-bound y))
                    (- (upper-bound x) (lower-bound y))))

