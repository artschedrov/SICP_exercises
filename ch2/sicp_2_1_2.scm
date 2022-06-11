;ex 2.2

(define (make-segment start-segment end-segment)
	(cons start-segment end-segment))

(define (make-point x y) (cons x y))

(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))

;ex 2.3.
(define (rect-perimetr rect)
	(* 2 (+ (rect-width rect) 
		(rect-height rect))))

(define (rect-square rect)
	(* (rect-width rect) (rect-height rect)))

(define (make-rect topleft width height)
	(cons topleft (cons width height)))

(define (rect-topleft rect)
	(car rect))

(define (rect-width rect)
	(car (cdr rect)))
(define (rect-height rect)
	(cdr (cdr rect)))

(make-rect (make-point 2 4) 20 10)
(rect-perimetr (make-rect (make-point 2 4) 20 10))
(rect-square (make-rect (make-point 2 4) 20 10))
