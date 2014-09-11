;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-19) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; EX 19
;; rel-rec-sequence: Number Number -> Rectangle
;; Takes two numbers and returns a solid blue rectangle, where the first number is
;; the width of the rectangle, and the second number is the proportion of width
;; and height of the rectangle to be produced (i.e. height = width * proportion).

(define (rel-rec-sequence width proportion)
  (rectangle width (* width proportion) "solid" "blue")
  )

(rel-rec-sequence 50 2)
(rel-rec-sequence 50 0.2)
(rel-rec-sequence 50 0)