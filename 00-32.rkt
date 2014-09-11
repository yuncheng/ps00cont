;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-32) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(define-struct point (x y)) 
; EX 32
; sum-distance: listOfPoints -> Number
; GIVEN: a list of points
; RETURNS: the sum of all distances of those Points from (0,0)
; uses Manhattan distance definition
(define (sum-distance lst)
  (cond 
    [(empty? lst) 0] ; Add 0 when list is empty
    ; Add the manhattan distance of first point to the recursive sum of the rest of the list
    [else (+ (manhattan-distance (first lst)) (sum-distance (rest lst)))] 
    )
  )

; manhattan-distance: Point -> Number
; GIVEN: a point
; RETURNS: the distance from (0,0) to that point using Manhattan distance definition
(define (manhattan-distance pt)
  (+ (point-x pt) (point-y pt))
  )


; Test:
(sum-distance (list (make-point 1 1) (make-point 1 2) (make-point 2 1)))
