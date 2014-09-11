;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-31) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
; EX 31
; list-circles: ListOfNumbers -> ListOfImages
; GIVEN: a list of numbers
; RETURNS: a list of Images, where each image is a circle that has a radius based on a number in the list

(define (list-circles lst)
(cond
  ; Construct an empty list that gets acted upon by cons recursively
  [(empty? lst) empty]
  ; Use cons to create circle from first on lst and call list-circles recursively on rest of lst 
  [else (cons
      (circle (first lst) "solid" "red")
      (list-circles (rest lst)))]
  ))

; Test:
(list-circles (list 10 20 30 40 50))