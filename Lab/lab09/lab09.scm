(define (over-or-under num1 num2) (if (< num1 num2)
                                    -1
                                    (if (= num1 num2)
                                      0
                                      1)))

(define (make-adder num) (lambda inc: (+ num inc)))

(define (composed f g) (lambda x:(f (g x))))

(define (repeat f n)
  (if(> n 0)
    (begin((f) (repeat f (- n 1))))
    nil))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (if (!= b 0) (gcd b (% a b)) nil))