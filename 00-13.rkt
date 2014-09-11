;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-13) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct point (x y)) 

; EX 13
; (make-point true false) creates a point struct with x=true and y=false
; (point-x (make-point true false)) returns true for the x value

(make-point true false)
(point-x (make-point true false))