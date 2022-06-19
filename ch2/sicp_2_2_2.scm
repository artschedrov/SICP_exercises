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

;(deep-revers (list (list 1 2) (list 3 4)))     ; ((4 3) (2 1))


;2.28

(define (fringe tree)
    (cond ((null? tree) ())
        ((pair? tree) (append (fringe (car tree)) 
                      (fringe (cdr tree))))
        (else (list tree))))

(define x (list (list 1 2) (list 3 4)))

;(fringe x)     ; (1 2 3 4)


;2.30.

(define nil '())

(define (square-tree tree)
    (cond ((null? tree) nil)
          ((not (pair? tree)) (square tree))
          (else (cons (square-tree (car tree))
                      (square-tree (cdr tree))))))

(define (square-tree2 tree)
    (map (lambda (sub-tree) (if (pair? sub-tree) 
                                (square-tree2 sub-tree) 
                                (square sub-tree))) 
            tree))

;(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
;(square-tree (list 4 5 6))
;(square-tree2 (list 4 5 6))


;2.31.

(define (tree-map proc tree)
    (cond ((null? tree) nil)
          ((not (pair? tree)) (proc tree))
          (else (cons (tree-map (car tree))
                      (tree-map (cdr tree))))))

(define (square-tree3 tree) 
    (tree-map square tree))

;(square-tree (list 1 (list 2 (list 3 4) 5)))


;2.33.

(define (map p sequence)
    (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(define (append seq1 seq2)
    (accumulate cons seq2 seq1))

(define (length seq)
    (accumulate (lambda (x y) (+ 1 y)) 0 seq))



