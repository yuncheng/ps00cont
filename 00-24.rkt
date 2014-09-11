;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-24) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; EX 24
; product : List -> Number
; Returns the product of the numbers in the given list
; An empty list returns a product of 1
; Examples:
; (product empty) = 1
; (product (list 1)) = 1
; (product (list 4 2 3)) = 24

(define (product lst)
  (cond
    [(empty? lst) 1]
    [else (* (first lst) (product (rest lst)))]))

; Tests:
(product empty)
(product (list 0)) 
(product (list 1)) 
(product (list 4 2 3))
