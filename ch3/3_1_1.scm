; exp 3.1.

(define (make-accumulator balance)
  (lambda (add-sum)
    (begin (set! balance (+ balance add-sum))
            balance)))

;(define A (make-accumulator 5))

;(A 10)
;(A 10)

; exp 3.3.

(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
    (begin (set! balance (- balance amount))
                balance)
    "Не достаточно денег"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch pass m)
    (if (not (eq? pass password))
      (lambda (amount) "Неправильный пароль")
      (cond ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Неизвестный вызов" m)))))
  dispatch)

(define acc (make-account 100 'password))
((acc 'password 'deposit) 50)
((acc 'pass 'withdraw) 100)

