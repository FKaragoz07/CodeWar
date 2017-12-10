#lang scheme
(require "proj4test.scm")
;Question 2 ##############################################
(define isEven
  (lambda (lst)
    (if (empty? lst)
        #f
        (if(even? (car lst))
        #t
        (isEven(cdr lst))))))
(define removeEven
  (lambda (lst)
    (if (empty? lst)
        '()
        (if (odd? (car lst))
            (cons (car lst) (removeEven (cdr lst)))
            (removeEven (cdr lst))))))
(define remove-last-even
  (lambda (lst)
       (if (empty? lst)
         '()
        (if (isEven (cdr lst))
           (cons (car lst) (remove-last-even (cdr lst)))
           (removeEven(cons (car lst) (cdr lst)))))))
;Question 3 ##############################################            
(define manhattan
         (lambda (a b)
  (+ (abs (- (car b) (car a))) (abs (- (cdr b) (cdr a))))))
;Question 4 ##############################################
(define (remove-dups lst)
  (cond
    ((null? lst) '())
    ((member (car lst) (cdr lst))
    (remove-duplicates (cdr lst)))
    (else (cons (car lst) (remove-duplicates (cdr lst))))))
  

;Question 5 ##############################################
(define (integer->binary x)
  (cond
    ((= x 0)  '())
    ((integer? (/ x 2)) (append (integer->binary(/ x 2)) '(0) ))
    (else (append (integer->binary (/ (- x 1) 2)) '(1)))))
;Question 6 ##############################################
(define insertion-sort
  (lambda (lst)
    (if (null? lst)
        '()
        (insert (car lst)
                (insertion-sort (cdr lst))))))
(define insert
  (lambda (elt sorted-lst)
    (if (null? sorted-lst)
        (list elt)
        (if (<= elt (car sorted-lst))
            (cons elt sorted-lst)
            (cons (car sorted-lst)
                  (insert elt (cdr sorted-lst)))))))
;Question 7-A ##############################################
(define (get-type map-object)
  (car map-object))
;Question 7-B ##############################################
(define (get-label map-object)
  (car (cdr map-object)))
;Question 7-C ##############################################
(define (get-loc map-object)
  (car (cdr (cdr map-object))))
;Question 7-D ##############################################
(define (collision? obj1 obj2)
  (if(equal? (car (cdr (cdr obj1))) (car (cdr (cdr obj2))))
  #t
  #f))
;Question 7-E ##############################################
(define (get-all-of-type database type)
  (cond
    ((empty? database) '())
       
    ((equal? (get-type (car database)) type)
                        (cons (car database) (get-all-of-type(cdr database) type)))
    
             (else ( get-all-of-type(cdr database)type))))
;Question 7-F ##############################################
(define (find-object database label)
  (cond
    ((empty? database)'())
    ((not (equal? (get-label (car (cdr database))) label)) '())
    ((equal? (get-label (car (cdr database))) label) (car (cdr database)))
    (else '())))
 

 
 
(test-remove-last-even remove-last-even) 
(test-manhattan manhattan)
(test-remove-dups remove-dups)
(test-integer->binary integer->binary)
(test-insertion-sort insertion-sort)
(test-map-database-getters get-type get-label get-loc)
(test-map-database-collision collision?)
(test-map-database-get-all-of-type get-all-of-type)
(test-map-database-find-object find-object)
