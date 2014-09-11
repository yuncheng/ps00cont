;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(rectangle 2 4 "solid" "blue")
(rectangle 4 8 "solid" "blue")
(rectangle 8 16 "solid" "blue")
(rectangle 16 32 "solid" "blue")

; EX 18 The next 2 rectangles in the sequence have dimensions 32x64 and 64x128
; rec-sequence: Number -> Number
; GIVEN: a number n
; RETURNS: the n-th element in this rectangle sequence
; Examples:
; (rec-sequence 1) => 2
; (rec-sequence 2) => 4

(define (rec-sequence n)
  (expt 2 n)
  )

(rec-sequence 0)
(rec-sequence 1)
(rec-sequence 2)
(rec-sequence 3)
(rec-sequence 4)