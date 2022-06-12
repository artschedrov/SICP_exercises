; ex 2.5.

(define (cons a b )
    (* (power 2 a) (power 3 b)))

(define (car pair)
	(factor 2 pair))

(define (cdr pair)
	(factor 3 pair))

(define (factor base value)
    (define (fact-iter value counter)
        (if (= (remainder value base) 0)
            (fact-iter (/ value base) (+ counter 1))
            counter))
    (fact-iter value 0))

(define (power base ex)
    (define (power-iter base counter product)
        (if (= counter 0)
            product
            (power-iter base (- counter 1) (* base product))))
    (power-iter base ex 1))

;(cons 3 2)          ; 72
;(car (cons 3 2))    ; 3
;(cdr (cons 3 2))    ; 2


; ex 2.6.
;1=lambda f.lambda x.fx

(define one
    (lambda (f) (lambda(x) (f x))))

;2=lambda f.lambda x.f(fx)

(define two
    (lambda (f) (lambda (x) (f (f x)))))

(define (+ m n)
    (lambda (f) (lambda (x) (f ((m f) ((n f) x))))))
