;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; EX 12
; (make-point 5 3) => (make-point 5 3)
; (point? 5) => false
; (point? true) => false
; (point? (make-point 2 1)) => true 
; (point-x (make-point 8 5)) => 8
; (point-y (make-point 42 15)) => 15 

(make-point 5 3)
(point? 5)
(point? true)
(point? (make-point 2 1))
(point-x (make-point 8 5))
(point-y (make-point 42 15))

