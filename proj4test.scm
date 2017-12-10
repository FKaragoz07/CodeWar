#lang scheme
; Project 4 test module
; YOU SHOULD NOT MODIFY THIS FILE!

(provide test-remove-last-even)
(provide test-manhattan)
(provide test-remove-dups)
(provide test-integer->binary)
(provide test-insertion-sort)
(provide test-map-database-getters)
(provide test-map-database-collision)
(provide test-map-database-get-all-of-type)
(provide test-map-database-find-object)

(define test-remove-last-even
  (lambda (x)
  (begin
    (write "Question 1: remove-last-even ")(newline)
    (write (x '(1 -2 4 -8)))(newline)
    (write (x '(1 2 3 4)))(newline)
    (write (x '(2 3 4 5 7 9)))(newline)
    (write (x '(-1 -2 -3 -4 -5)))(newline)
    (write (x '(2 3 5 7 9)))(newline)
    (write (x '(1 3 5 7 9)))(newline)
    )))

(define test-manhattan
  (lambda (x)
  (begin
    (newline)
    (write "Question 2: manhattan")(newline)
    (write (x '(1 . 7) '(4 . 11)))(newline)
    (write (x '(-2 . 8) '(3 . -4)))(newline)
    )))
   
(define test-remove-dups
  (lambda (x)
  (begin
    (newline)
    (write "Question 3: remove-dups ")(newline)
    (write (x '(a b c d)))(newline)
    (write (x '(n n n o o o o t b r r r o k e e e e !)))(newline)
    (write (x '(T T T T T T T T T T T)))(newline)
    )))

(define test-integer->binary
  (lambda (x)
  (begin
    (newline)
    (write "Question 4: integer->binary")(newline)
    (write (x 1))(newline)
    (write (x 15))(newline)
    (write (x 2))(newline)
    (write (x #b1010101010))(newline)
    )))

(define test-insertion-sort
  (lambda (x)
    (let
        ((lst1 '(1 2 3 4 6 7 8 9 10))
         (lst2 '(1 3 2 9 3 8 9 10 11 1 2))
         (lst3 '(1 3 9 3 9 7 5)))
      (begin
        (newline)
        (write "Question 5: insertion-sort")(newline)
        (write (x lst1))(newline)
        (write (x (reverse lst1)))(newline)
        (write (x lst2))(newline)
        (write (x (reverse lst2)))(newline)
        (write (x lst2))(newline)
        (write (x (reverse lst2)))(newline)
    ))))

(define test-map-database-getters
  (lambda (x y z)   ;get-type get-label get-loc
  (begin
    (newline)
    (write "Question 6: map database - getters")(newline)
    (write (list 'get-type (x (car map-database)) (x (caddr map-database))))(newline)
    (write (list 'get-label (y (car map-database)) (y (caddr map-database))))(newline)
    (write (list 'get-loc (z (car map-database)) (z (caddr map-database))))(newline)
    )))

(define test-map-database-collision
  (lambda (x)
  (begin
    (newline)
    (write "Question 6: map database - collision?")(newline)
    (write (list (x (car map-database) (cadr map-database))
                 (x (car map-database) '(TEST Bus1 (10 . 12) 0 65))))
    (newline)
    )))
  
(define test-map-database-get-all-of-type
  (lambda (x)
  (begin
    (newline)
    (write "Question 6: map database - get-all-of-type")(newline)
    (write (x map-database 'CAR)) (newline)
    (write (x map-database 'OBSTACLE)) (newline)
    )))
    
(define test-map-database-find-object
  (lambda (x)
  (begin
    (newline)
    (write "Question 6: map database - find-object")(newline)
    (write (x map-database 'BlueCar)) (newline)
    (write (x map-database 'Batmobile)) (newline)
    )))
 
; Test map database
(define map-database 
 '( (CAR      RedCar    (10 . 12)   0 65) 
    (CAR      BlueCar   (15 .  5) 270 45) 
    (CAR      Bus       ( 8 . 10)  90 55) 
    (POLICE   Police1   (18 . 10) 180 55) 
    (TREE     Tree1     (22 .  2) 180  0) 
    (TREE     Tree2     ( 4 .  8) 180  0) 
    (TREE     Tree3     (12 . 12) 180  0) 
    (TREE     Tree4     (14 .  8) 180  0) 
    (OBSTACLE Mattress1 (20 . 12) 180  0)))
