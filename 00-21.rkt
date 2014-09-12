;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-21) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require "00-20.rkt")
(require "extras.rkt")

; EX 21
(define-struct person (first-name last-name age height weight))
; first-name: the first name of this person
; last-name: the last name of this person
; age: age of this person in years rounded to whole number
; height: height in inches rounded to whole number. 1in=4pixels
; weight: weight in lbs rounded to whole number
; Example:
; (make-person "Yun" "Cheng" 25 64 145)

; human-shape: a human shape made from circles and rectangles
; the default human-shape has dimensions 52x160 pixels
; From EX 20:


; person-image: person -> image
; GIVEN: a person
; RETURNS: an image of the person, scaled 1in=4pixels, with full name drawn below
; the height and width of person-image is proportional to the height of the person
; (weight of person does not affect image size)
; Example:
; A person with height=64 returns an image 160 pixels tall
; A person with height=128 returns an image 320 pixles tall

(define (person-image person)
  ; 64in=160pixels, i.e. 1in=4pixels
  ; scale factor = person-height/64
  (above (scale (/ (person-height person) 64.0) human-shape) 
         (text (string-append (person-first-name person) " " 
                              (person-last-name person)) 12 "blue"))
  )
  

; Test:
(person-image (make-person "Yun" "Cheng" 25 64 145))
(person-image (make-person "Dobby" "the House Elf" 36 25 55))
(person-image (make-person "Albus" "Dumbledore" 75 85 175))
