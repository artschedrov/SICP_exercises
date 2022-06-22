 ;2.33.

 (define (map p sequence)
    (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

 (define (append seq1 seq2)
    (accumulate cons seq2 seq1)) 
 
 (define (length seq)
    (accumulate (lambda (x y) (+ 1 y)) 0 seq))


;2.35.

(define (count-leaves t)
    (accumulate + 0 
            (map (lambda (x) (if (pair? x) 
                                (count-leaves x)
                                1))
                t)))


;2.36.

(define (accumulate-n op init seqs)
    (if (null? (car seqs))
        nil
        (cons (accumulate op init (map car seqs))
                (accumulate-n op init (map cdr seqs)))))


;2.39.

(define (reverse sequence)
    (fold-right (lambda (x y) (append y (list x))) nil sequence))
(define (reverse sequence)
    (fold-left (lambda (x y) (cons y x)) nil sequence))


;2.40.

(define (unique-pairs n)
    (flatmap (lambda (i) (map (lambda (j) (list i j))
                                (enumerate-interval 1 (- i 1))))
            (enumerate-interval 1 (- n 1))))

(define (prime-sum-pairs n)
    (map make-pair-sum
        (filter prime-sum?
            (unique-pairs n))))
