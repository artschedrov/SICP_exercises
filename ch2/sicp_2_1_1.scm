; 2.1.1
(define (sign x)
	(cond ((> x 0) 1) 
	      ((< x 0) -1) 
	      (else 0)))

(define (make-rat n d)
	(let ((g (* (gcd (abs n) (abs d)) (sign d))))
	(cons (/ n g) (/ d g))))

(make-rat 4 5)
